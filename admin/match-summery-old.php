<?php 
include('include/security.php');

if(isset($_GET['mid']))
{
	$mid = $_GET['mid'];
	$matchQry = $conn->query("select m.*, p.*, p.id as parti_id, u1.username as username1, u2.username as username2, u1.full_name as fname1, u2.full_name as fname2, m.status as mstatus from tbl_match as m
		left join tbl_participants as p on p.match_id=m.id
		left join tbl_user as u1 on u1.id=p.parti1
		left join tbl_user as u2 on u2.id=p.parti2
		where m.id='$mid'");
	$matchRes = $matchQry->fetch_assoc();
	
	$conn->close();
}
/*else
{
	flash( 'fmsg', 'fmsg', 'You may broken something!', 'warning', 'TRUE' );
	header("Location:match-list");
	exit();
}*/

if(isset($_GET['partiId'])&&isset($_GET['aid'])&&isset($_GET['mtid']))
{
	$partiId = $_GET['partiId'];
	$aid = $_GET['aid'];
	$mtid = $_GET['mtid'];

	$getMatchQry = $conn->query("SELECT p.*, m.match_fee, m.prize from tbl_participants as p left join tbl_match as m on m.id=p.match_id where p.id=$partiId and p.result_status is NULL");
	$matchRes = $getMatchQry->fetch_assoc();
	$resultTime = date('Y-m-d H:i:s');

	if($getMatchQry->num_rows==1)
	{
		if($conn->query("UPDATE tbl_participants set winner_id=".$aid.", won_prize=".$matchRes['prize'].", result_status=1, result_time='$resultTime'
			where id='$partiId' and result_status is NULL"))
		{
			// echo "UPDATE tbl_participants set winner_id=".$aid.", won_prize=".$matchRes['prize'].", result_status=1, result_time='$resultTime' where id='$partiId' and result_status=0";
			$upUser = "UPDATE tbl_user set won_bal=won_bal+".$matchRes['prize']." where id=".$aid;
			if($conn->query($upUser))
			{
				$conn->query("INSERT into tbl_transaction (user_id, amount, payment_getway, remark, type, status) values(".$aid.",".$matchRes['prize'].", 'System', 'Match ID #".$matchRes['match_id']."- Prize', 1, 1)");
				$conn->query("UPDATE tbl_match SET status=3 where id=".$matchRes['match_id']);
			}
            
            // refer bonus
			$refer_bonus = round((1 * $matchRes['match_fee']) / 100);

			if($refer_bonus >= 0.50)
			{
				$referQry = $conn->query("SELECT id, bonus_bal, referer FROM tbl_user WHERE id IN (".$matchRes['parti1'].",".$matchRes['parti2'].") AND is_active = 1 AND is_block = 0");
				while($refQryRes = $referQry->fetch_assoc())
				{
					$order_id = time();
					$referQryUsr = $conn->query("SELECT id, bonus_bal FROM tbl_user WHERE username ='".$refQryRes['referer']."' AND is_active = 1 AND is_block = 0");
					$referQryUsrRes = $referQryUsr->fetch_assoc();

					if($referQryUsrRes->num_rows==1)
					{
						$conn->query("UPDATE tbl_user SET bonus_bal = bonus_bal+$refer_bonus WHERE id = ".$referQryUsrRes['id']." AND is_active = 1 AND is_block = 0");
						$conn->query("INSERT INTO tbl_refer_track (user_id, refer_amt) VALUES (".$referQryUsrRes['id'].", '$refer_bonus')");
						$conn->query("INSERT INTO tbl_transaction (user_id, order_id, amount, payment_getway, remark, type, status) VALUES (".$referQryUsrRes['id'].", '$order_id', '$refer_bonus', 'App Walet', 'Refer Bounus Added', '1', '1')");
					}
				}
			}
			// refer bonus end
			
			flash( 'fmsg', 'fmsg', 'Result approved successfully.', 'success', 'TRUE' );
			header("Location:match-summery?mid=".$matchRes['match_id']);
			exit();
		}
		else
		{
			flash( 'fmsg', 'fmsg', 'Something went wrong', 'warning', 'TRUE' );
			header("Location:match-summery?mid=".$matchRes['match_id']);
			exit();
		}
	}
	else
	{
		flash( 'fmsg', 'fmsg', 'Result already announced.', 'danger', 'TRUE' );
		header("Location:match-summery?mid=".$mtid);
		exit();
	}
	
	$conn->close();
}


if(isset($_GET['partiId'])&&isset($_GET['rid'])&&isset($_GET['mtid']))
{
	$partiId = $_GET['partiId'];
	$rid = $_GET['rid'];
	$mtid = $_GET['mtid'];

	$getMatchQry = $conn->query("SELECT * from tbl_participants where id=$partiId and result_status is NULL");
	$matchRes = $getMatchQry->fetch_assoc();
	$resultTime = date('Y-m-d H:i:s');

	if($getMatchQry->num_rows==1)
	{
		if($rid==$matchRes['parti1'])
		{
			$upRejUser = "UPDATE tbl_participants set parti1_status=NULL, parti1_proof=NULL
			where id='$partiId' and result_status is NULL";
		}
		elseif($rid==$matchRes['parti2'])
		{
			$upRejUser = "UPDATE tbl_participants set parti2_status=NULL, parti2_proof=NULL
			where id='$partiId' and result_status is NULL";
		}

		if($conn->query($upRejUser))
		{
			// $conn->query("UPDATE tbl_match SET status=3 where id=".$matchRes['match_id']);
			flash( 'fmsg', 'fmsg', 'Result rejected successfully.', 'success', 'TRUE' );
			header("Location:match-summery?mid=".$matchRes['match_id']);
			exit();
		}
		else
		{
			flash( 'fmsg', 'fmsg', 'Something went wrong', 'warning', 'TRUE' );
			header("Location:match-summery?mid=".$matchRes['match_id']);
			exit();
		}
	}
	else
	{
		flash( 'fmsg', 'fmsg', 'Result already announced.', 'danger', 'TRUE' );
		header("Location:match-summery?mid=".$mtid);
		exit();
	}
	
	$conn->close();
}

if(isset($_GET['canMid']))
{
	$canMid = $_GET['canMid'];

	$getMatchQry = $conn->query("SELECT p.*, m.match_fee from tbl_participants as p left join tbl_match as m on m.id=p.match_id where p.match_id=$canMid and p.result_status is NULL");
	$matchRes = $getMatchQry->fetch_assoc();
	$resultTime = date('Y-m-d H:i:s');

	if($getMatchQry->num_rows==1)
	{
		
		$upUser1 = "UPDATE tbl_user set deposit_bal=deposit_bal+".$matchRes['match_fee']." where id=".$matchRes['parti1'];
 		if($conn->query($upUser1))
		{
			$conn->query("INSERT into tbl_transaction (user_id, amount, payment_getway, remark, type, status) values(".$matchRes['parti1'].",".$matchRes['match_fee'].", 'System', 'Match ID #".$matchRes['match_id']."- refund', 1, 1)");
		}

  		$upUser2 = "UPDATE tbl_user set deposit_bal=deposit_bal+".$matchRes['match_fee']." where id=".$matchRes['parti2'];
  		if($conn->query($upUser2))
		{
			$conn->query("INSERT into tbl_transaction (user_id, amount, payment_getway, remark, type, status) values(".$matchRes['parti2'].",".$matchRes['match_fee'].", 'System', 'Match ID #".$matchRes['match_id']."- refund', 1, 1)");
		}

		$conn->query("UPDATE tbl_match SET status=4 where id=".$matchRes['match_id']);
		flash( 'fmsg', 'fmsg', 'Match Canceled successfully.', 'success', 'TRUE' );
		header("Location:match-summery?mid=".$matchRes['match_id']);
		exit();

	}
	else
	{
		flash( 'fmsg', 'fmsg', 'Result already announced.', 'danger', 'TRUE' );
		header("Location:match-summery?mid=".$mtid);
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
		<title>Match Summery | CZ Lottery</title>
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
									<h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Match Summery</h5>
									<ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
										<li class="breadcrumb-item">
											<a href="match-list" class="text-muted">Match List</a>
										</li>
									</ul>
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
									<div class="col-xl-12">
										<!--begin::Tiles Widget 22-->
										<div class="card card-custom bgi-no-repeat gutter-b" style="height: 250px; background-color: #1B283F; background-position: calc(100% + 0.5rem) calc(100% + 0.5rem); background-size: 100% auto; background-image: url(assets/media/wp3731787.jpg)">
											<!--begin::Body-->
											<div class="card-body">
												<h3 class="text-white font-weight-bolder">Match Details</h3>
												<p class="text-muted font-size-lg mt-5 mb-10">Check participants data, and announced result.</p>
												<!-- <a href='#' class="btn btn-link btn-link-warning font-weight-bold">Create Report
												</a> -->
												<div class="row">
													<div class="col-lg-3" style="border-right: 1px solid #fff;">
														<h4 class="text-white font-weight-bolder">Match Fee: <?php echo $matchRes['match_fee']; ?></h4>
													</div>
													<div class="col-lg-3" style="border-right: 1px solid #fff;">
														<h4 class="text-white font-weight-bolder">Prize: <?php echo $matchRes['prize']; ?></h4>
													</div>
													<div class="col-lg-3" style="border-right: 1px solid #fff;">
														<h4 class="text-white font-weight-bolder">Table Size: <?php echo $matchRes['table_size']; ?></h4>
													</div>
													<div class="col-lg-3">
														<h4 class="text-white font-weight-bolder">Type: <?php if($matchRes['type']==1) {echo 'Team'; } else { echo 'Individual'; } ?></h4>
													</div>
												</div>
											</div>
											<!--end::Body-->
										</div>
										<!--end::Tiles Widget 22-->
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6">
										<!--begin::Card-->
										<!--begin::Engage Widget 7-->
										<div class="card card-custom card-stretch gutter-b">
											<div class="card-body d-flex p-0 ribbon ribbon-top ribbon-ver">
												<?php if($matchRes['winner_id']==$matchRes['parti1'] & $matchRes['result_status']==1) { ?>
													<div class="ribbon-target bg-success" style="top: -2px; right: 20px;">
												   		<i class="fa fa-star text-white"></i>
												  	</div>
											  	<?php } elseif($matchRes['winner_id']==$matchRes['parti1'] & $matchRes['result_status']==2) {?>
											  		<div class="ribbon-target bg-danger" style="top: -2px; right: 20px;">Rejected</div>
											  	<?php } ?>
												<div class="flex-grow-1 p-12 card-rounded bgi-no-repeat d-flex flex-column justify-content-center align-items-start" style="background-color: #FFF4DE; background-position: right bottom; background-size: 20% auto; background-image: url(assets/media/svg/humans/custom-8.svg)">
													<h2 class="font-weight-bolder">Participant - 1</h2>
													<p class="text-dark-50 my-5 font-size-xl font-weight-bold">
														<ul>
															<li>User Name: <?php echo $matchRes['username1']; ?></li>
															<li>Full Name: <?php echo $matchRes['fname1']; ?></li>
															<li>Join Time: <?php echo $matchRes['parti1_join_time']; ?></li>
															<li>Participant Status: <?php if($matchRes['parti1_status']==1) { ?>
																<span class="label font-weight-bold label-lg label-light-success label-inline">Won</span>
																<?php } else if($matchRes['parti1_status']==2) { ?>
																<span class="label font-weight-bold label-lg label-light-danger label-inline">Lose</span>
																<?php } else if($matchRes['parti1_status']==3) { ?>
																<span class="label font-weight-bold label-lg label-light-warning label-inline">Canceled</span>
																<?php } ?>
															</li>
															<li>Final Result: <?php if($matchRes['winner_id']!='') { ?>
																	<?php if($matchRes['winner_id']==$matchRes['parti1']) { ?>
																	<span class="label label-success label-pill label-inline mr-2">WON</span>
																	<?php } else { ?>
																	<span class="label label-danger label-pill label-inline mr-2">LOSE</span>
																	<?php } ?>
																<?php } else { ?>
																	<span class="label label-primary label-pill label-inline mr-2">Pending</span>
																<?php } ?>
															</li>
															<li>Proof: <a href="../<?php echo $matchRes['parti1_proof']; ?>" target="_blank">View in new tab</a></li>
															<br>
															<img src="../<?php echo $matchRes['parti1_proof']; ?>" class="img-responsive" height="200" />
														</ul>
													</p>
													<?php if($matchRes['mstatus']==2) { ?>
														<?php if($matchRes['parti1_status']!=3 | $matchRes['parti2_status']!=3) { ?>
															<?php if($matchRes['result_status']==0|$matchRes['result_status']=='') { ?>
																<div class="form-group">
																	<a href="match-summery?partiId=<?php echo $matchRes['parti_id']; ?>&aid=<?php echo $matchRes['parti1']; ?>&mtid=<?php echo $matchRes['match_id']; ?>" class="btn btn-success font-weight-bold py-2 px-6" onclick="clickAndDisable(this);">
																	Approve</a>
																	<a href="match-summery?partiId=<?php echo $matchRes['parti_id']; ?>&rid=<?php echo $matchRes['parti1']; ?>&mtid=<?php echo $matchRes['match_id']; ?>" class="btn btn-danger font-weight-bold py-2 px-6" onclick="clickAndDisable(this);">
																	Reject</a>
																	<a href="match-summery?canMid=<?php echo $matchRes['match_id']; ?>" class="btn btn-danger font-weight-bold py-2 px-6" onclick="clickAndDisable(this);">
																	Cancel Match</a>
																</div>
															<?php } ?>
														<?php } else if($matchRes['parti1_status']==3 | $matchRes['parti2_status']==3) { ?>
															<?php if($matchRes['result_status']==0|$matchRes['result_status']=='') { ?>
																<div class="form-group">
																	<a href="match-summery?partiId=<?php echo $matchRes['parti_id']; ?>&aid=<?php echo $matchRes['parti1']; ?>&mtid=<?php echo $matchRes['match_id']; ?>" class="btn btn-success font-weight-bold py-2 px-6" onclick="clickAndDisable(this);">
																	Approve</a>
																	<a href="match-summery?partiId=<?php echo $matchRes['parti_id']; ?>&rid=<?php echo $matchRes['parti1']; ?>&mtid=<?php echo $matchRes['match_id']; ?>" class="btn btn-danger font-weight-bold py-2 px-6" onclick="clickAndDisable(this);">
																	Reject</a>
																	<a href="match-summery?canMid=<?php echo $matchRes['match_id']; ?>" class="btn btn-danger font-weight-bold py-2 px-6" onclick="clickAndDisable(this);">
																	Cancel Match</a>
																</div>
															<?php } ?>
														<?php } ?>
													<?php } ?>
												</div>
											</div>
										</div>
										<!--end::Engage Widget 7-->
										<!--end::Card-->
									</div>
									<div class="col-lg-6">
										<!--begin::Engage Widget 7-->
										<div class="card card-custom card-stretch gutter-b">
											<div class="card-body d-flex p-0 ribbon ribbon-top ribbon-ver">
												<?php if($matchRes['winner_id']==$matchRes['parti2'] & $matchRes['result_status']==1) { ?>
													<div class="ribbon-target bg-success" style="top: -2px; right: 20px;">
												   		<i class="fa fa-star text-white"></i>
												  	</div>
											  	<?php } elseif($matchRes['winner_id']==$matchRes['parti2'] & $matchRes['result_status']==2) {?>
											  		<div class="ribbon-target bg-danger" style="top: -2px; right: 20px;">Rejected</div>
											  	<?php } ?>
												<div class="flex-grow-1 p-12 card-rounded bgi-no-repeat d-flex flex-column justify-content-center align-items-start" style="background-color: #FFF4DE; background-position: right bottom; background-size: 20% auto; background-image: url(assets/media/svg/humans/custom-8.svg)">
													<h2 class="font-weight-bolder">Participant - 2</h2>
													<p class="text-dark-50 my-5 font-size-xl font-weight-bold">
														<ul>
															<li>User Name: <?php echo $matchRes['username2']; ?></li>
															<li>Full Name: <?php echo $matchRes['fname2']; ?></li>
															<li>Join Time: <?php echo $matchRes['parti2_join_time']; ?></li>
															<li>Participant Status: <?php if($matchRes['parti2_status']==1) { ?>
																<span class="label font-weight-bold label-lg label-light-success label-inline">Won</span>
																<?php } else if($matchRes['parti2_status']==2) { ?>
																<span class="label font-weight-bold label-lg label-light-danger label-inline">Lose</span>
																<?php } else if($matchRes['parti2_status']==3) { ?>
																<span class="label font-weight-bold label-lg label-light-warning label-inline">Canceled</span>
																<?php } ?>
															</li>
															<li>Final Result: <?php if($matchRes['winner_id']!='') { ?>
																	<?php if($matchRes['winner_id']==$matchRes['parti2']) { ?>
																	<span class="label label-success label-pill label-inline mr-2">WON</span>
																	<?php } else { ?>
																	<span class="label label-danger label-pill label-inline mr-2">LOSE</span>
																	<?php } ?>
																<?php } else { ?>
																	<span class="label label-primary label-pill label-inline mr-2">Pending</span>
																<?php } ?>
															</li>
															<li>Proof: <a href="../<?php echo $matchRes['parti2_proof']; ?>" target="_blank">View in new tab</a></li>
															<br>
															<img src="../<?php echo $matchRes['parti2_proof']; ?>" class="img-responsive" height="200" />
														</ul>
													</p>
													<?php if($matchRes['mstatus']==2) { ?>
														<?php if($matchRes['parti1_status']!=3 | $matchRes['parti2_status']!=3) { ?>
															<?php if($matchRes['result_status']==0|$matchRes['result_status']=='') { ?>
																<div class="form-group">
																	<a href="match-summery?partiId=<?php echo $matchRes['parti_id']; ?>&aid=<?php echo $matchRes['parti2']; ?>&mtid=<?php echo $matchRes['match_id']; ?>" class="btn btn-success font-weight-bold py-2 px-6" onclick="clickAndDisable(this);">
																	Approve</a>&nbsp;&nbsp;<a href="match-summery?partiId=<?php echo $matchRes['parti_id']; ?>&rid=<?php echo $matchRes['parti2']; ?>&mtid=<?php echo $matchRes['match_id']; ?>" class="btn btn-danger font-weight-bold py-2 px-6" onclick="clickAndDisable(this);">
																	Reject</a>
																	<a href="match-summery?canMid=<?php echo $matchRes['match_id']; ?>" class="btn btn-danger font-weight-bold py-2 px-6" onclick="clickAndDisable(this);">
																	Cancel Match</a>
																</div>
															<?php } ?>
														<?php } else if($matchRes['parti1_status']==3 | $matchRes['parti2_status']==3) { ?>
															<?php if($matchRes['result_status']==0|$matchRes['result_status']=='') { ?>
																<div class="form-group">
																	<a href="match-summery?partiId=<?php echo $matchRes['parti_id']; ?>&aid=<?php echo $matchRes['parti2']; ?>&mtid=<?php echo $matchRes['match_id']; ?>" class="btn btn-success font-weight-bold py-2 px-6" onclick="clickAndDisable(this);">
																	Approve</a>
																	<a href="match-summery?partiId=<?php echo $matchRes['parti_id']; ?>&rid=<?php echo $matchRes['parti2']; ?>&mtid=<?php echo $matchRes['match_id']; ?>" class="btn btn-danger font-weight-bold py-2 px-6" onclick="clickAndDisable(this);">
																	Reject</a>
																	<a href="match-summery?canMid=<?php echo $matchRes['match_id']; ?>" class="btn btn-danger font-weight-bold py-2 px-6" onclick="clickAndDisable(this);">
																	Cancel Match</a>
																</div>
															<?php } ?>
														<?php } ?>
													<?php } ?>
												</div>
											</div>
										</div>
										<!--end::Engage Widget 7-->
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
					<script type="text/javascript">
						function clickAndDisable(link) {
							// disable subsequent clicks
							link.onclick = function(event) {
							event.preventDefault();
							}
						} 
					</script>
		<!--end::Page Scripts-->
	</body>
	<!--end::Body-->
</html>