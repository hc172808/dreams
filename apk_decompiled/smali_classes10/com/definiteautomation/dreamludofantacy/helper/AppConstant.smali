.class public Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;
.super Ljava/lang/Object;
.source "AppConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/definiteautomation/dreamludofantacy/helper/AppConstant$PicModes;,
        Lcom/definiteautomation/dreamludofantacy/helper/AppConstant$IntentExtras;
    }
.end annotation


# static fields
.field public static final API_CONNECTION_TIMEOUT:J = 0x4b1L

.field public static final API_READ_TIMEOUT:J = 0x385L

.field public static final API_URL:Ljava/lang/String; = "https://dreamludo.definiteautomation.com/"

.field public static final AUTHORIZATION_KEY:Ljava/lang/String; = "AAAALwiwBIs:APA91bGSaV4e4YZ2JOVeN7imRkwvXogL4c3FZUv0Ukl8CL3QwhUweLOpfZY5dHnOCHalkyri8xsU_uAu5Bj_LXxcpfMj3NebPSwhkCznxstbCorIFek1ZaQ2bMJiMeMtS5K7CgzYDYGD"

.field public static COUNTRY_CODE:Ljava/lang/String; = null

.field public static CURRENCY_CODE:Ljava/lang/String; = null

.field public static CURRENCY_SIGN:Ljava/lang/String; = null

.field private static final FCM_URL:Ljava/lang/String; = "https://fcm.googleapis.com/"

.field public static final GAME_NAME:Ljava/lang/String; = "Ludo King is Not Installed"

.field public static HOW_TO_PLAY:Ljava/lang/String; = null

.field public static MAINTENANCE_MODE:I = 0x0

.field public static MAX_DEPOSIT_LIMIT:I = 0x0

.field public static MAX_WITHDRAW_LIMIT:I = 0x0

.field public static MERCHANT_ID:Ljava/lang/String; = null

.field public static MERCHANT_KEY:Ljava/lang/String; = null

.field public static MIN_DEPOSIT_LIMIT:I = 0x0

.field public static MIN_WITHDRAW_LIMIT:I = 0x0

.field public static MODE_OF_PAYMENT:I = 0x0

.field public static M_ID:Ljava/lang/String; = null

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.ludo.king"

.field public static final PURCHASE_KEY:Ljava/lang/String; = "1234567890"

.field public static final PUSH_NOTIFICATION:Ljava/lang/String; = "pushNotification"

.field public static REFER_PERCENTAGE:I = 0x0

.field public static final SERVER_MAIN_FOLDER:Ljava/lang/String; = ""

.field public static SUPPORT_EMAIL:Ljava/lang/String; = null

.field public static final TOPIC_GLOBAL:Ljava/lang/String; = "Global"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const/16 v0, 0x64

    sput v0, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MIN_WITHDRAW_LIMIT:I

    .line 17
    const/16 v0, 0x1388

    sput v0, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MAX_WITHDRAW_LIMIT:I

    .line 20
    const/16 v1, 0x32

    sput v1, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MIN_DEPOSIT_LIMIT:I

    .line 21
    sput v0, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MAX_DEPOSIT_LIMIT:I

    .line 24
    const-string v0, "xxxxx@gmail.com"

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->SUPPORT_EMAIL:Ljava/lang/String;

    .line 25
    const-string v0, "https://google.com"

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->HOW_TO_PLAY:Ljava/lang/String;

    .line 28
    const-string v0, "XXXXXXXXXXXXXXXXXXX"

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->M_ID:Ljava/lang/String;

    .line 31
    const-string v0, "XXXXXXXXXXXX"

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MERCHANT_ID:Ljava/lang/String;

    .line 32
    const-string v0, "XXXXXXXXXXX"

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MERCHANT_KEY:Ljava/lang/String;

    .line 35
    const-string v0, "+91"

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->COUNTRY_CODE:Ljava/lang/String;

    .line 36
    const-string v0, "INR"

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_CODE:Ljava/lang/String;

    .line 37
    const-string v0, "\u20b9"

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    sput v0, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->REFER_PERCENTAGE:I

    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MAINTENANCE_MODE:I

    .line 42
    sput v0, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MODE_OF_PAYMENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFCMService()Lcom/definiteautomation/dreamludofantacy/remote/APIService;
    .locals 2

    .line 63
    const-string v0, "https://fcm.googleapis.com/"

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/remote/FCMRetrofitClient;->getClient(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/definiteautomation/dreamludofantacy/remote/APIService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/remote/APIService;

    return-object v0
.end method
