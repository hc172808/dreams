<?php 

$servername = "localhost";
$username = "db_username";
$password = "db_password";
$db = "db_name";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    // $conn->set_charset('utf8');
}

$GLOBALS['config'] = $conn;

$ENABLE_RTL_MODE = 'false';
//echo "Connected successfully";

date_default_timezone_set('Asia/Kolkata');

/*----------------------------------------------------------------*/


/* Other configuration */

// Purchase Code 
$pur_code = "1234567890";

// App Name
$app_name = "App Name";

// Email configuration
$mail_host = ""; // smtp.gmail.com
$mail_port = ""; // 465 or 587
$mail_username = ""; // YOUR EMAIL
$mail_password = ""; // YOUR EMAIL PASSWORD

// Firebase configuration
$apiKey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
$authDomain = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
$databaseURL = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
$projectId = "xxxxxxxxxxxx";
$storageBucket = "xxxxxxxxxxxxxxxxxxxxxxxxxxx";
$messagingSenderId = "xxxxxxxxx";
$appId = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
$measurementId = "xxxxxxxxxxxxxx";

$authorizationKey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
$appicon = $_SERVER['SERVER_NAME']."/admin/media/app-icon.png";
?>