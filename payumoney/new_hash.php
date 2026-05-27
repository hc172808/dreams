<?php
include('../include/config.php');

$query   = $conn->query("select payu_salt from tbl_app_configuration where id=1"); 
$result = $query->fetch_assoc();

$key=$_POST["key"];
$txnid=$_POST["txnid"];
$amount=$_POST["amount"]; //Please use the amount value from database
$productinfo=$_POST["productinfo"];
$firstname=$_POST["firstname"];
$email=$_POST["email"];
$salt=$result['payu_salt']; //Please change the value with the live salt for production environment

//hash sequence

//String hashSequence = key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5||||||salt;


$hashSeq = $key.'|'.$txnid.'|'.$amount.'|'.$productinfo.'|'.$firstname.'|'.$email.'|||||||||||'.$salt;

$hash = hash("sha512", $hashSeq);

//error_log("all posted variables:".print_r($_POST,true));

echo $hash;
?>