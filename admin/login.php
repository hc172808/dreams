<?php 
require('../include/config.php');

// get app details
$appDetQuery   = $conn->query("select * from tbl_app_configuration where id=1"); 
$appDetRes = $appDetQuery->fetch_assoc();

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
              echo '<div role="alert" class="alert alert-'.$_SESSION[$type][$name]['class'].'">'.$_SESSION[$type][$name]['message'].' '.$_SESSION[$type][$name]['dismiss'].'</div>';
          }
          unset($_SESSION[$type]);

      }
  }
}
$invalidCred = 0;
if(isset($_POST['btnLogin']))
{
  
  $txtUser= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtUser']), ENT_QUOTES, 'UTF-8');
  $txtPassSha= htmlspecialchars(mysqli_real_escape_string($conn,$_POST['txtPassword']), ENT_QUOTES, 'UTF-8');

  $txtPass=sha1($txtPassSha);

  $query   = $conn->query("select * from tbl_user where username='{$txtUser}' and password='{$txtPass}' and is_active=1 and user_type=0"); 
  
  if($res = $query->fetch_assoc())
  {
    session_start();
    $invalidCred = 2;
    $_SESSION['user']=$res['username'];
    $_SESSION['userId']=$res['id'];
    flash( 'fmsg', 'fmsg', 'Login Successful, Welcome '.$_SESSION['user'], 'success', 'TRUE' );
    header("Location:index.php");
    exit();
  } 
  else
  {
    //echo "<script>alert(\"Invaild Username or Password\");</script>";
    $invalidCred = 1;
  }
  
}


?>
<!DOCTYPE html>
<html lang="en">
	<!--begin::Head-->
	<head><base href="">
		<meta charset="utf-8" />
		<title>Login | <?php echo $appDetRes['app_name']; ?></title>
		<meta name="description" content="Login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<link rel="canonical" href="https://keenthemes.com/metronic" />
		<!--begin::Fonts-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Page Custom Styles(used by this page)-->
		<link href="assets/css/pages/login/classic/login-1.css" rel="stylesheet" type="text/css" />
		<!--end::Page Custom Styles-->
		<!--begin::Global Theme Styles(used by all pages)-->
		<link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Theme Styles-->
		<!--begin::Layout Themes(used by all pages)-->
		<link href="assets/css/themes/layout/header/base/light.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/themes/layout/header/menu/light.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/themes/layout/brand/dark.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/themes/layout/aside/dark.css" rel="stylesheet" type="text/css" />
		<!--end::Layout Themes-->
		<link rel="shortcut icon" href="<?php echo $appDetRes['favicon']; ?>" />
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled subheader-fixed aside-enabled aside-fixed aside-minimize-hoverable page-loading">
		<!--begin::Main-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Login-->
			<div class="login login-1 login-signin-on d-flex flex-column flex-lg-row flex-column-fluid bg-white" id="kt_login">
				<!--begin::Aside-->
				<div class="login-aside d-flex flex-row-auto bgi-size-cover bgi-no-repeat p-10 p-lg-10" style="background-image: url(assets/media/bg/bg-4.jpg);">
					<!--begin: Aside Container-->
					<div class="d-flex flex-row-fluid flex-column justify-content-between">
						<!--begin: Aside header-->
						<a href="#" class="flex-column-auto mt-5 pb-lg-0 pb-10">
							<img src="<?php echo $appDetRes['logo']; ?>" class="max-h-70px" alt="" />
						</a>
						<!--end: Aside header-->
						<!--begin: Aside content-->
						<div class="flex-column-fluid d-flex flex-column justify-content-center">
							<h3 class="font-size-h1 mb-5 text-white">Welcome to <?php echo $appDetRes['app_name']; ?>!</h3>
							<p class="font-weight-lighter text-white opacity-80">Login into admin panel to manage grocery system.</p>
						</div>
						<!--end: Aside content-->
						<!--begin: Aside footer for desktop-->
						<div class="d-none flex-column-auto d-lg-flex justify-content-between mt-10">
							<div class="opacity-70 font-weight-bold text-white">© 2021 Definite Automation</div>
							<!-- <div class="d-flex">
								<a href="#" class="text-white">Privacy</a>
								<a href="#" class="text-white ml-10">Legal</a>
								<a href="#" class="text-white ml-10">Contact</a>
							</div> -->
						</div>
						<!--end: Aside footer for desktop-->
					</div>
					<!--end: Aside Container-->
				</div>
				<!--begin::Aside-->
				<!--begin::Content-->
				<div class="d-flex flex-column flex-row-fluid position-relative p-7 overflow-hidden">
					<!--begin::Content header-->
					<!--end::Content header-->
					<!--begin::Content body-->
					<div class="d-flex flex-column-fluid flex-center mt-30 mt-lg-0">
						<!--begin::Signin-->
						<div class="login-form login-signin">
							<div class="text-center mb-10 mb-lg-20">
								<h3 class="font-size-h1">Sign In</h3>
								<p id="tokenRes"></p>
								<!--<p id="token"></p>-->
								<p class="text-muted font-weight-bold">Enter your username and password</p>
							</div>
							<?php if($invalidCred==1): ?>
							<div class="alert alert-danger" role="alert">
							    Invalid username or password!
							</div>
							<?php elseif($invalidCred==2): ?>
							<div class="alert alert-success" role="alert">
							    Login Successfull!
							</div>
							<?php elseif($invalidCred==3): ?>
							<div class="alert alert-warning" role="alert">
							    Email id not verified! <br>please check your mail and verify.
							</div>
							<?php endif ?>
							<!--begin::Form-->
							<form class="form" novalidate="novalidate" action="login.php" method="post">
								<div class="form-group">
									<input class="form-control form-control-solid h-auto py-5 px-6" type="text" placeholder="Username" name="txtUser" required autocomplete="off" />
								</div>
								<div class="form-group">
									<input class="form-control form-control-solid h-auto py-5 px-6" type="password" placeholder="Password" name="txtPassword" required autocomplete="off" />
								</div>
								<!--begin::Action-->
								<div class="form-group d-flex flex-wrap justify-content-between align-items-center">
									<a href="javascript:;" class="text-dark-50 text-hover-primary my-3 mr-2" id="kt_login_forgot"><!-- Forgot Password ? --></a>
									<button type="submit" id="btnLogin" name="btnLogin" class="btn btn-primary font-weight-bold px-9 py-4 my-3">Sign In</button>
								</div>
								<!--end::Action-->
							</form>
							<!--end::Form-->
						</div>
						<!--end::Signin-->
						<!--begin::Signup-->
						
						<!--end::Signup-->
						<!--begin::Forgot-->
						<div class="login-form login-forgot">
							<div class="text-center mb-10 mb-lg-20">
								<h3 class="font-size-h1">Forgotten Password ?</h3>
								<p class="text-muted font-weight-bold">Enter your email to reset your password</p>
							</div>
							<!--begin::Form-->
							<form class="form" novalidate="novalidate" id="kt_login_forgot_form">
								<div class="form-group">
									<input class="form-control form-control-solid h-auto py-5 px-6" type="email" placeholder="Email" name="email" autocomplete="off" />
								</div>
								<div class="form-group d-flex flex-wrap flex-center">
									<button type="button" id="kt_login_forgot_submit" class="btn btn-primary font-weight-bold px-9 py-4 my-3 mx-4">Submit</button>
									<button type="button" id="kt_login_forgot_cancel" class="btn btn-light-primary font-weight-bold px-9 py-4 my-3 mx-4">Cancel</button>
								</div>
							</form>
							<!--end::Form-->
						</div>
						<!--end::Forgot-->
					</div>
					<!--end::Content body-->
					<!--begin::Content footer for mobile-->
					<div class="d-flex d-lg-none flex-column-auto flex-column flex-sm-row justify-content-between align-items-center mt-5 p-5">
						<div class="text-dark-50 font-weight-bold order-2 order-sm-1 my-2">© 2021 Definite Automation</div>
						<!-- <div class="d-flex order-1 order-sm-2 my-2">
							<a href="#" class="text-dark-75 text-hover-primary">Privacy</a>
							<a href="#" class="text-dark-75 text-hover-primary ml-4">Legal</a>
							<a href="#" class="text-dark-75 text-hover-primary ml-4">Contact</a>
						</div> -->
					</div>
					<!--end::Content footer for mobile-->
				</div>
				<!--end::Content-->
			</div>
			<!--end::Login-->
		</div>
		<!--end::Main-->
		<script>var HOST_URL = "https://preview.keenthemes.com/metronic/theme/html/tools/preview";</script>
		<!--begin::Global Config(global config for global JS scripts)-->
		<script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1400 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#3699FF", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#E4E6EF", "dark": "#181C32" }, "light": { "white": "#ffffff", "primary": "#E1F0FF", "secondary": "#EBEDF3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#3F4254", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#EBEDF3", "gray-300": "#E4E6EF", "gray-400": "#D1D3E0", "gray-500": "#B5B5C3", "gray-600": "#7E8299", "gray-700": "#5E6278", "gray-800": "#3F4254", "gray-900": "#181C32" } }, "font-family": "Poppins" };</script>
		<!--end::Global Config-->
		<!--begin::Global Theme Bundle(used by all pages)-->
		<script src="assets/plugins/global/plugins.bundle.js"></script>
		<script src="assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
		<script src="assets/js/scripts.bundle.js"></script>
		<!--end::Global Theme Bundle-->
		<!--begin::Page Scripts(used by this page)-->
		<script src="assets/js/pages/custom/login/login-general.js"></script>
		<!--end::Page Scripts-->
		
		<script src="https://www.gstatic.com/firebasejs/7.14.6/firebase-app.js"></script>
        <script src="https://www.gstatic.com/firebasejs/7.14.6/firebase-messaging.js"></script>
        <script>
            var firebaseConfig = {
			    apiKey: "<?php echo $apiKey; ?>",
			    authDomain: "<?php echo $authDomain; ?>",
			    databaseURL: "<?php echo $databaseURL; ?>",
			    projectId: "<?php echo $projectId; ?>",
			    storageBucket: "<?php echo $storageBucket; ?>",
			    messagingSenderId: "<?php echo $messagingSenderId; ?>",
			    appId: "<?php echo $appId; ?>",
			    measurementId: "<?php echo $measurementId; ?>"
			};
            firebase.initializeApp(firebaseConfig);
            const messaging=firebase.messaging();
        
            function IntitalizeFireBaseMessaging() {
                messaging
                    .requestPermission()
                    .then(function () {
                        console.log("Notification Permission");
                        return messaging.getToken();
                    })
                    .then(function (token) {
                        console.log("Token : "+token);
                        // document.getElementById("token").innerHTML=token;
                        // alert('ok');
                        $.ajax({
                            url: 'data-processing/deviceToken.php',
                            type: 'POST',
                            data: {
                                push_token:token,
                            },
                            success: function (response) {
                                document.getElementById("tokenRes").innerHTML=response;
                            },
                            error: function (err) {
                                document.getElementById("tokenRes").innerHTML='failed';
                            },
                        });
                    })
                    .catch(function (reason) {
                        console.log(reason);
                    });
            }
        
            messaging.onMessage(function (payload) {
                console.log(payload);
                const notificationOption={
                    body:payload.notification.body,
                    icon:payload.notification.icon
                };
        
                if(Notification.permission==="granted"){
                    var notification=new Notification(payload.notification.title,notificationOption);
        
                    notification.onclick=function (ev) {
                        ev.preventDefault();
                        window.open(payload.notification.click_action,'_blank');
                        notification.close();
                    }
                }
        
            });
            messaging.onTokenRefresh(function () {
                messaging.getToken()
                    .then(function (newtoken) {
                        console.log("New Token : "+ newtoken);
                    })
                    .catch(function (reason) {
                        console.log(reason);
                    })
            })
            IntitalizeFireBaseMessaging();
        </script>
	</body>
	<!--end::Body-->
</html>