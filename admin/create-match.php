<?php 
include('include/security.php');
  
if(isset($_POST['btnCreateMatch']))
{
	$txtMfee= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtMfee']), ENT_QUOTES, 'UTF-8');
	$txtMprize= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtMprize']), ENT_QUOTES, 'UTF-8');
	$txtTblSize= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtTblSize']), ENT_QUOTES, 'UTF-8');
	$txtMtype= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtMtype']), ENT_QUOTES, 'UTF-8');

  	$sql = "INSERT into tbl_match (match_fee, prize, table_size, type, added_by) values ($txtMfee, $txtMprize, $txtTblSize, $txtMtype, $userId)";

	if ($conn->query($sql) === TRUE) {
		flash( 'fmsg', 'fmsg', 'Match created successfully.', 'success', 'TRUE' );
        header("Location:match-list");
        exit();
	} else {
	  flash( 'fmsg', 'fmsg', 'Something went wrong!', 'danger', 'TRUE' );
      header("Location:match-list");
      exit();
	}

	$conn->close();
}

if(isset($_GET['uid']))
{
  $uid = $_GET['uid'];
  
  $query   = $conn->query("select * from tbl_match where id=$uid"); 
  $result = $query->fetch_assoc();
	
	if(isset($_POST['btnUpdateMatch']))
	{
		$txtMfee= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtMfee']), ENT_QUOTES, 'UTF-8');
		$txtMprize= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtMprize']), ENT_QUOTES, 'UTF-8');
		$txtTblSize= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtTblSize']), ENT_QUOTES, 'UTF-8');
		$txtMtype= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtMtype']), ENT_QUOTES, 'UTF-8');

	  	$sql = "UPDATE tbl_match SET match_fee=$txtMfee, prize=$txtMprize, table_size=$txtTblSize, type=$txtMtype where id=$uid";

		if ($conn->query($sql) === TRUE) {
			flash( 'fmsg', 'fmsg', 'Match updated successfully.', 'success', 'TRUE' );
	        header("Location:match-list");
	        exit();
		} else {
		  flash( 'fmsg', 'fmsg', 'Something went wrong!', 'danger', 'TRUE' );
	      header("Location:match-list");
	      exit();
		}

		$conn->close();
	}

}

?>
<!DOCTYPE html>

<html lang="en">
	<!--begin::Head-->
	<head><base href="">
		<meta charset="utf-8" />
		<title>Create Match | <?php echo $appDetRes['app_name']; ?></title>
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
									<h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Create/Update Match</h5>
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
											<?php if(isset($_GET['uid'])): ?>
											<form class="form" action="create-match?uid=<?php echo $_GET['uid']; ?>" method="post">
												<div class="card-body">
													<div class="row">
														<div class="col-xl-2"></div>
														<div class="col-xl-7">
															<!--begin::Row-->
															<div class="row">
																<label class="col-3"></label>
																<div class="col-9">
																	<h6 class="text-dark font-weight-bold mb-10">Update Match</h6>
																</div>
															</div>
															<!--end::Row-->
															<!--begin::Group-->
															<div class="form-group row">
																<label class="col-form-label col-3 text-lg-right text-left">Match Fee</label>
																<div class="col-9">
																	<input class="form-control form-control-lg form-control-solid mb-1" type="number" placeholder="40" name="txtMfee" required value="<?php echo $result['match_fee']; ?>"/>
																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="form-group row">
																<label class="col-form-label col-3 text-lg-right text-left">Prize</label>
																<div class="col-9">
																	<input class="form-control form-control-lg form-control-solid" type="number" placeholder="100" name="txtMprize" required value="<?php echo $result['prize']; ?>"/>
																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="form-group row">
																<label class="col-form-label col-3 text-lg-right text-left">Table Size</label>
																<div class="col-9">
																	<select name="txtTblSize" class="form-control form-control-lg form-control-solid" required>
																		<option <?php if($result['table_size']==2) { echo 'selected'; } ?> value="2">2</option>
																		<option <?php if($result['table_size']==3) { echo 'selected'; } ?> value="3">3</option>
																		<option <?php if($result['table_size']==4) { echo 'selected'; } ?> value="4">4</option>
																		<option <?php if($result['table_size']==5) { echo 'selected'; } ?> value="5">5</option>
																		<option <?php if($result['table_size']==6) { echo 'selected'; } ?> value="6">6</option>
																	</select>
																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="form-group row">
																<label class="col-form-label col-3 text-lg-right text-left">Match Type</label>
																<div class="col-9">
																	<select name="txtMtype" class="form-control form-control-lg form-control-solid" required>
																		<option <?php if($result['type']==0) { echo 'selected'; } ?> value="0">Individual</option>
																		<option <?php if($result['type']==1) { echo 'selected'; } ?> value="1">Team</option>
																	</select>
																</div>
															</div>
															<!--end::Group-->
														</div>
													</div>
													<!--begin::Footer-->
													<div class="card-footer pb-0">
														<div class="row">
															<div class="col-xl-2"></div>
															<div class="col-xl-7">
																<div class="row">
																	<div class="col-3"></div>
																	<div class="col-9">
																		<button type="submit" class="btn btn-light-primary font-weight-bold" name="btnUpdateMatch">Save changes</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!--end::Footer-->
												</div>
											</form>
											<?php else: ?>
											<form class="form" action="create-match" method="post">
												<div class="card-body">
													<div class="row">
														<div class="col-xl-2"></div>
														<div class="col-xl-7">
															<!--begin::Row-->
															<div class="row">
																<label class="col-3"></label>
																<div class="col-9">
																	<h6 class="text-dark font-weight-bold mb-10">Create Match</h6>
																</div>
															</div>
															<!--end::Row-->
															<!--begin::Group-->
															<div class="form-group row">
																<label class="col-form-label col-3 text-lg-right text-left">Match Fee</label>
																<div class="col-9">
																	<input class="form-control form-control-lg form-control-solid mb-1" type="number" placeholder="40" name="txtMfee" required />
																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="form-group row">
																<label class="col-form-label col-3 text-lg-right text-left">Prize</label>
																<div class="col-9">
																	<input class="form-control form-control-lg form-control-solid" type="number" placeholder="100" name="txtMprize" required />
																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="form-group row">
																<label class="col-form-label col-3 text-lg-right text-left">Table Size</label>
																<div class="col-9">
																	<select name="txtTblSize" class="form-control form-control-lg form-control-solid" required>
																		<option value="2">2</option>
																		<option value="3">3</option>
																		<option value="4">4</option>
																		<option value="5">5</option>
																		<option value="6">6</option>
																	</select>
																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="form-group row">
																<label class="col-form-label col-3 text-lg-right text-left">Match Type</label>
																<div class="col-9">
																	<select name="txtMtype" class="form-control form-control-lg form-control-solid" required>
																		<option value="0">Individual</option>
																		<option value="1">Team</option>
																	</select>
																</div>
															</div>
															<!--end::Group-->
														</div>
													</div>
													<!--begin::Footer-->
													<div class="card-footer pb-0">
														<div class="row">
															<div class="col-xl-2"></div>
															<div class="col-xl-7">
																<div class="row">
																	<div class="col-3"></div>
																	<div class="col-9">
																		<button type="submit" class="btn btn-light-primary font-weight-bold" name="btnCreateMatch">Save changes</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!--end::Footer-->
												</div>
											</form>
											<?php endif ?>
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