<?php 
include('include/security.php');

if(isset($_POST['btnSendNoti']))
  {

  	$notification_title = mysqli_real_escape_string($conn,$_POST['notification_title']);
    $notification_msg = mysqli_real_escape_string($conn,$_POST['notification_msg']);
    $external_link = mysqli_real_escape_string($conn,$_POST['external_link']);
    
	if($external_link!="")
	{
	$external_link = $_POST['external_link'];
	}
	else
	{
	$external_link = false;
	}

	$target = '/topics/Global';
	
    // if($_FILES['txtNimg']['name']!="")
    if (!empty($_FILES['txtNimg']['name'])) 
    {   
    	$file_ext=strtolower(end(explode('.',$_FILES['txtNimg']['name'])));
      	$expensions= array("jpeg","jpg","png");

      	if(in_array($file_ext,$expensions)=== true)
      	{
	        $txtNimg=rand(0,99999)."_".$_FILES['txtNimg']['name'];
	        $tpath2='media/notification/'.$txtNimg;
	        move_uploaded_file($_FILES["txtNimg"]["tmp_name"], $tpath2);

	        $file_path = 'https://'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['REQUEST_URI']).'/media/notification/'.$txtNimg;
	          
	        $data = array('post_id'=>'12345','external_link'=>$external_link);
	        
	        //FCM api URL
	        $url = 'https://fcm.googleapis.com/fcm/send';
	        //api_key available in Firebase Console -> Project Settings -> CLOUD MESSAGING -> Server key
	        $server_key = $appDetRes['fcm_server_key'];
	              
	        $fields = array();
	        $fields['priority'] = "high";
	        $fields['notification'] = ['title' => $notification_title, 
	                                    'body' => $notification_msg, 
	                                    'payload' => $data,
	                                    'image' => $file_path
	                                    ];
	        //$fields['notification'] = $data;
	        //$fields['data'] = $data;
	        if(is_array($target)){
	          $fields['registration_ids'] = $target;
	        }else{
	          $fields['to'] = $target;
	        }

	        //header with content_type api key
	        $headers = array(
	          'Content-Type:application/json',
	          'Authorization:key='.$server_key
	        );
	              
	        $ch = curl_init();
	        curl_setopt($ch, CURLOPT_URL, $url);
	        curl_setopt($ch, CURLOPT_POST, true);
	        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
	        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
	        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
	        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
	        $result = curl_exec($ch);
	        if ($result === FALSE) {
	          die('FCM Send Error: ' . curl_error($ch));
	        }
	        curl_close($ch);
    	}
        
    }
    else
    {

        $data = array('post_id'=>'12345','external_link'=>$external_link);
        // $target = '/topics/global';
        // $target = 'dji0U60KS-iQCyl6h0pNPc:APA91bEWNV9cDymYY6CVau09LioP3i0ENMjo7L5VzH7XAsR16JrQ7vnIRb_QNNuKsavVM2OB0HjnAgf3-TrpG-qJKuYACLee5BsHZ98qhEYp2aqBKuPJi5HAMsolAYQUtGhjz9e2zCqb';
        
        //FCM api URL
        $url = 'https://fcm.googleapis.com/fcm/send';
        //api_key available in Firebase Console -> Project Settings -> CLOUD MESSAGING -> Server key
        $server_key = $appDetRes['fcm_server_key'];
              
        $fields = array();
        $fields['priority'] = "high";
        $fields['notification'] = ['title' => $notification_title, 
                                    'body' => $notification_msg, 
                                    'payload' => $data
                                    ];
        //$fields['notification'] = $data;
        //$fields['data'] = $data;
        if(is_array($target)){
          $fields['registration_ids'] = $target;
        }else{
          $fields['to'] = $target;
        }

        //header with content_type api key
        $headers = array(
          'Content-Type:application/json',
          'Authorization:key='.$server_key
        );
              
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
        $result = curl_exec($ch);
        if ($result === FALSE) {
          die('FCM Send Error: ' . curl_error($ch));
        }
        curl_close($ch);


    }
    
    if (!empty($_FILES['txtNimg']['name'])) 
    { 
    	$insquery = "insert into tbl_notification (title, description, image, url, notification_type) values('{$notification_title}', '{$notification_msg}', '{$tpath2}', '{$external_link}', 1)";
    }
    else
    {
    	$insquery = "insert into tbl_notification (title, description, url, notification_type) values('{$notification_title}', '{$notification_msg}', '{$external_link}', 1)";
    }
    if ($conn->query($insquery) === TRUE) {
		flash( 'fmsg', 'fmsg', 'Notification send successfully.', 'success', 'TRUE' );
        header("Location:send-notification");
        exit();
	} else {
	  flash( 'fmsg', 'fmsg', 'Something went wrong!', 'danger', 'TRUE' );
      header("Location:send-notification");
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
		<title>Send Notification | <?php echo $appDetRes['app_name']; ?></title>
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
									<h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Send Notification</h5>
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
											<form class="form" action="send-notification" method="post" enctype="multipart/form-data">
												<div class="card-body">
													<div class="row">
						                              <div class="col-md-12">
						                                <div class="form-group">
						                                  <label for="txtDesc">Title *</label>
						                                  <input type="text" name="notification_title" id="notification_title" class="form-control" value="" placeholder="" required>
						                                </div>
						                              </div>
						                              <div class="col-md-12">
						                                <div class="form-group">
						                                  <label for="txtDesc">Message *</label>
						                                  <textarea name="notification_msg" id="notification_msg" class="form-control" required></textarea>
						                                  <!-- <script>
						                                          CKEDITOR.replace( 'notification_msg' );
						                                  </script> -->
						                                </div>
						                              </div>
						                              <div class="col-md-12">
						                                <div class="form-group">
						                                  <label>Image</label><br>
						                                  <div class="image-input image-input-empty image-input-outline" id="kt_user_edit_avatar"
																style="background-image: url(assets/media/users/blank.png)"> 
																<div class="image-input-wrapper"></div>
																<label class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="change" data-toggle="tooltip" title="" data-original-title="Change Image">
																	<i class="fa fa-pen icon-sm text-muted"></i>
																	<input type="file" name="txtNimg" accept=".png, .jpg, .jpeg" />
																	<input type="hidden" name="profile_avatar_remove" />
																</label>
																<span class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="cancel" data-toggle="tooltip" title="Cancel Image">
																	<i class="ki ki-bold-close icon-xs text-muted"></i>
																</span>
																<span class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="remove" data-toggle="tooltip" title="Remove Image">
																	<i class="ki ki-bold-close icon-xs text-muted"></i>
																</span>
															</div>
															<small>Recommended resolution: 600x293 or 650x317 or 700x342 or 750x366</small>
						                                </div>
						                              </div>
						                              <div class="col-md-12">
						                                <div class="form-group">
						                                  <label for="txtDesc">External Link</label>
						                                  <input type="text" name="external_link" id="external_link" class="form-control" value="" placeholder="http://www.example.com">
						                                </div>
						                              </div>
						                              <div class="col-md-12">
						                              	<div class="form-group">
						                              		<button type="submit" class="btn btn-primary font-weight-bold" name="btnSendNoti">Send Notification</button>
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
					<script src="assets/js/pages/custom/user/edit-user.js"></script>
		<!--end::Page Scripts-->
	</body>
	<!--end::Body-->
</html>