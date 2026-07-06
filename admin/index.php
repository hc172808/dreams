<?php 
include('include/security.php');

$upMcount   = $conn->query("select count(*) as totUpmatch from tbl_match where status=1"); 
$upMcountRes = $upMcount->fetch_assoc();

$liveMcount   = $conn->query("select count(*) as totLmatch from tbl_match where status=2"); 
$liveMcountRes = $liveMcount->fetch_assoc();

$cmMcount   = $conn->query("select count(*) as totCmmatch from tbl_match where status=3"); 
$cmMcountRes = $cmMcount->fetch_assoc();

$cnMcount   = $conn->query("select count(*) as totCnmatch from tbl_match where status=4"); 
$cnMcountRes = $cnMcount->fetch_assoc();

// Low-balance alert counts
$lbaCount = 0;
$lbaR = $conn->query("SELECT COUNT(DISTINCT w.user_id) AS cnt FROM tbl_coin_wallet w JOIN tbl_coin_type c ON c.id=w.coin_id WHERE c.low_balance_threshold > 0 AND w.balance < c.low_balance_threshold AND c.is_active=1");
if ($lbaR) { $lbaRow2 = $lbaR->fetch_assoc(); $lbaCount = (int)$lbaRow2['cnt']; }
$coinsWithThreshold = 0;
$cwtR = $conn->query("SELECT COUNT(*) AS cnt FROM tbl_coin_type WHERE low_balance_threshold > 0 AND is_active=1");
if ($cwtR) { $cwtRow = $cwtR->fetch_assoc(); $coinsWithThreshold = (int)$cwtRow['cnt']; }

?>
<!DOCTYPE html>

<html lang="en">
        <!--begin::Head-->
        <head><base href="">
                <meta charset="utf-8" />
                <title>Dashboard | <?php echo $appDetRes['app_name']; ?></title>
                <?php include('include/head-section.php'); ?>
        </head>
        <!--end::Head-->
        <!--begin::Body-->
        <body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled subheader-fixed aside-enabled aside-fixed aside-minimize-hoverable page-loading">
                <!--begin::Main-->
                <!--begin::Header Mobile-->
                <?php include('include/mobile-header.php'); ?>
                <!--end::Header Mobile-->
                <div class="d-flex flex-column flex-root">
                        <!--begin::Page-->
                        <div class="d-flex flex-row flex-column-fluid page">
                                <!--begin::Aside-->
                                <?php include('include/sidebar.php'); ?>
                                <!--end::Aside-->
                                <!--begin::Wrapper-->
                                <div class="d-flex flex-column flex-row-fluid wrapper" id="kt_wrapper">
                                        <!--begin::Header-->
                                        <?php include('include/topbar.php'); ?>
                                        <!--end::Header-->
                                        <!--begin::Content-->
                                        <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
                                                <!--begin::Subheader-->
                                                <div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
                                                        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
                                                                <!--begin::Info-->
                                                                <div class="d-flex align-items-center flex-wrap mr-2">
                                                                        <!--begin::Page Title-->
                                                                        <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Dashboard</h5>
                                                                        <!--end::Page Title-->
                                                                </div>
                                                                <!--end::Info-->
                                                                <!--begin::Toolbar-->
                                                                <div class="d-flex align-items-center">
                                                                        <!--begin::Daterange-->
                                                                        <a href="#" class="btn btn-sm btn-light font-weight-bold mr-2">
                                                                                <span class="text-muted font-size-base font-weight-bold mr-2" id="kt_dashboard_daterangepicker_title">Today</span>
                                                                                <span class="text-primary font-size-base font-weight-bolder" id="kt_dashboard_daterangepicker_date"><?php echo date("F j, Y, g:i a"); ?></span>
                                                                        </a>
                                                                        <!--end::Daterange-->
                                                                        <!--begin::Dropdowns-->
                                                                        
                                                                        <!--end::Dropdowns-->
                                                                </div>
                                                                <!--end::Toolbar-->
                                                        </div>
                                                </div>
                                                <!--end::Subheader-->
                                                <!--begin::Entry-->
                                                <div class="d-flex flex-column-fluid">
                                                        <!--begin::Container-->
                                                        <div class="container">
                                                                <!--begin::Dashboard-->
                                                                <!--begin::Row-->
                                                                <?php flash( 'fmsg' ); ?>
                                                                <div class="row">
                                                                        <div class="col-xl-3">
                                                                                <!--begin::Stats Widget 14-->
                                                                                <a href="upcoming-match-list" class="card card-custom bg-info bg-hover-state-info card-stretch gutter-b bgi-no-repeat" style="background-position: right top; background-size: 30% auto; background-image: url(assets/media/svg/shapes/abstract-2.svg)">
                                                                                        <!--begin::Body-->
                                                                                        <div class="card-body">
                                                                                                <div class="text-inverse-primary font-weight-bolder font-size-h1 mb-2 mt-5"><?php echo $upMcountRes['totUpmatch']; ?></div>
                                                                                                <div class="font-weight-bold text-inverse-primary font-size-sm">Upcoming Matches</div>
                                                                                        </div>
                                                                                        <!--end::Body-->
                                                                                </a>
                                                                                <!--end::Stats Widget 14-->
                                                                        </div>
                                                                        <div class="col-xl-3">
                                                                                <!--begin::Stats Widget 14-->
                                                                                <a href="live-match-list" class="card card-custom bg-warning bg-hover-state-warning card-stretch gutter-b bgi-no-repeat" style="background-position: right top; background-size: 30% auto; background-image: url(assets/media/svg/shapes/abstract-1.svg)">
                                                                                        <!--begin::Body-->
                                                                                        <div class="card-body">
                                                                                                <div class="text-inverse-primary font-weight-bolder font-size-h1 mb-2 mt-5"><?php echo $liveMcountRes['totLmatch']; ?></div>
                                                                                                <div class="font-weight-bold text-inverse-primary font-size-sm">Live Matches</div>
                                                                                        </div>
                                                                                        <!--end::Body-->
                                                                                </a>
                                                                                <!--end::Stats Widget 14-->
                                                                        </div>
                                                                        <div class="col-xl-3">
                                                                                <!--begin::Stats Widget 14-->
                                                                                <a href="completed-match-list" class="card card-custom bg-success bg-hover-state-success card-stretch gutter-b bgi-no-repeat" style="background-position: right top; background-size: 30% auto; background-image: url(assets/media/svg/shapes/abstract-3.svg)">
                                                                                        <!--begin::Body-->
                                                                                        <div class="card-body">
                                                                                                <div class="text-inverse-primary font-weight-bolder font-size-h1 mb-2 mt-5"><?php echo $cmMcountRes['totCmmatch']; ?></div>
                                                                                                <div class="font-weight-bold text-inverse-primary font-size-sm">Completed Matches</div>
                                                                                        </div>
                                                                                        <!--end::Body-->
                                                                                </a>
                                                                                <!--end::Stats Widget 14-->
                                                                        </div>
                                                                        <div class="col-xl-3">
                                                                                <!--begin::Stats Widget 14-->
                                                                                <a href="cancelled-match-list" class="card card-custom bg-primary bg-hover-state-primary card-stretch gutter-b bgi-no-repeat" style="background-position: right top; background-size: 30% auto; background-image: url(assets/media/svg/shapes/abstract-4.svg)">
                                                                                        <!--begin::Body-->
                                                                                        <div class="card-body">
                                                                                                <div class="text-inverse-primary font-weight-bolder font-size-h1 mb-2 mt-5"><?php echo $cnMcountRes['totCnmatch']; ?></div>
                                                                                                <div class="font-weight-bold text-inverse-primary font-size-sm">Canceled Matches</div>
                                                                                        </div>
                                                                                        <!--end::Body-->
                                                                                </a>
                                                                                <!--end::Stats Widget 14-->
                                                                        </div>
                                                                </div>
                                                                <!--end::Row-->

                                                                <!-- Low Balance Alert Card -->
                                                                <div class="row">
                                                                        <div class="col-xl-12">
                                                                                <a href="low-balance-alerts" class="card card-custom <?php echo $lbaCount > 0 ? 'bg-danger bg-hover-state-danger' : 'bg-light-success'; ?> card-stretch gutter-b d-flex flex-row align-items-center px-6 py-5" style="text-decoration:none;">
                                                                                        <div class="mr-5" style="font-size:2rem; line-height:1;">⚠️</div>
                                                                                        <div class="flex-grow-1">
                                                                                                <div class="font-weight-bolder font-size-h4 <?php echo $lbaCount > 0 ? 'text-white' : 'text-success'; ?>">
                                                                                                        <?php if ($lbaCount > 0): ?>
                                                                                                                <?php echo $lbaCount; ?> player<?php echo $lbaCount > 1 ? 's' : ''; ?> below coin balance threshold
                                                                                                        <?php elseif ($coinsWithThreshold === 0): ?>
                                                                                                                Low Balance Alerts — no thresholds configured yet
                                                                                                        <?php else: ?>
                                                                                                                All clear — no players below balance threshold
                                                                                                        <?php endif; ?>
                                                                                                </div>
                                                                                                <div class="font-size-sm <?php echo $lbaCount > 0 ? 'text-white opacity-75' : 'text-muted'; ?>">
                                                                                                        <?php echo $coinsWithThreshold; ?> coin<?php echo $coinsWithThreshold !== 1 ? 's' : ''; ?> monitored — click to view &amp; configure thresholds
                                                                                                </div>
                                                                                        </div>
                                                                                        <div class="<?php echo $lbaCount > 0 ? 'text-white' : 'text-success'; ?> font-weight-bolder font-size-h1">
                                                                                                <?php echo $lbaCount; ?>
                                                                                        </div>
                                                                                </a>
                                                                        </div>
                                                                </div>
                                                                <!--end::Dashboard-->
                                                        </div>
                                                        <!--end::Container-->
                                                </div>
                                                <!--end::Entry-->
                                        </div>
                                        <!--end::Content-->
                                        <!--begin::Footer-->
                                        <?php include('include/footer.php'); ?>
                                        <!--begin::Page Scripts(used by this page)-->
                                        
                                        <!--end::Page Scripts-->
                <!--end::Page Scripts-->
        </body>
        <!--end::Body-->
</html>