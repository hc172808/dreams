<?php 
include('include/security.php');

?>
<!DOCTYPE html>

<html lang="en">
	<!--begin::Head-->
	<head><base href="">
		<meta charset="utf-8" />
		<title>Transaction list | <?php echo $appDetRes['app_name']; ?></title>
		<?php include('include/head-section.php'); ?>
		<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<script language="JavaScript" type="text/javascript">
	      function checkDelete(){
	          return confirm('Are you sure you want to delete this Record? By deleting this record all associated data are deleted.');
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
									<h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Transaction list</h5>
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
											            	<th>User ID</th>
											                <th>Username</th>
											                <th>Order Id</th>
											                <th>Payment Id</th>
											                <th>Amount</th>
											                <th>Remark</th>
											                <th>Date</th>
											                <th>Type</th>
											                <th>Status</th>
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

					<div id="myModal" class="modal fade" role="dialog">
				      <div class="modal-dialog">

				        <!-- Modal content-->
				        <div class="modal-content">
				          <div class="modal-header">
				            <h4 class="modal-title">Reject Withdraw Request</h4>
				            <button type="button" class="close" data-dismiss="modal">&times;</button>
				          </div>
				          <div class="modal-body">
				            <form method="post" action="withdraw-request">
				            <input type="hidden" id="txtRid" value="" name="txtRid" >
				            <label>Reject Reason</label>
				            <textarea class="form-control" name="txtRejReason" placeholder="e.g Invalid bank details..." required></textarea>
				          </div>
				          <div class="modal-footer">
				            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				            <button type="submit" class="btn btn-danger" name="btnReject">Reject</button>
				            </form>
				          </div>
				        </div>

				      </div>
				    </div>

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
						        "ajax": "data-processing/getTransaction.php",
						        "columnDefs": [{"render": function ( data, type, full, meta ) {
					                    var buttonID = full[0];
					                    var tranType = full[8];
					                    if(tranType==='0')
					                 	{
					                 		return '<span class="label font-weight-bold label-lg label-light-danger label-inline">Debit</span>'
					                 	}
					                 	else if(tranType==='1')
					                 	{
					                 		return '<span class="label font-weight-bold label-lg label-light-success label-inline">Credit</span>'
					                 	}
					                 }, "data": null, "targets": [8]},{"render": function ( data, type, full, meta ) {
					                    var tranStatus = full[9];
					                    if(tranStatus==='1')
					                 	{
					                 		return '<span class="label label-md label-success label-pill label-inline mr-2">Successful</span>'
					                 	}
					                 	else if(tranStatus==='2')
					                 	{
					                 		return '<span class="label label-md label-danger label-pill label-inline mr-2">Canceled</span>'
					                 	}
					                 }, "data": null, "targets": [9]}],
						    } );
						} );
				    </script>
		<!--end::Page Scripts-->
	</body>
	<!--end::Body-->
</html>