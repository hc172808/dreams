<?php
include('include/security.php');

$coin_filter   = isset($_GET['coin'])   ? intval($_GET['coin'])   : 0;
$status_filter = isset($_GET['status']) ? $_GET['status']         : '';

$coins = [];
$cr = $conn->query("SELECT * FROM tbl_coin_type ORDER BY sort_order ASC");
while ($r = $cr->fetch_assoc()) $coins[] = $r;

$where = ["1=1"];
if ($coin_filter)  $where[] = "b.coin_id=$coin_filter";
if ($status_filter) $where[] = "b.status='".mysqli_real_escape_string($conn,$status_filter)."'";
$ws = implode(' AND ', $where);

$rows = [];
$res = $conn->query("SELECT b.*,
    u.username, u.full_name,
    c.name AS coin_name, c.symbol,
    m.match_fee, m.prize, m.status AS match_status
    FROM tbl_coin_betting_bank b
    JOIN tbl_user u  ON u.id  = b.user_id
    JOIN tbl_coin_type c ON c.id = b.coin_id
    JOIN tbl_match m ON m.id = b.match_id
    WHERE $ws
    ORDER BY b.id DESC LIMIT 300");
while ($r = $res->fetch_assoc()) $rows[] = $r;

$totals = [];
$tr = $conn->query("SELECT c.symbol, b.status, SUM(b.amount) AS total
    FROM tbl_coin_betting_bank b
    JOIN tbl_coin_type c ON c.id=b.coin_id
    GROUP BY c.symbol, b.status");
while ($r = $tr->fetch_assoc()) {
    $totals[$r['symbol']][$r['status']] = $r['total'];
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>Betting Bank | <?php echo $appDetRes['app_name']; ?></title>
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
            <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Betting Bank Wallet</h5>
            <a href="crypto-coins" class="btn btn-sm btn-secondary">Manage Coins</a>
        </div>
    </div>
    <div class="d-flex flex-column-fluid">
    <div class="container">

        <!-- SUMMARY CARDS -->
        <div class="row mb-5">
        <?php foreach ($totals as $sym => $statuses): ?>
            <div class="col-md-4 col-sm-6 mb-4">
                <div class="card card-custom card-stretch shadow-sm">
                    <div class="card-body py-4">
                        <div class="d-flex align-items-center">
                            <div>
                                <h4 class="font-weight-bolder"><?php echo htmlspecialchars($sym); ?> Betting Bank</h4>
                                <table class="table table-sm table-borderless mb-0">
                                    <?php foreach ($statuses as $st => $amt): ?>
                                    <tr>
                                        <td><span class="badge badge-<?php echo $st=='held'?'warning':($st=='won'?'success':($st=='refunded'?'info':'danger')); ?>"><?php echo $st; ?></span></td>
                                        <td class="font-weight-bold"><?php echo number_format($amt,4); ?> <?php echo htmlspecialchars($sym); ?></td>
                                    </tr>
                                    <?php endforeach; ?>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
        <?php if (empty($totals)): ?>
            <div class="col-12"><div class="alert alert-info">No coin bets placed yet. Users join coin matches to create betting bank entries.</div></div>
        <?php endif; ?>
        </div>

        <!-- FILTERS -->
        <div class="card card-custom gutter-b">
            <div class="card-body py-3">
                <form method="GET" class="form-inline">
                    <select name="coin" class="form-control mr-2 mb-2">
                        <option value="">All Coins</option>
                        <?php foreach ($coins as $c): ?>
                        <option value="<?php echo $c['id']; ?>" <?php echo $c['id']==$coin_filter?'selected':''; ?>><?php echo htmlspecialchars($c['symbol']); ?></option>
                        <?php endforeach; ?>
                    </select>
                    <select name="status" class="form-control mr-2 mb-2">
                        <option value="">All Status</option>
                        <option value="held"      <?php echo $status_filter=='held'?'selected':'';      ?>>Held (In Match)</option>
                        <option value="won"       <?php echo $status_filter=='won'?'selected':'';       ?>>Won (Paid Out)</option>
                        <option value="refunded"  <?php echo $status_filter=='refunded'?'selected':'';  ?>>Refunded</option>
                        <option value="cancelled" <?php echo $status_filter=='cancelled'?'selected':''; ?>>Cancelled</option>
                    </select>
                    <button type="submit" class="btn btn-primary mr-2 mb-2">Filter</button>
                    <a href="crypto-betting-bank" class="btn btn-secondary mb-2">Reset</a>
                </form>
            </div>
        </div>

        <!-- BETS TABLE -->
        <div class="card card-custom gutter-b">
            <div class="card-header">
                <div class="card-title"><h3 class="card-label">All Bets <span class="text-muted font-size-sm">(<?php echo count($rows); ?> entries)</span></h3></div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                <table class="table table-bordered table-hover table-sm">
                    <thead class="thead-light">
                        <tr>
                            <th>#</th>
                            <th>Match</th>
                            <th>User</th>
                            <th>Coin</th>
                            <th>Bet Amount</th>
                            <th>Status</th>
                            <th>Placed At</th>
                            <th>Settled At</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($rows as $b): ?>
                    <tr>
                        <td><?php echo $b['id']; ?></td>
                        <td>
                            <a href="match-summery?mid=<?php echo $b['match_id']; ?>" class="font-weight-bold">#<?php echo $b['match_id']; ?></a>
                            <small class="d-block text-muted">
                                <?php
                                $ms = ['1'=>'Upcoming','2'=>'Live','3'=>'Completed','4'=>'Cancelled'];
                                echo '<span class="badge badge-'.($b['match_status']==3?'success':($b['match_status']==4?'danger':($b['match_status']==2?'warning':'info'))).'">'.($ms[$b['match_status']]??$b['match_status']).'</span>';
                                ?>
                            </small>
                        </td>
                        <td>
                            <strong><?php echo htmlspecialchars($b['username']); ?></strong>
                            <small class="d-block text-muted"><?php echo htmlspecialchars($b['full_name']); ?></small>
                        </td>
                        <td><strong><?php echo htmlspecialchars($b['symbol']); ?></strong></td>
                        <td class="font-weight-bold"><?php echo number_format($b['amount'],4); ?></td>
                        <td>
                            <span class="badge badge-<?php echo $b['status']=='held'?'warning':($b['status']=='won'?'success':($b['status']=='refunded'?'info':'danger')); ?>">
                                <?php echo $b['status']; ?>
                            </span>
                        </td>
                        <td><small><?php echo $b['date_created']; ?></small></td>
                        <td><small><?php echo $b['date_settled'] ?: '—'; ?></small></td>
                        <td>
                            <a href="match-summery?mid=<?php echo $b['match_id']; ?>" class="btn btn-sm btn-light-primary">View Match</a>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                    <?php if (empty($rows)): ?><tr><td colspan="9" class="text-center text-muted py-4">No betting bank entries found.</td></tr><?php endif; ?>
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
