<?php 
include('include/security.php');

if(isset($_GET['iaid']))
{
  $iaid = $_GET['iaid'];
  $sql = "UPDATE tbl_user set is_active=0 where id=$iaid";

	if ($conn->query($sql) === TRUE) {
		flash( 'fmsg', 'fmsg', 'Inactive user successfully.', 'success', 'TRUE' );
		header("Location:user");
		exit();
	} else {
	  flash( 'fmsg', 'fmsg', 'Something went wrong!', 'danger', 'TRUE' );
      header("Location:user");
      exit();
	}

	$conn->close();
}

if(isset($_GET['aid']))
{
  $aid = $_GET['aid'];
  $sql = "UPDATE tbl_user set is_active=1 where id=$aid";

	if ($conn->query($sql) === TRUE) {
		flash( 'fmsg', 'fmsg', 'User active successfully.', 'success', 'TRUE' );
		header("Location:user");
		exit();
	} else {
	  flash( 'fmsg', 'fmsg', 'Something went wrong!', 'danger', 'TRUE' );
      header("Location:user");
      exit();
	}

	$conn->close();
}

if(isset($_GET['biaid']))
{
  $biaid = $_GET['biaid'];
  $sql = "UPDATE tbl_user set is_block=1 where id=$biaid";

	if ($conn->query($sql) === TRUE) {
		flash( 'fmsg', 'fmsg', 'Inactive user successfully.', 'success', 'TRUE' );
		header("Location:user");
		exit();
	} else {
	  flash( 'fmsg', 'fmsg', 'Something went wrong!', 'danger', 'TRUE' );
      header("Location:user");
      exit();
	}

	$conn->close();
}

if(isset($_GET['baid']))
{
  $baid = $_GET['baid'];
  $sql = "UPDATE tbl_user set is_block=0 where id=$baid";

	if ($conn->query($sql) === TRUE) {
		flash( 'fmsg', 'fmsg', 'User active successfully.', 'success', 'TRUE' );
		header("Location:user");
		exit();
	} else {
	  flash( 'fmsg', 'fmsg', 'Something went wrong!', 'danger', 'TRUE' );
      header("Location:user");
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
		<title>User List | <?php echo $appDetRes['app_name']; ?></title>
		<?php include('include/head-section.php'); ?>
		<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<script language="JavaScript" type="text/javascript">
	      function checkUserIn(){
	          return confirm('Are you sure you want to inactive this user?');
	      }
	      function checkUserAc(){
	          return confirm('Are you sure you want to Active this user?');
	      }
	    </script>
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
									<h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">User List</h5>
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
										<div class="card card-custom">
											<div class="card-body">
												<div class="table-responsive">
												<table id="example" class="datatable-table table-hover table table-separate dataTable dtr-inline" style="width:100%">
											        <thead>
											            <tr>
											            	<th>ID</th>
											            	<th>Profile</th>
											                <th>Username</th>
											                <th>Full Name</th>
											                <th>Email</th>
											                <th>Mobile</th>
											                <th>WhatsApp</th>
											                <th>Total Bal</th>
											                <th>Won Bal</th>
											                <th>Bonus Bal</th>
											                <th>Status</th>
											                <th>Block/Unblock</th>
											                <th>Refer History</th>
											            </tr>
											        </thead>
											    </table>
												</div>
											</div>
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
					<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
					<!--end::Page Vendors-->
					<!--begin::Page Scripts(used by this page)-->
					<script src="assets/js/pages/crud/datatables/data-sources/ajax-server-side.js"></script>
					<script type="text/javascript">
				    	$(document).ready(function() {
						    $('#example').DataTable( {
						        "processing": true,
						        "serverSide": true,
						        "ajax": "data-processing/getUser.php",
						        "columnDefs": [{"render": function ( data, type, full, meta ) {
					                     var usr_status = full[10];
					                     var u_Id = full[0];
					                     if(usr_status==='1'){
					                     	return '<a href="user?iaid='+u_Id+'" class="mr-5" onclick="return checkUserIn()"><span class="label label-success label-pill label-inline mr-2">Active</span></a>';
					                     }
					                     else
					                     {
					                     	return '<a href="user?aid='+u_Id+'" class="mr-5" onclick="return checkUserAc()"><span class="label label-danger label-pill label-inline mr-2">In Active</span></a>';
					                     }
					                 }, "data": null, "targets": [10]},{"render": function ( data, type, full, meta ) {
					                     var block_status = full[11];
					                     var u_Id = full[0];
					                     if(block_status==='0'){
					                     	return '<a href="user?biaid='+u_Id+'" class="mr-5" onclick="return checkUserIn()"><span class="label label-success label-pill label-inline mr-2">Active</span></a>';
					                     }
					                     else
					                     {
					                     	return '<a href="user?baid='+u_Id+'" class="mr-5" onclick="return checkUserAc()"><span class="label label-danger label-pill label-inline mr-2">Blocked</span></a>';
					                     }
					                 }, "data": null, "targets": [11]},{"render": function ( data, type, full, meta ) {
					                     var imgPath = full[1];
					                     return '<img src='+imgPath+' class="mr-5" width="50" height="50"/>';
					                 }, "data": null, "targets": [1]},{"render": function ( data, type, full, meta ) {
					                     var buttonID = full[0];
					                     return '<a href="user-activity?usrid='+buttonID+'" class="mr-5"><i class="fas fa-external-link-alt"></i></a>';
					                 }, "data": null, "targets": [12]}],
						    } );
						} );
				    </script>
		<!--end::Page Scripts-->
	</body>
	<!--end::Body-->
</html>