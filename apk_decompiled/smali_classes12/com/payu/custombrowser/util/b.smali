.class public interface abstract Lcom/payu/custombrowser/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final API_STATUS:Ljava/lang/String; = "api_status"

.field public static final APPROVE:I = 0x5

.field public static final AUTO_APPROVE:Ljava/lang/String; = "auto_approve"

.field public static final AUTO_SELECT_OTP:Ljava/lang/String; = "auto_select_otp"

.field public static final BACKWARD_JOURNEY_STATUS:Ljava/lang/String; = "backward_journey_status"

.field public static final BACK_BUTTON:Ljava/lang/String; = "backButton"

.field public static final BANK_CODE:Ljava/lang/String; = "bankcode"

.field public static final BROADCAST_FROM_SERVICE_UPDATE_UI:Ljava/lang/String; = "broadcast_from_service_update_ui"

.field public static final CB_CONFIG:Ljava/lang/String; = "cb_config"

.field public static final CB_DELIMITER:Ljava/lang/String; = "||"

.field public static final CB_ENABLE_OPTION:I = 0x1

.field public static final CB_VERSION:Ljava/lang/String; = "cbVersion"

.field public static final CHECK_CATCH_ALL_JS_ENABLE_JS_STATUS:I = 0x3

.field public static final CHECK_CB_ENABLE_JS_STATUS:I = 0x0

.field public static final CHECK_PAYMENT_NOT_CALLED:I = 0x3fd

.field public static final CHECK_PAYMENT_NOT_CALLED_MSG:Ljava/lang/String; = "Forget to call checkForPaymentAvailability"

.field public static final CHECK_REVIEW_ORDER_ENABLE_JS_STATUS:I = 0x2

.field public static final CHECK_SURE_PAY_ENABLE_JS_STATUS:I = 0x1

.field public static final CHROME_NOT_PRESENT:Ljava/lang/String; = "CHROME_NOT_PRESENT"

.field public static final CHROME_NOT_PRESENT_CODE:I = 0x67

.field public static final CURRENT_URL:Ljava/lang/String; = "currentUrl"

.field public static final DEEP_LINK_INTENT_URI:Ljava/lang/String; = "intent://"

.field public static final DEFAULT:I = 0x0

.field public static final DEFAULT_PAYMENT_URLS:Ljava/lang/String; = "*"

.field public static final DEFAULT_SURE_PAY_TTL:I = 0x1b7740

.field public static final DEVICE_NOT_SUPPORTED_OR:Ljava/lang/String; = "Device not supported or "

.field public static final DEVICE_NOT_SUPPORTED_OR_MODULE_NOT_IMPORTED:I = 0x3fe

.field public static final DISABLE:I = -0x1

.field public static final DISABLE_FAIL_MODE:I = 0x2

.field public static final DISABLE_SP_FOR:Ljava/lang/String; = "disable_sp_for"

.field public static final DISABLE_WARN_AND_FAIL_MODE:I = 0x3

.field public static final DISABLE_WARN_MODE:I = 0x1

.field public static final ENABLE:I = 0x0

.field public static final ENABLE_WARN_AND_FAIL_MODE:I = 0x0

.field public static final ENTER_MANUALLY:I = 0x4

.field public static final ERR_CONNECTION_RESET:Ljava/lang/String; = "net::ERR_CONNECTION_RESET"

.field public static final FAIL:Ljava/lang/String; = "fail"

.field public static final FAIL_MODE:I = 0x2

.field public static final FURL:Ljava/lang/String; = "furl"

.field public static final GOOD_NETWORK_NOTIFICATION_LAUNCHED:Ljava/lang/String; = "good_network_notification_launched"

.field public static final HTTP_TIMEOUT:I = 0x7530

.field public static final HTTP_URLENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final INTERNET_RESTORED_WINDOW_TTL:I = 0x1388

.field public static final IS_FORWARD_JOURNEY:Ljava/lang/String; = "is_forward_journey"

.field public static final IS_MISSING:Ljava/lang/String; = " is missing"

.field public static final IS_PAYMENT_OPTION_AVAILABLE:Ljava/lang/String; = "isPaymentOptionAvailable"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final LOADING:Ljava/lang/String; = "loading"

.field public static final MAIN_LAYOUT:Ljava/lang/String; = "mainLayout"

.field public static final MAXIMISED:I = 0x2

.field public static final MERCHANTKEY:Ljava/lang/String; = "merchantKey"

.field public static final MERCHANT_CHECKOUT_ACTIVITY:Ljava/lang/String; = "merchantCheckoutActivity"

.field public static final MERCHANT_KEY:Ljava/lang/String; = "merchantid"

.field public static final MERCHANT_SMS_PERMISSION:Ljava/lang/String; = "smsPermission"

.field public static final MERCHANT_URL_LOADING_TIMEOUT:I = 0x1388

.field public static final MINIMISED:I = 0x1

.field public static final MOBILE_TEST_FETCH_DATA_URL:Ljava/lang/String; = "https://mobiletest.payu.in/merchant/postservice?form=2"

.field public static final MOBILE_TEST_PAYMENT_URL:Ljava/lang/String; = "https://mobiletest.payu.in/_payment"

.field public static final MOBILE_TEST_PAYMENT_URL_SEAMLESS:Ljava/lang/String; = "https://mobiletest.payu.in/_seamless_payment"

.field public static final MSG_NO_INTERNET:Ljava/lang/String; = "No internet connection"

.field public static final MSG_OTP_Filled:Ljava/lang/String; = "OTP securely filled by PayU"

.field public static final NB:Ljava/lang/String; = "nb"

.field public static final NOTIFICATION_CHANNEL_DESCRIPTION:Ljava/lang/String; = "No Internet Notification"

.field public static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "payu_surepay_channel"

.field public static final NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "No Internet Notification"

.field public static final ON_BACK_APPROVE:Ljava/lang/String; = "onBackApprove"

.field public static final ON_BACK_BUTTON:Ljava/lang/String; = "onBackButton"

.field public static final ON_BACK_DISMISS:Ljava/lang/String; = "onBackDismiss"

.field public static final ON_PAYMENT_FAILURE:Ljava/lang/String; = "onPaymentFailure"

.field public static final ON_PAYMENT_SUCCESS:Ljava/lang/String; = "onPaymentSuccess"

.field public static final ON_PAYMENT_TERMINATED:Ljava/lang/String; = "onPaymentTerminate"

.field public static final ON_UPI_ERROR_RECEIVED:Ljava/lang/String; = "onUpiErrorReceived"

.field public static final ON_VPA_ENTERED:Ljava/lang/String; = "onVpaEntered"

.field public static final ORDER_DETAILS:Ljava/lang/String; = "order_details"

.field public static final OS_NOT_SUPPORTED:Ljava/lang/String; = "OS_NOT_SUPPORTED"

.field public static final OS_NOT_SUPPORTED_CODE:I = 0x65

.field public static final OTP:I = 0x6

.field public static final PASSWORD:I = 0x1

.field public static final PAYMENT_OPTION_FAILURE:Ljava/lang/String; = "onPaymentOptionFailure"

.field public static final PAYMENT_OPTION_INIT_FAILURE:Ljava/lang/String; = "onPaymentOptionInitialisationFailure"

.field public static final PAYMENT_OPTION_INIT_SUCCESS:Ljava/lang/String; = "onPaymentOptionInitialisationSuccess"

.field public static final PAYMENT_OPTION_SUCCESS:Ljava/lang/String; = "onPaymentOptionSuccess"

.field public static final PAYMENT_OPTION_URL_DEV:Ljava/lang/String; = "https://mobiletest.payu.in/_payment_options"

.field public static final PAYMENT_OPTION_URL_PROD:Ljava/lang/String; = "https://secure.payu.in/_payment_options"

.field public static final PAYMENT_URL:Ljava/lang/String; = "https://secure.payu.in/_payment"

.field public static final PAYUID:Ljava/lang/String; = "PAYUID"

.field public static final PAYU_DOMAIN:Ljava/lang/String;

.field public static final PAYU_DOMAIN_PROD:Ljava/lang/String; = "https://secure.payu.in"

.field public static final PAYU_DOMAIN_TEST:Ljava/lang/String; = "https://mobiletest.payu.in"

.field public static final PAYU_PAYTXN:Ljava/lang/String; = "paytxn"

.field public static final PAYU_RESPONSE:Ljava/lang/String; = "payu_response"

.field public static final PIN:I = 0x3

.field public static final PLAY_STORE_MARKET_URI:Ljava/lang/String; = "market://"

.field public static final PLAY_STORE_URL:Ljava/lang/String; = "https://play.google.com"

.field public static final POST_DATA:Ljava/lang/String; = "postData"

.field public static final POST_DATA_OR_HTML_DATA_NOT_PRESENT:Ljava/lang/String; = "POST_DATA_OR_HTML_DATA_NOT_PRESENT"

.field public static final POST_DATA_OR_HTML_DATA_NOT_PRESENT_CODE:I = 0x68

.field public static final POST_TYPE:Ljava/lang/String; = "post_type"

.field public static final PRODUCTION_FETCH_DATA_URL:Ljava/lang/String; = "https://info.payu.in/merchant/postservice.php?form=2"

.field public static final PRODUCTION_PAYMENT_URL:Ljava/lang/String; = "https://secure.payu.in/_payment"

.field public static final PRODUCTION_PAYMENT_URL_SEAMLESS:Ljava/lang/String; = "https://secure.payu.in/_seamless_payment"

.field public static final PRODUCTION_URL:Ljava/lang/String; = "https://cbjs.payu.in/js/sdk_js/v3/"

.field public static final PROGRESS_PERCENT:Ljava/lang/String; = "progress_percent"

.field public static final REGENERATE_OTP:I = 0x2

.field public static final RESPONSE:Ljava/lang/String; = "response"

.field public static final RESPONSE_BACKWARD:Ljava/lang/String; = "_response"

.field public static final RESPONSE_NOT_PRESENT:Ljava/lang/String; = "RESPONSE_NOT_PRESENT"

.field public static final RESPONSE_NOT_PRESENT_CODE:I = 0x66

.field public static final S2SPAYUID:Ljava/lang/String; = "cookiePayuId"

.field public static final S2SREPLAYURL:Ljava/lang/String; = "replayUrl"

.field public static final S2S_RETRY_URL:Ljava/lang/String; = "s2sRetryUrl"

.field public static final SDK_DETAILS:Ljava/lang/String; = "sdkname"

.field public static final SENDER:Ljava/lang/String; = "sender"

.field public static final SHOW_CUSTOMROWSER:Ljava/lang/String; = "showCustom"

.field public static final SMS_OTP:I = 0x7

.field public static final SNOOZE_COUNT:Ljava/lang/String; = "snoozeCount"

.field public static final SNOOZE_DEFAULT_URL_LOAD_PERCENTAGE:I = 0x1

.field public static final SNOOZE_DEFAULT_URL_LOAD_TIME_OUT:I = 0x1b7740

.field public static final SNOOZE_ENABLED:Ljava/lang/String; = "snoozeEnabled"

.field public static final SNOOZE_IMAGE_COLLECTIONS:[Ljava/lang/String;

.field public static final SNOOZE_IMAGE_DOWNLOAD_END_POINT:Ljava/lang/String;

.field public static final SNOOZE_IMAGE_DOWNLOAD_TIME_OUT:Ljava/lang/String; = "sp_image_download_time_out"

.field public static final SNOOZE_NOTIFICATION_ID:I

.field public static final SNOOZE_SERVICE:Ljava/lang/String; = "snoozeService"

.field public static final SNOOZE_SERVICE_DEAD:Ljava/lang/String; = "snoozeServiceDead"

.field public static final SNOOZE_SERVICE_STATUS:Ljava/lang/String; = "snoozeServiceStatus"

.field public static final SNOOZE_SHARED_PREF:Ljava/lang/String; = "com.payu.custombrowser.snoozepref"

.field public static final STATE_DESTROYED:I = 0x3

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_RESUMED:I = 0x1

.field public static final STR_SNOOZE_MODE_FAIL:Ljava/lang/String; = "Fail"

.field public static final STR_SNOOZE_MODE_WARN:Ljava/lang/String; = "Warn"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field public static final SUREPAY_S2S:Ljava/lang/String; = "surepay_s2s"

.field public static final SURE_PAY_ANALYTICS:Ljava/lang/String; = "SURE_PAY_ANALYTICS"

.field public static final SURL:Ljava/lang/String; = "surl"

.field public static final TEST_PAYMENT_URL:Ljava/lang/String; = "https://mobiletest.payu.in/_payment"

.field public static final TEST_URL:Ljava/lang/String; = "https://cbstatic.payu.in/js/sdk_js/v3/"

.field public static final TIME_OUT:Ljava/lang/String; = "time_out"

.field public static final TRANSACTION_STATUS_NOTIFICATION_ID:I

.field public static final TRANSACTION_STATUS_SUCCESS:Ljava/lang/String; = "1"

.field public static final TRANS_LAYOUT:Ljava/lang/String; = "tranLayout"

.field public static final TXNID:Ljava/lang/String; = "txnId"

.field public static final TXN_ID:Ljava/lang/String; = "txnid"

.field public static final TXN_TYPE:Ljava/lang/String; = "txnType"

.field public static final UNDEFINED:Ljava/lang/String; = "undefined"

.field public static final UPI_SDK_PACKAGE:Ljava/lang/String; = "com.payu.upisdk.Upi"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final VALUE:Ljava/lang/String; = "value"

.field public static final VERIFICATION_MSG_RECEIVED:Ljava/lang/String; = "verificationMsgReceived"

.field public static final VERIFY_ADDON_PARAMS:Ljava/lang/String; = "verify_add_param"

.field public static final VERIFY_HTTP_TIMEOUT:I = 0x1d4c0

.field public static final VIEWPORTWIDE:Ljava/lang/String; = "viewPortWide"

.field public static final WARN:Ljava/lang/String; = "warn"

.field public static final WARN_MODE:I = 0x1

.field public static final WEBVIEW:Ljava/lang/String; = "webView"

.field public static final WEBVIEW_VERSION:Ljava/lang/String; = "webview_version"

.field public static final rupeeURL:Ljava/lang/String; = "https://mwsrec.npci.org.in/MWS/Scripts/MerchantScript_v1.0.js"

.field public static final rupeeURL1:Ljava/lang/String; = "https://swasrec2.npci.org.in"

.field public static final rupeeURL2:Ljava/lang/String; = "https://swasrec.npci.org.in"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    sget-boolean v0, Lcom/payu/custombrowser/Bank;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "https://mobiletest.payu.in"

    goto :goto_0

    :cond_0
    const-string v0, "https://secure.payu.in"

    :goto_0
    sput-object v0, Lcom/payu/custombrowser/util/b;->PAYU_DOMAIN:Ljava/lang/String;

    .line 44
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40c1940000000000L    # 9000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/payu/custombrowser/util/b;->SNOOZE_NOTIFICATION_ID:I

    .line 47
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double v0, v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/payu/custombrowser/util/b;->TRANSACTION_STATUS_NOTIFICATION_ID:I

    .line 126
    sget-boolean v0, Lcom/payu/custombrowser/Bank;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "https://mobiletest.payu.in/images/speed_test/"

    goto :goto_1

    :cond_1
    const-string v0, "https://static.payu.in/images/speed_test/"

    :goto_1
    sput-object v0, Lcom/payu/custombrowser/util/b;->SNOOZE_IMAGE_DOWNLOAD_END_POINT:Ljava/lang/String;

    .line 128
    const-string v0, "coffie_128.jpg"

    const-string v1, "dogs_128.jpg"

    const-string v2, "pasta_128.jpg"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payu/custombrowser/util/b;->SNOOZE_IMAGE_COLLECTIONS:[Ljava/lang/String;

    return-void
.end method
