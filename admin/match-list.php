<?php 
include('include/security.php');

if(isset($_GET['did']))
{
  $did = $_GET['did'];

  $chkMdataQry = $conn->query("select m.*, p.parti1, p.parti2, p.match_id from tbl_match as m left join tbl_participants as p on p.match_id=m.id where m.id=$did and m.status=1");
  $row_cnt = $chkMdataQry->num_rows;

  if($row_cnt==1)
  {
  	$mtResult = $chkMdataQry->fetch_assoc();

  	if($mtResult['parti1']=='' & $mtResult['parti2']=='')
  	{
  		$sql = "DELETE from tbl_match where id=$did and status=1";
		if ($conn->query($sql) === TRUE) {
			flash( 'fmsg', 'fmsg', 'Match deleted successfully.', 'success', 'TRUE' );
	        header("Location:match-list");
	        exit();
		} else {
		  flash( 'fmsg', 'fmsg', 'Something went wrong!', 'danger', 'TRUE' );
	      header("Location:match-list");
	      exit();
		}
  	}
  	elseif($mtResult['parti1']!='' & $mtResult['parti2']!='')
  	{
  		$upUser1 = "UPDATE tbl_user set deposit_bal=deposit_bal+".$mtResult['match_fee']." where id=".$mtResult['parti1'];
 		if($conn->query($upUser1))
		{
			$conn->query("INSERT into tbl_transaction (user_id, amount, payment_getway, remark, type, status) values(".$mtResult['parti1'].",".$mtResult['match_fee'].", 'System', 'Match ID #".$mtResult['match_id']."- refund', 1, 1)");
		}

  		$upUser2 = "UPDATE tbl_user set deposit_bal=deposit_bal+".$mtResult['match_fee']." where id=".$mtResult['parti2'];
  		if($conn->query($upUser2))
		{
			$conn->query("INSERT into tbl_transaction (user_id, amount, payment_getway, remark, type, status) values(".$mtResult['parti2'].",".$mtResult['match_fee'].", 'System', 'Match ID #".$mtResult['match_id']."- refund', 1, 1)");
		}

		$sql = "DELETE from tbl_match where id=$did and status=1";
		if ($conn->query($sql) === TRUE) {
			flash( 'fmsg', 'fmsg', 'Match deleted successfully.', 'success', 'TRUE' );
	        header("Location:match-list");
	        exit();
		} else {
		  flash( 'fmsg', 'fmsg', 'Something went wrong!', 'danger', 'TRUE' );
	      header("Location:match-list");
	      exit();
		}
  	}
  	elseif($mtResult['parti1']!='')
  	{
  		$upUser1 = "UPDATE tbl_user set deposit_bal=deposit_bal+".$mtResult['match_fee']." where id=".$mtResult['parti1'];
 		if($conn->query($upUser1))
		{
			$conn->query("INSERT into tbl_transaction (user_id, amount, payment_getway, remark, type, status) values(".$mtResult['parti1'].",".$mtResult['match_fee'].", 'System', 'Match ID #".$mtResult['match_id']."- refund', 1, 1)");
		}

		$sql = "DELETE from tbl_match where id=$did and status=1";
		if ($conn->query($sql) === TRUE) {
			flash( 'fmsg', 'fmsg', 'Match deleted successfully.', 'success', 'TRUE' );
	        header("Location:match-list");
	        exit();
		} else {
		  flash( 'fmsg', 'fmsg', 'Something went wrong!', 'danger', 'TRUE' );
	      header("Location:match-list");
	      exit();
		}
  	}
  	elseif($mtResult['parti2']!='')
  	{
  		$upUser2 = "UPDATE tbl_user set deposit_bal=deposit_bal+".$mtResult['match_fee']." where id=".$mtResult['parti2'];
  		if($conn->query($upUser2))
		{
			$conn->query("INSERT into tbl_transaction (user_id, amount, payment_getway, remark, type, status) values(".$mtResult['parti2'].",".$mtResult['match_fee'].", 'System', 'Match ID #".$mtResult['match_id']."- refund', 1, 1)");
		}

		$sql = "DELETE from tbl_match where id=$did and status=1";
		if ($conn->query($sql) === TRUE) {
			flash( 'fmsg', 'fmsg', 'Match deleted successfully.', 'success', 'TRUE' );
	        header("Location:match-list");
	        exit();
		} else {
		  flash( 'fmsg', 'fmsg', 'Something went wrong!', 'danger', 'TRUE' );
	      header("Location:match-list");
	      exit();
		}
  	}

  }
  else
  {
  	flash( 'fmsg', 'fmsg', 'Only Upcoming matches can be deleted.', 'danger', 'TRUE' );
	header("Location:match-list");
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
		<title>Match List | <?php echo $appDetRes['app_name']; ?></title>
		<?php include('include/head-section.php'); ?>
		<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<script language="JavaScript" type="text/javascript">
	      function checkDelete(){
	          return confirm('Are you sure you want to delete this match?');
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
									<h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Match List</h5>
									<!--end::Page Title-->
								</div>
								<!--end::Info-->
								<!--begin::Toolbar-->
								<div class="d-flex align-items-center">
									<a href="create-match" class="btn btn-light-primary font-weight-bold ml-2 mr-5"><i class="fa fa-plus"></i>Add Match</a>
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
										<div class="form-group">
											<a href="upcoming-match-list" class="btn btn-info">Upcoming Match</a>
											<a href="live-match-list" class="btn btn-success">Live Match</a>
											<a href="completed-match-list" class="btn btn-primary">Completed Match</a>
											<a href="cancelled-match-list" class="btn btn-danger">Cancelled Match</a>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12">
										<div class="card card-custom">
											<div class="card-body">
												<div class="table-responsive">
												<table id="example" class="datatable-table table-hover table table-separate dataTable dtr-inline" style="width:100%">
											        <thead>
											            <tr>
											            	<th>ID</th>
											            	<th>Match Fee</th>
											                <th>Prize</th>
											                <th>Table Size</th>
											                <th>Type</th>
											                <th>Date</th>
											                <th>Status</th>
											                <th>Summery</th>
											                <th>Action</th>
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
						        "ajax": "data-processing/getMatch.php",
						        "columnDefs": [{"render": function ( data, type, full, meta ) {
					                    var buttonID = full[0];
					                    var match_status_temp = full[6];
					                    if(match_status_temp === '1')
					                    {
					                     	return '<a href="create-match?uid='+buttonID+'" class="mr-5" ><i class="far fa-edit"></i></a> &nbsp;&nbsp;<a href="match-list?did='+buttonID+'" class="mr-5" onclick="return checkDelete()"><i class="fas fa-times-circle"></i></a>';
					                 	}
					                 	else
					                 	{
					                 		return '<a href="create-match?uid='+buttonID+'" class="mr-5" ><i class="far fa-edit"></i></a>';
					                 	}
					                 }, "data": null, "targets": [8]},{"render": function ( data, type, full, meta ) {
					                     var buttonID = full[0];
					                     return '<a href="match-summery?mid='+buttonID+'" class="mr-5" ><i class="fas fa-external-link-alt"></i></a>';
					                 }, "data": null, "targets": [7]},{"render": function ( data, type, full, meta ) {
					                     var match_status = full[6];
					                     if(match_status==='1'){
					                     	return '<span class="label font-weight-bold label-lg label-light-warning label-inline">Upcoming</span>';
					                     }
					                     else if(match_status==='2')
					                     {
					                     	return '<span class="label font-weight-bold label-lg label-light-primary label-inline">Live</span>';
					                     }
					                     else if(match_status==='3')
					                     {
					                     	return '<span class="label font-weight-bold label-lg label-light-success label-inline">Completed</span>';
					                     }
					                     else if(match_status==='4')
					                     {
					                     	return '<span class="label font-weight-bold label-lg label-light-danger label-inline">Canceled</span>';
					                     }
					                 }, "data": null, "targets": [6]},{"render": function ( data, type, full, meta ) {
					                     var match_type = full[4];
					                     if(match_type==='1'){
					                     	return '<span>Team</span>';
					                     }
					                     else if(match_type==='0')
					                     {
					                     	return '<span>Individual</span>';
					                     }
					                 }, "data": null, "targets": [4]}],
						    } );
						} );
				    </script>
		<!--end::Page Scripts-->
	</body>
	<!--end::Body-->
</html>