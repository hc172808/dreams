<?php 
include('include/security.php');

$tzlist = DateTimeZone::listIdentifiers(DateTimeZone::ALL);
$query   = $conn->query("select * from tbl_app_configuration where id=1"); 
$result = $query->fetch_assoc();
  
if(isset($_POST['btnUpdate']))
{
	$txtAppName= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtAppName']), ENT_QUOTES, 'UTF-8');
	$txtAppUrl= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtAppUrl']), ENT_QUOTES, 'UTF-8');
	$txtGfcm= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtGfcm']), ENT_QUOTES, 'UTF-8');
	$txtCurrencyCode= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtCurrencyCode']), ENT_QUOTES, 'UTF-8');
	$txtCurrencySign= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtCurrencySign']), ENT_QUOTES, 'UTF-8');
	$txtTimezone= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtTimezone']), ENT_QUOTES, 'UTF-8');
	$txtRpercentage= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtRpercentage']), ENT_QUOTES, 'UTF-8');
// 	$txtGtime= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtGtime']), ENT_QUOTES, 'UTF-8');
	$txtMntnc= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtMntnc']), ENT_QUOTES, 'UTF-8');
	$txtPMid= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtPMid']), ENT_QUOTES, 'UTF-8');
	$txtPMkey= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtPMkey']), ENT_QUOTES, 'UTF-8');
	$txtPUid= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtPUid']), ENT_QUOTES, 'UTF-8');
	$txtPUkey= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtPUkey']), ENT_QUOTES, 'UTF-8');
	$txtPUsalt= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtPUsalt']), ENT_QUOTES, 'UTF-8');

	$txtWmode= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtWmode']), ENT_QUOTES, 'UTF-8');
	$txtMinWith= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtMinWith']), ENT_QUOTES, 'UTF-8');
	$txtMaxWith= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtMaxWith']), ENT_QUOTES, 'UTF-8');
	$txtMinDepo= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtMinDepo']), ENT_QUOTES, 'UTF-8');
	$txtMaxDepo= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtMaxDepo']), ENT_QUOTES, 'UTF-8');
	$txtMpayment= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtMpayment']), ENT_QUOTES, 'UTF-8');
	/*$txtFpkey= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtFpkey']), ENT_QUOTES, 'UTF-8');
	$txtFskey= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtFskey']), ENT_QUOTES, 'UTF-8');
	$txtFekey= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtFekey']), ENT_QUOTES, 'UTF-8');
	$txtFcurcode= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtFcurcode']), ENT_QUOTES, 'UTF-8');
	$txtFconcode= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtFconcode']), ENT_QUOTES, 'UTF-8');*/
	$txtCountryCode= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtCountryCode']), ENT_QUOTES, 'UTF-8');
	$txtMinEnFees= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtMinEnFees']), ENT_QUOTES, 'UTF-8');


	if(isset($_FILES['txtLogo']))
    {
      $file1 = $_FILES['txtLogo'];

      //file properties

      $file1_name=$file1['name'];
      $file1_tmp=$file1['tmp_name'];
      $file1_error=$file1['error'];

      //file extension

      $file_ext=strtolower(end(explode('.',$file1_name)));

      $expensions= array("jpeg","jpg","png");

      if(in_array($file_ext,$expensions)=== true & $file1_error==0)
      {
        $file1_new = uniqid('',true).'.'.$file_ext;
        $file1_destination='media/'.$file1_new;
        move_uploaded_file($file1_tmp,$file1_destination);
      }

      if(isset($file1_destination))
      {
        $txtLogo=$file1_destination;
        
      }
      else
      {
        $txtLogo="";
      }
    }
    else
    {
      echo "image not load";
    }

    if(isset($_FILES['txtFavicon']))
    {
      $file1 = $_FILES['txtFavicon'];

      //file properties

      $file1_name=$file1['name'];
      $file1_tmp=$file1['tmp_name'];
      $file1_error=$file1['error'];

      //file extension

      $file_ext=strtolower(end(explode('.',$file1_name)));

      $expensions= array("jpeg","jpg","png");
      
      if(in_array($file_ext,$expensions)=== true & $file1_error==0)
      {
        $file1_new = uniqid('',true).'.'.$file_ext;
        $file1_destination='media/'.$file1_new;
        move_uploaded_file($file1_tmp,$file1_destination);
      }

      if(isset($file1_destination))
      {
        $txtFavicon=$file1_destination;
        
      }
      else
      {
        $txtFavicon="";
      }
    }
    else
    {
      echo "image not load";
    }

    if (!empty($_FILES['txtLogo']['name'])&!empty($_FILES['txtFavicon']['name'])) {

    // onesignal 
   	// onesignal_app_user='$txtUappId', onesignal_rest_user='$txtUrest', onesignal_app_rider='$txtRAppId', onesignal_rest_rider='$txtRrest',
	$sql = "update tbl_app_configuration set app_name='$txtAppName', logo='$txtLogo', favicon='$txtFavicon', app_url='$txtAppUrl', currency_code='$txtCurrencyCode', currency_sign='$txtCurrencySign', time_zone='$txtTimezone', paytm_mer_id='$txtPMid', paytm_mer_key='$txtPMkey', fcm_server_key='$txtGfcm', refer_percentage='$txtRpercentage', maintenance_mode='$txtMntnc', payu_id='$txtPUid', payu_key='$txtPUkey', payu_salt='$txtPUsalt', wallet_mode='$txtWmode', min_withdraw='$txtMinWith', max_withdraw='$txtMaxWith', min_deposit='$txtMinDepo', max_deposit='$txtMaxDepo', mop='$txtMpayment', country_code='$txtCountryCode', min_entry_fee='$txtMinEnFees' where id=1";
	} else if(!empty($_FILES['txtLogo']['name'])){
	$sql = "update tbl_app_configuration set app_name='$txtAppName', logo='$txtLogo', app_url='$txtAppUrl', currency_code='$txtCurrencyCode', currency_sign='$txtCurrencySign', time_zone='$txtTimezone', paytm_mer_id='$txtPMid', paytm_mer_key='$txtPMkey', fcm_server_key='$txtGfcm', refer_percentage='$txtRpercentage', maintenance_mode='$txtMntnc', payu_id='$txtPUid', payu_key='$txtPUkey', payu_salt='$txtPUsalt', wallet_mode='$txtWmode', min_withdraw='$txtMinWith', max_withdraw='$txtMaxWith', min_deposit='$txtMinDepo', max_deposit='$txtMaxDepo', mop='$txtMpayment', country_code='$txtCountryCode', min_entry_fee='$txtMinEnFees' where id=1";
	} else if(!empty($_FILES['txtFavicon']['name'])){
	$sql = "update tbl_app_configuration set app_name='$txtAppName', favicon='$txtFavicon', app_url='$txtAppUrl', currency_code='$txtCurrencyCode', currency_sign='$txtCurrencySign', time_zone='$txtTimezone', paytm_mer_id='$txtPMid', paytm_mer_key='$txtPMkey', fcm_server_key='$txtGfcm', refer_percentage='$txtRpercentage', maintenance_mode='$txtMntnc', payu_id='$txtPUid', payu_key='$txtPUkey', payu_salt='$txtPUsalt', wallet_mode='$txtWmode', min_withdraw='$txtMinWith', max_withdraw='$txtMaxWith', min_deposit='$txtMinDepo', max_deposit='$txtMaxDepo', mop='$txtMpayment', country_code='$txtCountryCode', min_entry_fee='$txtMinEnFees' where id=1";
	} else{
	$sql = "update tbl_app_configuration set app_name='$txtAppName', app_url='$txtAppUrl', currency_code='$txtCurrencyCode', currency_sign='$txtCurrencySign', time_zone='$txtTimezone', paytm_mer_id='$txtPMid', paytm_mer_key='$txtPMkey', fcm_server_key='$txtGfcm', refer_percentage='$txtRpercentage', maintenance_mode='$txtMntnc', payu_id='$txtPUid', payu_key='$txtPUkey', payu_salt='$txtPUsalt', wallet_mode='$txtWmode', min_withdraw='$txtMinWith', max_withdraw='$txtMaxWith', min_deposit='$txtMinDepo', max_deposit='$txtMaxDepo', mop='$txtMpayment', country_code='$txtCountryCode', min_entry_fee='$txtMinEnFees' where id=1";
	}

	if ($conn->query($sql) === TRUE) {
		flash( 'fmsg', 'fmsg', 'Record updated successfully.', 'success', 'TRUE' );
        header("Location:app-configuration");
        exit();
	} else {
	  flash( 'fmsg', 'fmsg', $sql.'Something went wrong!', 'danger', 'TRUE' );
      header("Location:app-configuration");
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
		<title>App Configuration | <?php echo $appDetRes['app_name']; ?></title>
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
									<h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">App Configuration</h5>
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
											<form class="form" action="app-configuration" method="post" enctype="multipart/form-data">

											<div class="card-body">
												<div class="row">
													<div class="col-lg-12">
														<ul class="nav nav-tabs nav-tabs-line">
														    <li class="nav-item">
														        <a class="nav-link active" data-toggle="tab" href="#basicInfo">Basic Info</a>
														    </li>
														    <li class="nav-item">
														        <a class="nav-link" data-toggle="tab" href="#notification">Notification</a>
														    </li>
														    <li class="nav-item">
														        <a class="nav-link" data-toggle="tab" href="#wallet">Wallet</a>
														    </li>
														    <li class="nav-item">
														        <a class="nav-link" data-toggle="tab" href="#payGateway">Payment Gateway</a>
														    </li>
														    <li class="nav-item">
														        <a class="nav-link" data-toggle="tab" href="#other">Other</a>
														    </li>
														</ul>
													</div>
												</div>
											</div>
											
											<div class="tab-content mt-5" id="myTabContent">
											    <div class="tab-pane fade show active" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo">
											    	<div class="card-body">
															<div class="row">
																<div class="col-lg-4">
																	<div class="form-group">
																		<label>* App Name</label>
																		<input type="text" name="txtAppName" class="form-control" required value="<?php echo $result['app_name']; ?>" />
																	</div>
																</div>
																<div class="col-lg-4">
																	<div class="form-group">
																		<label>Logo</label> <small><a href="<?php echo $result['logo']; ?>" target="_blank">current logo</a></small>
																		<input type="file" name="txtLogo" class="form-control" accept="image/*" />
																	</div>
																</div>
																<div class="col-lg-4">
																	<div class="form-group">
																		<label>Favicon <small><a href="<?php echo $result['favicon']; ?>" target="_blank">current logo</a></small></label>
																		<input type="file" name="txtFavicon" class="form-control" accept="image/*"/>
																	</div>
																</div>
																<div class="col-lg-12">
																	<div class="form-group">
																		<label>* App URL</label>
																		<input type="text" name="txtAppUrl" class="form-control" required value="<?php echo $result['app_url']; ?>" />
																	</div>
																</div>
															</div>
														</div>
											    </div>

											    <div class="tab-pane fade" id="notification" role="tabpanel" aria-labelledby="notification">
											    	<div class="card-body">
												    	<div class="row">
																<div class="col-lg-12">
																	<div class="form-group">
																		<label>* Google FCM server key</label>
																		<input type="text" name="txtGfcm" class="form-control" required value="<?php echo $result['fcm_server_key']; ?>" />
																	</div>
																</div>
															</div>
														</div>
											    </div>

											    <div class="tab-pane fade" id="wallet" role="tabpanel" aria-labelledby="wallet">
											    	<div class="card-body">
											    		<div class="row">
																<div class="col-lg-3">
																	<div class="form-group">
																		<label>* Withdraw Option</label>
																		<select class="form-control" name="txtWmode">
																			<option <?php if($result['wallet_mode']=='0') { echo 'selected'; } ?> value="0">Visible</option>
																			<option <?php if($result['wallet_mode']=='1') { echo 'selected'; } ?> value="1">Hide</option>
																		</select>
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-lg-3">
																	<div class="form-group">
																		<label>* Min Withdraw</label>
																		<input type="number" name="txtMinWith" class="form-control" required value="<?php echo $result['min_withdraw']; ?>" />
																	</div>
																</div>
																<div class="col-lg-3">
																	<div class="form-group">
																		<label>* Max Withdraw</label>
																		<input type="number" name="txtMaxWith" class="form-control" required value="<?php echo $result['max_withdraw']; ?>" />
																	</div>
																</div>
																<div class="col-lg-3">
																	<div class="form-group">
																		<label>* Min Deposit</label>
																		<input type="number" name="txtMinDepo" class="form-control" required value="<?php echo $result['min_deposit']; ?>" />
																	</div>
																</div>
																<div class="col-lg-3">
																	<div class="form-group">
																		<label>* Max Deposit</label>
																		<input type="number" name="txtMaxDepo" class="form-control" required value="<?php echo $result['max_deposit']; ?>" />
																	</div>
																</div>
															</div>
											    	</div>
											    </div>

											    <div class="tab-pane fade" id="payGateway" role="tabpanel" aria-labelledby="payGateway">
											    	<div class="card-body">
											    			<div class="row">
																	<div class="col-lg-3">
																		<div class="form-group">
																			<label>* Mode of Payment</label>
																			<select class="form-control" name="txtMpayment">
																				<option <?php if($result['mop']=='0') { echo 'selected'; } ?> value="0">All</option>
																				<option <?php if($result['mop']=='1') { echo 'selected'; } ?> value="1">PayTm</option>
																				<option <?php if($result['mop']=='2') { echo 'selected'; } ?> value="2">PayU</option>
																				<option <?php if($result['mop']=='3') { echo 'selected'; } ?> value="3">Flutter</option>
																			</select>
																		</div>
																	</div>
																</div>
											    			<div class="row">
																	<div class="col-lg-12">
																		<h5>PayTm</h5>
																	</div>
																</div>
																<div class="row">
																	<div class="col-lg-6">
																		<div class="form-group">
																			<label>* Paytm Merchant ID</label>
																			<input type="text" name="txtPMid" class="form-control" required value="<?php echo $result['paytm_mer_id']; ?>" />
																		</div>
																	</div>
																	<div class="col-lg-6">
																		<div class="form-group">
																			<label>* Paytm Merchant Key</label>
																			<input type="text" name="txtPMkey" class="form-control" required value="<?php echo $result['paytm_mer_key']; ?>" />
																		</div>
																	</div>
																</div>
																<div class="row">
																	<div class="col-lg-12">
																		<h5>PayU Money</h5>
																	</div>
																</div>
																<div class="row">
																	<div class="col-lg-6">
																		<div class="form-group">
																			<label>PayU Money ID</label>
																			<input type="text" name="txtPUid" class="form-control" value="<?php echo $result['payu_id']; ?>" />
																		</div>
																	</div>
																	<div class="col-lg-6">
																		<div class="form-group">
																			<label>PayU Money Key</label>
																			<input type="text" name="txtPUkey" class="form-control" value="<?php echo $result['payu_key']; ?>" />
																		</div>
																	</div>
																	<div class="col-lg-6">
																		<div class="form-group">
																			<label>PayU SALT</label>
																			<input type="text" name="txtPUsalt" class="form-control" value="<?php echo $result['payu_salt']; ?>" />
																		</div>
																	</div>
																</div>
											    	</div>
											    </div>

											    <div class="tab-pane fade" id="other" role="tabpanel" aria-labelledby="other">
											    	<div class="card-body">
											    		<div class="row">
																<div class="col-lg-4">
																	<div class="form-group">
																		<label>* Country Code</label>
																		<input type="text" name="txtCountryCode" class="form-control" required value="<?php echo $result['country_code']; ?>" />
																	</div>
																</div>
																<div class="col-lg-4">
																	<div class="form-group">
																		<label>* Currency Code</label>
																		<input type="text" name="txtCurrencyCode" class="form-control" required value="<?php echo $result['currency_code']; ?>" />
																	</div>
																</div>
																<div class="col-lg-4">
																	<div class="form-group">
																		<label>* Currency Sign</label>
																		<input type="text" name="txtCurrencySign" class="form-control" required value="<?php echo $result['currency_sign']; ?>" />
																	</div>
																</div>
																<div class="col-lg-4">
																	<div class="form-group">
																		<label>* Timezone</label>
																		<select name="txtTimezone" class="form-control" required>
																			<option value="">--Select--</option>
																			<?php foreach($tzlist as $value) { ?>
																			<option value="<?php echo $value; ?>" <?php if($value==$result['time_zone']) { echo 'selected'; } ?> ><?php echo $value; ?></option>
																			<?php } ?>
																		</select>
																	</div>
																</div>
																
																<div class="col-lg-4">
																	<div class="form-group">
																		<label>* Refer Percentage</label>
																		<input type="number" name="txtRpercentage" id="txtRpercentage" class="form-control" required value="<?php echo $result['refer_percentage']; ?>" />
																		<small>User will get <span id='referBonus'><?php echo $result['refer_percentage']; ?></span>% of joining fees of each referral everytime.</small>
																	</div>
																</div>
																<div class="col-lg-4">
																	<div class="form-group">
																		<label>* Min Entry Fee for Refer</label>
																		<input type="number" name="txtMinEnFees" id="txtMinEnFees" class="form-control" required value="<?php echo $result['min_entry_fee']; ?>" />
																		<small>User will get refer bonus when join match worth <span id="minVal"><?php echo $result['min_entry_fee']; ?></span> or more.</small>
																	</div>
																</div>
																
																<!--<div class="col-lg-4">
																	<div class="form-group">
																		<label>* Game Waiting time (min)</label>
																		<input type="number" name="txtGtime" class="form-control" required value="<?php // echo $result['game_waiting_time']; ?>" />
																	</div>
																</div>-->
																<div class="col-lg-3">
																	<div class="form-group">
																		<label>* Maintenance Mode</label>
																		<select name="txtMntnc" class="form-control" required>
																			<option value="">--select--</option>
																			<option <?php if($result['maintenance_mode']==1) { echo 'selected'; } ?> value="1">On</option>
																			<option <?php if($result['maintenance_mode']==0) { echo 'selected'; } ?> value="0">Off</option>
																		</select>
																	</div>
																</div>
															</div>
											    	</div>
											    </div>
											</div>

											<div class="card-footer">
												<div class="row">
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
					<script>
					    $('#txtMinEnFees').on('change', function() {
                            $("#minVal").html($(this).val());
                        });
                        $('#txtRpercentage').on('change', function() {
                              $("#referBonus").html($(this).val());
                        });
					</script>
		<!--end::Page Scripts-->
	</body>
	<!--end::Body-->
</html>