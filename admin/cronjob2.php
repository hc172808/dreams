<?php 
// Run every minut
include('../include/config.php');

// $current_time = time();
$current_time = time(); //3 min

$query   = $conn->query("select m.*, p.parti1, p.parti2, p.match_id, p.id as pid from tbl_match as m left join tbl_participants as p on p.match_id=m.id where m.status=1"); 

while($result = $query->fetch_assoc())
{
	if($current_time-$result['play_time'] >= 0)
	{
		if($result['parti1']!='' & $result['parti2']=='')
	  	{
	  		$upUser1 = "UPDATE tbl_user set deposit_bal=deposit_bal+".$result['match_fee']." where id=".$result['parti1'];
	 		if($conn->query($upUser1))
			{
				$conn->query("INSERT into tbl_transaction (user_id, amount, payment_getway, remark, type, status) values(".$result['parti1'].",".$result['match_fee'].", 'System', 'MID #".$result['match_id']."- Cancel match refund', 1, 1)");
				$conn->query("DELETE from tbl_participants where id=".$result['pid']);
			}
	  	}
	}
}

?>