.class public Lcom/payumoney/sdkui/ui/utils/PPConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ARG_ADD_MONEY_AMOUNT:Ljava/lang/String; = "add_money_amount"

.field public static final ARG_BANK_LIST_TYPE:Ljava/lang/String; = "bank_list_type"

.field public static final ARG_IS_SPLIT_PAY:Ljava/lang/String; = "is_split_pay"

.field public static final ARG_NET_BANKING_LIST:Ljava/lang/String; = "net_banking_list"

.field public static final ARG_TRANSACTION_TYPE:Ljava/lang/String; = "transaction_type"

.field public static final DEFAULT_BANK_NAME:Ljava/lang/String; = "CID000"

.field public static ERROR_INTERNAL_SERVER_ERROR:Ljava/lang/String; = null

.field public static ERROR_SOMETHING_WENT_WRONG:Ljava/lang/String; = null

.field public static MAX_WALLET_AMOUNT_RECHARGE:D = 0.0

.field public static final PAYU_MONEY_FLOW:I = 0x3

.field public static final SCREEN_ADD_CARD:I = 0x1

.field public static final SCREEN_ADD_MONEY:I = 0x4

.field public static final SCREEN_BANK_LIST:I = 0x3

.field public static final SCREEN_EMI_ADD_CARD:I = 0xd

.field public static final SCREEN_EMI_TENURES:I = 0xe

.field public static final SCREEN_GET_CVV:I = 0xb

.field public static final SCREEN_PAYU_MONEY:I = 0xc

.field public static final SCREEN_RESULT:I = 0x2

.field public static final SCREEN_SHOPPING:I = 0x0

.field public static final SCREEN_VALIDATE_WALLET:I = 0x6

.field public static final SCREEN_WALLET:I = 0x5

.field public static final TERMS_COND_URL:Ljava/lang/String; = "http://www.citruspay.com/citrusbanktnc-lite.html"

.field public static final TRANS_QUICK_PAY:Ljava/lang/String; = "trans_quick_pay"

.field public static final ZERO_AMOUNT:Ljava/lang/String; = "0"

.field public static actionBarItemColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const/high16 v0, -0x1000000

    sput v0, Lcom/payumoney/sdkui/ui/utils/PPConstants;->actionBarItemColor:I

    .line 49
    const-wide v0, 0x40b3880000000000L    # 5000.0

    sput-wide v0, Lcom/payumoney/sdkui/ui/utils/PPConstants;->MAX_WALLET_AMOUNT_RECHARGE:D

    .line 50
    const-string v0, "Internal Server Error Occurred."

    sput-object v0, Lcom/payumoney/sdkui/ui/utils/PPConstants;->ERROR_INTERNAL_SERVER_ERROR:Ljava/lang/String;

    .line 51
    const-string v0, "OOPS! Something Went Wrong!"

    sput-object v0, Lcom/payumoney/sdkui/ui/utils/PPConstants;->ERROR_SOMETHING_WENT_WRONG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
