<?php
include('../include/config.php');

$query   = $conn->query("select paytm_mer_id, paytm_mer_key from tbl_app_configuration where id=1"); 
$result = $query->fetch_assoc();

$code = $_POST['code'];
$mid = $_POST['MID'];
$orderid = $_POST['ORDER_ID'];
$amount = $_POST['AMOUNT'];

$code=   stripslashes($code);
$mid=   stripslashes($mid);
$orderid =   stripslashes($orderid);
$amount =   stripslashes($amount);

if($code=="12345"){
    
/*
* import checksum generation utility
* You can get this utility from https://developer.paytm.com/docs/checksum/
*/
require_once("PaytmChecksum.php");

$Merchant_key = $result['paytm_mer_key'];

$paytmParams = array();

$paytmParams["body"] = array(
    "requestType"   => "Payment",
    "mid"           => $mid,
    //"websiteName"   => "WEBSTAGING",
    "websiteName"   => "DEFAULT",
    "orderId"       => $orderid,
    "callbackUrl"   => "https://securegw.paytm.in/theia/paytmCallback?ORDER_ID=$orderid",
    "txnAmount"     => array(
        "value"     => $amount,
        "currency"  => "INR",
    ),
    "userInfo"      => array(
        "custId"    => "CUST_001",
    ),
);

/*
* Generate checksum by parameters we have in body
* Find your Merchant Key in your Paytm Dashboard at https://dashboard.paytm.com/next/apikeys 
*/
$checksum = PaytmChecksum::generateSignature(json_encode($paytmParams["body"], JSON_UNESCAPED_SLASHES), $Merchant_key);

$paytmParams["head"] = array(
    "signature"	=> $checksum
);

$post_data = json_encode($paytmParams, JSON_UNESCAPED_SLASHES);

/* for Staging */
 //$url = "https://securegw-stage.paytm.in/theia/api/v1/initiateTransaction?mid=$mid&orderId=$orderid";

/* for Production */
 $url = "https://securegw.paytm.in/theia/api/v1/initiateTransaction?mid=$mid&orderId=$orderid";

$ch = curl_init($url);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); 
curl_setopt($ch, CURLOPT_HTTPHEADER, array("Content-Type: application/json")); 
$response = curl_exec($ch);
print_r($response);

    
}

?>