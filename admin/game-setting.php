<?php 
include('include/security.php');

$query   = $conn->query("select game_name, package_name, cus_support_mobile, cus_support_email, how_to_play from tbl_app_configuration where id=1"); 
$result = $query->fetch_assoc();
  
if(isset($_POST['btnUpdate']))
{
	$txtGname= mysqli_real_escape_string($conn,$_POST['txtGname']);
	$txtPname= mysqli_real_escape_string($conn,$_POST['txtPname']);
	$txtSphone= mysqli_real_escape_string($conn,$_POST['txtSphone']);
	$txtSemail= mysqli_real_escape_string($conn,$_POST['txtSemail']);
	$txtDesc= mysqli_real_escape_string($conn,$_POST['txtDesc']);

  	$sql = "UPDATE tbl_app_configuration set how_to_play='$txtDesc', game_name='$txtGname', package_name='$txtPname', cus_support_mobile='$txtSphone', cus_support_email='$txtSemail' where id=1";

	if ($conn->query($sql) === TRUE) {
		flash( 'fmsg', 'fmsg', 'Record updated successfully.', 'success', 'TRUE' );
        header("Location:game-setting");
        exit();
	} else {
	  flash( 'fmsg', 'fmsg', 'Something went wrong!', 'danger', 'TRUE' );
      header("Location:game-setting");
      exit();
	}

	$conn->close();
}

?>
<!DOCTYPE html>

<html lang="en">
	<!--begin::Head-->
	<head><base href="">
		<meta charset="utf-8" />
		<title>Game Setting & Support | <?php echo $appDetRes['app_name']; ?></title>
		<?php include('include/head-section.php'); ?>
		<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<script language="JavaScript" type="text/javascript">
	      function checkDelete(){
	          return confirm('Are you sure you want to delete this Record? By deleting this record all associated data are deleted.');
	      }
	    </script>
	    <script src="https://cdn.ckeditor.com/4.11.3/standard/ckeditor.js"></script>
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
									<h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Game Setting & Support</h5>
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
									<div class="col-lg-12">
										<!--begin::Card-->
										<div class="card card-custom">
											<!--begin::Form-->
											<form class="form" action="game-setting" method="post">
												<div class="card-body">
													<div class="row">
													<div class="col-lg-6">
														<div class="form-group">
														    <label>Game Name</label>
															<input type="text" name="txtGname" class="form-control" required value="<?php echo $result['game_name']; ?>" />
														</div>
													</div>
													<div class="col-lg-6">
														<div class="form-group">
														    <label>Package Name</label>
															<input type="text" name="txtPname" class="form-control" required value="<?php echo $result['package_name']; ?>" />
														</div>
													</div>
													<div class="col-lg-6">
														<div class="form-group">
														    <label>Support Phone</label>
															<input type="text" name="txtSphone" class="form-control" required value="<?php echo $result['cus_support_mobile']; ?>" />
														</div>
													</div>
													<div class="col-lg-6">
														<div class="form-group">
														    <label>Support Email</label>
															<input type="text" name="txtSemail" class="form-control" required value="<?php echo $result['cus_support_email']; ?>" />
														</div>
													</div>
													<div class="col-lg-12">
														<div class="form-group">
														    <label>How to play - Video URL link</label>
															<input type="text" name="txtDesc" class="form-control" required value="<?php echo $result['how_to_play']; ?>" />
															<!--<script>
															      CKEDITOR.replace( 'txtDesc' );
															</script>-->
														</div>
													</div>
													<div class="col-lg-3">
														<div class="form-group">
															<label>&nbsp;</label>
															<button class="btn btn-success form-control" type="submit" name="btnUpdate">Update</button>
														</div>
													</div>
													</div>
												</div>
											</form>
											<!--end::Form-->
										</div>
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
		<!--end::Page Scripts-->
	</body>
	<!--end::Body-->
</html>