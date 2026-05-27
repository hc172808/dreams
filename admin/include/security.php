<?php 

require('../include/config.php');

// get app details
$appDetQuery   = $conn->query("select * from tbl_app_configuration where id=1"); 
$appDetRes = $appDetQuery->fetch_assoc();

date_default_timezone_set($appDetRes['time_zone']);

session_start();

if(isset($_SESSION['user'])&isset($_SESSION['userId']))
{
  $user = $_SESSION['user'];
  $userId = $_SESSION['userId'];
  $session_id=session_id();

  $query   = $conn->query("select * from tbl_user where username='{$user}' and id='{$userId}' and is_active ='1' and user_type='0'"); 
  
  if($res = $query->fetch_assoc())
  {
    $user = $res['username']; 
    $userId = $res['id'];
  }
  else
  {
    header("Location:login");
    exit();
  }
}
else
{
  if(isset($_COOKIE['user']) && isset($_COOKIE['userId']))
  {
    $cookie_user = mysqli_real_escape_string($conn, $_COOKIE['user']);
    $cookie_userId = mysqli_real_escape_string($conn, $_COOKIE['userId']);
    $cookieQuery = $conn->query("SELECT username, id FROM tbl_user WHERE username='{$cookie_user}' AND id='{$cookie_userId}' AND is_active='1' AND user_type='0'");
    if($cookieRes = $cookieQuery->fetch_assoc())
    {
      $user = $cookieRes['username'];
      $userId = $cookieRes['id'];
    }
    else
    {
      header("Location:login");
      exit();
    }
  }
  else
  {
    header("Location:login");
    exit();
  }
}

function flash($type = '', $name = '', $message = '', $class = '', $dismiss = '' )
{
  //We can only do something if name exists
  if($type)
  {   
      //No message, create it
      if($message && empty($_SESSION[$type][$name]))
      { 
          $_SESSION[$type][$name]['message'] = $message;
          $_SESSION[$type][$name]['class'] = $class;
          $_SESSION[$type][$name]['dismiss'] = $dismiss;
      }
      //Message exists, display it
      else if(isset($_SESSION[$type]) && empty($message))
      {
          foreach($_SESSION[$type] as $name=>$array) {
              echo '<div role="alert" class="alert alert-'.$_SESSION[$type][$name]['class'].'">'.$_SESSION[$type][$name]['message'].'</div>';
          }
          unset($_SESSION[$type]);

      }
  }
}



?>
