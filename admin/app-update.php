<?php 
include('include/security.php');

$query   = $conn->query("select * from tbl_app_configuration where id=1"); 
$result = $query->fetch_assoc();
  
if(isset($_POST['btnUpdate']))
{
	$txtFupdate= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtFupdate']), ENT_QUOTES, 'UTF-8');
	$txtDesc= mysqli_real_escape_string($conn,$_POST['txtDesc']);
	$txtVname= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtVname']), ENT_QUOTES, 'UTF-8');
	$txtVcode= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtVcode']), ENT_QUOTES, 'UTF-8');
	$txtUpUrl= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtUpUrl']), ENT_QUOTES, 'UTF-8');
	$txtUpDate = date('Y-m-d');

  	$sql = "UPDATE tbl_app_configuration SET force_update='$txtFupdate', whats_new='$txtDesc', update_date='$txtUpDate', latest_version_name='$txtVname', latest_version_code='$txtVcode', update_url='$txtUpUrl' where id=1";

	if ($conn->query($sql) === TRUE) {
		flash( 'fmsg', 'fmsg', 'Record updated successfully.', 'success', 'TRUE' );
        header("Location:app-update");
        exit();
	} else {
	  flash( 'fmsg', 'fmsg', 'Something went wrong!', 'danger', 'TRUE' );
      header("Location:app-update");
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
		<title>Force Update | <?php echo $appDetRes['app_name']; ?></title>
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
									<h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Force Update</h5>
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
											<form class="form" action="app-update" method="post">
												<div class="card-body">
													<div class="row">
													<div class="col-lg-3">
														<div class="form-group">
															<label>* Force Update</label>
															<select name="txtFupdate" class="form-control" required>
																<option <?php if($result['force_update']==1) { echo 'selected'; } ?> value="1">Yes</option>
																<option <?php if($result['force_update']==0) { echo 'selected'; } ?> value="0">No</option>
															</select>
														</div>
													</div>
													<div class="col-lg-3">
														<div class="form-group">
															<label>* Latest version name</label>
															<input type="text" name="txtVname" class="form-control" required value="<?php echo $result['latest_version_name']; ?>" />
														</div>
													</div>
													<div class="col-lg-3">
														<div class="form-group">
															<label>* Latest version code</label>
															<input type="text" name="txtVcode" class="form-control" required value="<?php echo $result['latest_version_code']; ?>" />
														</div>
													</div>
													<div class="col-lg-12">
														<div class="form-group">
															<label>* URL</label>
															<input type="text" name="txtUpUrl" class="form-control" required value="<?php echo $result['update_url']; ?>" />
														</div>
													</div>
													<div class="col-lg-12">
														<div class="form-group">
															<label>* Whats New</label>
															<textarea name="txtDesc" class="form-control" required><?php echo $result['whats_new']; ?></textarea>
															<script>
															      CKEDITOR.replace( 'txtDesc' );
															</script>
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