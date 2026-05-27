<?php
require('include/conn.php');

// get app details
$appDetQuery   = $conn->query("select * from tbl_app_configuration where id=1"); 
$appDetRes = $appDetQuery->fetch_assoc();
$server_key = $appDetRes['fcm_server_key'];

$query = $conn->query("SELECT device_token FROM tbl_fcm_devicetoken");

$deviceToken = array();
while($selres = $query->fetch_assoc())
{
    $deviceToken[] = $selres['device_token'];
}
// print_r($deviceToken);

function sendNotification($deviceToken){
    $url ="https://fcm.googleapis.com/fcm/send";

    $fields=array(
        "registration_ids"=> $deviceToken,
        "notification"=>array(
            "body"=>'message test2',
            "title"=>'message title2',
            "icon"=>$_REQUEST['icon'],
            "click_action"=>"https://google1.com"
        )
    );

    $headers=array(
        'Authorization: key=AAAAGuqDh94:APA91bEXxpERkMKFi-MWbqNwOh5YwD2CzI3XMuX5Y788CQlxLGfUhk3SQghS3q7k7daBAgKgI5XjPOGYDJbcx3aUrrgkwlMUQsLyCzVlqjpp23e4kvD7W1JpcpgkW7yxRhGGFxDqr--5',
        'Content-Type:application/json'
    );

    $ch=curl_init();
    curl_setopt($ch,CURLOPT_URL,$url);
    curl_setopt($ch,CURLOPT_POST,true);
    curl_setopt($ch,CURLOPT_HTTPHEADER,$headers);
    curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
    curl_setopt($ch,CURLOPT_POSTFIELDS,json_encode($fields));
    $result=curl_exec($ch);
    print_r($result);
    curl_close($ch);
}
sendNotification($deviceToken);