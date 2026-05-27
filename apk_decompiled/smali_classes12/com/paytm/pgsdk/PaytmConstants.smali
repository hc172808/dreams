.class public Lcom/paytm/pgsdk/PaytmConstants;
.super Ljava/lang/Object;
.source "PaytmConstants.java"


# static fields
.field public static final BANK_NAME:Ljava/lang/String; = "BANKNAME"

.field public static final BANK_TRANSACTION_ID:Ljava/lang/String; = "BANKTXNID"

.field public static final CHECKSUM:Ljava/lang/String; = "CHECKSUM"

.field protected static final EMPTY:Ljava/lang/String; = ""

.field public static final GATEWAY_NAME:Ljava/lang/String; = "GATEWAYNAME"

.field protected static final HIDE_HEADER:Ljava/lang/String; = "HIDE_HEADER"

.field public static final IS_CHECKSUM_VALID:Ljava/lang/String; = "IS_CHECKSUM_VALID"

.field public static final MERCHANT_ID:Ljava/lang/String; = "MID"

.field public static final ORDER_ID:Ljava/lang/String; = "ORDERID"

.field protected static final PARAMETERS:Ljava/lang/String; = "Parameters"

.field public static final PARAMETERS_STRING:Ljava/lang/String; = "Parameters_String"

.field public static final PAYMENT_MODE:Ljava/lang/String; = "PAYMENTMODE"

.field public static Paytm_Order:Ljava/lang/String; = null

.field public static final REFUND_AMOUNT:Ljava/lang/String; = "REFUNDAMT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPCODE"

.field public static final RESPONSE_MSG:Ljava/lang/String; = "RESPMSG"

.field protected static final SEND_ALL_CHECKSUM_RESPONSE_PARAMETERS_TO_PG_SERVER:Ljava/lang/String; = "SEND_ALL_CHECKSUM_RESPONSE_PARAMETERS_TO_PG_SERVER"

.field public static final STATUS:Ljava/lang/String; = "STATUS"

.field public static final TRANSACTION_AMOUNT:Ljava/lang/String; = "TXNAMOUNT"

.field public static final TRANSACTION_DATE:Ljava/lang/String; = "TXNDATE"

.field public static final TRANSACTION_ID:Ljava/lang/String; = "TXNID"

.field public static final TRANSACTION_TYPE:Ljava/lang/String; = "TXNTYPE"

.field public static URL_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    const-string v0, "Url_String"

    sput-object v0, Lcom/paytm/pgsdk/PaytmConstants;->URL_STRING:Ljava/lang/String;

    .line 112
    const-string v0, "Paytm_Order"

    sput-object v0, Lcom/paytm/pgsdk/PaytmConstants;->Paytm_Order:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
