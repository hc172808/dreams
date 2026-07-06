<?php
include('include/security.php');

// ── Handle quick credit / debit ───────────────────────────────────
if (isset($_POST['action']) && in_array($_POST['action'], ['credit','debit'])) {
    $uid     = (int)$_POST['user_id'];
    $coin_id = (int)$_POST['coin_id'];
    $amount  = (float)$_POST['amount'];
    $note    = $conn->real_escape_string($_POST['note'] ?? '');
    $act     = $_POST['action'];
    $now     = date('Y-m-d H:i:s');

    if ($uid <= 0 || $coin_id <= 0 || $amount <= 0) {
        flash('fmsg','fmsg','Invalid input.','danger','TRUE');
        header("Location:player-wallet?uid=$uid"); exit();
    }

    if ($act === 'debit') {
        $balRes = $conn->query("SELECT balance FROM tbl_coin_wallet WHERE user_id=$uid AND coin_id=$coin_id");
        $balRow = $balRes ? $balRes->fetch_assoc() : null;
        $bal    = $balRow ? (float)$balRow['balance'] : 0;
        if ($amount > $bal) {
            flash('fmsg','fmsg',"Insufficient balance. Player only has $bal coins.",'danger','TRUE');
            header("Location:player-wallet?uid=$uid"); exit();
        }
        $conn->query("UPDATE tbl_coin_wallet SET balance=balance-$amount, date_modified='$now'
                      WHERE user_id=$uid AND coin_id=$coin_id");
        $conn->query("INSERT INTO tbl_coin_transaction (user_id,coin_id,amount,type,reason,note,date_created)
                      VALUES ($uid,$coin_id,$amount,'debit','admin_topup','Admin deduct: $note','$now')");
        flash('fmsg','fmsg','Deducted successfully.','success','TRUE');
    } else {
        $conn->query("INSERT INTO tbl_coin_wallet (user_id,coin_id,balance,date_created)
                      VALUES ($uid,$coin_id,$amount,'$now')
                      ON DUPLICATE KEY UPDATE balance=balance+$amount, date_modified='$now'");
        $conn->query("INSERT INTO tbl_coin_transaction (user_id,coin_id,amount,type,reason,note,date_created)
                      VALUES ($uid,$coin_id,$amount,'credit','admin_topup','Admin credit: $note','$now')");
        flash('fmsg','fmsg','Credited successfully.','success','TRUE');
    }
    header("Location:player-wallet?uid=$uid"); exit();
}

// ── Load selected player ──────────────────────────────────────────
$selUser  = null;
$wallets  = [];
$txns     = [];
$bets     = [];
$uid      = isset($_GET['uid']) ? (int)$_GET['uid'] : 0;

if ($uid > 0) {
    $r = $conn->query("SELECT * FROM tbl_user WHERE id=$uid AND user_type=1");
    $selUser = $r ? $r->fetch_assoc() : null;

    if ($selUser) {
        // Coin wallets
        $wr = $conn->query("
            SELECT w.*, c.name AS coin_name, c.symbol, c.network, c.decimals, c.icon_url
            FROM tbl_coin_wallet w
            JOIN tbl_coin_type c ON c.id=w.coin_id
            WHERE w.user_id=$uid
            ORDER BY c.sort_order ASC
        ");
        while ($row = $wr->fetch_assoc()) $wallets[] = $row;

        // Coin transaction history
        $tr = $conn->query("
            SELECT t.*, c.name AS coin_name, c.symbol
            FROM tbl_coin_transaction t
            JOIN tbl_coin_type c ON c.id=t.coin_id
            WHERE t.user_id=$uid
            ORDER BY t.id DESC
            LIMIT 50
        ");
        while ($row = $tr->fetch_assoc()) $txns[] = $row;

        // Betting bank history
        $br = $conn->query("
            SELECT b.*, c.symbol, m.type AS match_type
            FROM tbl_coin_betting_bank b
            JOIN tbl_coin_type c ON c.id=b.coin_id
            LEFT JOIN tbl_match m ON m.id=b.match_id
            WHERE b.user_id=$uid
            ORDER BY b.id DESC
            LIMIT 20
        ");
        while ($row = $br->fetch_assoc()) $bets[] = $row;
    }
}

// ── All coins for the quick-action dropdown ───────────────────────
$allCoins = [];
$cr = $conn->query("SELECT id,name,symbol FROM tbl_coin_type WHERE is_active=1 ORDER BY sort_order");
while ($c = $cr->fetch_assoc()) $allCoins[] = $c;

// ── Player list for search (id, name for JS) ─────────────────────
$playerList = [];
$pr = $conn->query("SELECT id, username, full_name FROM tbl_user WHERE user_type=1 AND is_active=1 ORDER BY full_name ASC");
while ($p = $pr->fetch_assoc()) $playerList[] = $p;

// ── Colour helpers ────────────────────────────────────────────────
$txnColour  = ['credit'=>'success','debit'=>'danger'];
$txnIcon    = ['credit'=>'↑','debit'=>'↓'];
$betColours = ['held'=>'warning','won'=>'success','refunded'=>'primary','cancelled'=>'secondary'];
?>
<!DOCTYPE html>
<html lang="en">
<head><base href="">
    <meta charset="utf-8" />
    <title>Player Wallet | <?php echo $appDetRes['app_name']; ?></title>
    <?php include('include/head-section.php'); ?>
    <link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
    <style>
        .wallet-card { transition: box-shadow .2s; }
        .wallet-card:hover { box-shadow: 0 4px 20px rgba(0,0,0,.1); }
        .balance-val { font-size: 1.6rem; font-weight: 800; letter-spacing: -.5px; }
        .stat-row td { padding: .35rem .5rem; font-size:.88rem; }
        .player-avatar { width:64px; height:64px; border-radius:50%; object-fit:cover; }
        .player-avatar-initials { width:64px; height:64px; border-radius:50%; display:flex; align-items:center; justify-content:center; font-size:1.4rem; font-weight:800; }
    </style>
</head>
<body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled subheader-fixed aside-enabled aside-fixed aside-minimize-hoverable page-loading">
<?php include('include/mobile-header.php'); ?>
<div class="d-flex flex-column flex-root">
<div class="d-flex flex-row flex-column-fluid page">
<?php include('include/sidebar.php'); ?>
<div class="d-flex flex-column flex-row-fluid wrapper" id="kt_wrapper">
<?php include('include/topbar.php'); ?>

<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <!-- Subheader -->
    <div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <div class="d-flex align-items-center flex-wrap mr-2">
                <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Player Wallet Dashboard</h5>
                <div class="subheader-separator subheader-separator-ver mt-2 mb-2 mr-4 bg-gray-200"></div>
                <span class="text-muted font-size-base font-weight-bold">Balances · History · Credit/Debit</span>
            </div>
            <div class="d-flex align-items-center">
                <span class="text-primary font-size-base font-weight-bolder"><?php echo date("F j, Y"); ?></span>
            </div>
        </div>
    </div>

    <div class="d-flex flex-column-fluid">
        <div class="container">
            <?php flash('fmsg'); ?>

            <!-- ── Player Search ── -->
            <div class="card card-custom mb-5">
                <div class="card-body py-5">
                    <div class="row align-items-center">
                        <div class="col-md-8">
                            <label class="font-weight-bold mb-2">Search Player</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="ki ki-search icon-nm"></i></span>
                                </div>
                                <input type="text" id="playerSearch"
                                       class="form-control form-control-lg"
                                       placeholder="Type username or name…"
                                       autocomplete="off"
                                       value="<?php echo $selUser ? htmlspecialchars($selUser['full_name'] ?: $selUser['username']) : ''; ?>" />
                            </div>
                            <!-- Suggestions -->
                            <div id="playerSuggestions" class="shadow rounded bg-white position-absolute"
                                 style="z-index:999; width:100%; max-height:240px; overflow-y:auto; display:none; max-width:600px;"></div>
                        </div>
                        <div class="col-md-4 mt-3 mt-md-0">
                            <?php if ($selUser): ?>
                            <a href="player-wallet" class="btn btn-light font-weight-bold">
                                <i class="ki ki-arrow-back icon-nm mr-1"></i> Clear
                            </a>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>

            <?php if (!$selUser && $uid === 0): ?>
            <!-- ── Empty state ── -->
            <div class="card card-custom">
                <div class="card-body py-12 text-center">
                    <div style="font-size:3rem; opacity:.3;" class="mb-4">👤</div>
                    <h4 class="text-muted font-weight-light">Search for a player above to view their wallet dashboard</h4>
                    <p class="text-muted mt-2 font-size-sm">You can see all coin balances, transaction history, and credit/debit from one screen.</p>
                </div>
            </div>

            <?php elseif (!$selUser): ?>
            <div class="alert alert-danger">Player not found or is not a regular user.</div>

            <?php else: ?>
            <!-- ════════════════════════════════════════════════
                 PLAYER DASHBOARD
            ════════════════════════════════════════════════ -->

            <!-- ── Player Info + Fiat ── -->
            <div class="card card-custom mb-5">
                <div class="card-body">
                    <div class="row align-items-center">
                        <!-- Avatar + Info -->
                        <div class="col-md-5 d-flex align-items-center mb-4 mb-md-0">
                            <?php if ($selUser['profile_img']): ?>
                            <img src="<?php echo htmlspecialchars($selUser['profile_img']); ?>"
                                 class="player-avatar mr-4" alt="">
                            <?php else: ?>
                            <div class="player-avatar-initials bg-light-primary text-primary mr-4">
                                <?php echo strtoupper(substr($selUser['full_name'] ?: $selUser['username'], 0, 2)); ?>
                            </div>
                            <?php endif; ?>
                            <div>
                                <h4 class="font-weight-bold mb-0">
                                    <?php echo htmlspecialchars($selUser['full_name'] ?: '(no name)'); ?>
                                </h4>
                                <div class="text-muted font-size-sm">@<?php echo htmlspecialchars($selUser['username']); ?></div>
                                <div class="text-muted font-size-xs"><?php echo htmlspecialchars($selUser['mobile'] ?: $selUser['email'] ?: '—'); ?></div>
                                <div class="mt-2">
                                    <span class="label label-inline <?php echo $selUser['is_active']?'label-light-success':'label-light-danger'; ?> font-weight-bold mr-1">
                                        <?php echo $selUser['is_active']?'Active':'Inactive'; ?>
                                    </span>
                                    <?php if ($selUser['is_block']): ?>
                                    <span class="label label-inline label-light-danger font-weight-bold">Blocked</span>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                        <!-- Fiat balances -->
                        <div class="col-md-7">
                            <div class="text-muted font-size-sm font-weight-bold text-uppercase mb-2">Fiat Wallet</div>
                            <div class="row">
                                <div class="col-4 text-center border-right">
                                    <div class="text-muted font-size-xs font-weight-bold">Deposit</div>
                                    <div class="font-weight-bolder text-dark font-size-lg">
                                        <?php echo number_format((float)$selUser['deposit_bal'], 2); ?>
                                    </div>
                                </div>
                                <div class="col-4 text-center border-right">
                                    <div class="text-muted font-size-xs font-weight-bold">Winnings</div>
                                    <div class="font-weight-bolder text-success font-size-lg">
                                        <?php echo number_format((float)$selUser['won_bal'], 2); ?>
                                    </div>
                                </div>
                                <div class="col-4 text-center">
                                    <div class="text-muted font-size-xs font-weight-bold">Bonus</div>
                                    <div class="font-weight-bolder text-warning font-size-lg">
                                        <?php echo number_format((float)$selUser['bonus_bal'], 2); ?>
                                    </div>
                                </div>
                            </div>
                            <div class="text-right mt-3">
                                <a href="user-activity?uid=<?php echo $uid; ?>" class="btn btn-sm btn-light-primary mr-2">
                                    <i class="ki ki-eye icon-nm"></i> Full Profile
                                </a>
                                <a href="crypto-topup?preselect=<?php echo $uid; ?>" class="btn btn-sm btn-light-success">
                                    <i class="ki ki-plus icon-nm"></i> Bulk Top-Up
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ── Coin Wallet Balance Cards ── -->
            <div class="row mb-5">
                <?php if (empty($wallets)): ?>
                <div class="col-12">
                    <div class="alert alert-light-warning font-weight-bold">
                        This player has no coin wallets yet.
                        Coins are created automatically when they join a coin match or receive a top-up.
                    </div>
                </div>
                <?php endif; ?>

                <?php foreach ($wallets as $w): ?>
                <div class="col-xl-3 col-md-4 col-sm-6 mb-4">
                    <div class="card card-custom wallet-card h-100">
                        <div class="card-body py-5 px-5">
                            <!-- Header row -->
                            <div class="d-flex justify-content-between align-items-start mb-3">
                                <div>
                                    <span class="label label-inline label-light-primary font-weight-bolder font-size-sm">
                                        <?php echo htmlspecialchars($w['symbol']); ?>
                                    </span>
                                    <div class="text-dark font-weight-bold mt-1"><?php echo htmlspecialchars($w['coin_name']); ?></div>
                                    <div class="text-muted font-size-xs"><?php echo ucfirst($w['network']); ?></div>
                                </div>
                                <?php if ($w['icon_url']): ?>
                                <img src="<?php echo htmlspecialchars($w['icon_url']); ?>" width="32" height="32" style="border-radius:50%;" alt="">
                                <?php else: ?>
                                <div class="bg-light-primary rounded-circle d-flex align-items-center justify-content-center" style="width:32px;height:32px;font-size:.75rem;font-weight:800;color:#3699ff;">
                                    <?php echo strtoupper(substr($w['symbol'],0,2)); ?>
                                </div>
                                <?php endif; ?>
                            </div>

                            <!-- Balance -->
                            <div class="balance-val text-dark mb-1">
                                <?php echo rtrim(rtrim(number_format((float)$w['balance'], 9), '0'), '.'); ?>
                            </div>
                            <div class="text-muted font-size-xs mb-3"><?php echo htmlspecialchars($w['symbol']); ?> balance</div>

                            <?php if ($w['wallet_address']): ?>
                            <div class="bg-light rounded px-2 py-1 mb-3" style="font-size:.7rem; word-break:break-all; color:#6c757d;">
                                <?php echo htmlspecialchars($w['wallet_address']); ?>
                            </div>
                            <?php endif; ?>

                            <!-- Quick actions for this coin -->
                            <div class="d-flex">
                                <button type="button"
                                        class="btn btn-sm btn-light-success flex-grow-1 mr-1 btn-quick-action"
                                        data-uid="<?php echo $uid; ?>"
                                        data-coin="<?php echo $w['coin_id']; ?>"
                                        data-symbol="<?php echo htmlspecialchars($w['symbol']); ?>"
                                        data-action="credit"
                                        data-balance="<?php echo $w['balance']; ?>">
                                    <i class="ki ki-plus icon-xs"></i> Credit
                                </button>
                                <button type="button"
                                        class="btn btn-sm btn-light-danger flex-grow-1 btn-quick-action"
                                        data-uid="<?php echo $uid; ?>"
                                        data-coin="<?php echo $w['coin_id']; ?>"
                                        data-symbol="<?php echo htmlspecialchars($w['symbol']); ?>"
                                        data-action="debit"
                                        data-balance="<?php echo $w['balance']; ?>">
                                    <i class="ki ki-minus icon-xs"></i> Debit
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endforeach; ?>

                <!-- Add coin wallet card -->
                <div class="col-xl-3 col-md-4 col-sm-6 mb-4">
                    <div class="card card-custom wallet-card h-100 border-dashed border-2" style="border:2px dashed #dee2e6; background:transparent;">
                        <div class="card-body py-5 px-5 d-flex flex-column align-items-center justify-content-center text-center">
                            <div class="text-muted font-size-sm font-weight-bold mb-2">Credit a new coin</div>
                            <button type="button" class="btn btn-light-primary btn-sm btn-new-coin"
                                    data-uid="<?php echo $uid; ?>">
                                <i class="ki ki-plus icon-nm"></i> Add Coin Wallet
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ── Transaction History + Betting Bank ── -->
            <div class="row">
                <!-- Transactions -->
                <div class="col-lg-8 mb-5">
                    <div class="card card-custom">
                        <div class="card-header">
                            <div class="card-title"><h3 class="card-label">Coin Transactions <small class="text-muted ml-2">last 50</small></h3></div>
                        </div>
                        <div class="card-body py-0">
                            <div class="table-responsive" style="max-height:450px; overflow-y:auto;">
                                <table class="table table-head-custom table-vertical-center" id="txnTable">
                                    <thead>
                                        <tr class="text-uppercase text-muted font-size-xs">
                                            <th>#</th>
                                            <th>Coin</th>
                                            <th>Type</th>
                                            <th>Amount</th>
                                            <th>Reason</th>
                                            <th>Note</th>
                                            <th>Date</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php if (empty($txns)): ?>
                                    <tr><td colspan="7" class="text-center text-muted py-6">No transactions yet.</td></tr>
                                    <?php endif; ?>
                                    <?php foreach ($txns as $t): ?>
                                    <tr>
                                        <td class="text-muted font-size-xs"><?php echo $t['id']; ?></td>
                                        <td>
                                            <span class="label label-inline label-light-primary font-weight-bold font-size-xs">
                                                <?php echo htmlspecialchars($t['symbol']); ?>
                                            </span>
                                        </td>
                                        <td>
                                            <span class="label label-inline label-light-<?php echo $txnColour[$t['type']] ?? 'secondary'; ?> font-weight-bold">
                                                <?php echo ($txnIcon[$t['type']] ?? '') . ' ' . ucfirst($t['type']); ?>
                                            </span>
                                        </td>
                                        <td class="font-weight-bolder text-<?php echo $txnColour[$t['type']] ?? 'dark'; ?>">
                                            <?php echo ($t['type']==='debit'?'−':'+') . rtrim(rtrim(number_format((float)$t['amount'],9),'0'),'.'); ?>
                                        </td>
                                        <td class="text-muted font-size-xs"><?php echo ucwords(str_replace('_',' ',$t['reason'])); ?></td>
                                        <td class="text-muted font-size-xs" style="max-width:140px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;">
                                            <?php echo htmlspecialchars($t['note'] ?: '—'); ?>
                                        </td>
                                        <td class="text-muted font-size-xs text-nowrap">
                                            <?php echo date('d M y H:i', strtotime($t['date_created'])); ?>
                                        </td>
                                    </tr>
                                    <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Betting Bank -->
                <div class="col-lg-4 mb-5">
                    <div class="card card-custom">
                        <div class="card-header">
                            <div class="card-title"><h3 class="card-label">Betting Bank <small class="text-muted ml-1">last 20</small></h3></div>
                        </div>
                        <div class="card-body py-0">
                            <div style="max-height:450px; overflow-y:auto;">
                            <?php if (empty($bets)): ?>
                            <div class="text-center text-muted py-6">No bets yet.</div>
                            <?php endif; ?>
                            <?php foreach ($bets as $b): ?>
                            <div class="d-flex align-items-center justify-content-between py-3 border-bottom">
                                <div>
                                    <span class="font-weight-bold text-dark font-size-sm">
                                        Match #<?php echo $b['match_id']; ?>
                                    </span>
                                    <div class="text-muted font-size-xs"><?php echo htmlspecialchars($b['match_type'] ?? '—'); ?></div>
                                </div>
                                <div class="text-right">
                                    <span class="font-weight-bolder d-block font-size-sm">
                                        <?php echo rtrim(rtrim(number_format((float)$b['amount'],9),'0'),'.'); ?>
                                        <span class="text-muted font-weight-normal"><?php echo htmlspecialchars($b['symbol']); ?></span>
                                    </span>
                                    <span class="label label-inline label-light-<?php echo $betColours[$b['status']] ?? 'secondary'; ?> font-weight-bold font-size-xs">
                                        <?php echo ucfirst($b['status']); ?>
                                    </span>
                                </div>
                            </div>
                            <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php endif; // end $selUser ?>

        </div><!-- container -->
    </div>
</div>
<?php include('include/footer.php'); ?>
</div></div></div>

<!-- ── Quick-Action Modal ── -->
<div class="modal fade" id="quickActionModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <form method="POST" action="player-wallet?uid=<?php echo $uid; ?>">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalTitle">Credit / Debit</h5>
                    <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="action"  id="modalAction">
                    <input type="hidden" name="user_id" id="modalUserId">
                    <input type="hidden" name="coin_id" id="modalCoinId">

                    <div class="alert" id="modalBalanceAlert" style="display:none;"></div>

                    <div class="form-group">
                        <label class="font-weight-bold">Amount <span id="modalSymbol" class="text-muted"></span></label>
                        <input type="number" step="0.000000001" min="0.000000001" name="amount"
                               class="form-control form-control-lg" placeholder="0.000" required id="modalAmount">
                    </div>
                    <div class="form-group mb-0">
                        <label class="font-weight-bold">Note <span class="text-muted font-weight-normal">(optional)</span></label>
                        <input type="text" name="note" class="form-control" placeholder="Reason for this adjustment…" maxlength="200">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn" id="modalSubmitBtn">Confirm</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- ── New Coin Wallet Modal ── -->
<div class="modal fade" id="newCoinModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <form method="POST" action="player-wallet?uid=<?php echo $uid; ?>">
                <input type="hidden" name="action" value="credit">
                <input type="hidden" name="user_id" value="<?php echo $uid; ?>">
                <div class="modal-header">
                    <h5 class="modal-title">Add Coin Wallet</h5>
                    <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label class="font-weight-bold">Coin</label>
                        <select name="coin_id" class="form-control" required>
                            <option value="">— Select Coin —</option>
                            <?php foreach ($allCoins as $c): ?>
                            <option value="<?php echo $c['id']; ?>"><?php echo htmlspecialchars($c['name'].' ('.$c['symbol'].')'); ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="font-weight-bold">Initial Credit Amount</label>
                        <input type="number" step="0.000000001" min="0.000000001" name="amount"
                               class="form-control" placeholder="0.000" required>
                        <span class="form-text text-muted">Enter an initial amount to open the wallet with (can be a tiny amount like 0.000000001).</span>
                    </div>
                    <div class="form-group mb-0">
                        <label class="font-weight-bold">Note</label>
                        <input type="text" name="note" class="form-control" placeholder="e.g. New wallet opened by admin" maxlength="200">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary font-weight-bold">Create Wallet</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
<script>
// ── Player search autocomplete ────────────────────────────────────
var players = <?php echo json_encode($playerList); ?>;

var searchEl = document.getElementById('playerSearch');
var sugEl    = document.getElementById('playerSuggestions');

searchEl.addEventListener('input', function() {
    var q = this.value.trim().toLowerCase();
    sugEl.innerHTML = '';
    if (q.length < 1) { sugEl.style.display = 'none'; return; }
    var hits = players.filter(function(p){
        return (p.username.toLowerCase().includes(q) || (p.full_name||'').toLowerCase().includes(q));
    }).slice(0, 10);
    if (!hits.length) { sugEl.style.display = 'none'; return; }
    hits.forEach(function(p){
        var div = document.createElement('div');
        div.className = 'px-4 py-3 border-bottom cursor-pointer';
        div.style.cssText = 'cursor:pointer; transition:background .1s;';
        div.innerHTML = '<span class="font-weight-bold">' + (p.full_name || '(no name)') + '</span> <span class="text-muted ml-2">@' + p.username + '</span>';
        div.onmouseenter = function(){ this.style.background='#F3F6F9'; };
        div.onmouseleave = function(){ this.style.background=''; };
        div.onclick = function(){
            window.location = 'player-wallet?uid=' + p.id;
        };
        sugEl.appendChild(div);
    });
    sugEl.style.display = 'block';
});

document.addEventListener('click', function(e){
    if (!sugEl.contains(e.target) && e.target !== searchEl) sugEl.style.display = 'none';
});

// ── Quick action modal ────────────────────────────────────────────
document.querySelectorAll('.btn-quick-action').forEach(function(btn){
    btn.addEventListener('click', function(){
        var action  = this.dataset.action;
        var uid     = this.dataset.uid;
        var coin    = this.dataset.coin;
        var symbol  = this.dataset.symbol;
        var balance = parseFloat(this.dataset.balance) || 0;

        document.getElementById('modalAction').value  = action;
        document.getElementById('modalUserId').value  = uid;
        document.getElementById('modalCoinId').value  = coin;
        document.getElementById('modalSymbol').textContent = symbol;
        document.getElementById('modalAmount').value  = '';

        var alert = document.getElementById('modalBalanceAlert');
        var submitBtn = document.getElementById('modalSubmitBtn');

        if (action === 'credit') {
            document.getElementById('modalTitle').textContent = '+ Credit ' + symbol;
            submitBtn.className = 'btn btn-success font-weight-bold';
            submitBtn.textContent = 'Credit';
            alert.style.display = 'none';
        } else {
            document.getElementById('modalTitle').textContent = '− Debit ' + symbol;
            submitBtn.className = 'btn btn-danger font-weight-bold';
            submitBtn.textContent = 'Debit';
            alert.className = 'alert alert-light-warning';
            alert.innerHTML = '<strong>Current balance:</strong> ' + balance.toFixed(9).replace(/\.?0+$/, '') + ' ' + symbol;
            alert.style.display = 'block';
        }

        $('#quickActionModal').modal('show');
    });
});

// ── New coin wallet button ────────────────────────────────────────
document.querySelectorAll('.btn-new-coin').forEach(function(btn){
    btn.addEventListener('click', function(){
        $('#newCoinModal').modal('show');
    });
});
</script>
</body>
</html>
