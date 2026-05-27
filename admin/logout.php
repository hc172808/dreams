<?php 
session_start();
/*$upquery = "update tbl_user_master set status = '0' where email='{$user}'";
$upresult = mysqli_query($conn,$upquery);*/
/*$selqueryuser = "select * from tbl_user_master where email='{$user}'";
$selresuser = mysqli_query($conn,$selqueryuser);
$selresuser1 = mysqli_fetch_array($selresuser);*/

session_destroy();
setcookie("user","",time()-1);
header("Location:login.php");

?>