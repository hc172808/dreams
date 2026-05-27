<?php
include('../../include/config.php');

if(!empty($_POST["push_token"])){
    $token = $_POST["push_token"];
    //check token

    $query1 = "SELECT device_token FROM tbl_fcm_devicetoken WHERE device_token = '$token'";
    $query = $conn->query($query1);
    
    //Count total number of rows
    $rowCount = $query->num_rows;
    
    //State option list
    if($rowCount == 0){
        $insQuery = "INSERT into tbl_fcm_devicetoken (device_token) values ('$token')"; 
        $conn->query($insQuery);
        echo 'Token updated successfully';
    }else{
        // echo $rowCount;
        echo 'Something went wrong!';
    }
}

?>