<?php

/* import checksum generation utility */
require_once("./PaytmChecksum.php");

/* initialize an array */
$paytmParams = array();

/* add parameters in Array */
$paytmParams["MID"] = "YOUR_MID_HERE";
$paytmParams["ORDERID"] = "YOUR_ORDERID_HERE";

/**
* Generate checksum by parameters we have
* Find your Merchant Key in your Paytm Dashboard at https://dashboard.paytm.com/next/apikeys 
*/
$paytmChecksum = PaytmChecksum::generateSignature($paytmParams, 'YOUR_MERCHANT_KEY');
echo sprintf("generateSignature Returns: %s\n", $paytmChecksum);