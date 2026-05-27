<?php 
// Run every 30 min
include('../include/config.php');

// $current_time = time();
$current_time = time();

$query   = $conn->query("select m.*, p.parti1, p.parti2, p.match_id, p.parti1_status, p.parti2_status from tbl_match as m left join tbl_participants as p on p.match_id=m.id where m.status=2"); 

while($result = $query->fetch_assoc())
{
	if($current_time-$result['play_time'] >= 1980)
	{
		if($result['parti1_status']=='' & $result['parti2_status']=='')
	  	{
	  		$upUser1 = "UPDATE tbl_user set deposit_bal=deposit_bal+".$result['match_fee']." where id=".$result['parti1'];
	 		if($conn->query($upUser1))
			{
				$conn->query("INSERT into tbl_transaction (user_id, amount, payment_getway, remark, type, status) values(".$result['parti1'].",".$result['match_fee'].", 'System', 'MID #".$result['match_id']."- Cancel match refund', 1, 1)");
			}

	  		$upUser2 = "UPDATE tbl_user set deposit_bal=deposit_bal+".$result['match_fee']." where id=".$result['parti2'];
	  		if($conn->query($upUser2))
			{
				$conn->query("INSERT into tbl_transaction (user_id, amount, payment_getway, remark, type, status) values(".$result['parti2'].",".$result['match_fee'].", 'System', 'MID #".$result['match_id']."- Cancel match refund', 1, 1)");
			}

			$sql = "UPDATE tbl_match set status=4 where id=".$result['id']." and status=2";
			$conn->query($sql);
			// $conn->query("INSERT into tbl_match (match_fee, prize, table_size, type, added_by) values (".$result['match_fee'].", ".$result['prize'].", ".$result['table_size'].", ".$result['type'].", 0)");
	  	}
	}
}

?>