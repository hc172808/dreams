.class public Lcom/paytm/pgsdk/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CALLBACK_URL:Ljava/lang/String; = "CALLBACK_URL"

.field public static final CHANNEL_ID:Ljava/lang/String; = "CHANNEL_ID"

.field public static final CHECKSUMHASH:Ljava/lang/String; = "CHECKSUMHASH"

.field public static final CUST_ID:Ljava/lang/String; = "CUST_ID"

.field public static final EVENT_ACTION_APP_INVOKE_BRIDGE:Ljava/lang/String; = "app-invoke-bridge"

.field public static final EVENT_ACTION_ERROR:Ljava/lang/String; = "Error"

.field public static final EVENT_ACTION_PAYTMH5_LOAD:Ljava/lang/String; = "Paytm_H5_Load"

.field public static final EVENT_ACTION_PAYTM_APP_EXIST:Ljava/lang/String; = "Paytm_App_exists"

.field public static final EVENT_ACTION_PAYTM_APP_INVOKE:Ljava/lang/String; = "Paytm_App_invoke"

.field public static final EVENT_ACTION_RESPONSE_BACK:Ljava/lang/String; = "Response_Back"

.field public static final EVENT_ACTION_SDK_INITIALIZED:Ljava/lang/String; = "SDK_initialized"

.field public static final EVENT_ACTION_WEB_VIEW_BRIDGE:Ljava/lang/String; = "webview-bridge"

.field public static final EVENT_LABEL_BRIDGE:Ljava/lang/String; = "bridgeName"

.field public static final EVENT_LABEL_FAIL:Ljava/lang/String; = "fail"

.field public static final EVENT_LABEL_FALSE:Ljava/lang/String; = "false"

.field public static final EVENT_LABEL_KEY_ERROR_DESCRIPTION:Ljava/lang/String; = "errorDescription"

.field public static final EVENT_LABEL_KEY_EXIST:Ljava/lang/String; = "exist"

.field public static final EVENT_LABEL_KEY_MID:Ljava/lang/String; = "mid"

.field public static final EVENT_LABEL_KEY_ORDER_ID:Ljava/lang/String; = "orderId"

.field public static final EVENT_LABEL_KEY_STATUS:Ljava/lang/String; = "status"

.field public static final EVENT_LABEL_SUCCESS:Ljava/lang/String; = "success"

.field public static final EVENT_LABEL_TRUE:Ljava/lang/String; = "true"

.field public static final EVENT_TYPE_ALL_IN_ONE:Ljava/lang/String; = "AIO_SDK_PG"

.field public static final FLOW_TYPE_APP_INVOKE:Ljava/lang/String; = "AppInvoke"

.field public static final FLOW_TYPE_REDIRECTION:Ljava/lang/String; = "Redirection"

.field public static final INDUSTRY_TYPE_ID:Ljava/lang/String; = "INDUSTRY_TYPE_ID"

.field public static final IS_ENABLE_ASSIST:Ljava/lang/String; = "IS_ENABLE_ASSIST"

.field public static final MID:Ljava/lang/String; = "MID"

.field public static final ORDER_ID:Ljava/lang/String; = "ORDER_ID"

.field public static RESPONSE:Ljava/lang/String; = null

.field public static final TXN_AMOUNT:Ljava/lang/String; = "TXN_AMOUNT"

.field public static final TXN_TOKEN:Ljava/lang/String; = "TXN_TOKEN"

.field public static final WEBSITE:Ljava/lang/String; = "WEBSITE"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "response"

    sput-object v0, Lcom/paytm/pgsdk/Constants;->RESPONSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
