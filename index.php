<?php 
include('include/config.php');

$qryAppDet = "select * from tbl_app_configuration where id=1";
$getAppDet = mysqli_query($conn,$qryAppDet);
$resAppDet = mysqli_fetch_array($getAppDet);

$qryFaq = "select * from tbl_configuration where id=1";
$getFaq = mysqli_query($conn,$qryFaq);
$resFaq = mysqli_fetch_array($getFaq);

?>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title><?php echo $resAppDet['app_name']; ?></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="assets/images/logo/dreamludo.png">
    
    <!-- CSS 
    ========================= -->
   
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="assets/css/plugins.css">
    
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    
    <!-- Modernizer JS -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>

</head>

<body>

<!-- Main Wrapper Start -->
<div class="main-wrapper">
    <!-- header-area start -->
    <header class="header header-sticky">
        <!-- header-top start -->
        <div id="main-menu" class="header-top inner-header">
            <div class="container">
                <div class="row header-top-inner">
                    <div class="col-lg-4">
                        <div class="logo">
                            <!-- <a href="/"><img src="<?php // echo $resAppDet['logo']; ?>" alt="<?php // echo $resAppDet['app_name']; ?>"></a> -->
                            <h3><a href="/"><?php echo $resAppDet['app_name']; ?></a></h3>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="main-menu">
                            <nav class="main-navigation">
                                <ul>
                                    <li class="active"><a href="#slider">Home</a></li>
                                    <li class="smooth-scroll"><a href="#about">About</a></li>
                                    <li><a href="#feature">Feature</a></li>
                                    <li><a href="#screnshot">Screenshot</a></li>
                                    <li><a href="#testimonial">Clients</a></li>
                                    <li><a href="#faq">Faq</a></li>
                                    <li><a href="#contact">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col">
                        <!-- mobile-menu start -->
                        <div class="mobile-menu d-block d-lg-none"></div>
                        <!-- mobile-menu end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Header-top end -->
    </header>
    <!-- Header-area end -->
    
    <!-- Hero Slider start -->
    <div class="hero-slider hero-slider-bg-1" id="slider">
        <div class="single-slide slider-mockup">
            <!-- Hero Content One Start -->
            <div class="hero-content-one container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-8"> 
                        <div class="slider-text-info">
                            <h1><?php echo $resAppDet['app_name']; ?></h1>
                            <p>Play Ludo with Real Players & Win Real Money with Instant withdraw. Also, this app is not only for ludo game, you can organize any board game and earn money.</p>
                            <div class="slider-button">
                                <!-- <a href="#" class=" slider-btn uppercase"><span><i class="fa fa-apple"></i>Apple store</span></a> -->
                                <a href="dream-ludo.apk" download class="slider-btn uppercase"><span><i class="fa fa-send-o"></i>Android App</span></a>
                            </div>
                            
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1 col-md-4 text-center"> 
                        <div class="slider-inner-imge-2 banner-right">
                            <img src="assets/images/screenshot/home-mockup.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <!-- Hero Content One End -->
        </div>
    </div>
    <!-- Hero Slider end -->
    
    <!-- About Area Start -->
    <div id="about" class="about-area-one bg-about section-ptb">
        <div class="animate-section">
            <div class="icon-one" style="background-image:url(assets/images/icon/shep_01.png)"></div>
            <div class="icon-two" style="background-image:url(assets/images/icon/shep_02.png)"></div>
            <div class="icon-three" style="background-image:url(assets/images/icon/shep_03.png)"></div>
        </div>
       
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="about-image text-center wow fadeInLeft" data-wow-duration="1s">
                        <img src="assets/images/about/dice.png" alt="">
                    </div>
                </div>
                <div class="col-lg-6 ">
                    <div class="about-content">
                        <div class="about-title">
                            <h2>About <?php echo $resAppDet['app_name']; ?></h2>
                        </div>
                        <p>Are you addicted to Online Games? Have you ever thought of earning through Online Gaming or from Playing Mobile Games?</p> 
                        <p>Dream Ludo is an Online Portal which Offers Rewards and Unlimited Entertainment for Participating and Playing Games Online.</p>
                        <p>Ludo is among the most popular board games that is played by people in their leisure time.Play Ludo with real players in our app and win real cash. Withdraw within 1 Hour in your favorite medium:</p>
                        <ul>
                            <li> <i class="ion-checkmark-round"></i> PayTM, PhonePay, or any other wallet</li>
                            <li><i class="ion-checkmark-round"></i> UPI, Gpay, Bank transfer, etc.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About Area End -->
    
    <!-- Service Area Start  -->
    <div  id="feature" class="service-area section-ptb bg-testimonial">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 ml-auto mr-auto">
                    <div class="section-title text-white">
                        <h2 class="text-white">Our App Feature</h2>
                        <p>We have developed app using latest technology, our creative team work on UI/UX on regular basis for user friendly interface.</p>
                    </div>
                </div>
            </div>
            <div class="row">
               
                <div class="col-lg-4 col-md-6"> 
                    <!-- Single Service Start -->
                    <div class="single-service mt--30  wow fadeInLeft" data-wow-duration="0.7s">
                        <div class="service-icon">
                            <img src="assets/images/icon/tournament.png" alt="">
                        </div>
                        <div class="service-text text-white">
                            <h3 class="text-white">Join Custom Match</h3>
                            <p>Enjoy the custom matches every time. Play with real players, Perform Good & Get Rewarded.</p>
                        </div>
                    </div>
                    <!-- Single Service End -->
                </div>
               
                <div class="col-lg-4 col-md-6"> 
                    <!-- Single Service Start -->
                    <div class="single-service mt--30">
                        <div class="service-icon">
                            <img src="assets/images/icon/money-sack.png" alt="">
                        </div>
                        <div class="service-text text-white">
                            <h3 class="text-white">Win Big Prize</h3>
                            <p>Play <?php echo $resAppDet['app_name']; ?> and gather top positions to Smash the exciting Win Prize on each match.</p>
                        </div>
                    </div>
                    <!-- Single Service End -->
                </div>
               
                <div class="col-lg-4 col-md-6"> 
                    <!-- Single Service Start -->
                    <div class="single-service mt--30 wow fadeInRight" data-wow-duration="0.7s">
                        <div class="service-icon">
                            <img src="assets/images/icon/time.png" alt="">
                        </div>
                        <div class="service-text text-white">
                            <h3 class="text-white">24x7 Withdrawal</h3>
                            <p>You can withdraw your prize money at any time in your chosen option like PayTM, UPI, etc.</p>
                        </div>
                    </div>
                    <!-- Single Service End -->
                </div>
               
            </div>
        </div>
    </div>
    <!-- Service Area End -->
    
    <!-- Project Count Area Start -->
    <div class="project-count-area">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="project-count-inner project-bg wow fadeInBottom" data-wow-duration="1s">
                        <div class="row">
                            <div class="col-lg-3 col-sm-6">
                                <!-- counter start -->
                                <div class="counter text-center">
                                    <h3 class="counter-active">241</h3>
                                    <p>APP Downloads</p>
                                </div>
                                <!-- counter end -->
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <!-- counter start -->
                                <div class="counter text-center">
                                    <h3 class="counter-active">531</h3>
                                    <p>Happy Clients</p>
                                </div>
                                <!-- counter end -->
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <!-- counter start --> 
                                <div class="counter text-center">
                                    <h3 class="counter-active">171</h3>
                                    <p>Total App Rates</p>
                                </div>
                                <!-- counter end -->
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <!-- counter start -->
                                <div class="counter text-center">
                                    <h3 class="counter-active">331</h3>
                                    <p>Awrds Winned</p>
                                </div>
                                <!-- counter start -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Project Count Area End -->
    
    <!-- Screenshot Area Start -->
    <div id="screnshot" class="screnshot-area-tow section-ptb">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 ml-auto mr-auto">
                    <div class="section-title">
                        <h2>APP Screenshots</h2>
                        <p>For better understanding of app layout and how it works, Here is our app snapshots.</p>
                    </div>
                </div>
            </div>
            <!-- Screnshot Content Two Start-->
            <div class="screnshot-content-two">
                <div class="row screenshot-tow-active">
                    <div class="col-lg-4">
                        <!-- Singel Screenshot Start -->
                        <div class="singel-screenshot">
                            <span class="overlay-bg"></span>
                            <a href="assets/images/screenshot/1.jpeg" class="img-poppu">
                                <span class="single-img overlay-bg">
                                    <img src="assets/images/screenshot/1.jpeg" alt="">
                                </span>
                            </a>
                        </div>
                        <!-- Singel Screenshot End -->
                    </div>
                    <div class="col-lg-4">
                        <!-- Singel Screenshot Start -->
                        <div class="singel-screenshot">
                            <span class="overlay-bg"></span>
                            <a href="assets/images/screenshot/2.jpeg" class="img-poppu">
                                <span class="single-img overlay-bg">
                                    <img src="assets/images/screenshot/2.jpeg" alt="">
                                </span>
                            </a>
                        </div>
                        <!-- Singel Screenshot End -->
                    </div>
                    <div class="col-lg-4">
                        <!-- Singel Screenshot Start -->
                        <div class="singel-screenshot">
                            <span class="overlay-bg"></span>
                            <a href="assets/images/screenshot/3.jpeg" class="img-poppu">
                                <span class="single-img overlay-bg">
                                    <img src="assets/images/screenshot/3.jpeg" alt="">
                                </span>
                            </a>
                        </div>
                        <!-- Singel Screenshot End -->
                    </div>
                    <div class="col-lg-4">
                        <!-- Singel Screenshot Start -->
                        <div class="singel-screenshot">
                            <span class="overlay-bg"></span>
                            <a href="assets/images/screenshot/4.jpeg" class="img-poppu">
                                <span class="single-img overlay-bg">
                                    <img src="assets/images/screenshot/4.jpeg" alt="">
                                </span>
                            </a>
                        </div>
                        <!-- Singel Screenshot End -->
                    </div>
                    <div class="col-lg-4">
                        <!-- Singel Screenshot Start -->
                        <div class="singel-screenshot">
                            <span class="overlay-bg"></span>
                            <a href="assets/images/screenshot/5.jpeg" class="img-poppu">
                                <span class="single-img overlay-bg">
                                    <img src="assets/images/screenshot/5.jpeg" alt="">
                                </span>
                            </a>
                        </div>
                        <!-- Singel Screenshot End -->
                    </div>
                    <div class="col-lg-4">
                        <!-- Singel Screenshot Start -->
                        <div class="singel-screenshot">
                            <span class="overlay-bg"></span>
                            <a href="assets/images/screenshot/6.jpeg" class="img-poppu">
                                <span class="single-img overlay-bg">
                                    <img src="assets/images/screenshot/6.jpeg" alt="">
                                </span>
                            </a>
                        </div>
                        <!-- Singel Screenshot End -->
                    </div>
                    <div class="col-lg-4">
                        <!-- Singel Screenshot Start -->
                        <div class="singel-screenshot">
                            <span class="overlay-bg"></span>
                            <a href="assets/images/screenshot/7.jpeg" class="img-poppu">
                                <span class="single-img overlay-bg">
                                    <img src="assets/images/screenshot/7.jpeg" alt="">
                                </span>
                            </a>
                        </div>
                        <!-- Singel Screenshot End -->
                    </div>
                    <div class="col-lg-4">
                        <!-- Singel Screenshot Start -->
                        <div class="singel-screenshot">
                            <span class="overlay-bg"></span>
                            <a href="assets/images/screenshot/8.jpeg" class="img-poppu">
                                <span class="single-img overlay-bg">
                                    <img src="assets/images/screenshot/8.jpeg" alt="">
                                </span>
                            </a>
                        </div>
                        <!-- Singel Screenshot End -->
                    </div>
                    <div class="col-lg-4">
                        <!-- Singel Screenshot Start -->
                        <div class="singel-screenshot">
                            <span class="overlay-bg"></span>
                            <a href="assets/images/screenshot/9.jpeg" class="img-poppu">
                                <span class="single-img overlay-bg">
                                    <img src="assets/images/screenshot/9.jpeg" alt="">
                                </span>
                            </a>
                        </div>
                        <!-- Singel Screenshot End -->
                    </div>
                </div>
            </div>
            <!-- Screnshot Content Two End-->
        </div>
    </div>
    <!-- Screenshot Area Tow End -->

    <!-- Testimonial Area Start -->
    <div id="testimonial" class="testimonial-area section-ptb bg-testimonial">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 ml-auto mr-auto">
                    <div class="testimonial-content testimonial-active">
                        <!-- single-testimonial start -->
                        <div class="single-testimonial">
                            <div class="client-image">
                                <img src="assets/images/review/man.png" alt="">
                            </div>
                            <div class="client-rating">
                                <ul class="d-flex">
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                </ul>
                            </div>
                            <div class="testimonial-text">
                                <p class="client-texe-dec">Aenean sollicitudin, lorem quis bibendum auctor This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. , nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>
                                <div class="test-author">
                                    <h3>Mickel Harice </h3>
                                    <!-- <p>CEO - of Teritech</p> -->
                                </div>
                            </div>
                        </div>
                        <!-- single-testimonial end -->
                        <!-- single-testimonial start -->
                        <div class="single-testimonial">
                            <div class="client-image">
                                <img src="assets/images/review/woman2.png" alt="">
                            </div>
                            <div class="client-rating">
                                <ul class="d-flex">
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                </ul>
                            </div>
                            <div class="testimonial-text">
                                <p class="client-texe-dec">Aenean sollicitudin, lorem quis bibendum auctor This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. , nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>
                                <div class="test-author">
                                    <h3>Natasa</h3>
                                    <!-- <p>CEO - of Teritech</p> -->
                                </div>
                            </div>
                        </div>
                        <!-- single-testimonial end -->
                        <!-- single-testimonial start -->
                        <div class="single-testimonial">
                            <div class="client-image">
                                <img src="assets/images/review/man3.png" alt="">
                            </div>
                            <div class="client-rating">
                                <ul class="d-flex">
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                </ul>
                            </div>
                            <div class="testimonial-text">
                                <p class="client-texe-dec">lorem quis bibendum auctor This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. , nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>
                                <div class="test-author">
                                    <h3>Akash</h3>
                                    <!-- <p>CEO - of Teritech</p> -->
                                </div>
                            </div>
                        </div>
                        <!-- single-testimonial end -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial Area End -->

    <!-- FAQ Area Start -->
    <div id="faq" class="screnshot-area-tow section-ptb">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 ml-auto mr-auto">
                    <div class="section-title">
                        <h2>Frequently Asked Questions</h2>
                        <p></p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 ml-auto mr-auto">
                    <?php echo $resFaq['faq']; ?>
                </div>
            </div>
        </div>
    </div>
    <!-- FAQ Area Tow End -->
    
    <!-- Download Area Start  -->
    <div class="download-area  download-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 ml-auto mr-auto">
                    <div class="section-title text-black">
                        <h2>Download our app</h2>
                        <p>Now play and earn by downloading latest version of Dream Ludo.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="download-buttons text-center">
                        <!-- <a href="#" class="button"> <i class="fa fa-apple"></i> APP STORE</a> -->
                        <a href="dream-ludo.apk" download class="button"><i class="fa fa-android"></i>ANDROID APP</a>
                        <!-- <a href="#" class="button"><i class="fa fa-windows"></i>PLAY STORE</a> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Download Area End  -->
    
    <!-- Contact Area Start -->
    <div id="contact" class="contact-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact-info-container wow fadeInBottom" data-wow-duration="1s">    
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="contact-title">
                                    <h2>Contact Us</h2>
                                    <p>For any query you can contact us on below details or submit your query by feeling this form, we will get back to you within 24 hours.</p>
                                </div>
                                <div class="contact-address">
                                    <ul>
                                        <li><i class="fa fa-phone"></i> <span class="information">+91 xxxx xxxx xx / +91 xxxx xxxx xx</span></li>
                                        <li><i class="fa fa-envelope-o"></i> <span class="information"><a href="#">azdeveloperofficial@gmail.com</a></span></li>
                                        <li><i class="fa fa-map-o"></i> <span class="information">Maharashtra, India</span></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <form class="contact-form-area" action="mail.php" method="post" id="contact-form">
                                    <div class="row contact-form">
                                        <div class="form-group col-md-12">
                                            <input name="name" class="form-control" placeholder="Name" type="text" id="name">
                                        </div>
                                        <div class="form-group col-md-12">
                                            <input name="email" class="form-control" placeholder="Email" type="email" id="email">
                                        </div>							 			
                                        <div class="form-group col-md-12">
                                            <input name="subject" class="form-control" placeholder="Subject" type="text" id="subject">
                                        </div>	
                                        <div class="form-group col-md-12">
                                            <textarea name="message" class="yourmessage form-control" placeholder="Message"></textarea>
                                        </div>	
                                        <div class="submit-form form-group col-sm-12">
                                            <button class="button submit-btn" type="submit"><span>Submit</span></button>
                                            <p class="form-messege"></p>
                                        </div>											
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact Area End -->
    
    <!-- Footer Area Start -->
    <footer class="footer-area">
        <div class="footer-content-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-content">
                            <div class="footer-logo">
                                <a href="index"><img src="<?php echo $resAppDet['logo']; ?>" alt=""></a>
                            </div>
                            <p>Copyright © 2022 <?php echo $resAppDet['app_name']; ?>. All Rights Reserved</p>
                            <div class="social-link">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-dribbble"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Area End -->
 
</div>
<!-- Main Wrapper End -->

<!-- JS
============================================ -->

<!-- jQuery JS -->
<script src="assets/js/vendor/jquery-1.12.4.min.js"></script>
<!-- Popper JS -->
<script src="assets/js/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Plugins JS -->
<script src="assets/js/plugins.js"></script>
<!-- Ajax Mail -->
<script src="assets/js/ajax-mail.js"></script>
<!-- Main JS -->
<script src="assets/js/main.js"></script>


</body>

</html>