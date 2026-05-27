<?php 
// result announcement
include('../include/config.php');
$current_time = time();

$query = $conn->query("select m.*, p.parti1, p.parti2, p.match_id, p.parti1_status, p.parti2_status, p.id as pid from tbl_match as m left join tbl_participants as p on p.match_id=m.id where m.status=2"); 

while($result = $query->fetch_assoc())
{
	$pid = $result['pid'];
	$mid = $result['id'];
	if($result['parti1_status']==1)
	{
		$aid = $result['parti1'];
	}
	else if($result['parti2_status']==1)
	{
		$aid = $result['parti2'];
	}
	$resultTime = date('Y-m-d H:i:s');

	if($result['parti1_status']==1 && $result['parti2_status']==2 || $result['parti1_status']==2 && $result['parti2_status']==1)
		{
			// process result
			$getMatchQry = $conn->query("SELECT p.*, m.match_fee, m.prize, u.fcm_token from tbl_participants as p left join tbl_match as m on m.id=p.match_id left join tbl_user as u on u.id=$aid where p.id=$pid and p.result_status is NULL");
	
			$matchRes = $getMatchQry->fetch_assoc();

			if($getMatchQry->num_rows==1)
			{
				if($conn->query("UPDATE tbl_participants set winner_id=".$aid.", won_prize=".$matchRes['prize'].", result_status=1, result_time='$resultTime'
				where id='$pid' and result_status is NULL"))
				{
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

					/*$data = array('post_id'=>'12345', 'click_action'=>'HistoryActivity');
			        // $target = '/topics/global';
			        // $target = 'c86yHI0pQZy_NQ7-CPuEpN:APA91bFZr6j3hQbgjuNITX7q0nYYCx3etM7r9jtDXm5pculLGo96t_7oGnvS37-rrJlsorklFm-VslqvQCEwCpPtMowSesAyuFHV7KzLfZAn-qJwktDqIDAp0GpmK1IB21zxu481UecY';
			        $target = $matchRes['fcm_token'];

			        //FCM api URL
			        $url = 'https://fcm.googleapis.com/fcm/send';
			        //api_key available in Firebase Console -> Project Settings -> CLOUD MESSAGING -> Server key
			        $server_key = $appDetRes['fcm_server_key'];

			        $fields = array();
			        $fields['priority'] = "high";
			        $fields['notification'] = ['title' => 'Congrats! You won the tournament.', 
			                                    'body' => $matchRes['prize'].' rs. successfully transferred to your wallet. kindly check it.', 
			                                    'payload' => $data,
			                                    'click_action' => 'HistoryActivity'
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
			        curl_close($ch);*/

				}
			}
		}
	elseif($result['parti1_status']==3 && $result['parti2_status']==3)
		{
			// cancelled match and refund
			
			$getMatchQry = $conn->query("SELECT p.*, m.match_fee from tbl_participants as p left join tbl_match as m on m.id=p.match_id where p.match_id=$mid and p.result_status is NULL");
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

			}
		}
	// elseif($result['parti1_status']==$result['parti2_status'])
	// 	{
	// 		"reject";
	// 	}
}

?>