<?php

require_once("Rest.inc.php");
require_once("db.php");
require("../include/config.php");

date_default_timezone_set("Asia/Kolkata");

class functions extends REST {
    
    private $mysqli = NULL;
    private $db = NULL;
    
    public function __construct($db) {
        parent::__construct();
        $this->db = $db;
        $this->mysqli = $db->mysqli;
    }

        public function checkConnection() {
                if (mysqli_ping($this->mysqli)) {
                        $respon = array(
                                'status' => 'ok', 'database' => 'connected'
                        );
                        $this->response($this->json($respon), 200);
                } else {
                        $respon = array(
                                'status' => 'failed', 'database' => 'not connected'
                        );
                        $this->response($this->json($respon), 404);
                }
        }
        
        
        
        public function postUserRegister() {
                include "../include/config.php";
                require_once("rate_limit.php");
                if (!checkRateLimit(getRateLimitKey('register'), 5, 60)) { denyRateLimit(); }

        if(!isset($_POST['purchase_key']) || $pur_code != $_POST['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
             echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
                if(isset($_POST['referer'])) {
                    
                    $full_name  = mysqli_real_escape_string($conn, $_POST['full_name']);
                    $username  = mysqli_real_escape_string($conn, $_POST['username']);
                        $email  =  mysqli_real_escape_string($conn, $_POST['email']);
                        $country_code = mysqli_real_escape_string($conn, $_POST['country_code']);
                        $mobile = mysqli_real_escape_string($conn, $_POST['mobile']);
                        $password = mysqli_real_escape_string($conn, $_POST['password']);
                        $fcm_token = mysqli_real_escape_string($conn, $_POST['fcm_token']);
                        $referer = mysqli_real_escape_string($conn, $_POST['referer']);
                        $device_id = mysqli_real_escape_string($conn, $_POST['device_id']);
                        $date_created = date("Y-m-d h:i:s");
    
                $sql = "SELECT count(id) as totrow FROM tbl_user WHERE device_id = '$device_id' AND is_block = 1"; 
                $res = mysqli_query($conn, $sql);
                $res_count = mysqli_fetch_array($res);
        
                if($res_count['totrow'] > 0) {
                    $set['result'][]=array('msg' => "You are not eligible to create new account. Please contact administation.", 'success'=>'0');
                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                } 
                else {
                    $qry = "SELECT id FROM tbl_user WHERE username = '$username'"; 
                                $sel = mysqli_query($conn, $qry);
                        
                                if(mysqli_num_rows($sel) > 0) {
                                        $set['result'][]=array('msg' => "This username already registred! Try different one.", 'success'=>'0');
                                        echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                                } else {
                                    mysqli_autocommit($conn, false);
                        $flag = true;
                
                                    $sql0 = "SELECT count(id) as tot_row1, refer_counter FROM tbl_user WHERE username = '$referer' AND is_active ='1' AND is_block = '0'"; 
                        $sel1 = mysqli_query($conn, $sql0);
                        $sel1_res = mysqli_fetch_array($sel1);
                        $refer_counter = $sel1_res['refer_counter']+1; 
                                
                                    $sql1 = "INSERT INTO tbl_user (full_name, username, email, country_code, mobile, whatsapp_no, password, fb_password, gp_password, referer, fcm_token, device_id, date_created)
                            VALUES ('$full_name', '$username', '$email', '$country_code', '$mobile', '$mobile', '$password', '$password', '$password', '$referer', '$fcm_token', '$device_id', '$date_created')";
                            
                        $sql2 = "UPDATE tbl_user SET refer_counter = '$refer_counter' WHERE username = '$referer'";    
                        
                        $result = mysqli_query($conn, $sql1);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
                        else {
                            $last_id = mysqli_insert_id($conn);
                        }
                        
                        $result = mysqli_query($conn, $sql2);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
                        
                        $result = mysqli_query($conn, $sql0);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
                        
                        if ($flag) {
                            mysqli_commit($conn);
                            
                            $set['result'][] = array('id' => $last_id, 'msg' => "Your account has been register succesfully.", 'success'=>'1');
                                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                        } else {
                            mysqli_rollback($conn);
                            $set['result'][] = array('msg' => "Please try again later.", 'success'=>'0');
                                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                        }
                                }
                }
                } else if(isset($_POST['email'])) {
                    $full_name  = mysqli_real_escape_string($conn, $_POST['full_name']);
                    $username  = mysqli_real_escape_string($conn, $_POST['username']);
                        $email  =  mysqli_real_escape_string($conn, $_POST['email']);
                        $country_code = mysqli_real_escape_string($conn, $_POST['country_code']);
                        $mobile = mysqli_real_escape_string($conn, $_POST['mobile']);
                        $password = mysqli_real_escape_string($conn, $_POST['password']);
                        $fcm_token = mysqli_real_escape_string($conn, $_POST['fcm_token']);
                        $device_id = mysqli_real_escape_string($conn, $_POST['device_id']);
                        $date_created = date("Y-m-d h:i:s");
    
                $sql = "SELECT count(id) as totrow FROM tbl_user WHERE device_id = '$device_id' AND is_block = 1"; 
                $res = mysqli_query($conn, $sql);
                $res_count = mysqli_fetch_array($res);
        
                if($res_count['totrow'] > 0) {
                    $set['result'][]=array('msg' => "You are not eligible to create new account. Please contact administation.", 'success'=>'0');
                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                } 
                else {
                    $qry = "SELECT id FROM tbl_user WHERE username = '$username'"; 
                                $sel = mysqli_query($conn, $qry);
                        
                                if(mysqli_num_rows($sel) > 0) {
                                        $set['result'][]=array('msg' => "This username already registred! Try different one.", 'success'=>'0');
                                        echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                                } else {
                                    $sql = "INSERT INTO tbl_user (full_name, username, email, country_code, mobile, whatsapp_no, password, fb_password, gp_password, fcm_token, device_id, date_created)
                            VALUES ('$full_name', '$username', '$email', '$country_code', '$mobile', '$mobile', '$password', '$password', '$password', '$fcm_token', '$device_id', '$date_created')";
                            
                        if (mysqli_query($conn, $sql)) {
                            $last_id = mysqli_insert_id($conn);
                            
                            $set['result'][] = array('id' => $last_id, 'msg' => "Your account has been register succesfully.", 'success'=>'1');
                                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                        } else {
                            $set['result'][] = array('msg' => "Please try again later.", 'success'=>'0');
                                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                        }
                                }
                }
                } else {
                         header( 'Content-Type: application/json; charset=utf-8' );
                         $json = json_encode($set);
                         echo $json;
                }
        }
                mysqli_close($conn);
        }



    public function getAppDetails() {
                include "../include/config.php";

        if(!isset($_GET['purchase_key']) || $pur_code != $_GET['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
        }
        else {
                $qry = "SELECT country_code, currency_code, currency_sign, paytm_mer_id, payu_id, payu_key, min_entry_fee, refer_percentage, maintenance_mode, mop, wallet_mode, min_withdraw, max_withdraw, min_deposit, max_deposit, game_name, package_name, how_to_play, cus_support_email, cus_support_mobile, force_update, whats_new, update_date, latest_version_name, latest_version_code, update_url FROM tbl_app_configuration";
                $result = mysqli_query($conn, $qry);     
                $num_rows = mysqli_num_rows($result);
                $row = mysqli_fetch_assoc($result);
                
                if ($num_rows > 0 ) {            
                        $set['result'][] = array(
                            'country_code' => $row['country_code'],
                                'currency_code' => $row['currency_code'],
                                'currency_sign' => $row['currency_sign'],
                                'paytm_mer_id' => $row['paytm_mer_id'],
                                'payu_id' => $row['payu_id'],
                                'payu_key' => $row['payu_key'],
                                'min_entry_fee' => $row['min_entry_fee'],
                                'refer_percentage' => $row['refer_percentage'],
                                'maintenance_mode' => $row['maintenance_mode'],
                                'mop' => $row['mop'],
                                'wallet_mode' => $row['wallet_mode'],
                                'min_withdraw' => $row['min_withdraw'],
                                'max_withdraw' => $row['max_withdraw'],
                                'min_deposit' => $row['min_deposit'],
                                'max_deposit' => $row['max_deposit'],
                                'game_name' => $row['game_name'],
                                'package_name' => $row['package_name'],
                                'how_to_play' => $row['how_to_play'],
                                'cus_support_email' => $row['cus_support_email'],
                                'cus_support_mobile' => $row['cus_support_mobile'],
                                'force_update' => $row['force_update'],
                    'whats_new' => strip_tags($row['whats_new']),
                    'update_date' => $row['update_date'],
                    'latest_version_name' => $row['latest_version_name'],
                    'latest_version_code' => $row['latest_version_code'],
                    'update_url' => $row['update_url'],
                                'success'=>'1'
                        );
                } else {
                        $set['result'][] = array('msg' => 'Error', 'success' => '0');
                }
        }
                header( 'Content-Type: application/json; charset=utf-8' );
                $json = json_encode($set);
                echo $json;
                
                mysqli_close($conn);
        }

        public function getUserLogin() {
                include "../include/config.php";
                require_once("rate_limit.php");
                if (!checkRateLimit(getRateLimitKey('login'), 10, 60)) { denyRateLimit(); }

        if(!isset($_GET['purchase_key']) || $pur_code != $_GET['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
        }
        else {
            $username  =  mysqli_real_escape_string($conn, $_GET['username']);
                $password  =  mysqli_real_escape_string($conn, $_GET['password']);
                $type  =  mysqli_real_escape_string($conn, $_GET['type']);
                
                if($type == 'social') {         
                        $qry = "SELECT id, is_active, is_block, username, full_name, profile_img, email, country_code, mobile, whatsapp_no FROM tbl_user WHERE username = '$username' OR email = '$username' AND user_type = 1"; 
                        $result = mysqli_query($conn, $qry);
                        $num_rows = mysqli_num_rows($result);
                        $row = mysqli_fetch_assoc($result);
                                
                        if ($num_rows > 0 && $row['is_active'] == 1 && $row['is_block'] == 0) {
                        $set['result'][] = array('id' => $row['id'], 'username' => $row['username'], 'full_name' => $row['full_name'], 'profile_img' => $row['profile_img'], 'email' => $row['email'], 'country_code' => $row['country_code'], 'mobile' => $row['mobile'], 'whatsapp_no' => $row['whatsapp_no'], 'msg' => 'Login Successfully', 'success' => '1'); 
                    } else if ($num_rows > 0 && $row['is_active'] == 0) {
                    $set['result'][] = array('msg' => 'Your account has been inactive.', 'success' => '0');
                } else if ($num_rows > 0 && $row['is_block'] == 1) {
                    $set['result'][] = array('msg' => 'Your device has been blocked.', 'success' => '0');
                        } else {
                            $set['result'][] = array('msg' => 'Incorrect username or password', 'success' => '0');
                        }
                }
                else {
                    $qry = "SELECT id, is_active, is_block, username, full_name, profile_img, email, country_code, mobile, whatsapp_no FROM tbl_user WHERE (username = '$username' OR email = '$username') AND (password = '$password' OR fb_password = '$password' OR gp_password = '$password') AND user_type = 1"; 
                        $result = mysqli_query($conn, $qry);
                        $num_rows = mysqli_num_rows($result);
                        $row = mysqli_fetch_assoc($result);
                                
                        if ($num_rows > 0 && $row['is_active'] == 1 && $row['is_block'] == 0) {
                        $set['result'][] = array('id' => $row['id'], 'username' => $row['username'], 'full_name' => $row['full_name'], 'profile_img' => $row['profile_img'], 'email' => $row['email'], 'country_code' => $row['country_code'], 'mobile' => $row['mobile'], 'whatsapp_no' => $row['whatsapp_no'], 'msg' => 'Login Successfully', 'success' => '1'); 
                    } else if ($num_rows > 0 && $row['is_active'] == 0) {
                    $set['result'][] = array('msg' => 'Your account has been inactive.', 'success' => '0');
                } else if ($num_rows > 0 && $row['is_block'] == 1) {
                    $set['result'][] = array('msg' => 'Your device has been blocked.', 'success' => '0');
                        } else {
                            $set['result'][] = array('msg' => 'Incorrect username or password', 'success' => '0');
                        }
                }
        }
                header( 'Content-Type: application/json; charset=utf-8' );
                $json = json_encode($set);
                echo $json;
                
                mysqli_close($conn);
        }
        
        public function getUserProfile() {
                include "../include/config.php";

        if(!isset($_GET['purchase_key']) || $pur_code != $_GET['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
        }
        else {
                $id = mysqli_real_escape_string($conn, $_GET['id']);
    
                $qry = "SELECT deposit_bal, won_bal, bonus_bal, is_active, is_block FROM tbl_user WHERE id = '$id' AND user_type = 1";
                $result = mysqli_query($conn, $qry);     
                $num_rows = mysqli_num_rows($result);
                $row = mysqli_fetch_assoc($result);
                        
                if ($num_rows > 0 ) {
                    $set['result'][] = array(
                                'deposit_bal' => $row['deposit_bal'],
                                'won_bal' => $row['won_bal'],
                                'bonus_bal' => $row['bonus_bal'],
                                'is_active' => $row['is_active'],
                                'is_block' => $row['is_block'],
                                'success'=>'1'
                        );
                }
                else {
                    $set['result'][] = array('msg' => 'Error', 'success' => '0');
                }
        }
                                                
                header( 'Content-Type: application/json; charset=utf-8' );
                $json = json_encode($set);
                echo $json;
                
                mysqli_close($conn);
        }

    
    
    public function verifyRefer() {
        include "../include/config.php";
        
        if(!isset($_GET['purchase_key']) || $pur_code != $_GET['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
        }
        else if (isset($_GET['refer'])) {
            $refer = mysqli_real_escape_string($conn, $_GET['refer']);
        
            $qry = "SELECT is_active, is_block FROM tbl_user WHERE username = '$refer' AND user_type = 1"; 
            $result = mysqli_query($conn, $qry);
            $num_rows = mysqli_num_rows($result);
            $row = mysqli_fetch_assoc($result);
                
            if ($num_rows > 0 && $row['is_active'] == 1 && $row['is_block'] == 0) {         
                $set['result'][] = array('msg' => 'Referral code applied.', 'success' => '1'); 
            } else if ($num_rows > 0 && $row['is_active'] == 0) {
                $set['result'][] = array('msg' => 'Invalid referral code.', 'success' => '0');
            } else if ($num_rows > 0 && $row['is_block'] == 1) {
                $set['result'][] = array('msg' => 'Invalid referral code.', 'success' => '0');
            } else {
                $set['result'][] = array('msg' => 'Invalid referral code.', 'success' => '0');
            }
        }
        else {
            $set['result'][] = array('msg' => 'Refer code not found.', 'success' => '0');
        }
        header( 'Content-Type: application/json; charset=utf-8' );
        $json = json_encode($set);
        echo $json;
            
        mysqli_close($conn);
    }
    
    public function verifyMobile() {
        include "../include/config.php";
        
        if(!isset($_GET['purchase_key']) || $pur_code != $_GET['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
        }
        else if (isset($_GET['mobile'])) {
            $mobile = mysqli_real_escape_string($conn, $_GET['mobile']);
            
            $qry = "SELECT is_active, is_block FROM tbl_user WHERE mobile = '$mobile' AND user_type = 1";
            $result = mysqli_query($conn, $qry);
            $num_rows = mysqli_num_rows($result);
            $row = mysqli_fetch_assoc($result);
                
            if ($num_rows > 0 && $row['is_active'] == 1 && $row['is_block'] == 0) {         
                $set['result'][] = array('msg' => 'Success', 'success' => '1'); 
            } else if ($num_rows > 0 && $row['is_active'] == 0) {
                $set['result'][] = array('msg' => 'Your account has been inactive.', 'success' => '0');
            } else if ($num_rows > 0 && $row['is_block'] == 1) {
                $set['result'][] = array('msg' => 'Your device has been blocked.', 'success' => '0');
            } else {
                $set['result'][] = array('msg' => 'Mobile number not found.', 'success' => '0');
            }
        } else{
            $set['result'][] = array('msg' => 'Mobile number not found.', 'success' => '0');
        }
        header( 'Content-Type: application/json; charset=utf-8' );
        $json = json_encode($set);
        echo $json;
        
        mysqli_close($conn);
    }
    
    public function verifyRegister() {
        include "../include/config.php";
        
        if(!isset($_GET['purchase_key']) || $pur_code != $_GET['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
        }
        else if (isset($_GET['mobile'])) {
            $device_id = mysqli_real_escape_string($conn, $_GET['device_id']);
            $mobile = mysqli_real_escape_string($conn, $_GET['mobile']);
            $email = mysqli_real_escape_string($conn, $_GET['email']);
            $username = mysqli_real_escape_string($conn, $_GET['username']);
            
            $sql = "SELECT count(id) as num_res FROM tbl_user WHERE device_id = '$device_id' AND is_block = 1"; 
            $res = mysqli_query($conn, $sql);
            $res_rows = mysqli_fetch_array($res);
            
            $qry = "SELECT is_active, is_block FROM tbl_user WHERE mobile = '$mobile' OR email = '$email' OR username = '$username'"; 
            $result = mysqli_query($conn, $qry);
            $num_rows = mysqli_num_rows($result);
            $row = mysqli_fetch_assoc($result);
                
            if ($res_rows['num_res'] > 0) {           
                $set['result'][] = array('msg' => 'Your device has been locked. Please contact us.', 'success' => '0'); 
            } else if ($num_rows > 0 && $row['is_active'] == 1 && $row['is_block'] == 0) {          
                $set['result'][] = array('msg' => 'This username, email id or mobile number already used.', 'success' => '0'); 
            } else if ($num_rows > 0 && $row['is_active'] == 0) {
                $set['result'][] = array('msg' => 'Your account has been locked. Please contact us', 'success' => '0');
            } else if ($num_rows > 0 && $row['is_block'] == 1) {
                $set['result'][] = array('msg' => 'Your device has been locked. Please contact us.', 'success' => '0');
            } else {
                $set['result'][] = array('msg' => 'Success', 'success' => '1');
            }
        } else{
            $set['result'][] = array('msg' => 'Mobile number not found.', 'success' => '0');
        }
        header( 'Content-Type: application/json; charset=utf-8' );
        $json = json_encode($set);
        echo $json;
        
        mysqli_close($conn);  
    }



        public function updateUserProfile() {
        include "../include/config.php";
        
        if(!isset($_POST['purchase_key']) || $pur_code != $_POST['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
             echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
            $id = mysqli_real_escape_string($conn, $_POST['id']);
            $date_modify = date("Y-m-d h:i:s");
            
                if(isset($_POST['password'])) {
                    $password = mysqli_real_escape_string($conn, $_POST['password']);
                    
                    $sql = "UPDATE tbl_user SET password = '$password' WHERE id = '$id'";
                        
                if (mysqli_query($conn, $sql)) {
                    $set['result'][] = array('msg' => "Password updated succesfully.", 'success'=>'1');
                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                } else {
                    $set['result'][] = array('msg' => "Please try again later.", 'success'=>'0');
                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
                } else if(isset($_POST['fcm_token'])) {
                    $fcm_token = mysqli_real_escape_string($conn, $_POST['fcm_token']);
                    
                    $sql = "UPDATE tbl_user SET fcm_token = '$fcm_token' WHERE id = '$id'";
                        
                if (mysqli_query($conn, $sql)) {
                    $set['result'][] = array('msg' => "Token updated succesfully.", 'success'=>'1');
                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                } else {
                    $set['result'][] = array('msg' => "Please try again later.", 'success'=>'0');
                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
                } else {
                    $full_name  = mysqli_real_escape_string($conn, $_POST['full_name']);
                        $whatsapp_no = mysqli_real_escape_string($conn, $_POST['whatsapp_no']);
                        
                        $sql = "UPDATE tbl_user SET full_name = '$full_name', whatsapp_no = '$whatsapp_no', date_modify = '$date_modify' WHERE id = '$id'";
                        
                if (mysqli_query($conn, $sql)) {
                    $set['result'][] = array('msg' => "Profile updated succesfully.", 'success'=>'1');
                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                } else {
                    $set['result'][] = array('msg' => "Please try again later.", 'success'=>'0');
                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
                
                }
        }
                mysqli_close($conn);
        }
        
        public function updateUserPhoto() {
                include "../include/config.php";
        
        if(!isset($_POST['purchase_key']) || $pur_code != $_POST['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
                if(isset($_POST["profile_img"]) && isset($_POST["id"])) {
    
                        $data = $_POST["profile_img"];
                        $id = mysqli_real_escape_string($conn, $_POST["id"]);
                        
                        $sql = "select id from tbl_user where id='$id'";
                    $result = mysqli_query($conn,$sql); 
                    $response = array();
    
                if (mysqli_num_rows($result)>0) {
    
                                $path = "upload/profile/$id.jpg";
                                $actualpath = "../upload/profile/$id.jpg";
                                
                                $sql = "UPDATE tbl_user SET profile_img='$path' where id='$id'";
                                $result = mysqli_query($conn,$sql);
                
                        if(mysqli_query($conn,$sql)){
                            file_put_contents($actualpath,base64_decode($data));
                        }
                                
                                $set['result'][] = array('msg' => "Profile picture update successfully...", 'success'=>'1');
                        echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                        }
                        else {
                                 $set['result'][] = array('msg' => "Please try again later.", 'success'=>'0');
                         echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                        }
                } 
                else {
                        $set['result'][] = array('msg'=>'Failed', 'success'=>'0');
                        echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
        }
                mysqli_close($conn);
        }
        
        public function resetPassword() {
        include "../include/config.php";
        
        if(!isset($_POST['purchase_key']) || $pur_code != $_POST['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else { 
            $password = mysqli_real_escape_string($conn, $_POST['password']);
            $mobile = mysqli_real_escape_string($conn, $_POST['mobile']);
                
            $sql = "UPDATE tbl_user SET password = '$password' WHERE mobile = '$mobile'";
                    
            if (mysqli_query($conn, $sql)) {
                $set['result'][] = array('msg' => "Password updated succesfully.", 'success'=>'1');
                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
            } else {
                $set['result'][] = array('msg' => "Please try again later.", 'success'=>'0');
                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
            }
        }
        mysqli_close($conn);
    }
        
        
        
        public function getNotification() {
                include "../include/config.php";
                
                if(!isset($_GET['purchase_key']) || $pur_code != $_GET['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
                $flag = array();
                $user_id = mysqli_real_escape_string($conn, $_GET['user_id']);
                
                $query = "SELECT title, description, image, url, date_created FROM tbl_notification WHERE user_id = '$user_id' OR notification_type = '1' ORDER BY id DESC";
                $result = mysqli_query($conn,$query);
    
                if($result){
                        while($row=mysqli_fetch_array($result)){
                                $flag[]=$row;
                        }
                        header( 'Content-Type: application/json; charset=utf-8' );
                print(json_encode($flag));
                }
        }
        mysqli_close($conn);
        }
        
        public function getHistory() {
                include "../include/config.php";
                
                if(!isset($_GET['purchase_key']) || $pur_code != $_GET['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
                $flag = array();
                $user_id = mysqli_real_escape_string($conn, $_GET['user_id']);
                
                $query = "SELECT id, amount, remark, type, status, date_created FROM tbl_transaction WHERE user_id = '$user_id' ORDER BY id DESC";
                $result = mysqli_query($conn,$query);
    
                if($result){
                        while($row=mysqli_fetch_array($result)){
                                $flag[]=$row;
                        }
                        header( 'Content-Type: application/json; charset=utf-8' );
                print(json_encode($flag));
                mysqli_close($conn);
                }
        }
        mysqli_close($conn);
        }
        
        public function getStatistics() {
                include "../include/config.php";
                
                if(!isset($_GET['purchase_key']) || $pur_code != $_GET['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
                $flag = array();
                $user_id = mysqli_real_escape_string($conn, $_GET['user_id']);
                
                $query = "SELECT t2.id, t2.match_fee, from_unixtime(t2.play_time, '%d/%m/%Y at %h:%i %p') AS play_time, t1.won_prize, COUNT(CASE WHEN t1.winner_id = '$user_id' THEN t1.winner_id END) AS win 
                                FROM tbl_participants t1 
                                LEFT JOIN tbl_match t2 ON (t1.match_id = t2.id AND (t1.parti1='$user_id' OR t1.parti2='$user_id'))
                                WHERE (t1.parti1='$user_id' OR t1.parti2='$user_id') AND t2.status != 4 
                                GROUP BY t2.id ORDER BY t2.id DESC LIMIT 0,50";
                $result = mysqli_query($conn,$query);
    
                if($result){
                        while($row=mysqli_fetch_array($result)){
                                $flag[]=$row;
                        }
                        header( 'Content-Type: application/json; charset=utf-8' );
                print(json_encode($flag));
                }
        }
        mysqli_close($conn);
        }
        
        public function getLeaderboard() {
                include "../include/config.php";
                
                if(!isset($_GET['purchase_key']) || $pur_code != $_GET['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
                $flag = array();
                
                $query = "SELECT t2.full_name, sum(t1.won_prize) AS won_prize 
                                FROM tbl_participants t1 
                    LEFT JOIN tbl_user t2 ON (t2.id = t1.winner_id)
                                WHERE t2.is_block = '0'
                    GROUP BY t1.winner_id ORDER BY sum(t1.won_prize) DESC LIMIT 0,10";
                $result = mysqli_query($conn,$query);
    
                if($result){
                        while($row=mysqli_fetch_array($result)){
                                $flag[]=$row;
                        }
                        header( 'Content-Type: application/json; charset=utf-8' );
                print(json_encode($flag));
                }
        }
        mysqli_close($conn);
        }
        


    public function postBalance() {
                include "../include/config.php";
        
        if(!isset($_POST['purchase_key']) || $pur_code != $_POST['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
            if (isset($_POST['user_id']) && isset($_POST['order_id']) ) {
                $user_id  = mysqli_real_escape_string($conn, $_POST['user_id']);
                        $payment_id  =  mysqli_real_escape_string($conn, $_POST['payment_id']);
                        $order_id = mysqli_real_escape_string($conn, $_POST['order_id']);
                        $checksum = mysqli_real_escape_string($conn, $_POST['checksum']);
                $amount  = mysqli_real_escape_string($conn, $_POST['amount']);
                    $payment_getway  = mysqli_real_escape_string($conn, $_POST['payment_getway']);
                        
                        $date_created = date("Y-m-d h:i:s");
                $remark = 'Added using '.$payment_getway;
                
                $qry = "SELECT status FROM  WHERE order_id = '$order_id' OR transaction_id = '$payment_id'";
                $result = mysqli_query($conn, $qry);
                $num_rows = mysqli_num_rows($result);
                $row = mysqli_fetch_assoc($result);
                    
                if ($num_rows == 0) {
                                mysqli_autocommit($conn, false);
                    $flag = true;
                                    
                    $sql1 = "INSERT INTO tbl_transaction (user_id, order_id, payment_id, amount, payment_getway, remark, type, status, date_created) VALUES ('$user_id', '$order_id', '$payment_id', '$amount', '$payment_getway', '$remark', '1', '0', '$date_created')";
                    $sql2 = "INSERT INTO tbl_offline_plyments (user_id, order_id, transaction_id, amount, wallet, note, status) VALUES ('$user_id', '$order_id', '$payment_id', '$amount', '$payment_getway', '$remark', '0')";
                    
                    $result = mysqli_query($conn, $sql1);
                    if (!$result) {
                        $flag = false;
                        echo "Error details: " . mysqli_error($conn) . ".";
                    }
                    
                    $result = mysqli_query($conn, $sql2);
                    if (!$result) {
                        $flag = false;
                        echo "Error details: " . mysqli_error($conn) . ".";
                    }
                    
                    if ($flag) {
                        mysqli_commit($conn);
                        $set['result'][] = array('msg' => "Your request has been successfully submitted. Balance will be added within 24 hours.", 'success'=>'1');
                                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                    } else {
                        mysqli_rollback($conn);
                        
                        $set['result'][] = array('msg' => "Error!", 'success'=>'0');
                                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                    }
                } else if ($num_rows > 0 && $row['status'] == 1) {
                    $set['result'][] = array('msg' => 'Transaction request is already approved!', 'success' => '0');
                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                } else if ($num_rows > 0 && $row['status'] == 2) {
                    $set['result'][] = array('msg' => 'Transaction request was rejected!', 'success' => '0');
                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                } else {
                    $set['result'][] = array('msg' => 'This Transaction request is already under proccess! we will review within 24 hours.', 'success' => '0');
                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
            } 
                else {
                    $set['result'][] = array('msg' => "Invalid transaction!", 'success'=>'0');
                        echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
        }
                mysqli_close($conn);
        }
        
        public function postDeposit() {
                include "../include/config.php";
                require_once("rate_limit.php");
                if (!checkRateLimit(getRateLimitKey('deposit'), 15, 60)) { denyRateLimit(); }

        if(!isset($_POST['purchase_key']) || $pur_code != $_POST['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
            if (isset($_POST['user_id']) && isset($_POST['order_id']) ) {
                
                $user_id  = mysqli_real_escape_string($conn, $_POST['user_id']);
                        $payment_id  =  mysqli_real_escape_string($conn, $_POST['payment_id']);
                        $order_id = mysqli_real_escape_string($conn, $_POST['order_id']);
                        $checksum = mysqli_real_escape_string($conn, $_POST['checksum']);
                $amount  = mysqli_real_escape_string($conn, $_POST['amount']);
                    $payment_getway  = mysqli_real_escape_string($conn, $_POST['payment_getway']);
                        
                        $date_created = date("Y-m-d h:i:s");
                $remark = 'Added using '.$payment_getway;
                
                if ($payment_getway == 'PayTm') {
                    $query   = $conn->query("select paytm_mer_id from tbl_app_configuration where id=1"); 
                    $result = $query->fetch_assoc();
                    $Merchant_id = $result['paytm_mer_id'];
                    
                    $ch = curl_init("https://securegw.paytm.in/order/status?JsonData={'MID':'$Merchant_id','ORDERID':'$order_id','CHECKSUMHASH':'$checksum'}");
                    curl_setopt($ch, CURLOPT_POST, true);
                    curl_setopt($ch, CURLOPT_RETURNTRANSFER,TRUE);
                    $response = curl_exec($ch);
                    curl_close($ch);
                    $response = json_decode($response, true);
                
                                $payment_id = $response['TXNID'];
                                $order_id = $response['ORDERID'];
                                $amount = $response['TXNAMOUNT'];
                                $status = $response['STATUS'];
                        
                        if ($status == 'TXN_SUCCESS') {
                            
                        $qry = "SELECT id FROM tbl_transaction WHERE (order_id = '$order_id' OR payment_id = '$payment_id') AND type = '1'";
                        $result = mysqli_query($conn, $qry);
                        $num_rows = mysqli_num_rows($result);
                            
                        if ($num_rows > 0) {
                            $set['result'][] = array('msg' => "Invalid transaction!", 'success'=>'0');
                                        echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                        }
                        else {
                                        mysqli_autocommit($conn, false);
                            $flag = true;
                
                            $sql0 = "SELECT deposit_bal FROM tbl_user WHERE id = '$user_id' AND is_active = 1 AND is_block = 0"; 
                            $row0 = mysqli_fetch_array(mysqli_query($conn,$sql0));
                            $deposit_bal = $row0['deposit_bal'];
                            $new_deposit_bal = $deposit_bal + $amount;
                                            
                            $sql1 = "INSERT INTO tbl_transaction (user_id, order_id, payment_id, amount, payment_getway, remark, type, status, date_created) VALUES ('$user_id', '$order_id', '$payment_id', '$amount', '$payment_getway', '$remark', '1', '1', '$date_created')";
                            $sql2 = "UPDATE tbl_user SET deposit_bal = deposit_bal + '$amount' WHERE id = '$user_id' AND is_active = 1 AND is_block = 0";
                            
                            $result = mysqli_query($conn, $sql1);
                            if (!$result) {
                                $flag = false;
                                echo "Error details: " . mysqli_error($conn) . ".";
                            }
                            
                            $result = mysqli_query($conn, $sql2);
                            if (!$result) {
                                $flag = false;
                                echo "Error details: " . mysqli_error($conn) . ".";
                            }
                            
                            if ($flag) {
                                mysqli_commit($conn);
                                $set['result'][] = array('msg' => "Your request has been successfully approved. Please check your wallet.", 'success'=>'1');
                                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                            } else {
                                mysqli_rollback($conn);
                                
                                $set['result'][] = array('msg' => "Error!", 'success'=>'0');
                                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                            }
                        }
                        } else {
                            $set['result'][] = array('msg' => "Transaction failed!", 'success'=>'0');
                                echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                        }
                }
                else {
                    $qry = "SELECT id FROM tbl_transaction WHERE (order_id = '$order_id' OR payment_id = '$payment_id') AND type = '1'";
                    $result = mysqli_query($conn, $qry);
                    $num_rows = mysqli_num_rows($result);
                        
                    if ($num_rows > 0) {
                        $set['result'][] = array('msg' => "Invalid transaction!", 'success'=>'0');
                                echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                    }
                    else {
                                mysqli_autocommit($conn, false);
                        $flag = true;
            
                        $sql0 = "SELECT deposit_bal FROM tbl_user WHERE id = '$user_id' AND is_active = 1 AND is_block = 0"; 
                        $row0 = mysqli_fetch_array(mysqli_query($conn,$sql0));
                        $deposit_bal = $row0['deposit_bal'];
                        $new_deposit_bal = $deposit_bal + $amount;
                                        
                        $sql1 = "INSERT INTO tbl_transaction (user_id, order_id, payment_id, amount, payment_getway, remark, type, status, date_created) VALUES ('$user_id', '$order_id', '$payment_id', '$amount', '$payment_getway', '$remark', '1', '1', '$date_created')";
                        $sql2 = "UPDATE tbl_user SET deposit_bal = deposit_bal + '$amount' WHERE id = '$user_id' AND is_active = 1 AND is_block = 0";
                        
                        $result = mysqli_query($conn, $sql1);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
                        
                        $result = mysqli_query($conn, $sql2);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
                        
                        if ($flag) {
                            mysqli_commit($conn);
                            $set['result'][] = array('msg' => "Your request has been successfully approved. Please check your wallet.", 'success'=>'1');
                                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                        } else {
                            mysqli_rollback($conn);
                            
                            $set['result'][] = array('msg' => "Error!", 'success'=>'0');
                                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                        }
                    }
                }
            } 
                else if (isset($_POST['user_id'])) {
                         $set['result'][] = array('msg' => "Please, download latest app from website to add deposit.", 'success'=>'0');
                         echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
                else {
                    header( 'Content-Type: application/json; charset=utf-8' );
                        $json = json_encode($set);
                        echo $json;
                }
        }
                mysqli_close($conn);
        }
        
        public function postWithdraw() {
                include "../include/config.php";
        
        if(!isset($_POST['purchase_key']) || $pur_code != $_POST['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
            if (isset($_POST['user_id'])) {
                
                $user_id  = mysqli_real_escape_string($conn, $_POST['user_id']);
                        $reg_name  =  mysqli_real_escape_string($conn, $_POST['reg_name']);
                        $reg_number  = mysqli_real_escape_string($conn, $_POST['reg_number']);
                $amount  = mysqli_real_escape_string($conn, $_POST['amount']);
                    $payment_getway  = mysqli_real_escape_string($conn, $_POST['payment_getway']);
                        
                        $date_created = date("Y-m-d h:i:s");
                $order_id = time().$user_id;
                $remark = 'Requested on '.$payment_getway;
                        
                        mysqli_autocommit($conn, false);
                $flag = true;
    
                $sql0 = "SELECT won_bal FROM tbl_user WHERE id = '$user_id' AND is_active = 1 AND is_block = 0"; 
                $row0 = mysqli_fetch_array(mysqli_query($conn,$sql0));
                $won_bal = $row0['won_bal'];
                
                if ($won_bal >= $amount) {
                    $new_won_bal = $won_bal - $amount;
                                
                    $sql1 = "INSERT INTO tbl_transaction (user_id, order_id, amount, payment_getway, remark, type, reg_number, reg_name, date_created) VALUES ('$user_id', '$order_id', '$amount', '$payment_getway', '$remark', '0', '$reg_number', '$reg_name', '$date_created')";
                    $sql2 = "UPDATE tbl_user SET won_bal = '$new_won_bal' WHERE id = '$user_id' AND is_active = 1 AND is_block = 0";
                    
                    $result = mysqli_query($conn, $sql0);
                    if (!$result) {
                        $flag = false;
                        echo "Error details: " . mysqli_error($conn) . ".";
                    }
                    
                    $result = mysqli_query($conn, $sql1);
                    if (!$result) {
                        $flag = false;
                        echo "Error details: " . mysqli_error($conn) . ".";
                    }
                    
                    $result = mysqli_query($conn, $sql2);
                    if (!$result) {
                        $flag = false;
                        echo "Error details: " . mysqli_error($conn) . ".";
                    }
                    
                    if ($flag) {
                        mysqli_commit($conn);
                        $set['result'][] = array('msg' => "Your request has been successfully sent. It will be transferred to your wallet within 24 hour.", 'success'=>'1');
                                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                    } else {
                        mysqli_rollback($conn);
                        $set['result'][] = array('msg' => "Error!", 'success'=>'0');
                                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                    }
                }
                else {
                    $set['result'][] = array('msg' => "oops! You don't have enough wining balance to withdraw.", 'success'=>'0');
                                echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
            } 
                else {
                         header( 'Content-Type: application/json; charset=utf-8' );
                         $json = json_encode($set);
                         echo $json;
                }
        }
                mysqli_close($conn);
        }
        
        
        
        public function getMatchUpcoming() {
            include "../include/config.php";
                
                if(!isset($_GET['purchase_key']) || $pur_code != $_GET['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
            $user_id = mysqli_real_escape_string($conn, $_GET['user_id']);
                $flag = array();
                $current_time = time();
    
            $query = "SELECT t1.id, t1.match_fee, t1.prize, t1.table_size, t1.type, t1.play_time, '$current_time' AS 'current_time', 
            COUNT(CASE WHEN t2.id AND (t2.parti1='$user_id' OR t2.parti2='$user_id') THEN t2.id END) As is_joined, 
            IFNULL(SUM(CASE WHEN t2.parti1 IS NULL THEN 0 ELSE 1 END + CASE WHEN t2.parti2 IS NULL THEN 0 ELSE 1 END),0) AS table_joined,
            CASE WHEN t2.parti1 IS NULL THEN 0 ELSE t2.parti1 END AS parti1_id, 
            CASE WHEN t2.parti2 IS NULL THEN 0 ELSE t2.parti2 END AS parti2_id,
            CASE WHEN t2.parti1_status IS NULL THEN 0 ELSE t2.parti1_status END AS parti1_status, 
            CASE WHEN t2.parti2_status IS NULL THEN 0 ELSE t2.parti2_status END AS parti2_status,
            CASE WHEN t3.username IS NULL THEN 0 ELSE t3.username END AS parti1_name, CONCAT('+',t3.country_code,' ',t3.whatsapp_no) AS whatsapp_no1, 
            CASE WHEN t4.username IS NULL THEN 0 ELSE t4.username END AS parti2_name, CONCAT('+',t4.country_code,' ',t4.whatsapp_no) AS whatsapp_no2 
            FROM tbl_match t1 
            LEFT JOIN tbl_participants t2 ON (t1.id = t2.match_id) 
            LEFT JOIN tbl_user t3 ON (t2.parti1 = t3.id)
            LEFT JOIN tbl_user t4 ON (t2.parti2 = t4.id)
            WHERE t1.status='1' GROUP BY t1.id ORDER BY t1.match_fee ASC LIMIT 25";
            $result = mysqli_query($conn,$query);
    
            if($result){
                while($row=mysqli_fetch_array($result)){
                    $flag[]=$row;
                }
                header( 'Content-Type: application/json; charset=utf-8' );
                        print(json_encode($flag));
            }
        }
        mysqli_close($conn);
        }
        
        public function getMatchOngoing() {
            include "../include/config.php";
                
                if(!isset($_GET['purchase_key']) || $pur_code != $_GET['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
            $user_id = mysqli_real_escape_string($conn, $_GET['user_id']);
                $flag = array();
            $current_time = time();
            
            $query = "SELECT t1.id, t1.match_fee, t1.prize, t1.table_size, t1.type, t1.play_time, '$current_time' AS 'current_time', from_unixtime(t1.play_time+45000, '%d/%m/%Y at %h:%i %p') AS start_time, 
            COUNT(CASE WHEN t2.id AND (t2.parti1='$user_id' OR t2.parti2='$user_id') THEN t2.id END) As is_joined, 
            IFNULL(SUM(CASE WHEN t2.parti1 IS NULL THEN 0 ELSE 1 END + CASE WHEN t2.parti2 IS NULL THEN 0 ELSE 1 END),0) AS table_joined,
            CASE WHEN t2.parti1 IS NULL THEN 0 ELSE t2.parti1 END AS parti1_id, 
            CASE WHEN t2.parti2 IS NULL THEN 0 ELSE t2.parti2 END AS parti2_id,
            CASE WHEN t2.parti1_status IS NULL THEN 0 ELSE t2.parti1_status END AS parti1_status, 
            CASE WHEN t2.parti2_status IS NULL THEN 0 ELSE t2.parti2_status END AS parti2_status,
            CASE WHEN t3.username IS NULL THEN 0 ELSE t3.username END AS parti1_name, CONCAT('+',t3.country_code,' ',t3.whatsapp_no) AS whatsapp_no1, 
            CASE WHEN t4.username IS NULL THEN 0 ELSE t4.username END AS parti2_name, CONCAT('+',t4.country_code,' ',t4.whatsapp_no) AS whatsapp_no2 
            FROM tbl_match t1 
            LEFT JOIN tbl_participants t2 ON (t1.id = t2.match_id) 
            LEFT JOIN tbl_user t3 ON (t2.parti1 = t3.id)
            LEFT JOIN tbl_user t4 ON (t2.parti2 = t4.id)
            WHERE (t2.parti1 = '$user_id' OR t2.parti2 = '$user_id') AND t1.status='2' GROUP BY t1.id ORDER BY t1.play_time DESC LIMIT 25";
            $result = mysqli_query($conn,$query);
    
            if($result){
                while($row=mysqli_fetch_array($result)){
                    $flag[]=$row;
                }
                header( 'Content-Type: application/json; charset=utf-8' );
                        print(json_encode($flag));
            }
        }
        mysqli_close($conn);
        }
        
        public function getMatchCompleted() {
            include "../include/config.php";
                
                if(!isset($_GET['purchase_key']) || $pur_code != $_GET['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
            $user_id = mysqli_real_escape_string($conn, $_GET['user_id']);
                $flag = array();
    
            $query = "SELECT t1.id, t1.match_fee, t1.prize, t1.table_size, t1.type, from_unixtime(t1.play_time+45000, '%d/%m/%Y at %h:%i %p') AS play_time, 
            COUNT(CASE WHEN t2.id AND (t2.parti1='$user_id' OR t2.parti2='$user_id') THEN t2.id END) As is_joined, 
            COUNT(CASE WHEN t2.winner_id = '$user_id' THEN t2.winner_id END) AS win, 
            IFNULL(SUM(CASE WHEN t2.parti1 IS NULL THEN 0 ELSE 1 END + CASE WHEN t2.parti2 IS NULL THEN 0 ELSE 1 END),0) AS table_joined, 
            CASE WHEN t2.result_status IS NULL THEN 0 ELSE t2.result_status END AS result_status,
            CASE WHEN t3.username IS NULL THEN 0 ELSE t3.username END AS parti1_name, 
            CASE WHEN t4.username IS NULL THEN 0 ELSE t4.username END AS parti2_name, 
            CASE WHEN t5.username IS NULL THEN 0 ELSE t5.username END AS winner_name
            FROM tbl_match t1 
            LEFT JOIN tbl_participants t2 ON (t1.id = t2.match_id)
            LEFT JOIN tbl_user t3 ON (t2.parti1 = t3.id)
            LEFT JOIN tbl_user t4 ON (t2.parti2 = t4.id)
            LEFT JOIN tbl_user t5 ON (t2.winner_id = t5.id)
            WHERE (t2.parti1 = '$user_id' OR t2.parti2 = '$user_id') AND t1.status='3' GROUP BY t1.id ORDER BY t1.play_time DESC LIMIT 25";
            $result = mysqli_query($conn,$query);
    
            if($result){
                while($row=mysqli_fetch_array($result)){
                    $flag[]=$row;
                }
                header( 'Content-Type: application/json; charset=utf-8' );
                        print(json_encode($flag));
            }
        }
        mysqli_close($conn);
        }
        
        
        
        public function postResult() {
                require("../include/config.php");
        
        if(!isset($_POST['purchase_key']) || $pur_code != $_POST['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
            if(isset($_POST["match_id"]) && isset($_POST["parti1_status"]) && isset($_POST["parti1_proof"])) {
                        
                        $match_id = $_POST["match_id"];
                        $user_id = $_POST["user_id"];
                        $parti1_status = $_POST["parti1_status"];
                        $parti1_proof = $_POST["parti1_proof"];
                        
                        $path = 'upload/proof/'.$match_id.'_'.$user_id.'.jpg';
                        $filePath = '../upload/proof/'.$match_id.'_'.$user_id.'.jpg'; // path of the file to store
    
                        $query = " UPDATE tbl_participants SET parti1_status = '$parti1_status', parti1_proof = '$path'  WHERE match_id = '$match_id' ";
                    $result = mysqli_query($conn,$query);
        
                if($result){
                    file_put_contents($filePath,base64_decode($parti1_proof));
                    
                    $query = $conn->query("SELECT device_token FROM tbl_fcm_devicetoken");
    
                    $deviceToken = array();
                    while($selres = $query->fetch_assoc())
                    {
                        $deviceToken[] = $selres['device_token'];
                    }
                    // print_r($deviceToken);
                    
                    function sendNotification($deviceToken,$match_id){
                        $url ="https://fcm.googleapis.com/fcm/send";
                    
                        $fields=array(
                            "registration_ids"=> $deviceToken,
                            "notification"=>array(
                                "body"=>'Player 2 has submited their result. kindly review it.',
                                "title"=> 'Result submitted - Match ID #'. $match_id,
                                "icon"=> $appicon,
                                "click_action"=> "https://".$_SERVER['SERVER_NAME']."/admin/match-summery?mid=$match_id"
                            )
                        );
                    
                        $headers=array(
                            'Authorization: key='.$authorizationKey,
                            'Content-Type:application/json'
                        );
                    
                        $ch=curl_init();
                        curl_setopt($ch,CURLOPT_URL,$url);
                        curl_setopt($ch,CURLOPT_POST,true);
                        curl_setopt($ch,CURLOPT_HTTPHEADER,$headers);
                        curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
                        curl_setopt($ch,CURLOPT_POSTFIELDS,json_encode($fields));
                        $result=curl_exec($ch);
                        //print_r($result);
                        curl_close($ch);
                    }
                    
                    try {
                        sendNotification($deviceToken,$match_id);
                    } catch (customException $e) {
                      echo $e->errorMessage();
                    }
                    
                    $set['result'][] = array('msg' => "Result uploaded successfully. Once admin review it will reflected in app result page.", 'success'=>'1');
                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
                else {
                    $set['result'][] = array('msg' => "Error!", 'success'=>'0');
                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
                }
                else if(isset($_POST["match_id"]) && isset($_POST["parti1_status"])) {
                        $match_id = $_POST["match_id"];
                        $parti1_status = $_POST["parti1_status"];
    
                        $query = " UPDATE tbl_participants SET parti1_status = '$parti1_status'  WHERE match_id = '$match_id' ";
                        
                        if (mysqli_query($conn, $query)) {
                            $query = $conn->query("SELECT device_token FROM tbl_fcm_devicetoken");
    
                    $deviceToken = array();
                    while($selres = $query->fetch_assoc())
                    {
                        $deviceToken[] = $selres['device_token'];
                    }
                    // print_r($deviceToken);
                    
                    function sendNotification($deviceToken,$match_id){
                        $url ="https://fcm.googleapis.com/fcm/send";
                    
                        $fields=array(
                            "registration_ids"=> $deviceToken,
                            "notification"=>array(
                                "body"=>'Player 1 has submited their result. kindly review it.',
                                "title"=> 'Result submitted - Match ID #'. $match_id,
                                "icon"=> $appicon,
                                "click_action"=> "https://".$_SERVER['SERVER_NAME']."/admin/match-summery?mid=$match_id"
                            )
                        );
                    
                        $headers=array(
                            'Authorization: key='.$authorizationKey,
                            'Content-Type:application/json'
                        );
                    
                        $ch=curl_init();
                        curl_setopt($ch,CURLOPT_URL,$url);
                        curl_setopt($ch,CURLOPT_POST,true);
                        curl_setopt($ch,CURLOPT_HTTPHEADER,$headers);
                        curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
                        curl_setopt($ch,CURLOPT_POSTFIELDS,json_encode($fields));
                        $result=curl_exec($ch);
                        //print_r($result);
                        curl_close($ch);
                    }
                    
                    try {
                        sendNotification($deviceToken,$match_id);
                    } catch (customException $e) {
                      echo $e->errorMessage();
                    }
                    
                    $set['result'][] = array('msg' => "Result uploaded successfully. Once admin review it will reflected in app result page.", 'success'=>'1');
                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
                else {
                    $set['result'][] = array('msg' => "Error!", 'success'=>'0');
                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
                }
                else if(isset($_POST["match_id"]) && isset($_POST["parti2_status"]) && isset($_POST["parti2_proof"])) {
                        
                        $match_id = $_POST["match_id"];
                        $user_id = $_POST["user_id"];
                        $parti2_status = $_POST["parti2_status"];
                        $parti2_proof = $_POST["parti2_proof"];
                        
                        $path = 'upload/proof/'.$match_id.'_'.$user_id.'.jpg';
                        $filePath = '../upload/proof/'.$match_id.'_'.$user_id.'.jpg'; // path of the file to store
    
                        $query = " UPDATE tbl_participants SET parti2_status = '$parti2_status', parti2_proof = '$path'  WHERE match_id = '$match_id' ";
                    $result = mysqli_query($conn,$query);
        
                if($result){
                    file_put_contents($filePath,base64_decode($parti2_proof));
                    
                    $query = $conn->query("SELECT device_token FROM tbl_fcm_devicetoken");
    
                    $deviceToken = array();
                    while($selres = $query->fetch_assoc())
                    {
                        $deviceToken[] = $selres['device_token'];
                    }
                    // print_r($deviceToken);
                    
                    function sendNotification($deviceToken,$match_id){
                        $url ="https://fcm.googleapis.com/fcm/send";
                    
                        $fields=array(
                            "registration_ids"=> $deviceToken,
                            "notification"=>array(
                                "body"=>'Player 2 has submited their result. kindly review it.',
                                "title"=> 'Result submitted - Match ID #'. $match_id,
                                "icon"=> $appicon,
                                "click_action"=> "https://".$_SERVER['SERVER_NAME']."/admin/match-summery?mid=$match_id"
                            )
                        );
                    
                        $headers=array(
                            'Authorization: key='.$authorizationKey,
                            'Content-Type:application/json'
                        );
                    
                        $ch=curl_init();
                        curl_setopt($ch,CURLOPT_URL,$url);
                        curl_setopt($ch,CURLOPT_POST,true);
                        curl_setopt($ch,CURLOPT_HTTPHEADER,$headers);
                        curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
                        curl_setopt($ch,CURLOPT_POSTFIELDS,json_encode($fields));
                        $result=curl_exec($ch);
                        //print_r($result);
                        curl_close($ch);
                    }
                    
                    try {
                        sendNotification($deviceToken,$match_id);
                    } catch (customException $e) {
                      echo $e->errorMessage();
                    }
                    
                    $set['result'][] = array('msg' => "Result uploaded successfully. Once admin review it will reflected in app result page.", 'success'=>'1');
                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
                else {
                    $set['result'][] = array('msg' => "Error!", 'success'=>'0');
                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
                }
                else if(isset($_POST["match_id"]) && isset($_POST["parti2_status"])) {
                        $match_id = $_POST["match_id"];
                        $parti2_status = $_POST["parti2_status"];
    
                        $query = " UPDATE tbl_participants SET parti2_status = '$parti2_status'  WHERE match_id = '$match_id' ";
                        
                        if (mysqli_query($conn, $query)) {
                            $query = $conn->query("SELECT device_token FROM tbl_fcm_devicetoken");
    
                    $deviceToken = array();
                    while($selres = $query->fetch_assoc())
                    {
                        $deviceToken[] = $selres['device_token'];
                    }
                    // print_r($deviceToken);
                    
                    function sendNotification($deviceToken,$match_id){
                        $url ="https://fcm.googleapis.com/fcm/send";
                    
                        $fields=array(
                            "registration_ids"=> $deviceToken,
                            "notification"=>array(
                                "body"=>'Player 2 has submited their result. kindly review it.',
                                "title"=> 'Result submitted - Match ID #'. $match_id,
                                "icon"=> $appicon,
                                "click_action"=> "https://".$_SERVER['SERVER_NAME']."/admin/match-summery?mid=$match_id"
                            )
                        );
                    
                        $headers=array(
                            'Authorization: key='.$authorizationKey,
                            'Content-Type:application/json'
                        );
                    
                        $ch=curl_init();
                        curl_setopt($ch,CURLOPT_URL,$url);
                        curl_setopt($ch,CURLOPT_POST,true);
                        curl_setopt($ch,CURLOPT_HTTPHEADER,$headers);
                        curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
                        curl_setopt($ch,CURLOPT_POSTFIELDS,json_encode($fields));
                        $result=curl_exec($ch);
                        //print_r($result);
                        curl_close($ch);
                    }
                    
                    try {
                        sendNotification($deviceToken,$match_id);
                    } catch (customException $e) {
                      echo $e->errorMessage();
                    }
                    
                    $set['result'][] = array('msg' => "Result uploaded successfully. Once admin review it will reflected in app result page.", 'success'=>'1');
                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
                else {
                    $set['result'][] = array('msg' => "Error!", 'success'=>'0');
                            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
                }
        }
                mysqli_close($conn);
        }
        
    public function postJoinMatch() {
                include "../include/config.php";
        
        if(!isset($_POST['purchase_key']) || $pur_code != $_POST['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
            if (isset($_POST['match_id']) && isset($_POST['parti1'])) {
                
                $match_id  = mysqli_real_escape_string($conn, $_POST['match_id']);
                        $parti1  =  mysqli_real_escape_string($conn, $_POST['parti1']);
                        
                        $date_created = date("Y-m-d h:i:s");
                        $parti1_join_time = date("Y-m-d h:i:s");
                $play_time = time()+180;
                $order_id = time();
                $current_time = time();
                
                        mysqli_autocommit($conn, false);
                $flag = true;
                
                $sql0 = "SELECT t1.match_fee, t1.prize, t1.table_size, t1.type, IFNULL(SUM(CASE WHEN t2.parti1 IS NULL THEN 0 ELSE 1 END + CASE WHEN t2.parti2 IS NULL THEN 0 ELSE 1 END),0) AS table_joined 
                FROM tbl_match t1
                LEFT JOIN tbl_participants t2 ON (t1.id = t2.match_id)
                WHERE t1.id = '$match_id'"; 
                $row0 = mysqli_fetch_array(mysqli_query($conn,$sql0));
                $match_fee = $row0['match_fee'];
                $prize = $row0['prize'];
                $table_size = $row0['table_size'];
                $type = $row0['type'];
                $table_joined = $row0['table_joined'];
                        
                if($table_joined == 0) {
                    $sql1 = "SELECT SUM(deposit_bal + won_bal + bonus_bal) AS tot_bal, deposit_bal, won_bal, bonus_bal, referer FROM tbl_user WHERE id = '$parti1' AND is_active = 1 AND is_block = 0"; 
                    $row1 = mysqli_fetch_array(mysqli_query($conn,$sql1));
                    $deposit_bal = $row1['deposit_bal'];
                    $won_bal = $row1['won_bal'];
                    $bonus_bal = $row1['bonus_bal'];
                    $tot_bal = $row1['tot_bal'];
                    $referer = $row1['referer'];
                    
                    $deposit_bonus_bal = $deposit_bal + $bonus_bal;
                    $refer_bonus = round((1 * $match_fee) / 100);
                        
                    if ($tot_bal >= $match_fee) {
                        if ($bonus_bal >= $match_fee) {
                            $bonus_bal = $bonus_bal - $match_fee;
                            
                        }
                        else if ($deposit_bonus_bal >= $match_fee) {
                            $bonus_bal = 0;
                            $deposit_bal = $deposit_bal - ($match_fee - $bonus_bal); 
                        }
                        else {
                            $bonus_bal = 0;
                            $deposit_bal = 0;
                            $won_bal = $won_bal - ($match_fee - $deposit_bonus_bal); 
                        }
                        
                        $sql2 = "INSERT INTO tbl_transaction (user_id, order_id, amount, payment_getway, remark, type, date_created, status) VALUES ('$parti1', '$order_id', '$match_fee', 'App Walet', 'MID #$match_id -  Fees Paid', '0', '$date_created', '1')";
                        $sql3 = "UPDATE tbl_user SET deposit_bal = '$deposit_bal', won_bal = '$won_bal', bonus_bal = '$bonus_bal' WHERE id = '$parti1' AND is_active = 1 AND is_block = 0";
                        $sql4 = "UPDATE tbl_match SET play_time = '$play_time' WHERE id = '$match_id' AND status = 1";
                        $sql5 = "UPDATE tbl_participants SET parti1 = '$parti1', parti1_join_time = '$date_created' WHERE match_id = '$match_id'";
                        
                        $result = mysqli_query($conn, $sql2);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
                        
                        $result = mysqli_query($conn, $sql3);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
                        
                        $result = mysqli_query($conn, $sql4);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
    
                        $result = mysqli_query($conn, $sql5);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
                        
                        if ($flag) {
                            mysqli_commit($conn);
                            $set['result'][] = array('msg' => "Match joined succesfully...!", 'success'=>'1', 'current_time'=> $current_time, 'play_time'=> $play_time);
                                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                        } else {
                            mysqli_rollback($conn);
                            $set['result'][] = array('msg' => "Error!", 'success'=>'0');
                                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                        }
                    }
                    else {
                        $set['result'][]=array('msg' => "$parti1 You have not enough balance to participate.", 'success'=>'0');
                        echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                    }
                }
                else if($table_joined == 1) {
                    $sql1 = "SELECT SUM(deposit_bal + won_bal + bonus_bal) AS tot_bal, deposit_bal, won_bal, bonus_bal, referer FROM tbl_user WHERE id = '$parti1' AND is_active = 1 AND is_block = 0"; 
                    $row1 = mysqli_fetch_array(mysqli_query($conn,$sql1));
                    $deposit_bal = $row1['deposit_bal'];
                    $won_bal = $row1['won_bal'];
                    $bonus_bal = $row1['bonus_bal'];
                    $tot_bal = $row1['tot_bal'];
                    $referer = $row1['referer'];
                    
                    $deposit_bonus_bal = $deposit_bal + $bonus_bal;
                    $refer_bonus = round((1 * $match_fee) / 100);
                        
                    if ($tot_bal >= $match_fee) {
                        if ($bonus_bal >= $match_fee) {
                            $bonus_bal = $bonus_bal - $match_fee;
                            
                        }
                        else if ($deposit_bonus_bal >= $match_fee) {
                            $bonus_bal = 0;
                            $deposit_bal = $deposit_bal - ($match_fee - $bonus_bal); 
                        }
                        else {
                            $bonus_bal = 0;
                            $deposit_bal = 0;
                            $won_bal = $won_bal - ($match_fee - $deposit_bonus_bal); 
                        }
                        
                        $sql2 = "INSERT INTO tbl_transaction (user_id, order_id, amount, payment_getway, remark, type, date_created, status) VALUES ('$parti1', '$order_id', '$match_fee', 'App Walet', 'MID #$match_id -  Fees Paid', '0', '$date_created', '1')";
                        $sql3 = "UPDATE tbl_user SET deposit_bal = '$deposit_bal', won_bal = '$won_bal', bonus_bal = '$bonus_bal' WHERE id = '$parti1' AND is_active = 1 AND is_block = 0";
                        $sql4 = "UPDATE tbl_match SET play_time = status = '2' WHERE id = '$match_id' AND status = 1";
                        $sql5 = "UPDATE tbl_participants SET parti2 = '$parti1', parti2_join_time = '$date_created' WHERE match_id = '$match_id'";
                        $sql6 = "INSERT INTO tbl_match (match_fee, prize, table_size, status, type, date_created, added_by) VALUES ('$match_fee', '$prize', '$table_size', '1', '$type', '$date_created', '$parti1')";
                        
                        
                        $result = mysqli_query($conn, $sql2);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
                        
                        $result = mysqli_query($conn, $sql3);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
                        
                        $result = mysqli_query($conn, $sql4);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
    
                        $result = mysqli_query($conn, $sql5);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
                        
                        $result = mysqli_query($conn, $sql6);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
                        
                        
                        if ($flag) {
                            mysqli_commit($conn);
                            $set['result'][] = array('msg' => "Match joined succesfully...!", 'success'=>'1', 'current_time'=> $current_time, 'play_time'=> $play_time);
                                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                        } else {
                            mysqli_rollback($conn);
                            $set['result'][] = array('msg' => "Error!", 'success'=>'0');
                                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                        }
                    }
                    else {
                        $set['result'][]=array('msg' => "$parti1 You have not enough balance to participate.", 'success'=>'0');
                        echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                    }
                }
                else {
                    $set['result'][]=array('msg' => "You can't join this match due to match is full.", 'success'=>'0');
                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
            } 
                else if (isset($_POST['match_id']) && isset($_POST['parti2'])) {
                
                $match_id  = mysqli_real_escape_string($conn, $_POST['match_id']);
                        $parti2  =  mysqli_real_escape_string($conn, $_POST['parti2']);
                        
                        $date_created = date("Y-m-d h:i:s");
                        $parti2_join_time = date("Y-m-d h:i:s");
                $order_id = time();
                $current_time = time();
                
                        mysqli_autocommit($conn, false);
                $flag = true;
                
                $sql0 = "SELECT t1.match_fee, t1.prize, t1.table_size, t1.type, SUM(CASE WHEN t2.parti1 IS NULL THEN 0 ELSE 1 END + CASE WHEN t2.parti2 IS NULL THEN 0 ELSE 1 END) AS table_joined 
                FROM tbl_match t1
                LEFT JOIN tbl_participants t2 ON (t1.id = t2.match_id)
                WHERE t1.id = '$match_id'"; 
                $row0 = mysqli_fetch_array(mysqli_query($conn,$sql0));
                $match_fee = $row0['match_fee'];
                $prize = $row0['prize'];
                $table_size = $row0['table_size'];
                $type = $row0['type'];
                $table_joined = $row0['table_joined'];
                
                        
                if($table_joined < $table_size) {
                    $sql1 = "SELECT SUM(deposit_bal + won_bal + bonus_bal) AS tot_bal, deposit_bal, won_bal, bonus_bal, referer FROM tbl_user WHERE id = '$parti2' AND is_active = 1 AND is_block = 0"; 
                    $row1 = mysqli_fetch_array(mysqli_query($conn,$sql1));
                    $deposit_bal = $row1['deposit_bal'];
                    $won_bal = $row1['won_bal'];
                    $bonus_bal = $row1['bonus_bal'];
                    $tot_bal = $row1['tot_bal'];
                    $referer = $row1['referer'];
                    
                    $refer_bonus = round((1 * $match_fee) / 100);
                    $deposit_bonus_bal = $deposit_bal + $bonus_bal;
                
                    if ($tot_bal >= $match_fee) {
                        if ($bonus_bal >= $match_fee) {
                            $bonus_bal = $bonus_bal - $match_fee;
                            
                        }
                        else if ($deposit_bonus_bal >= $match_fee) {
                            $bonus_bal = 0;
                            $deposit_bal = $deposit_bal - ($match_fee - $bonus_bal); 
                        }
                        else {
                            $bonus_bal = 0;
                            $deposit_bal = 0;
                            $won_bal = $won_bal - ($match_fee - $deposit_bonus_bal); 
                        }
                        
                        $sql2 = "INSERT INTO tbl_transaction (user_id, order_id, amount, payment_getway, remark, type, date_created, status) VALUES ('$parti2', '$order_id', '$match_fee', 'App Walet', 'MID #$match_id - Fees Paid', '0', '$date_created', '1')";
                        $sql3 = "UPDATE tbl_user SET deposit_bal = '$deposit_bal', won_bal = '$won_bal', bonus_bal = '$bonus_bal' WHERE id = '$parti2' AND is_active = 1 AND is_block = 0";
                        $sql4 = "UPDATE tbl_match SET status = '2' WHERE id = '$match_id' AND status = 1";
                        $sql5 = "UPDATE tbl_participants SET parti2 = '$parti2', parti2_join_time = '$date_created' WHERE match_id = '$match_id'";
                        $sql6 = "INSERT INTO tbl_match (match_fee, prize, table_size, status, type, date_created, added_by) VALUES ('$match_fee', '$prize', '$table_size', '1', '$type', '$date_created', '$parti2')";
                        
                        $result = mysqli_query($conn, $sql2);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
                        
                        $result = mysqli_query($conn, $sql3);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
                        
                        $result = mysqli_query($conn, $sql4);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
    
                        $result = mysqli_query($conn, $sql5);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
                        
                        $result = mysqli_query($conn, $sql6);
                        if (!$result) {
                            $flag = false;
                            echo "Error details: " . mysqli_error($conn) . ".";
                        }
                        
                        if ($flag) {
                            mysqli_commit($conn);
                            $set['result'][] = array('msg' => "Match joined succesfully...!", 'success'=>'1', 'current_time'=> $current_time);
                                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                        } else {
                            mysqli_rollback($conn);
                            $set['result'][] = array('msg' => "Error!", 'success'=>'0');
                                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                        }
                    }
                    else {
                        $set['result'][]=array('msg' => "You have not enough balance to participate.", 'success'=>'0');
                        echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                    }
                }
                else {
                    $set['result'][]=array('msg' => "You can't join this match due to match is full.", 'success'=>'0');
                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
                
                mysqli_close($conn);
            } else {
                         header( 'Content-Type: application/json; charset=utf-8' );
                         $json = json_encode($set);
                         echo $json;
                }
        }
                mysqli_close($conn);
        }
        
        public function deleteParticipant() {
                include "../include/config.php";
        
        if(!isset($_POST['purchase_key']) || $pur_code != $_POST['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
            if (isset($_POST['match_id']) && isset($_POST['parti1'])) {
                        
                        $match_id  = mysqli_real_escape_string($conn, $_POST['match_id']);
                        $parti1  =  mysqli_real_escape_string($conn, $_POST['parti1']);
    
                $date_created = date("Y-m-d h:i:s");
                $order_id = time();
                
                mysqli_autocommit($conn, false);
                $flag = true;
                
                $sql0 = "SELECT t2.match_fee, t2.table_size, IFNULL(SUM(CASE WHEN t1.parti1 IS NULL THEN 0 ELSE 1 END + CASE WHEN t1.parti2 IS NULL THEN 0 ELSE 1 END),0) AS table_joined 
                FROM tbl_participants t1
                LEFT JOIN tbl_match t2 ON (t1.match_id = t2.id)
                WHERE t1.match_id = '$match_id' AND t1.parti1 = '$parti1'"; 
                $row0 = mysqli_fetch_array(mysqli_query($conn,$sql0));
                $match_fee = $row0['match_fee'];
                $table_size = $row0['table_size'];
                $table_joined = $row0['table_joined'];
                
                if($table_joined == 1) {
                    $sql1 = "SELECT deposit_bal FROM tbl_user WHERE id = '$parti1' AND is_active = 1 AND is_block = 0"; 
                    $row1 = mysqli_fetch_array(mysqli_query($conn,$sql1));
                    $deposit_bal = $row1['deposit_bal'] + $match_fee;
                    
                    $sql2 = "DELETE FROM tbl_participants WHERE match_id = '$match_id'";
                    $sql3 = "INSERT INTO tbl_transaction (user_id, order_id, amount, payment_getway, remark, type, date_created, status) VALUES ('$parti1', '$order_id', '$match_fee', 'App Walet', 'MID #$match_id - Fees Refunded', '1', '$date_created', '1')";
                    $sql4 = "UPDATE tbl_user SET deposit_bal = '$deposit_bal' WHERE id = '$parti1' AND is_active = 1 AND is_block = 0";
                    
                    $result = mysqli_query($conn, $sql2);
                    if (!$result) {
                        $flag = false;
                        echo "Error details: " . mysqli_error($conn) . ".";
                    }
                    
                    $result = mysqli_query($conn, $sql3);
                    if (!$result) {
                        $flag = false;
                        echo "Error details: " . mysqli_error($conn) . ".";
                    }
                    
                    $result = mysqli_query($conn, $sql4);
                    if (!$result) {
                        $flag = false;
                        echo "Error details: " . mysqli_error($conn) . ".";
                    }
                        
                            if ($flag) {
                        mysqli_commit($conn);
                        $set['result'][] = array('msg' => "Match was cancelled and fees refunded to your account succesfully...!", 'success'=>'1');
                                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                    } else {
                        mysqli_rollback($conn);
                        $set['result'][] = array('msg' => "Error!", 'success'=>'0');
                                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                    }
                }
                else {
                    $set['result'][] = array('msg' => "Opps! Something went wrong.", 'success'=>'0');
                                echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
                        
                }
                else {
                        $set['result'][] = array('msg' => "Error!", 'success'=>'0');
                    echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
                }
        }
                mysqli_close($conn);
        }
        
    public function searchParticipant() {
                include "../include/config.php";

        if(!isset($_GET['purchase_key']) || $pur_code != $_GET['purchase_key']) {
            $set['result'][] = array('msg' => 'Invalid access attampt!', 'success' => '0');
            echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
        }
        else {
                $match_id = $_GET["match_id"];
            
            $qry = "SELECT CASE WHEN t1.parti1 IS NULL THEN 0 ELSE t1.parti1 END AS parti1_id, CASE WHEN t1.parti2 IS NULL THEN 0 ELSE t1.parti2 END AS parti2_id,
            CASE WHEN t2.full_name IS NULL THEN 0 ELSE t2.full_name END AS parti1_name, CONCAT('+',t2.country_code,' ',t2.whatsapp_no) AS whatsapp_no1, 
            CASE WHEN t3.full_name IS NULL THEN 0 ELSE t3.full_name END AS parti2_name, CONCAT('+',t3.country_code,' ', t3.whatsapp_no) AS whatsapp_no2
            FROM tbl_participants t1
            LEFT JOIN tbl_user t2 ON (t1.parti1 = t2.id)
            LEFT JOIN tbl_user t3 ON (t1.parti2 = t3.id)
            WHERE t1.match_id ='$match_id'";
           
                $result = mysqli_query($conn, $qry);     
                $num_rows = mysqli_num_rows($result);
                $row = mysqli_fetch_assoc($result);
                        
                if ($num_rows > 0 ) {
                    $set[] = array(
                                'parti1_id' => $row['parti1_id'],
                                'parti2_id' => $row['parti2_id'],
                                'parti1_name' => $row['parti1_name'],
                                'parti2_name' => $row['parti2_name'],
                                'whatsapp_no1' => $row['whatsapp_no1'],
                                'whatsapp_no2' => $row['whatsapp_no2'],
                                'success'=>'1'
                        );
                }
                else {
                    $set['result'][] = array('msg' => 'Error', 'success' => '0');
                }
                                                
                header( 'Content-Type: application/json; charset=utf-8' );
                $json = json_encode($set);
                echo $json;
        }
        mysqli_close($conn);
        }       
        
        
        
        public function getAboutUs() {
                include "../include/config.php";

                $qry = "SELECT about_us FROM tbl_configuration WHERE id = '1'";
                $result = mysqli_query($conn, $qry);     
                $num_rows = mysqli_num_rows($result);
                $row = mysqli_fetch_assoc($result);
                        
                if ($num_rows > 0 ) {
                                                 
                $set['result'][] = array(
                        'about_us' => $row['about_us'],
                        'success'=>'1'
                );
    
                header( 'Content-Type: application/json; charset=utf-8' );
                $json = json_encode($set);
    
                echo $json;
                exit;
                } 
                else {
                    $set['result'][] = array('msg' => "Error", 'success'=>'0');
                echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
            mysqli_close($conn);
        }
        }
        
        public function getContactUs() {
                include "../include/config.php";

                $qry = "SELECT cus_support_email FROM tbl_configuration WHERE id = '1'";
                $result = mysqli_query($conn, $qry);     
                $num_rows = mysqli_num_rows($result);
                $row = mysqli_fetch_assoc($result);
                        
                if ($num_rows > 0 ) {
                                                 
                $set['result'][] = array(
                        'cus_support_email' => $row['cus_support_email'],
                        'success'=>'1'
                );
    
                header( 'Content-Type: application/json; charset=utf-8' );
                $json = json_encode($set);
    
                echo $json;
                exit;
                } 
                else {
                    $set['result'][] = array('msg' => "Error", 'success'=>'0');
                echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
            mysqli_close($conn);
        }
        }
        
        public function getFAQ() {
                include "../include/config.php";

                $qry = "SELECT faq FROM tbl_configuration WHERE id = '1'";
                $result = mysqli_query($conn, $qry);     
                $num_rows = mysqli_num_rows($result);
                $row = mysqli_fetch_assoc($result);
                        
                if ($num_rows > 0 ) {
                                                 
                $set['result'][] = array(
                        'faq' => $row['faq'],
                        'success'=>'1'
                );
    
                header( 'Content-Type: application/json; charset=utf-8' );
                $json = json_encode($set);
    
                echo $json;
                exit;
                } 
                else {
                    $set['result'][] = array('msg' => "Error", 'success'=>'0');
                echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
            mysqli_close($conn);
        }
        }
        
        public function getPrivacyPolicy() {
                include "../include/config.php";

                $qry = "SELECT privacy_policy FROM tbl_configuration WHERE id = '1'";
                $result = mysqli_query($conn, $qry);     
                $num_rows = mysqli_num_rows($result);
                $row = mysqli_fetch_assoc($result);
                        
                if ($num_rows > 0 ) {
                                                 
                $set['result'][] = array(
                        'privacy_policy' => $row['privacy_policy'],
                        'success'=>'1'
                );
    
                header( 'Content-Type: application/json; charset=utf-8' );
                $json = json_encode($set);
    
                echo $json;
                exit;
                } 
                else {
                    $set['result'][] = array('msg' => "Error", 'success'=>'0');
                echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
            mysqli_close($conn);
        }
        }
        
        public function getTermsCondition() {
                include "../include/config.php";

                $qry = "SELECT terms_condition FROM tbl_configuration WHERE id = '1'";
                $result = mysqli_query($conn, $qry);     
                $num_rows = mysqli_num_rows($result);
                $row = mysqli_fetch_assoc($result);
                        
                if ($num_rows > 0 ) {
                                                 
                $set['result'][] = array(
                        'terms_condition' => $row['terms_condition'],
                        'success'=>'1'
                );
    
                header( 'Content-Type: application/json; charset=utf-8' );
                $json = json_encode($set);
    
                echo $json;
                exit;
                } 
                else {
                    $set['result'][] = array('msg' => "Error", 'success'=>'0');
                echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
            mysqli_close($conn);
        }
        }
        
        public function getLegalPolicy() {
                include "../include/config.php";

                $qry = "SELECT legal_policy FROM tbl_configuration WHERE id = '1'";
                $result = mysqli_query($conn, $qry);     
                $num_rows = mysqli_num_rows($result);
                $row = mysqli_fetch_assoc($result);
                        
                if ($num_rows > 0 ) {
                                                 
                $set['result'][] = array(
                        'legal_policy' => $row['legal_policy'],
                        'success'=>'1'
                );
    
                header( 'Content-Type: application/json; charset=utf-8' );
                $json = json_encode($set);
    
                echo $json;
                exit;
                } 
                else {
                    $set['result'][] = array('msg' => "Error", 'success'=>'0');
                echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
            mysqli_close($conn);
        }
        }
        
        public function getHowToPlay() {
                include "../include/config.php";

                $qry = "SELECT how_to_play FROM tbl_configuration WHERE id = '1'";
                $result = mysqli_query($conn, $qry);     
                $num_rows = mysqli_num_rows($result);
                $row = mysqli_fetch_assoc($result);
                        
                if ($num_rows > 0 ) {
                                                 
                $set['result'][] = array(
                        'how_to_play' => $row['how_to_play'],
                        'success'=>'1'
                );
    
                header( 'Content-Type: application/json; charset=utf-8' );
                $json = json_encode($set);
    
                echo $json;
                exit;
                } 
                else {
                    $set['result'][] = array('msg' => "Error", 'success'=>'0');
                echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
            mysqli_close($conn);
        }
        }
        
        public function getRules() {
                include "../include/config.php";

                $qry = "SELECT rules FROM tbl_configuration WHERE id = '1'";
                $result = mysqli_query($conn, $qry);     
                $num_rows = mysqli_num_rows($result);
                $row = mysqli_fetch_assoc($result);
                        
                if ($num_rows > 0 ) {
                
                $set['result'][] = array(
                        'rules' => $row['rules'],
                        'success'=>'1'
                );
    
                header( 'Content-Type: application/json; charset=utf-8' );
                $json = json_encode($set);
    
                echo $json;
                exit;
                } 
                else {
                    $set['result'][] = array('msg' => "Error", 'success'=>'0');
                echo $val= str_replace('\\/', '/', json_encode($set, JSON_UNESCAPED_UNICODE));
            mysqli_close($conn);
        }
        }
        
    public function getCoinTypes() {
        include "../include/config.php";
        $res = mysqli_query($conn, "SELECT id, name, symbol, type, decimals, icon_url, network FROM tbl_coin_type WHERE is_active=1 ORDER BY sort_order ASC");
        $coins = [];
        while ($r = mysqli_fetch_assoc($res)) $coins[] = $r;
        $set['result'][] = ['coins' => $coins, 'success' => '1'];
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($set);
        exit;
    }

    public function getCoinBalance() {
        include "../include/config.php";
        if (!isset($_POST['user_id']) || !isset($_POST['purchase_key']) || $pur_code != $_POST['purchase_key']) {
            echo json_encode(['result' => [['msg' => 'Unauthorized', 'success' => '0']]]);
            exit;
        }
        $uid     = intval($_POST['user_id']);
        $coin_id = isset($_POST['coin_id']) ? intval($_POST['coin_id']) : 0;
        $where   = "w.user_id=$uid" . ($coin_id ? " AND w.coin_id=$coin_id" : '');
        $res = mysqli_query($conn, "SELECT w.balance, c.name, c.symbol, c.decimals, c.icon_url, c.id as coin_id
            FROM tbl_coin_wallet w
            JOIN tbl_coin_type c ON c.id=w.coin_id
            WHERE $where");
        $wallets = [];
        while ($r = mysqli_fetch_assoc($res)) $wallets[] = $r;
        $set['result'][] = ['wallets' => $wallets, 'success' => '1'];
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($set);
        exit;
    }

    public function getCoinTransactions() {
        include "../include/config.php";
        if (!isset($_POST['user_id']) || !isset($_POST['purchase_key']) || $pur_code != $_POST['purchase_key']) {
            echo json_encode(['result' => [['msg' => 'Unauthorized', 'success' => '0']]]);
            exit;
        }
        $uid     = intval($_POST['user_id']);
        $coin_id = isset($_POST['coin_id']) ? intval($_POST['coin_id']) : 0;
        $where   = "ct.user_id=$uid" . ($coin_id ? " AND ct.coin_id=$coin_id" : '');
        $res = mysqli_query($conn, "SELECT ct.id, ct.amount, ct.type, ct.reason, ct.ref_id, ct.status, ct.note, ct.date_created, c.symbol
            FROM tbl_coin_transaction ct
            JOIN tbl_coin_type c ON c.id=ct.coin_id
            WHERE $where ORDER BY ct.id DESC LIMIT 50");
        $txns = [];
        while ($r = mysqli_fetch_assoc($res)) $txns[] = $r;
        $set['result'][] = ['transactions' => $txns, 'success' => '1'];
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($set);
        exit;
    }


    public function postCoinJoinMatch() {
        include "../include/config.php";
        if (!isset($_POST['purchase_key']) || $pur_code != $_POST['purchase_key']) {
            echo json_encode(['result'=>[['msg'=>'Invalid access attempt!','success'=>'0']]]);
            exit;
        }
        if (!isset($_POST['match_id']) || !isset($_POST['user_id']) || !isset($_POST['coin_id'])) {
            echo json_encode(['result'=>[['msg'=>'Missing parameters','success'=>'0']]]);
            exit;
        }
        $match_id = intval($_POST['match_id']);
        $user_id  = intval($_POST['user_id']);
        $coin_id  = intval($_POST['coin_id']);
        $now      = date('Y-m-d H:i:s');

        mysqli_autocommit($conn, false);
        $flag = true;

        $matchRow = mysqli_fetch_assoc(mysqli_query($conn,
            "SELECT m.*, IFNULL(SUM(CASE WHEN p.parti1 IS NULL THEN 0 ELSE 1 END + CASE WHEN p.parti2 IS NULL THEN 0 ELSE 1 END),0) AS table_joined
             FROM tbl_match m LEFT JOIN tbl_participants p ON p.match_id=m.id
             WHERE m.id=$match_id GROUP BY m.id"));
        if (!$matchRow) {
            mysqli_rollback($conn);
            echo json_encode(['result'=>[['msg'=>'Match not found','success'=>'0']]]);
            exit;
        }
        $coin_fee    = floatval($matchRow['coin_fee']);
        $table_joined = intval($matchRow['table_joined']);
        if ($coin_fee <= 0) {
            mysqli_rollback($conn);
            echo json_encode(['result'=>[['msg'=>'This match does not support coin betting','success'=>'0']]]);
            exit;
        }
        $walRow = mysqli_fetch_assoc(mysqli_query($conn,
            "SELECT balance FROM tbl_coin_wallet WHERE user_id=$user_id AND coin_id=$coin_id"));
        $balance = $walRow ? floatval($walRow['balance']) : 0;
        if ($balance < $coin_fee) {
            mysqli_rollback($conn);
            echo json_encode(['result'=>[['msg'=>"Insufficient coin balance. You have $balance, need $coin_fee",'success'=>'0']]]);
            exit;
        }
        if (!mysqli_query($conn, "UPDATE tbl_coin_wallet SET balance=balance-$coin_fee, date_modified='$now' WHERE user_id=$user_id AND coin_id=$coin_id")) $flag=false;
        if (!mysqli_query($conn, "INSERT INTO tbl_coin_transaction (user_id,coin_id,amount,type,reason,ref_id,note,date_created) VALUES ($user_id,$coin_id,$coin_fee,'debit','match_fee','$match_id','Join match #$match_id','$now')")) $flag=false;
        if (!mysqli_query($conn, "INSERT INTO tbl_coin_betting_bank (match_id,coin_id,user_id,amount,status,date_created) VALUES ($match_id,$coin_id,$user_id,$coin_fee,'held','$now')")) $flag=false;
        if (!mysqli_query($conn, "UPDATE tbl_match SET coin_id=$coin_id WHERE id=$match_id")) $flag=false;
        if ($table_joined == 0) {
            if (!mysqli_query($conn, "UPDATE tbl_participants SET parti1=$user_id, parti1_join_time='$now' WHERE match_id=$match_id")) $flag=false;
            if (!mysqli_query($conn, "UPDATE tbl_match SET play_time=".(time()+180)." WHERE id=$match_id AND status=1")) $flag=false;
        } else {
            if (!mysqli_query($conn, "UPDATE tbl_participants SET parti2=$user_id, parti2_join_time='$now' WHERE match_id=$match_id")) $flag=false;
            if (!mysqli_query($conn, "UPDATE tbl_match SET status=2 WHERE id=$match_id AND status=1")) $flag=false;
        }
        if ($flag) {
            mysqli_commit($conn);
            echo json_encode(['result'=>[['msg'=>'Joined match successfully with coins','success'=>'1']]]);
        } else {
            mysqli_rollback($conn);
            echo json_encode(['result'=>[['msg'=>'Failed to join match: '.mysqli_error($conn),'success'=>'0']]]);
        }
        exit;
    }

    public function getCoinBettingBank() {
        include "../include/config.php";
        if (!isset($_POST['purchase_key']) || $pur_code != $_POST['purchase_key']) {
            echo json_encode(['result'=>[['msg'=>'Unauthorized','success'=>'0']]]);
            exit;
        }
        $user_id = intval($_POST['user_id'] ?? 0);
        $rows = [];
        $res = mysqli_query($conn, "SELECT b.*, c.symbol, c.name as coin_name
            FROM tbl_coin_betting_bank b
            JOIN tbl_coin_type c ON c.id=b.coin_id
            WHERE b.user_id=$user_id ORDER BY b.id DESC LIMIT 50");
        while ($r = mysqli_fetch_assoc($res)) $rows[] = $r;
        echo json_encode(['result'=>[['bets'=>$rows,'success'=>'1']]]);
        exit;
    }
}
?>