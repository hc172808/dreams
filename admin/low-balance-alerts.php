<?php
include('include/security.php');

// ── Save threshold per coin ───────────────────────────────────────
if (isset($_POST['save_thresholds'])) {
    foreach ($_POST['threshold'] as $coin_id => $val) {
        $cid = (int)$coin_id;
        $thr = (float)$val;
        $conn->query("UPDATE tbl_coin_type SET low_balance_threshold=$thr WHERE id=$cid");
    }
    flash('fmsg','fmsg','Thresholds saved.','success','TRUE');
    header("Location:low-balance-alerts"); exit();
}

// ── Load coins with thresholds ────────────────────────────────────
$coins = [];
$cr = $conn->query("SELECT * FROM tbl_coin_type WHERE is_active=1 ORDER BY sort_order");
while ($r = $cr->fetch_assoc()) $coins[] = $r;

// ── Players below threshold per coin ─────────────────────────────
// Only coins where threshold > 0
$alertsByCoin = [];
$totalAlerts  = 0;
foreach ($coins as $c) {
    if ((float)$c['low_balance_threshold'] <= 0) continue;
    $cid = (int)$c['id'];
    $thr = (float)$c['low_balance_threshold'];
    $res = $conn->query("
        SELECT w.user_id, w.balance, w.date_modified,
               u.username, u.full_name, u.profile_img, u.mobile, u.email
        FROM tbl_coin_wallet w
        JOIN tbl_user u ON u.id=w.user_id
        WHERE w.coin_id=$cid
          AND w.balance < $thr
          AND u.is_active=1
          AND u.user_type=1
        ORDER BY w.balance ASC
    ");
    $rows = [];
    while ($row = $res->fetch_assoc()) $rows[] = $row;
    if (!empty($rows)) {
        $alertsByCoin[] = [
            'coin'  => $c,
            'users' => $rows,
        ];
        $totalAlerts += count($rows);
    }
}

// ── Players with ZERO balance (no wallet row at all) ─────────────
$noWalletByCoin = [];
foreach ($coins as $c) {
    $cid = (int)$c['id'];
    $res = $conn->query("
        SELECT u.id AS user_id, u.username, u.full_name, u.profile_img, u.mobile
        FROM tbl_user u
        WHERE u.is_active=1 AND u.user_type=1
          AND u.id NOT IN (SELECT user_id FROM tbl_coin_wallet WHERE coin_id=$cid)
        LIMIT 20
    ");
    $rows = [];
    while ($row = $res->fetch_assoc()) $rows[] = $row;
    if (!empty($rows)) {
        $noWalletByCoin[] = ['coin' => $c, 'users' => $rows];
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head><base href="">
    <meta charset="utf-8" />
    <title>Low Balance Alerts | <?php echo $appDetRes['app_name']; ?></title>
    <?php include('include/head-section.php'); ?>
    <style>
        .threshold-input { max-width: 160px; }
        .user-row:hover { background: #f3f6f9; }
        .coin-badge { font-size:.72rem; padding:2px 7px; }
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
                <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">⚠️ Low Balance Alerts</h5>
                <div class="subheader-separator subheader-separator-ver mt-2 mb-2 mr-4 bg-gray-200"></div>
                <span class="text-muted font-size-base font-weight-bold">Configure thresholds · See at-risk players</span>
            </div>
            <div class="d-flex align-items-center">
                <?php if ($totalAlerts > 0): ?>
                <span class="label label-danger label-inline font-weight-bold font-size-base px-4 py-3">
                    ⚠️ <?php echo $totalAlerts; ?> player<?php echo $totalAlerts>1?'s':''; ?> below threshold
                </span>
                <?php else: ?>
                <span class="label label-success label-inline font-weight-bold px-4 py-2">✓ All clear</span>
                <?php endif; ?>
            </div>
        </div>
    </div>

    <div class="d-flex flex-column-fluid">
        <div class="container">
            <?php flash('fmsg'); ?>

            <!-- ── Threshold Configuration ── -->
            <div class="card card-custom mb-6">
                <div class="card-header">
                    <div class="card-title">
                        <h3 class="card-label">Alert Thresholds
                            <small class="text-muted d-block font-size-sm mt-1">
                                Players whose wallet balance drops below a threshold will be flagged here.
                                Set to 0 to disable alerts for that coin.
                            </small>
                        </h3>
                    </div>
                    <div class="card-toolbar">
                        <button type="submit" form="thresholdForm" class="btn btn-primary font-weight-bold">
                            <i class="ki ki-check icon-nm mr-1"></i> Save Thresholds
                        </button>
                    </div>
                </div>
                <div class="card-body">
                    <form id="thresholdForm" method="POST" action="low-balance-alerts">
                        <input type="hidden" name="save_thresholds" value="1">
                        <div class="row">
                            <?php foreach ($coins as $c): ?>
                            <div class="col-xl-3 col-md-4 col-sm-6 mb-5">
                                <div class="d-flex align-items-center border rounded px-4 py-3">
                                    <?php if ($c['icon_url']): ?>
                                    <img src="<?php echo htmlspecialchars($c['icon_url']); ?>" width="28" height="28"
                                         style="border-radius:50%; flex-shrink:0;" class="mr-3" alt="">
                                    <?php else: ?>
                                    <div class="bg-light-primary rounded-circle d-flex align-items-center justify-content-center mr-3"
                                         style="width:28px;height:28px;font-size:.65rem;font-weight:800;color:#3699ff;flex-shrink:0;">
                                        <?php echo strtoupper(substr($c['symbol'],0,2)); ?>
                                    </div>
                                    <?php endif; ?>
                                    <div class="flex-grow-1 min-w-0">
                                        <div class="font-weight-bold text-dark font-size-sm text-truncate">
                                            <?php echo htmlspecialchars($c['name']); ?>
                                        </div>
                                        <div class="text-muted font-size-xs mb-1"><?php echo htmlspecialchars($c['symbol']); ?></div>
                                        <input type="number"
                                               name="threshold[<?php echo $c['id']; ?>]"
                                               class="form-control form-control-sm threshold-input"
                                               value="<?php echo rtrim(rtrim(number_format((float)$c['low_balance_threshold'],9),'0'),'.'); ?>"
                                               min="0" step="0.000000001"
                                               placeholder="0 = disabled">
                                    </div>
                                </div>
                            </div>
                            <?php endforeach; ?>
                        </div>
                    </form>
                </div>
            </div>

            <?php if (empty($alertsByCoin) && $totalAlerts === 0): ?>
            <!-- ── All-clear state ── -->
            <div class="card card-custom mb-5">
                <div class="card-body py-12 text-center">
                    <?php
                    $hasThresholds = array_filter($coins, fn($c) => (float)$c['low_balance_threshold'] > 0);
                    if (empty($hasThresholds)):
                    ?>
                    <div style="font-size:2.5rem; opacity:.3;" class="mb-4">⚙️</div>
                    <h4 class="text-muted font-weight-light">No thresholds set yet</h4>
                    <p class="text-muted mt-2 font-size-sm">Configure a minimum balance above and save — players who drop below it will appear here.</p>
                    <?php else: ?>
                    <div style="font-size:2.5rem;" class="mb-4">✅</div>
                    <h4 class="text-success font-weight-bold">All clear!</h4>
                    <p class="text-muted mt-2 font-size-sm">All active players are above the configured thresholds.</p>
                    <?php endif; ?>
                </div>
            </div>
            <?php endif; ?>

            <?php foreach ($alertsByCoin as $group): $c = $group['coin']; $users = $group['users']; ?>
            <!-- ── Alert group per coin ── -->
            <div class="card card-custom mb-5">
                <div class="card-header">
                    <div class="card-title d-flex align-items-center">
                        <?php if ($c['icon_url']): ?>
                        <img src="<?php echo htmlspecialchars($c['icon_url']); ?>" width="28" height="28"
                             style="border-radius:50%;" class="mr-3" alt="">
                        <?php endif; ?>
                        <h3 class="card-label">
                            <?php echo htmlspecialchars($c['name']); ?>
                            <span class="label label-danger label-inline font-weight-bold ml-3"><?php echo count($users); ?> below threshold</span>
                            <small class="text-muted d-block font-size-sm mt-1">
                                Threshold: <strong><?php echo rtrim(rtrim(number_format((float)$c['low_balance_threshold'],9),'0'),'.'); ?>
                                <?php echo htmlspecialchars($c['symbol']); ?></strong>
                            </small>
                        </h3>
                    </div>
                    <div class="card-toolbar">
                        <a href="crypto-topup" class="btn btn-sm btn-light-success font-weight-bold">
                            <i class="ki ki-plus icon-nm"></i> Bulk Top-Up
                        </a>
                    </div>
                </div>
                <div class="card-body py-0">
                    <div class="table-responsive">
                        <table class="table table-head-custom table-vertical-center">
                            <thead>
                                <tr class="text-uppercase text-muted font-size-xs">
                                    <th>Player</th>
                                    <th>Contact</th>
                                    <th>Balance</th>
                                    <th>Gap to Threshold</th>
                                    <th>Last Updated</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($users as $u):
                                $gap = (float)$c['low_balance_threshold'] - (float)$u['balance'];
                                $pct = $c['low_balance_threshold'] > 0
                                    ? min(100, round(($u['balance'] / $c['low_balance_threshold']) * 100))
                                    : 0;
                                $barColour = $pct < 25 ? 'danger' : ($pct < 60 ? 'warning' : 'success');
                            ?>
                            <tr class="user-row">
                                <td>
                                    <div class="d-flex align-items-center">
                                        <?php if ($u['profile_img']): ?>
                                        <img src="<?php echo htmlspecialchars($u['profile_img']); ?>"
                                             class="rounded-circle mr-3" width="36" height="36"
                                             style="object-fit:cover;" alt="">
                                        <?php else: ?>
                                        <div class="bg-light-primary rounded-circle d-flex align-items-center justify-content-center mr-3"
                                             style="width:36px;height:36px;font-size:.75rem;font-weight:800;color:#3699ff;">
                                            <?php echo strtoupper(substr($u['full_name'] ?: $u['username'],0,2)); ?>
                                        </div>
                                        <?php endif; ?>
                                        <div>
                                            <div class="font-weight-bold text-dark">
                                                <?php echo htmlspecialchars($u['full_name'] ?: '(no name)'); ?>
                                            </div>
                                            <div class="text-muted font-size-xs">@<?php echo htmlspecialchars($u['username']); ?></div>
                                        </div>
                                    </div>
                                </td>
                                <td class="text-muted font-size-xs">
                                    <?php echo htmlspecialchars($u['mobile'] ?: $u['email'] ?: '—'); ?>
                                </td>
                                <td>
                                    <div class="font-weight-bolder text-danger">
                                        <?php echo rtrim(rtrim(number_format((float)$u['balance'],9),'0'),'.'); ?>
                                        <span class="text-muted font-weight-normal font-size-xs"><?php echo htmlspecialchars($c['symbol']); ?></span>
                                    </div>
                                    <div class="progress mt-1" style="height:4px; width:90px;">
                                        <div class="progress-bar bg-<?php echo $barColour; ?>"
                                             style="width:<?php echo $pct; ?>%"></div>
                                    </div>
                                    <div class="text-muted font-size-xs"><?php echo $pct; ?>% of threshold</div>
                                </td>
                                <td>
                                    <span class="text-warning font-weight-bold">
                                        +<?php echo rtrim(rtrim(number_format($gap,9),'0'),'.'); ?>
                                        <span class="text-muted font-weight-normal font-size-xs"><?php echo htmlspecialchars($c['symbol']); ?></span>
                                    </span>
                                    <div class="text-muted font-size-xs">needed to reach threshold</div>
                                </td>
                                <td class="text-muted font-size-xs text-nowrap">
                                    <?php echo $u['date_modified'] ? date('d M y H:i', strtotime($u['date_modified'])) : '—'; ?>
                                </td>
                                <td>
                                    <a href="player-wallet?uid=<?php echo $u['user_id']; ?>"
                                       class="btn btn-sm btn-light-primary font-weight-bold">
                                        <i class="ki ki-eye icon-xs"></i> Wallet
                                    </a>
                                </td>
                            </tr>
                            <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <?php endforeach; ?>

            <?php if (!empty($noWalletByCoin)): ?>
            <!-- ── Players with no wallet row ── -->
            <div class="card card-custom mb-5 border-dashed" style="border:1px dashed #dee2e6;">
                <div class="card-header">
                    <div class="card-title">
                        <h3 class="card-label">Players Without a Coin Wallet
                            <small class="text-muted d-block font-size-sm mt-1">These players have never received or used coins — shown for reference.</small>
                        </h3>
                    </div>
                </div>
                <div class="card-body py-3">
                    <?php foreach ($noWalletByCoin as $group): $c = $group['coin']; ?>
                    <div class="mb-4">
                        <div class="text-dark font-weight-bold mb-2">
                            <span class="label label-inline label-light-secondary font-weight-bold mr-2">
                                <?php echo htmlspecialchars($c['symbol']); ?>
                            </span>
                            <?php echo htmlspecialchars($c['name']); ?>
                            <span class="text-muted font-weight-normal ml-2 font-size-xs">(<?php echo count($group['users']); ?> players, showing first 20)</span>
                        </div>
                        <div class="d-flex flex-wrap">
                        <?php foreach ($group['users'] as $u): ?>
                        <a href="player-wallet?uid=<?php echo $u['user_id']; ?>"
                           class="d-flex align-items-center bg-light rounded px-3 py-2 mr-2 mb-2 text-dark"
                           style="text-decoration:none;">
                            <?php if ($u['profile_img']): ?>
                            <img src="<?php echo htmlspecialchars($u['profile_img']); ?>"
                                 class="rounded-circle mr-2" width="22" height="22"
                                 style="object-fit:cover;" alt="">
                            <?php else: ?>
                            <div class="bg-secondary rounded-circle d-flex align-items-center justify-content-center mr-2"
                                 style="width:22px;height:22px;font-size:.6rem;font-weight:800;color:#fff;flex-shrink:0;">
                                <?php echo strtoupper(substr($u['full_name'] ?: $u['username'],0,1)); ?>
                            </div>
                            <?php endif; ?>
                            <span class="font-size-sm">@<?php echo htmlspecialchars($u['username']); ?></span>
                        </a>
                        <?php endforeach; ?>
                        </div>
                    </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <?php endif; ?>

        </div>
    </div>
</div>
<?php include('include/footer.php'); ?>
</div></div></div>
</body>
</html>
