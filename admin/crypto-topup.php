<?php
include('include/security.php');

$coins = [];
$res = $conn->query("SELECT * FROM tbl_coin_type WHERE is_active=1 ORDER BY sort_order ASC");
while ($r = $res->fetch_assoc()) $coins[] = $r;

$users = [];
$ures = $conn->query("SELECT id, username, full_name FROM tbl_user WHERE user_type=1 AND is_active=1 ORDER BY username ASC");
while ($r = $ures->fetch_assoc()) $users[] = $r;

if (isset($_POST['action']) && $_POST['action'] === 'topup') {
    $coin_id  = intval($_POST['coin_id']);
    $target   = $_POST['target'];
    $amount   = floatval($_POST['amount']);
    $note     = mysqli_real_escape_string($conn, $_POST['note']);
    $now      = date('Y-m-d H:i:s');

    if ($amount <= 0) {
        flash('fmsg','fmsg','Amount must be greater than zero.','danger','TRUE');
        header("Location:crypto-topup");
        exit();
    }

    if ($target === 'all') {
        $affected = 0;
        foreach ($users as $u) {
            $uid = $u['id'];
            $conn->query("INSERT INTO tbl_coin_wallet (user_id,coin_id,balance,date_created) VALUES ($uid,$coin_id,$amount,'$now')
                ON DUPLICATE KEY UPDATE balance=balance+$amount, date_modified='$now'");
            $conn->query("INSERT INTO tbl_coin_transaction (user_id,coin_id,amount,type,reason,note,date_created)
                VALUES ($uid,$coin_id,$amount,'credit','admin_topup','$note','$now')");
            $affected++;
        }
        flash('fmsg','fmsg',"Topped up $affected users with $amount coins.","success","TRUE");
    } else {
        $uid = intval($target);
        $conn->query("INSERT INTO tbl_coin_wallet (user_id,coin_id,balance,date_created) VALUES ($uid,$coin_id,$amount,'$now')
            ON DUPLICATE KEY UPDATE balance=balance+$amount, date_modified='$now'");
        $conn->query("INSERT INTO tbl_coin_transaction (user_id,coin_id,amount,type,reason,note,date_created)
            VALUES ($uid,$coin_id,$amount,'credit','admin_topup','$note','$now')");
        flash('fmsg','fmsg',"Top-up successful.","success","TRUE");
    }
    header("Location:crypto-topup");
    exit();
}

if (isset($_POST['action']) && $_POST['action'] === 'deduct') {
    $coin_id = intval($_POST['coin_id']);
    $uid     = intval($_POST['user_id']);
    $amount  = floatval($_POST['amount']);
    $note    = mysqli_real_escape_string($conn, $_POST['note']);
    $now     = date('Y-m-d H:i:s');

    $balRes = $conn->query("SELECT balance FROM tbl_coin_wallet WHERE user_id=$uid AND coin_id=$coin_id");
    $balRow = $balRes ? $balRes->fetch_assoc() : null;
    $bal    = $balRow ? floatval($balRow['balance']) : 0;

    if ($amount > $bal) {
        flash('fmsg','fmsg',"Insufficient balance. User has $bal coins.",'danger','TRUE');
    } else {
        $conn->query("UPDATE tbl_coin_wallet SET balance=balance-$amount, date_modified='$now' WHERE user_id=$uid AND coin_id=$coin_id");
        $conn->query("INSERT INTO tbl_coin_transaction (user_id,coin_id,amount,type,reason,note,date_created)
            VALUES ($uid,$coin_id,$amount,'debit','admin_topup','Admin deduct: $note','$now')");
        flash('fmsg','fmsg',"Deducted $amount coins from user.",'success','TRUE');
    }
    header("Location:crypto-topup");
    exit();
}

$preselect_coin = isset($_GET['coin']) ? intval($_GET['coin']) : ($coins[0]['id'] ?? 0);

$wallets = [];
$wres = $conn->query("SELECT w.*, u.username, u.full_name, c.name as coin_name, c.symbol
    FROM tbl_coin_wallet w
    JOIN tbl_user u ON u.id=w.user_id
    JOIN tbl_coin_type c ON c.id=w.coin_id
    ORDER BY w.balance DESC LIMIT 100");
while ($r = $wres->fetch_assoc()) $wallets[] = $r;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>Crypto Top-Up | <?php echo $appDetRes['app_name']; ?></title>
    <?php include('include/head-section.php'); ?>
</head>
<body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled subheader-fixed aside-enabled aside-fixed aside-minimize-hoverable page-loading">
<?php include('include/mobile-header.php'); ?>
<div class="d-flex flex-column flex-root">
<div class="d-flex flex-row flex-column-fluid page">
<?php include('include/sidebar.php'); ?>
<div class="d-flex flex-column flex-row-fluid wrapper" id="kt_wrapper">
<?php include('include/topbar.php'); ?>
<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Crypto Top-Up / Deduct</h5>
            <a href="crypto-coins" class="btn btn-sm btn-secondary">Manage Coins</a>
        </div>
    </div>
    <div class="d-flex flex-column-fluid">
    <div class="container">
        <?php flash('fmsg'); ?>
        <div class="row">
            <!-- TOP-UP FORM -->
            <div class="col-md-6">
                <div class="card card-custom gutter-b">
                    <div class="card-header"><div class="card-title"><h3 class="card-label text-success">Add Coins</h3></div></div>
                    <div class="card-body">
                        <form method="POST">
                            <input type="hidden" name="action" value="topup">
                            <div class="form-group">
                                <label>Coin</label>
                                <select name="coin_id" class="form-control">
                                    <?php foreach ($coins as $c): ?>
                                    <option value="<?php echo $c['id']; ?>" <?php echo $c['id']==$preselect_coin?'selected':''; ?>><?php echo htmlspecialchars($c['name'].' ('.$c['symbol'].')'); ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Target</label>
                                <select name="target" class="form-control">
                                    <option value="all">All Users</option>
                                    <?php foreach ($users as $u): ?>
                                    <option value="<?php echo $u['id']; ?>"><?php echo htmlspecialchars($u['username'].' — '.$u['full_name']); ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Amount</label>
                                <input type="number" name="amount" class="form-control" min="0.000000001" step="any" required placeholder="e.g. 10.5">
                            </div>
                            <div class="form-group">
                                <label>Note <small class="text-muted">(optional)</small></label>
                                <input type="text" name="note" class="form-control" placeholder="Reason for top-up">
                            </div>
                            <button type="submit" class="btn btn-success btn-block">Add Coins</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- DEDUCT FORM -->
            <div class="col-md-6">
                <div class="card card-custom gutter-b">
                    <div class="card-header"><div class="card-title"><h3 class="card-label text-danger">Deduct Coins</h3></div></div>
                    <div class="card-body">
                        <form method="POST">
                            <input type="hidden" name="action" value="deduct">
                            <div class="form-group">
                                <label>Coin</label>
                                <select name="coin_id" class="form-control">
                                    <?php foreach ($coins as $c): ?>
                                    <option value="<?php echo $c['id']; ?>"><?php echo htmlspecialchars($c['name'].' ('.$c['symbol'].')'); ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>User</label>
                                <select name="user_id" class="form-control">
                                    <?php foreach ($users as $u): ?>
                                    <option value="<?php echo $u['id']; ?>"><?php echo htmlspecialchars($u['username'].' — '.$u['full_name']); ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Amount</label>
                                <input type="number" name="amount" class="form-control" min="0.000000001" step="any" required placeholder="e.g. 5">
                            </div>
                            <div class="form-group">
                                <label>Note</label>
                                <input type="text" name="note" class="form-control" placeholder="Reason for deduction">
                            </div>
                            <button type="submit" class="btn btn-danger btn-block">Deduct Coins</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- WALLET BALANCES TABLE -->
        <div class="card card-custom gutter-b">
            <div class="card-header"><div class="card-title"><h3 class="card-label">User Coin Balances</h3></div></div>
            <div class="card-body">
                <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead class="thead-light">
                        <tr><th>User</th><th>Coin</th><th>Balance</th><th>Last Updated</th></tr>
                    </thead>
                    <tbody>
                    <?php foreach ($wallets as $w): ?>
                    <tr>
                        <td><?php echo htmlspecialchars($w['username']); ?> <small class="text-muted">(<?php echo htmlspecialchars($w['full_name']); ?>)</small></td>
                        <td><strong><?php echo htmlspecialchars($w['symbol']); ?></strong></td>
                        <td><strong><?php echo number_format($w['balance'], 4); ?></strong></td>
                        <td><?php echo $w['date_modified'] ?: $w['date_created']; ?></td>
                    </tr>
                    <?php endforeach; ?>
                    <?php if (empty($wallets)): ?><tr><td colspan="4" class="text-center text-muted">No wallets yet.</td></tr><?php endif; ?>
                    </tbody>
                </table>
                </div>
            </div>
        </div>
    </div>
    </div>
</div>
</div>
</div>
</div>
<?php include('include/footer.php'); ?>
</body>
</html>
