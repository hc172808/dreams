.class public Lcom/payumoney/sdkui/ui/utils/PayUmoneyFlowManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ARG_RESULT:Ljava/lang/String; = "result"

.field public static INTENT_EXTRA_TRANSACTION_RESPONSE:Ljava/lang/String; = null

.field public static final KEY_AMOUNT:Ljava/lang/String; = "key_amount"

.field public static final KEY_EMAIL:Ljava/lang/String; = "key_email"

.field public static final KEY_FLOW:Ljava/lang/String; = "key_flow"

.field public static final KEY_MOBILE:Ljava/lang/String; = "key_mobile"

.field public static final KEY_STYLE:Ljava/lang/String; = "key_style"

.field public static final OVERRIDE_RESULT_SCREEN:Ljava/lang/String; = "override_result_screen"

.field public static REQUEST_CODE_PAYMENT:I

.field public static REQ_CODE_SET_ORDER_ITEMS:I

.field public static theme:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/16 v0, 0x2710

    sput v0, Lcom/payumoney/sdkui/ui/utils/PayUmoneyFlowManager;->REQUEST_CODE_PAYMENT:I

    .line 30
    const/16 v0, 0x270f

    sput v0, Lcom/payumoney/sdkui/ui/utils/PayUmoneyFlowManager;->REQ_CODE_SET_ORDER_ITEMS:I

    .line 31
    const-string v0, "INTENT_EXTRA_TRANSACTION_RESPONSE"

    sput-object v0, Lcom/payumoney/sdkui/ui/utils/PayUmoneyFlowManager;->INTENT_EXTRA_TRANSACTION_RESPONSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntentToStartPayUMoneyFlow(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;Landroid/app/Activity;IZ)Landroid/content/Intent;
    .locals 3
    .param p0, "paymentParam"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "style"    # I
    .param p3, "isOverrideResultScreen"    # Z

    .line 36
    const-string v0, "1.6.0"

    sput-object v0, Lcom/payumoney/core/utils/SdkHelper;->pnpVersion:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/payumoney/core/PayUmoneySDK;->init(Landroid/content/Context;Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;)Lcom/payumoney/core/PayUmoneySDK;

    .line 38
    invoke-static {}, Lcom/payumoney/graphics/AssetDownloadManager;->getInstance()Lcom/payumoney/graphics/AssetDownloadManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PLUG_N_PLAY"

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/graphics/AssetDownloadManager;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    const-string v1, "key_flow"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    const-string v1, "key_style"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    const-string v1, "override_result_screen"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    return-object v0
.end method

.method public static isUserLoggedIn(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    invoke-static {p0}, Lcom/payumoney/core/PayUmoneySDK;->isUserLoggedIn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static logoutUser(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    invoke-static {p0}, Lcom/payumoney/core/PayUmoneySDK;->logoutUser(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public static startPayUMoneyFlow(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;Landroid/app/Activity;IZ)V
    .locals 2
    .param p0, "paymentParam"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "style"    # I
    .param p3, "isOverrideResultScreen"    # Z

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/payumoney/sdkui/ui/utils/PayUmoneyFlowManager;->getIntentToStartPayUMoneyFlow(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;Landroid/app/Activity;IZ)Landroid/content/Intent;

    move-result-object v0

    .line 52
    sget v1, Lcom/payumoney/sdkui/ui/utils/PayUmoneyFlowManager;->REQUEST_CODE_PAYMENT:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 53
    return-void
.end method
