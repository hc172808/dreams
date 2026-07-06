<?php 
include('include/security.php');

// ── Load active coin types ────────────────────────────────────────
$coinTypes = $conn->query("SELECT id, name, symbol, network FROM tbl_coin_type WHERE is_active=1 ORDER BY sort_order ASC, name ASC");
$coins = [];
while ($row = $coinTypes->fetch_assoc()) { $coins[] = $row; }

// ── Handle Create ─────────────────────────────────────────────────
if (isset($_POST['btnCreateCoinMatch'])) {
    $coinId    = (int)$_POST['coin_id'];
    $coinFee   = (float)$_POST['coin_fee'];
    $coinPrize = (float)$_POST['coin_prize'];
    $tblSize   = (int)$_POST['txtTblSize'];
    $mType     = $conn->real_escape_string($_POST['txtMtype']);

    if ($coinId <= 0 || $coinFee <= 0 || $coinPrize <= 0) {
        flash('fmsg','fmsg','Please fill all fields correctly.','danger','TRUE');
        header("Location:create-coin-match"); exit();
    }

    $sql = "INSERT INTO tbl_match 
                (match_fee, prize, table_size, type, coin_id, coin_fee, coin_prize, added_by)
            VALUES 
                (0, 0, $tblSize, '$mType', $coinId, $coinFee, $coinPrize, $userId)";

    if ($conn->query($sql)) {
        flash('fmsg','fmsg','Coin match created successfully.','success','TRUE');
        header("Location:coin-match-list"); exit();
    } else {
        flash('fmsg','fmsg','Error: '.$conn->error,'danger','TRUE');
        header("Location:create-coin-match"); exit();
    }
}

// ── Handle Update ─────────────────────────────────────────────────
if (isset($_GET['uid'])) {
    $uid = (int)$_GET['uid'];
    $qr  = $conn->query("SELECT * FROM tbl_match WHERE id=$uid AND coin_id IS NOT NULL");
    $result = $qr ? $qr->fetch_assoc() : null;

    if (!$result) {
        flash('fmsg','fmsg','Match not found.','danger','TRUE');
        header("Location:coin-match-list"); exit();
    }

    if (isset($_POST['btnUpdateCoinMatch'])) {
        $coinId    = (int)$_POST['coin_id'];
        $coinFee   = (float)$_POST['coin_fee'];
        $coinPrize = (float)$_POST['coin_prize'];
        $tblSize   = (int)$_POST['txtTblSize'];
        $mType     = $conn->real_escape_string($_POST['txtMtype']);

        $sql = "UPDATE tbl_match SET 
                    coin_id=$coinId, coin_fee=$coinFee, coin_prize=$coinPrize,
                    table_size=$tblSize, type='$mType'
                WHERE id=$uid AND coin_id IS NOT NULL";

        if ($conn->query($sql)) {
            flash('fmsg','fmsg','Coin match updated successfully.','success','TRUE');
            header("Location:coin-match-list"); exit();
        } else {
            flash('fmsg','fmsg','Error: '.$conn->error,'danger','TRUE');
            header("Location:create-coin-match?uid=$uid"); exit();
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head><base href="">
    <meta charset="utf-8" />
    <title><?php echo isset($uid) ? 'Edit' : 'Create'; ?> Coin Match | <?php echo $appDetRes['app_name']; ?></title>
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
    <!-- Subheader -->
    <div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <div class="d-flex align-items-center flex-wrap mr-2">
                <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">
                    <?php echo isset($_GET['uid']) ? 'Edit Coin Match' : 'Create Coin Match'; ?>
                </h5>
                <div class="subheader-separator subheader-separator-ver mt-2 mb-2 mr-4 bg-gray-200"></div>
                <a href="coin-match-list" class="text-muted font-size-base font-weight-bold">
                    <i class="ki ki-arrow-back icon-nm mr-1"></i> Back to Coin Matches
                </a>
            </div>
            <div class="d-flex align-items-center">
                <span class="text-primary font-size-base font-weight-bolder"><?php echo date("F j, Y"); ?></span>
            </div>
        </div>
    </div>

    <!-- Content -->
    <div class="d-flex flex-column-fluid">
        <div class="container">
            <?php flash('fmsg'); ?>

            <!-- Info banner -->
            <div class="alert alert-custom alert-notice alert-light-primary fade show mb-5" role="alert">
                <div class="alert-icon"><i class="ki ki-compass icon-nm text-primary"></i></div>
                <div class="alert-text">
                    <strong>Coin Match</strong> — players pay the entry fee in crypto coins instead of rupees.
                    The prize is paid directly from the <strong>Betting Bank</strong> to the winner's coin wallet when you approve the result.
                </div>
            </div>

            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="card card-custom">
                        <div class="card-header">
                            <div class="card-title">
                                <span class="card-icon">
                                    <i class="flaticon2-layers text-primary"></i>
                                </span>
                                <h3 class="card-label">
                                    <?php echo isset($_GET['uid']) ? 'Update Coin Match' : 'New Coin Match'; ?>
                                </h3>
                            </div>
                        </div>

                        <form class="form" action="create-coin-match<?php echo isset($_GET['uid']) ? '?uid='.$_GET['uid'] : ''; ?>" method="post">
                            <div class="card-body">

                                <!-- Coin Type -->
                                <div class="form-group row align-items-center">
                                    <label class="col-3 col-form-label text-right font-weight-bold">
                                        Coin Type <span class="text-danger">*</span>
                                    </label>
                                    <div class="col-9">
                                        <select name="coin_id" class="form-control form-control-lg form-control-solid" required id="coinSelect">
                                            <option value="">— Select a coin —</option>
                                            <?php foreach ($coins as $c): ?>
                                            <option value="<?php echo $c['id']; ?>"
                                                <?php if (isset($result) && $result['coin_id']==$c['id']) echo 'selected'; ?>>
                                                <?php echo htmlspecialchars($c['name']); ?>
                                                (<?php echo htmlspecialchars($c['symbol']); ?>)
                                                — <?php echo ucfirst($c['network']); ?>
                                            </option>
                                            <?php endforeach; ?>
                                        </select>
                                        <?php if (empty($coins)): ?>
                                        <div class="text-danger mt-2 font-size-sm">
                                            No active coins found.
                                            <a href="crypto-coins">Add a coin first →</a>
                                        </div>
                                        <?php endif; ?>
                                    </div>
                                </div>

                                <!-- Entry Fee -->
                                <div class="form-group row align-items-center">
                                    <label class="col-3 col-form-label text-right font-weight-bold">
                                        Entry Fee <span class="text-danger">*</span>
                                    </label>
                                    <div class="col-9">
                                        <div class="input-group">
                                            <input class="form-control form-control-lg form-control-solid"
                                                   type="number" step="0.000000001" min="0.000000001"
                                                   placeholder="e.g. 0.5"
                                                   name="coin_fee" id="coinFee"
                                                   required
                                                   value="<?php echo isset($result) ? $result['coin_fee'] : ''; ?>"
                                                   oninput="autoCalcPrize()" />
                                            <div class="input-group-append">
                                                <span class="input-group-text font-weight-bold" id="feeSuffix">COIN</span>
                                            </div>
                                        </div>
                                        <span class="form-text text-muted">Amount each player pays to join this match.</span>
                                    </div>
                                </div>

                                <!-- Prize -->
                                <div class="form-group row align-items-center">
                                    <label class="col-3 col-form-label text-right font-weight-bold">
                                        Prize <span class="text-danger">*</span>
                                    </label>
                                    <div class="col-9">
                                        <div class="input-group">
                                            <input class="form-control form-control-lg form-control-solid"
                                                   type="number" step="0.000000001" min="0.000000001"
                                                   placeholder="e.g. 0.9"
                                                   name="coin_prize" id="coinPrize"
                                                   required
                                                   value="<?php echo isset($result) ? $result['coin_prize'] : ''; ?>" />
                                            <div class="input-group-append">
                                                <span class="input-group-text font-weight-bold" id="prizeSuffix">COIN</span>
                                            </div>
                                        </div>
                                        <span class="form-text text-muted">
                                            Winner receives this amount from the Betting Bank.
                                            <a href="javascript:void(0)" onclick="setPrize90()">Set to 90% of 2× fee</a> (standard house cut).
                                        </span>
                                    </div>
                                </div>

                                <!-- Table Size -->
                                <div class="form-group row align-items-center">
                                    <label class="col-3 col-form-label text-right font-weight-bold">
                                        Table Size <span class="text-danger">*</span>
                                    </label>
                                    <div class="col-9">
                                        <select name="txtTblSize" class="form-control form-control-lg form-control-solid" required>
                                            <?php foreach ([2,3,4,5,6] as $s): ?>
                                            <option value="<?php echo $s; ?>"
                                                <?php if (isset($result) && $result['table_size']==$s) echo 'selected'; ?>>
                                                <?php echo $s; ?> Players
                                            </option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>

                                <!-- Match Type -->
                                <div class="form-group row align-items-center">
                                    <label class="col-3 col-form-label text-right font-weight-bold">Match Type</label>
                                    <div class="col-9">
                                        <select name="txtMtype" class="form-control form-control-lg form-control-solid">
                                            <option value="Classic" <?php if(isset($result) && $result['type']=='Classic') echo 'selected'; ?>>Classic</option>
                                            <option value="Quick"   <?php if(isset($result) && $result['type']=='Quick')   echo 'selected'; ?>>Quick</option>
                                            <option value="Turbo"   <?php if(isset($result) && $result['type']=='Turbo')   echo 'selected'; ?>>Turbo</option>
                                        </select>
                                    </div>
                                </div>

                                <!-- Summary Card -->
                                <div class="form-group row">
                                    <div class="col-3"></div>
                                    <div class="col-9">
                                        <div class="bg-light-primary rounded p-4" id="summaryBox" style="display:none;">
                                            <h6 class="font-weight-bold text-primary mb-2">
                                                <i class="ki ki-check-1 text-primary mr-1"></i> Match Summary
                                            </h6>
                                            <table class="table table-sm table-borderless mb-0">
                                                <tr>
                                                    <td class="text-muted pr-4">Each player pays</td>
                                                    <td class="font-weight-bold" id="sumFee">—</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-muted pr-4">Total pot (2 players)</td>
                                                    <td class="font-weight-bold" id="sumPot">—</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-muted pr-4">Winner receives</td>
                                                    <td class="font-weight-bold text-success" id="sumPrize">—</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-muted pr-4">Platform cut</td>
                                                    <td class="font-weight-bold text-warning" id="sumCut">—</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div><!-- card-body -->

                            <div class="card-footer d-flex justify-content-between align-items-center">
                                <a href="coin-match-list" class="btn btn-light font-weight-bold">
                                    <i class="ki ki-arrow-back icon-nm"></i> Cancel
                                </a>
                                <button type="submit"
                                        class="btn btn-primary font-weight-bold px-9"
                                        name="<?php echo isset($_GET['uid']) ? 'btnUpdateCoinMatch' : 'btnCreateCoinMatch'; ?>"
                                        <?php if(empty($coins)) echo 'disabled title="Add a coin type first"'; ?>>
                                    <i class="ki ki-check icon-nm mr-1"></i>
                                    <?php echo isset($_GET['uid']) ? 'Save Changes' : 'Create Coin Match'; ?>
                                </button>
                            </div>
                        </form>
                    </div><!-- card -->
                </div>
            </div>
        </div>
    </div>
</div>
<?php include('include/footer.php'); ?>
</div></div></div>

<script>
// Map coin id → symbol for suffix labels
var coinSymbols = {
    <?php foreach($coins as $c): ?>
    <?php echo $c['id']; ?>: "<?php echo addslashes($c['symbol']); ?>",
    <?php endforeach; ?>
};

document.getElementById('coinSelect').addEventListener('change', function(){
    var sym = coinSymbols[this.value] || 'COIN';
    document.getElementById('feeSuffix').textContent  = sym;
    document.getElementById('prizeSuffix').textContent = sym;
    updateSummary();
});

// Trigger on load if editing
(function(){
    var sel = document.getElementById('coinSelect');
    if(sel.value){
        var sym = coinSymbols[sel.value] || 'COIN';
        document.getElementById('feeSuffix').textContent  = sym;
        document.getElementById('prizeSuffix').textContent = sym;
        updateSummary();
    }
})();

document.getElementById('coinFee').addEventListener('input', updateSummary);
document.getElementById('coinPrize').addEventListener('input', updateSummary);

function autoCalcPrize(){
    var fee = parseFloat(document.getElementById('coinFee').value) || 0;
    if(fee > 0){
        var prize = (fee * 2 * 0.9);
        document.getElementById('coinPrize').value = prize.toFixed(9).replace(/\.?0+$/, '');
    }
    updateSummary();
}

function setPrize90(){
    var fee = parseFloat(document.getElementById('coinFee').value) || 0;
    if(fee > 0){
        document.getElementById('coinPrize').value = (fee * 2 * 0.9).toFixed(9).replace(/\.?0+$/, '');
        updateSummary();
    }
}

function updateSummary(){
    var sel   = document.getElementById('coinSelect');
    var fee   = parseFloat(document.getElementById('coinFee').value) || 0;
    var prize = parseFloat(document.getElementById('coinPrize').value) || 0;
    var sym   = sel.value ? (coinSymbols[sel.value] || 'COIN') : 'COIN';

    if(fee <= 0 || prize <= 0 || !sel.value){ 
        document.getElementById('summaryBox').style.display = 'none'; 
        return; 
    }

    var pot = fee * 2;
    var cut = pot - prize;
    var cutPct = pot > 0 ? ((cut/pot)*100).toFixed(1) : 0;

    document.getElementById('summaryBox').style.display = '';
    document.getElementById('sumFee').textContent   = fmt(fee)   + ' ' + sym;
    document.getElementById('sumPot').textContent   = fmt(pot)   + ' ' + sym;
    document.getElementById('sumPrize').textContent = fmt(prize) + ' ' + sym;
    document.getElementById('sumCut').textContent   = fmt(cut)   + ' ' + sym + ' (' + cutPct + '%)';
}

function fmt(n){
    var s = parseFloat(n).toFixed(9).replace(/\.?0+$/, '');
    return s;
}
</script>
</body>
</html>
