<?php 
include('include/security.php');

// ── Handle delete ─────────────────────────────────────────────────
if (isset($_GET['del'])) {
    $did = (int)$_GET['del'];
    $conn->query("DELETE FROM tbl_match WHERE id=$did AND coin_id IS NOT NULL AND status=1");
    flash('fmsg','fmsg','Match deleted.','success','TRUE');
    header("Location:coin-match-list"); exit();
}

// ── Filters ───────────────────────────────────────────────────────
$filterCoin   = isset($_GET['coin'])   ? (int)$_GET['coin']         : 0;
$filterStatus = isset($_GET['status']) ? (int)$_GET['status']       : 0;

$where = "m.coin_id IS NOT NULL";
if ($filterCoin)   $where .= " AND m.coin_id=$filterCoin";
if ($filterStatus) $where .= " AND m.status=$filterStatus";

$matches = $conn->query("
    SELECT m.*, 
           c.name AS coin_name, c.symbol AS coin_symbol, c.network,
           u.full_name AS creator_name,
           (SELECT COUNT(*) FROM tbl_participants p WHERE p.match_id=m.id) AS joined_count,
           (SELECT SUM(b.amount) FROM tbl_coin_betting_bank b WHERE b.match_id=m.id AND b.status='held') AS bank_held
    FROM tbl_match m
    LEFT JOIN tbl_coin_type c ON c.id = m.coin_id
    LEFT JOIN tbl_user u ON u.id = m.added_by
    WHERE $where
    ORDER BY m.id DESC
");

$coinTypes = $conn->query("SELECT id,name,symbol FROM tbl_coin_type WHERE is_active=1 ORDER BY sort_order");
$coins = [];
while($r = $coinTypes->fetch_assoc()) $coins[] = $r;

$statusLabels = [1=>'Upcoming',2=>'Live',3=>'Completed',4=>'Cancelled'];
$statusColors = [1=>'primary',2=>'success',3=>'secondary',4=>'danger'];
?>
<!DOCTYPE html>
<html lang="en">
<head><base href="">
    <meta charset="utf-8" />
    <title>Coin Matches | <?php echo $appDetRes['app_name']; ?></title>
    <?php include('include/head-section.php'); ?>
    <link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
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
                <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Coin Matches</h5>
                <div class="subheader-separator subheader-separator-ver mt-2 mb-2 mr-4 bg-gray-200"></div>
                <span class="text-muted font-size-base font-weight-bold">Crypto-fee match management</span>
            </div>
            <div class="d-flex align-items-center">
                <a href="create-coin-match" class="btn btn-primary font-weight-bold btn-sm">
                    <i class="ki ki-plus icon-nm"></i> Create Coin Match
                </a>
            </div>
        </div>
    </div>

    <div class="d-flex flex-column-fluid">
        <div class="container">
            <?php flash('fmsg'); ?>

            <!-- Filters -->
            <div class="card card-custom mb-5">
                <div class="card-body py-4">
                    <form method="GET" class="form-inline">
                        <label class="font-weight-bold mr-2">Coin:</label>
                        <select name="coin" class="form-control form-control-sm mr-4">
                            <option value="0">All Coins</option>
                            <?php foreach($coins as $c): ?>
                            <option value="<?php echo $c['id']; ?>" <?php if($filterCoin==$c['id']) echo 'selected'; ?>>
                                <?php echo htmlspecialchars($c['name'].' ('.$c['symbol'].')'); ?>
                            </option>
                            <?php endforeach; ?>
                        </select>
                        <label class="font-weight-bold mr-2">Status:</label>
                        <select name="status" class="form-control form-control-sm mr-4">
                            <option value="0">All Statuses</option>
                            <?php foreach($statusLabels as $k=>$v): ?>
                            <option value="<?php echo $k; ?>" <?php if($filterStatus==$k) echo 'selected'; ?>><?php echo $v; ?></option>
                            <?php endforeach; ?>
                        </select>
                        <button type="submit" class="btn btn-primary btn-sm mr-2">Filter</button>
                        <a href="coin-match-list" class="btn btn-light btn-sm">Reset</a>
                    </form>
                </div>
            </div>

            <!-- Table -->
            <div class="card card-custom">
                <div class="card-header">
                    <div class="card-title">
                        <h3 class="card-label">All Coin Matches</h3>
                    </div>
                </div>
                <div class="card-body py-0">
                    <div class="table-responsive">
                        <table class="table table-head-custom table-vertical-center" id="coinMatchTable">
                            <thead>
                                <tr class="text-uppercase text-muted font-size-sm">
                                    <th>#</th>
                                    <th>Coin</th>
                                    <th>Entry Fee</th>
                                    <th>Prize</th>
                                    <th>Type</th>
                                    <th>Size</th>
                                    <th>Joined</th>
                                    <th>Bank Held</th>
                                    <th>Status</th>
                                    <th>Created</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php if ($matches && $matches->num_rows > 0): ?>
                                <?php while ($m = $matches->fetch_assoc()): ?>
                                <tr>
                                    <td><span class="font-weight-bold text-dark-75">#<?php echo $m['id']; ?></span></td>
                                    <td>
                                        <span class="label label-inline label-light-primary font-weight-bold">
                                            <?php echo htmlspecialchars($m['coin_symbol'] ?? '?'); ?>
                                        </span>
                                        <div class="text-muted font-size-xs"><?php echo htmlspecialchars($m['coin_name'] ?? ''); ?></div>
                                    </td>
                                    <td>
                                        <span class="font-weight-bold text-dark">
                                            <?php echo rtrim(rtrim(number_format((float)$m['coin_fee'], 9), '0'), '.'); ?>
                                        </span>
                                        <span class="text-muted ml-1"><?php echo htmlspecialchars($m['coin_symbol'] ?? ''); ?></span>
                                    </td>
                                    <td>
                                        <span class="font-weight-bold text-success">
                                            <?php echo rtrim(rtrim(number_format((float)$m['coin_prize'], 9), '0'), '.'); ?>
                                        </span>
                                        <span class="text-muted ml-1"><?php echo htmlspecialchars($m['coin_symbol'] ?? ''); ?></span>
                                    </td>
                                    <td><?php echo htmlspecialchars($m['type']); ?></td>
                                    <td><span class="label label-inline label-light"><?php echo $m['table_size']; ?>P</span></td>
                                    <td>
                                        <span class="font-weight-bold <?php echo $m['joined_count']>0?'text-primary':'text-muted'; ?>">
                                            <?php echo (int)$m['joined_count']; ?> / <?php echo $m['table_size']; ?>
                                        </span>
                                    </td>
                                    <td>
                                        <?php if ($m['bank_held'] > 0): ?>
                                        <span class="font-weight-bold text-warning">
                                            <?php echo rtrim(rtrim(number_format((float)$m['bank_held'], 9), '0'), '.'); ?>
                                            <?php echo htmlspecialchars($m['coin_symbol'] ?? ''); ?>
                                        </span>
                                        <?php else: ?>
                                        <span class="text-muted">—</span>
                                        <?php endif; ?>
                                    </td>
                                    <td>
                                        <?php 
                                        $s = (int)$m['status'];
                                        $sc = $statusColors[$s] ?? 'secondary';
                                        $sl = $statusLabels[$s] ?? 'Unknown';
                                        ?>
                                        <span class="label label-inline label-light-<?php echo $sc; ?> font-weight-bold">
                                            <?php echo $sl; ?>
                                        </span>
                                    </td>
                                    <td class="text-muted font-size-sm"><?php echo date('d M Y', strtotime($m['date_created'])); ?></td>
                                    <td class="pr-0">
                                        <div class="d-flex">
                                            <?php if ($m['status'] == 1): ?>
                                            <a href="create-coin-match?uid=<?php echo $m['id']; ?>"
                                               class="btn btn-icon btn-sm btn-light-primary mr-2"
                                               title="Edit match">
                                                <i class="ki ki-pencil icon-nm"></i>
                                            </a>
                                            <?php endif; ?>
                                            <a href="match-summery?uid=<?php echo $m['id']; ?>"
                                               class="btn btn-icon btn-sm btn-light-success mr-2"
                                               title="View / Approve result">
                                                <i class="ki ki-eye icon-nm"></i>
                                            </a>
                                            <?php if ($m['status'] == 1 && (int)$m['joined_count'] == 0): ?>
                                            <a href="coin-match-list?del=<?php echo $m['id']; ?>"
                                               class="btn btn-icon btn-sm btn-light-danger"
                                               title="Delete (only if no players joined)"
                                               onclick="return confirm('Delete this match?')">
                                                <i class="ki ki-bold-close icon-nm"></i>
                                            </a>
                                            <?php endif; ?>
                                        </div>
                                    </td>
                                </tr>
                                <?php endwhile; ?>
                            <?php else: ?>
                                <tr>
                                    <td colspan="11" class="text-center py-10 text-muted">
                                        No coin matches found.
                                        <a href="create-coin-match" class="ml-2">Create one →</a>
                                    </td>
                                </tr>
                            <?php endif; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div><!-- card -->
        </div>
    </div>
</div>
<?php include('include/footer.php'); ?>
</div></div></div>

<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
<script>
$('#coinMatchTable').DataTable({
    pageLength: 25,
    order: [[0,'desc']],
    columnDefs: [{ orderable: false, targets: [10] }]
});
</script>
</body>
</html>
