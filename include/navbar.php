<?php 
include("config.php");
// get app details
$appDetQuery   = $conn->query("select * from tbl_app_configuration where id=1"); 
$appDetRes = $appDetQuery->fetch_assoc();
?>

<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
  <meta name="theme-color" content="#0a1b22">
  <!--- Font --->
  <link href="https://fonts.googleapis.com/css?family=Cantarell|Hammersmith+One|Quattrocento+Sans|Exo+2" rel="stylesheet">

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="icon" href="img/favicon.png" type="image/png">
  <title><?php echo $pageTitle; ?> <?php echo $appDetRes['app_name']; ?></title>

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
    crossorigin="anonymous">
  <link rel="stylesheet" href="asset/Footer-with-logo.css">
  <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->

  <link rel="stylesheet" href="asset/owl.carousel.min.css">
  <link rel="stylesheet" href="asset/owl.theme.green.min.css">
  <link rel="stylesheet" href="asset/css/style.css">
    <style type="text/css">
    #mybutton {
      position: fixed;
      bottom: 8px;
      right: 10px;
    }
  </style>

</head>
<body>
<!-- nav Start -->
    <nav id="sabnav" class="navbar fixed-top navbar-expand-lg" style="background-image: linear-gradient(to bottom right, #6FA92D, #FADB06);">
    <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarsExample10" aria-controls="navbarsExample10" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"><i class="fas fa-bars" aria-hidden="true"></i></span>
    </button>

    <div style="height: 50px !important;" class="navbar-collapse justify-content-md-center collapse" id="navbarsExample10" style="">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="dropdown10" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">App</a>
          <div class="dropdown-menu" aria-labelledby="dropdown10">
            <a class="dropdown-item" href="#screen">SCREENSHOTS</a>
      <a class="dropdown-item" href="#scroll-pubg">STATS</a>
      <a class="dropdown-item" href="#features">FEATURES</a>
          </div>
        </li>
        <li class="nav-item"><a class="nav-link" href="download.php">DOWNLOAD</a> </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="dropdown10" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">About</a>
          <div class="dropdown-menu" aria-labelledby="dropdown10">
            <a class="dropdown-item" href="about-us.php">About Us</a>
            <a class="dropdown-item" href="terms-and-conditions.php">Terms & Conditions</a>
            <a class="dropdown-item" href="privacy-policy.php">Privacy Policy</a>
            <a class="dropdown-item" href="legal-policy.php">Legal Policy</a>
          </div>
        </li>
        <li class="nav-item"><a class="nav-link" href="contact.php">Contact</a></li>
      </ul>
    </div>
  </nav><!-- Nav End  -->