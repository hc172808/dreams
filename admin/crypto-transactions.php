<?php
include('include/security.php');

$coin_filter = isset($_GET['coin']) ? intval($_GET['coin']) : 0;
$user_filter = isset($_GET['user']) ? intval($_GET['user']) : 0;
$type_filter = isset($_GET['type']) ? $_GET['type'] : '';

$coins = [];
$res = $conn->query("SELECT * FROM tbl_coin_type ORDER BY sort_order ASC");
while ($r = $res->fetch_assoc()) $coins[] = $r;

$where = ["1=1"];
if ($coin_filter) $where[] = "ct.coin_id=$coin_filter";
if ($user_filter) $where[] = "ct.user_id=$user_filter";
if ($type_filter) $where[] = "ct.type='".mysqli_real_escape_string($conn,$type_filter)."'";
$whereStr = implode(' AND ', $where);

$txns = [];
$tres = $conn->query("SELECT ct.*, u.username, c.name as coin_name, c.symbol
    FROM tbl_coin_transaction ct
    JOIN tbl_user u ON u.id=ct.user_id
    JOIN tbl_coin_type c ON c.id=ct.coin_id
    WHERE $whereStr
    ORDER BY ct.id DESC LIMIT 200");
while ($r = $tres->fetch_assoc()) $txns[] = $r;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>Crypto Transactions | <?php echo $appDetRes['app_name']; ?></title>
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
            <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Crypto Transactions</h5>
        </div>
    </div>
    <div class="d-flex flex-column-fluid">
    <div class="container">

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
                    <select name="type" class="form-control mr-2 mb-2">
                        <option value="">All Types</option>
                        <option value="credit" <?php echo $type_filter=='credit'?'selected':''; ?>>Credit</option>
                        <option value="debit" <?php echo $type_filter=='debit'?'selected':''; ?>>Debit</option>
                    </select>
                    <button type="submit" class="btn btn-primary mr-2 mb-2">Filter</button>
                    <a href="crypto-transactions" class="btn btn-secondary mb-2">Reset</a>
                </form>
            </div>
        </div>

        <div class="card card-custom gutter-b">
            <div class="card-body">
                <div class="table-responsive">
                <table class="table table-bordered table-hover table-sm">
                    <thead class="thead-light">
                        <tr>
                            <th>#</th>
                            <th>User</th>
                            <th>Coin</th>
                            <th>Amount</th>
                            <th>Type</th>
                            <th>Reason</th>
                            <th>Ref</th>
                            <th>Status</th>
                            <th>Note</th>
                            <th>Date</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($txns as $t): ?>
                    <tr>
                        <td><?php echo $t['id']; ?></td>
                        <td><?php echo htmlspecialchars($t['username']); ?></td>
                        <td><strong><?php echo htmlspecialchars($t['symbol']); ?></strong></td>
                        <td class="<?php echo $t['type']=='credit'?'text-success':'text-danger'; ?>">
                            <?php echo $t['type']=='credit'?'+':'-'; ?><?php echo number_format($t['amount'],4); ?>
                        </td>
                        <td><span class="badge badge-<?php echo $t['type']=='credit'?'success':'danger'; ?>"><?php echo $t['type']; ?></span></td>
                        <td><span class="badge badge-light"><?php echo str_replace('_',' ',$t['reason']); ?></span></td>
                        <td><small><?php echo htmlspecialchars($t['ref_id'] ?? '—'); ?></small></td>
                        <td><span class="badge badge-<?php echo $t['status']=='completed'?'success':($t['status']=='pending'?'warning':'danger'); ?>"><?php echo $t['status']; ?></span></td>
                        <td><small><?php echo htmlspecialchars($t['note'] ?? ''); ?></small></td>
                        <td><small><?php echo $t['date_created']; ?></small></td>
                    </tr>
                    <?php endforeach; ?>
                    <?php if (empty($txns)): ?><tr><td colspan="10" class="text-center text-muted">No transactions found.</td></tr><?php endif; ?>
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
