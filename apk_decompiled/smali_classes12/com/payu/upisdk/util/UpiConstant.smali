.class public interface abstract Lcom/payu/upisdk/util/UpiConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/upisdk/util/UpiConstant$a;
    }
.end annotation


# static fields
.field public static final ADDRESS1:Ljava/lang/String; = "address1"

.field public static final ADDRESS2:Ljava/lang/String; = "address2"

.field public static final AMOUNT:Ljava/lang/String; = "amount"

.field public static final BANK_CODE:Ljava/lang/String; = "bankcode"

.field public static final CASH:Ljava/lang/String; = "CASH"

.field public static final CB_CONFIG:Ljava/lang/String; = "cb_config"

.field public static final CB_VERSION_NAME:Ljava/lang/String; = "cb_version_name"

.field public static final CHECK_PAYMENT_NOT_CALLED:I = 0x3fd

.field public static final CHECK_PAYMENT_NOT_CALLED_MSG:Ljava/lang/String; = "Forget to call checkForPaymentAvailability"

.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CODURL:Ljava/lang/String; = "codurl"

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static final CUSTOM_NOTE:Ljava/lang/String; = "custom_note"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final DEFAULT_VALUE:Ljava/lang/String; = "default"

.field public static final DEVICE_NOT_SUPPORTED_OR_MODULE_NOT_IMPORTED:I = 0x401

.field public static final DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field public static final DROP_CATEGORY:Ljava/lang/String; = "drop_category"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final ENFORCE_PAYMETHOD:Ljava/lang/String; = "enforce_paymethod"

.field public static final ERROR:Ljava/lang/String; = "ERROR"

.field public static final FIRST_NAME:Ljava/lang/String; = "firstname"

.field public static final FURL:Ljava/lang/String; = "furl"

.field public static final GPAY_PACKAGE:Ljava/lang/String; = "com.payu.gpay.GPay"

.field public static final HASH:Ljava/lang/String; = "hash"

.field public static final INITIATE:Ljava/lang/String; = "initiate"

.field public static final INTENT:Ljava/lang/String; = "INTENT"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final LASTNAME:Ljava/lang/String; = "lastname"

.field public static final LAUNCHED:Ljava/lang/String; = "_launched"

.field public static final MAX_VPA_SIZE:I = 0x32

.field public static final MERCHANT_KEY:Ljava/lang/String; = "merchantid"

.field public static final MERCHANT_POST_SERVICE_FORM:Ljava/lang/String; = "/merchant/postservice.php?form=2"

.field public static final MERCHANT_RESPONSE_TIMEOUT:Ljava/lang/String; = "merchantResponseTimeout"

.field public static final MERCHANT_URL_LOADING_TIMEOUT:I = 0x2710

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final NOTE_CATEGORY:Ljava/lang/String; = "note_category"

.field public static final NOT_PROVIDED_COMPLETE_INFO:I = 0x3fe

.field public static final OFFER_KEY:Ljava/lang/String; = "offer_key"

.field public static final ON_GPAY_ERROR_RECEIVED:Ljava/lang/String; = "onGpayErrorReceived"

.field public static final PAYMENT_DEFAULT_PARAMS:Ljava/lang/String; = "payment_default_params"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PAYMENT_FAILURE:Ljava/lang/String; = "onPaymentFailure"

.field public static final PAYMENT_INIT_FAILURE:Ljava/lang/String; = "onPaymentInitialisationFailure"

.field public static final PAYMENT_INIT_SUCCESS:Ljava/lang/String; = "onPaymentInitialisationSuccess"

.field public static final PAYMENT_OPTION:Ljava/lang/String; = "payment_option"

.field public static final PAYMENT_OPTION_FAILURE:Ljava/lang/String; = "onPaymentOptionFailure"

.field public static final PAYMENT_OPTION_INIT_FAILURE:Ljava/lang/String; = "onPaymentOptionInitialisationFailure"

.field public static final PAYMENT_OPTION_INIT_SUCCESS:Ljava/lang/String; = "onPaymentOptionInitialisationSuccess"

.field public static final PAYMENT_OPTION_SUCCESS:Ljava/lang/String; = "onPaymentOptionSuccess"

.field public static final PAYMENT_PARAMS_ARRAY:[Ljava/lang/String;

.field public static final PAYMENT_PARAMS_UPI_SDK:Ljava/lang/String; = "paymentparamsupisdk"

.field public static final PAYMENT_SUCCESS:Ljava/lang/String; = "onPaymentSuccess"

.field public static final PAYMENT_TYPE:Ljava/lang/String; = "payment_type"

.field public static final PAYMENT_URL:Ljava/lang/String; = "https://secure.payu.in"

.field public static final PAYU:Ljava/lang/String; = "PayU"

.field public static final PAYUID:Ljava/lang/String; = "PAYUID"

.field public static final PAYU_IMEI:Ljava/lang/String; = "imei"

.field public static final PAYU_POST_URL:Ljava/lang/String; = "payu_post_url"

.field public static final PAYU_UDID:Ljava/lang/String; = "udid"

.field public static final PAYU_WEB_SERVICE_URL:Ljava/lang/String; = "payu_web_service_url"

.field public static final PG:Ljava/lang/String; = "pg"

.field public static final PG_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONE:Ljava/lang/String; = "phone"

.field public static final PHONEPE:Ljava/lang/String; = "PPINTENT"

.field public static final PHONEPE_INTENT:Ljava/lang/String; = "PPINTENT"

.field public static final PHONEPE_PACKAGE:Ljava/lang/String; = "com.payu.phonepe.PhonePe"

.field public static final PHONEPE_S:Ljava/lang/String; = "ppintent"

.field public static final POST_DATA:Ljava/lang/String; = "postData"

.field public static final POST_DATA_UPI_COLLECT_GENERIC:Ljava/lang/String; = "postdata_collect"

.field public static final PRODUCTION_FETCH_DATA_URL:Ljava/lang/String; = "https://info.payu.in"

.field public static final PRODUCT_INFO:Ljava/lang/String; = "productinfo"

.field public static final PUSH_ENABLED:Ljava/lang/String; = "push_enabled"

.field public static final SAMPAY:Ljava/lang/String; = "SAMPAY"

.field public static final SAMPAY_S:Ljava/lang/String; = "sampay"

.field public static final SAMSANGPAY_PACKAGE:Ljava/lang/String; = "com.payu.samsungpay.PayUSamsungPay"

.field public static final SAMSUNGPAY_FAILURE:Ljava/lang/String; = "onSamsungPayFailure"

.field public static final SAMSUNGPAY_INIT_FAILURE:Ljava/lang/String; = "onSamsungPayInitialisationFailure"

.field public static final SAMSUNGPAY_INIT_SUCCESS:Ljava/lang/String; = "onSamsungPayInitialisationSuccess"

.field public static final SAMSUNGPAY_SUCCESS:Ljava/lang/String; = "onSamsungPaySuccess"

.field public static final SAMSUNG_PAY:Ljava/lang/String; = "SAMPAY"

.field public static final SDK_VERSION_NAME:Ljava/lang/String; = "upi_sdk_version"

.field public static final SHIPPING_ADDRESS1:Ljava/lang/String; = "shipping_address1"

.field public static final SHIPPING_ADDRESS2:Ljava/lang/String; = "shipping_address2"

.field public static final SHIPPING_CITY:Ljava/lang/String; = "shipping_city"

.field public static final SHIPPING_CONTRY:Ljava/lang/String; = "shipping_county"

.field public static final SHIPPING_FIRSTNAME:Ljava/lang/String; = "shipping_firstname"

.field public static final SHIPPING_LASTNAME:Ljava/lang/String; = "shipping_lastname"

.field public static final SHIPPING_PHONE:Ljava/lang/String; = "shipping_phone"

.field public static final SHIPPING_STATE:Ljava/lang/String; = "shipping_state"

.field public static final SHIPPING_ZIPCODE:Ljava/lang/String; = "shipping_zipcode"

.field public static final SOCKET:Ljava/lang/String; = "socket"

.field public static final SOCKET_NOT_CREATED:I = 0x3eb

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final SURL:Ljava/lang/String; = "surl"

.field public static final TEZ:Ljava/lang/String; = "TEZ"

.field public static final TEZ_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.nbu.paisa.user"

.field public static final TEZ_S:Ljava/lang/String; = "tez"

.field public static final TXNID:Ljava/lang/String; = "txnid"

.field public static final UDF1:Ljava/lang/String; = "udf1"

.field public static final UDF2:Ljava/lang/String; = "udf2"

.field public static final UDF3:Ljava/lang/String; = "udf3"

.field public static final UDF4:Ljava/lang/String; = "udf4"

.field public static final UDF5:Ljava/lang/String; = "udf5"

.field public static final UPI:Ljava/lang/String; = "upi"

.field public static final UPI_COLLECT:Ljava/lang/String; = "upi"

.field public static final UPI_COLLECT_GENERIC:Ljava/lang/String; = "upi_generic"

.field public static final UPI_CONFIG:Ljava/lang/String; = "upiConfig"

.field public static final UPI_INTENT:Ljava/lang/String; = "INTENT"

.field public static final UPI_INTENT_S:Ljava/lang/String; = "intent"

.field public static final UPI_SOCKET:Ljava/lang/String; = "upi_socket"

.field public static final USER_CREDENTIALS:Ljava/lang/String; = "user_credentials"

.field public static final VERIFY:Ljava/lang/String; = "VERIFY"

.field public static final VERIFY_TYPE:Ljava/lang/String; = "verify_type"

.field public static final VPA:Ljava/lang/String; = "vpa"

.field public static final WEB_NOT_SUPPORTED:I = 0x400

.field public static final ZIPCODE:Ljava/lang/String; = "zipcode"

.field public static final _PAYMENT:Ljava/lang/String; = "/_payment"

.field public static final init:Lcom/payu/upisdk/util/UpiConstant$a;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/payu/upisdk/util/UpiConstant;->PG_SET:Ljava/util/Set;

    .line 137
    const-string v1, "key"

    const-string v2, "txnid"

    const-string v3, "amount"

    const-string v4, "productinfo"

    const-string v5, "firstname"

    const-string v6, "email"

    const-string v7, "surl"

    const-string v8, "furl"

    const-string v9, "hash"

    const-string v10, "udf1"

    const-string v11, "udf2"

    const-string v12, "udf3"

    const-string v13, "udf4"

    const-string v14, "udf5"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payu/upisdk/util/UpiConstant;->PAYMENT_PARAMS_ARRAY:[Ljava/lang/String;

    .line 145
    new-instance v0, Lcom/payu/upisdk/util/UpiConstant$a;

    invoke-direct {v0}, Lcom/payu/upisdk/util/UpiConstant$a;-><init>()V

    sput-object v0, Lcom/payu/upisdk/util/UpiConstant;->init:Lcom/payu/upisdk/util/UpiConstant$a;

    return-void
.end method
