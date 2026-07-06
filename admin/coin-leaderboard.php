<?php 
include('include/security.php');

// ── Filters ───────────────────────────────────────────────────────
$filterCoin   = isset($_GET['coin'])   ? (int)$_GET['coin']   : 0;
$filterPeriod = isset($_GET['period']) ? $_GET['period']       : 'all';
$limitTop     = isset($_GET['limit'])  ? (int)$_GET['limit']  : 20;
if (!in_array($limitTop, [10,20,50,100])) $limitTop = 20;

$periodWhere = "";
switch ($filterPeriod) {
    case 'today':   $periodWhere = "AND DATE(t.date_created) = CURDATE()"; break;
    case 'week':    $periodWhere = "AND t.date_created >= DATE_SUB(NOW(), INTERVAL 7 DAY)"; break;
    case 'month':   $periodWhere = "AND t.date_created >= DATE_SUB(NOW(), INTERVAL 30 DAY)"; break;
}

$coinWhere = $filterCoin ? "AND t.coin_id=$filterCoin" : "";

// ── Top winners by total coins won ────────────────────────────────
$sql = "
    SELECT 
        u.id AS user_id,
        u.full_name,
        u.username,
        u.profile_img,
        c.id AS coin_id,
        c.name AS coin_name,
        c.symbol AS coin_symbol,
        c.network,
        COUNT(t.id)                         AS matches_won,
        SUM(t.amount)                       AS total_won,
        MAX(t.amount)                       AS biggest_win,
        MIN(t.date_created)                 AS first_win,
        MAX(t.date_created)                 AS last_win
    FROM tbl_coin_transaction t
    JOIN tbl_user u  ON u.id = t.user_id
    JOIN tbl_coin_type c ON c.id = t.coin_id
    WHERE t.type='credit'
      AND t.reason='match_win'
      AND t.status='completed'
      $coinWhere
      $periodWhere
    GROUP BY u.id, c.id
    ORDER BY total_won DESC
    LIMIT $limitTop
";
$leaderboard = $conn->query($sql);
$rows = [];
if ($leaderboard) {
    while ($r = $leaderboard->fetch_assoc()) $rows[] = $r;
}

// ── Summary stats ─────────────────────────────────────────────────
$stats = $conn->query("
    SELECT 
        COUNT(DISTINCT t.user_id) AS total_winners,
        COUNT(t.id)               AS total_payouts,
        SUM(t.amount)             AS total_paid_out,
        MAX(t.amount)             AS biggest_ever
    FROM tbl_coin_transaction t
    WHERE t.type='credit' AND t.reason='match_win' AND t.status='completed'
    " . ($filterCoin ? "AND t.coin_id=$filterCoin" : "") . "
    $periodWhere
")->fetch_assoc();

// ── Coin types for filter dropdown ────────────────────────────────
$coinTypes = $conn->query("SELECT id,name,symbol FROM tbl_coin_type WHERE is_active=1 ORDER BY sort_order");
$coins = [];
while ($c = $coinTypes->fetch_assoc()) $coins[] = $c;
?>
<!DOCTYPE html>
<html lang="en">
<head><base href="">
    <meta charset="utf-8" />
    <title>Coin Leaderboard | <?php echo $appDetRes['app_name']; ?></title>
    <?php include('include/head-section.php'); ?>
    <link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
    <style>
        .rank-1 { color: #FFD700; font-size: 1.4rem; }
        .rank-2 { color: #C0C0C0; font-size: 1.3rem; }
        .rank-3 { color: #CD7F32; font-size: 1.2rem; }
        .rank-badge { display:inline-block; width:32px; text-align:center; font-weight:800; }
        .avatar-sm { width:38px; height:38px; border-radius:50%; object-fit:cover; background:#E5EAEE; display:inline-flex; align-items:center; justify-content:center; font-weight:700; font-size:.85rem; color:#6c757d; }
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
                <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">🏆 Coin Leaderboard</h5>
                <div class="subheader-separator subheader-separator-ver mt-2 mb-2 mr-4 bg-gray-200"></div>
                <span class="text-muted font-size-base font-weight-bold">Top winners by crypto coins earned</span>
            </div>
            <div class="d-flex align-items-center">
                <span class="text-primary font-size-base font-weight-bolder"><?php echo date("F j, Y"); ?></span>
            </div>
        </div>
    </div>

    <div class="d-flex flex-column-fluid">
        <div class="container">

            <!-- Summary Cards -->
            <div class="row mb-6">
                <div class="col-md-3 col-sm-6 mb-4">
                    <div class="card card-custom bg-primary text-white">
                        <div class="card-body py-5 px-6">
                            <div class="text-white-50 font-size-sm font-weight-bold mb-1">Total Winners</div>
                            <div class="font-weight-bolder font-size-h3"><?php echo number_format((int)($stats['total_winners'] ?? 0)); ?></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mb-4">
                    <div class="card card-custom bg-success text-white">
                        <div class="card-body py-5 px-6">
                            <div class="text-white-50 font-size-sm font-weight-bold mb-1">Total Payouts</div>
                            <div class="font-weight-bolder font-size-h3"><?php echo number_format((int)($stats['total_payouts'] ?? 0)); ?></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mb-4">
                    <div class="card card-custom bg-warning text-white">
                        <div class="card-body py-5 px-6">
                            <div class="text-white-50 font-size-sm font-weight-bold mb-1">Total Paid Out</div>
                            <div class="font-weight-bolder font-size-h4">
                                <?php 
                                $tp = (float)($stats['total_paid_out'] ?? 0);
                                echo rtrim(rtrim(number_format($tp, 9), '0'), '.'); 
                                if ($filterCoin && !empty($coins)) {
                                    foreach ($coins as $c) { if ($c['id']==$filterCoin) { echo ' '.$c['symbol']; break; } }
                                }
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mb-4">
                    <div class="card card-custom bg-danger text-white">
                        <div class="card-body py-5 px-6">
                            <div class="text-white-50 font-size-sm font-weight-bold mb-1">Biggest Single Win</div>
                            <div class="font-weight-bolder font-size-h4">
                                <?php 
                                $bw = (float)($stats['biggest_ever'] ?? 0);
                                echo rtrim(rtrim(number_format($bw, 9), '0'), '.'); 
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Filters -->
            <div class="card card-custom mb-5">
                <div class="card-body py-4">
                    <form method="GET" class="d-flex flex-wrap align-items-center">
                        <div class="mr-4 mb-2">
                            <label class="font-weight-bold mr-2 mb-0">Coin:</label>
                            <select name="coin" class="form-control form-control-sm d-inline-block" style="width:auto">
                                <option value="0">All Coins</option>
                                <?php foreach($coins as $c): ?>
                                <option value="<?php echo $c['id']; ?>" <?php if($filterCoin==$c['id']) echo 'selected'; ?>>
                                    <?php echo htmlspecialchars($c['name'].' ('.$c['symbol'].')'); ?>
                                </option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="mr-4 mb-2">
                            <label class="font-weight-bold mr-2 mb-0">Period:</label>
                            <select name="period" class="form-control form-control-sm d-inline-block" style="width:auto">
                                <option value="all"   <?php if($filterPeriod=='all')   echo 'selected'; ?>>All Time</option>
                                <option value="today" <?php if($filterPeriod=='today') echo 'selected'; ?>>Today</option>
                                <option value="week"  <?php if($filterPeriod=='week')  echo 'selected'; ?>>Last 7 Days</option>
                                <option value="month" <?php if($filterPeriod=='month') echo 'selected'; ?>>Last 30 Days</option>
                            </select>
                        </div>
                        <div class="mr-4 mb-2">
                            <label class="font-weight-bold mr-2 mb-0">Show Top:</label>
                            <select name="limit" class="form-control form-control-sm d-inline-block" style="width:auto">
                                <?php foreach([10,20,50,100] as $n): ?>
                                <option value="<?php echo $n; ?>" <?php if($limitTop==$n) echo 'selected'; ?>><?php echo $n; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="mb-2">
                            <button type="submit" class="btn btn-primary btn-sm mr-2">Apply</button>
                            <a href="coin-leaderboard" class="btn btn-light btn-sm">Reset</a>
                        </div>
                    </form>
                </div>
            </div>

            <!-- Leaderboard Table -->
            <div class="card card-custom">
                <div class="card-header">
                    <div class="card-title">
                        <h3 class="card-label">
                            Top <?php echo $limitTop; ?> Winners
                            <?php if ($filterPeriod != 'all'): ?>
                            <small class="text-muted ml-2">
                                — <?php echo ['today'=>'Today','week'=>'Last 7 Days','month'=>'Last 30 Days'][$filterPeriod]; ?>
                            </small>
                            <?php endif; ?>
                        </h3>
                    </div>
                    <div class="card-toolbar">
                        <a href="crypto-transactions" class="btn btn-sm btn-light-primary">
                            <i class="ki ki-plus icon-nm"></i> View All Transactions
                        </a>
                    </div>
                </div>
                <div class="card-body py-0">
                    <?php if (empty($rows)): ?>
                    <div class="text-center text-muted py-10">
                        <i class="ki ki-bold-close icon-3x d-block mb-3 opacity-50"></i>
                        No winners yet for this period / coin.
                    </div>
                    <?php else: ?>
                    <div class="table-responsive">
                        <table class="table table-head-custom table-vertical-center" id="leaderboardTable">
                            <thead>
                                <tr class="text-uppercase text-muted font-size-sm">
                                    <th style="width:60px">Rank</th>
                                    <th>Player</th>
                                    <th>Coin</th>
                                    <th>Matches Won</th>
                                    <th>Total Earned</th>
                                    <th>Biggest Win</th>
                                    <th>Last Win</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($rows as $i => $r): ?>
                                <?php 
                                $rank = $i + 1;
                                $rankClass = $rank === 1 ? 'rank-1' : ($rank === 2 ? 'rank-2' : ($rank === 3 ? 'rank-3' : ''));
                                $rankIcon  = $rank === 1 ? '🥇' : ($rank === 2 ? '🥈' : ($rank === 3 ? '🥉' : $rank));
                                ?>
                                <tr>
                                    <td>
                                        <span class="rank-badge <?php echo $rankClass; ?>"><?php echo $rankIcon; ?></span>
                                    </td>
                                    <td>
                                        <div class="d-flex align-items-center">
                                            <?php if ($r['profile_img']): ?>
                                            <img src="<?php echo htmlspecialchars($r['profile_img']); ?>" class="avatar-sm mr-3" alt="">
                                            <?php else: ?>
                                            <div class="avatar-sm mr-3 bg-light-primary rounded"><?php echo strtoupper(substr($r['full_name'] ?: $r['username'], 0, 2)); ?></div>
                                            <?php endif; ?>
                                            <div>
                                                <span class="font-weight-bold text-dark d-block"><?php echo htmlspecialchars($r['full_name'] ?: '—'); ?></span>
                                                <span class="text-muted font-size-xs">@<?php echo htmlspecialchars($r['username']); ?></span>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <span class="label label-inline label-light-primary font-weight-bold"><?php echo htmlspecialchars($r['coin_symbol']); ?></span>
                                        <span class="text-muted font-size-xs ml-1"><?php echo ucfirst($r['network']); ?></span>
                                    </td>
                                    <td>
                                        <span class="font-weight-bold text-primary"><?php echo number_format((int)$r['matches_won']); ?></span>
                                    </td>
                                    <td>
                                        <span class="font-weight-bolder text-success font-size-lg">
                                            <?php echo rtrim(rtrim(number_format((float)$r['total_won'], 9), '0'), '.'); ?>
                                        </span>
                                        <span class="text-muted ml-1"><?php echo htmlspecialchars($r['coin_symbol']); ?></span>
                                    </td>
                                    <td>
                                        <span class="font-weight-bold text-warning">
                                            <?php echo rtrim(rtrim(number_format((float)$r['biggest_win'], 9), '0'), '.'); ?>
                                        </span>
                                        <span class="text-muted ml-1"><?php echo htmlspecialchars($r['coin_symbol']); ?></span>
                                    </td>
                                    <td class="text-muted font-size-sm">
                                        <?php echo date('d M Y', strtotime($r['last_win'])); ?>
                                    </td>
                                    <td>
                                        <a href="user-activity?uid=<?php echo $r['user_id']; ?>"
                                           class="btn btn-icon btn-sm btn-light-primary"
                                           title="View player">
                                            <i class="ki ki-eye icon-nm"></i>
                                        </a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                    <?php endif; ?>
                </div>
            </div>

        </div>
    </div>
</div>
<?php include('include/footer.php'); ?>
</div></div></div>

<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
<script>
<?php if (!empty($rows)): ?>
$('#leaderboardTable').DataTable({
    pageLength: <?php echo $limitTop; ?>,
    paging: false,
    ordering: false,
    searching: false,
    info: false
});
<?php endif; ?>
</script>
</body>
</html>
