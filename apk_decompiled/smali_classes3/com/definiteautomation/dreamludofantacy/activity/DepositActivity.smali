.class public Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DepositActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activityRequestCode:Ljava/lang/Integer;

.field public alertTv:Landroid/widget/TextView;

.field private amountEt:Lcom/google/android/material/textfield/TextInputEditText;

.field private amountSt:Ljava/lang/String;

.field private api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

.field private final builder:Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

.field public checksumSt:Ljava/lang/String;

.field public flutterWaveRb:Landroid/widget/RadioButton;

.field private mopSt:Ljava/lang/String;

.field public noteTv:Landroid/widget/TextView;

.field public orderIdSt:Ljava/lang/String;

.field public payTmRb:Landroid/widget/RadioButton;

.field public paymentIdSt:Ljava/lang/String;

.field private paymentParam:Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

.field public payuRb:Landroid/widget/RadioButton;

.field private progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

.field public signTv:Landroid/widget/TextView;

.field private submitBt:Landroid/widget/Button;

.field public tokenSt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 64
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->activityRequestCode:Ljava/lang/Integer;

    .line 66
    new-instance v0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    invoke-direct {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;-><init>()V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->builder:Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->paymentParam:Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;

    .line 49
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;

    .line 49
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->paymentParam:Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    return-object v0
.end method

.method static synthetic access$300(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;

    .line 49
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->postDeposit()V

    return-void
.end method

.method private getToken()V
    .locals 5

    .line 296
    sget-object v0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->TAG:Ljava/lang/String;

    const-string v1, " get token start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 298
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    sget-object v1, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->M_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->orderIdSt:Ljava/lang/String;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->amountSt:Ljava/lang/String;

    const-string v4, "12345"

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->generateTokenCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 300
    .local v0, "callToken":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/Token;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$4;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$4;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 328
    .end local v0    # "callToken":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/Token;>;"
    :cond_0
    return-void
.end method

.method private getUserDetails()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    const-string v2, "KEY_USER_ID"

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1234567890"

    invoke-interface {v0, v2, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->getUserDetails(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 169
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$1;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$1;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 204
    return-void
.end method

.method private postDeposit()V
    .locals 10

    .line 207
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 208
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v2, "KEY_USER_ID"

    invoke-virtual {v0, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->orderIdSt:Ljava/lang/String;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->paymentIdSt:Ljava/lang/String;

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->checksumSt:Ljava/lang/String;

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->amountSt:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iget-object v9, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->mopSt:Ljava/lang/String;

    const-string v2, "1234567890"

    invoke-interface/range {v1 .. v9}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->postDeposit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 209
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$2;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$2;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 231
    return-void
.end method

.method private startPay()V
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->builder:Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->amountSt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setAmount(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->paymentIdSt:Ljava/lang/String;

    .line 236
    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setTxnId(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 237
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    const-string v2, "KEY_MOBILE"

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setPhone(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 238
    const-string v1, "Wallet Balance"

    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setProductName(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 239
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    const-string v2, "KEY_FULL_NAME"

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setFirstName(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 240
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    const-string v2, "KEY_EMAIL"

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setEmail(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 241
    const-string v1, "https://www.payumoney.com/mobileapp/payumoney/success.php"

    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setsUrl(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 242
    const-string v1, "https://www.payumoney.com/mobileapp/payumoney/failure.php"

    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setfUrl(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 243
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setUdf1(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setUdf2(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setUdf3(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setUdf4(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setUdf5(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setUdf6(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setUdf7(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setUdf8(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 251
    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setUdf9(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 252
    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setUdf10(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    .line 253
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setIsDebug(Z)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    sget-object v1, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MERCHANT_KEY:Ljava/lang/String;

    .line 254
    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setKey(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    move-result-object v0

    sget-object v1, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MERCHANT_ID:Ljava/lang/String;

    .line 255
    invoke-virtual {v0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->setMerchantId(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->builder:Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->build()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->paymentParam:Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    .line 258
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->getHashkey()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " error s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getHashkey()V
    .locals 7

    .line 266
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/payu/ServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/definiteautomation/dreamludofantacy/payu/ServiceWrapper;-><init>(Lokhttp3/Interceptor;)V

    .line 267
    .local v0, "service":Lcom/definiteautomation/dreamludofantacy/payu/ServiceWrapper;
    sget-object v1, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MERCHANT_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->paymentIdSt:Ljava/lang/String;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->amountSt:Ljava/lang/String;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v4

    const-string v5, "KEY_FULL_NAME"

    invoke-virtual {v4, v5}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v4

    const-string v6, "KEY_EMAIL"

    invoke-virtual {v4, v6}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "Wallet Balance"

    invoke-virtual/range {v0 .. v6}, Lcom/definiteautomation/dreamludofantacy/payu/ServiceWrapper;->newHashCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    .line 269
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/String;>;"
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$3;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$3;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 291
    return-void
.end method

.method public synthetic lambda$onCreate$0$DepositActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$DepositActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 100
    const-string v0, "PayTm"

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->mopSt:Ljava/lang/String;

    return-void
.end method

.method public synthetic lambda$onCreate$2$DepositActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 102
    const-string v0, "PayUMoney"

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->mopSt:Ljava/lang/String;

    return-void
.end method

.method public synthetic lambda$onCreate$3$DepositActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 104
    const-string v0, "FlutterWave"

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->mopSt:Ljava/lang/String;

    return-void
.end method

.method public synthetic lambda$onCreate$4$DepositActivity(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->submitBt:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 110
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    nop

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 116
    .local v0, "rand":Ljava/util/Random;
    const/16 v2, 0x3e8

    .local v2, "min":I
    const/16 v3, 0x270f

    .line 119
    .local v3, "max":I
    sub-int v4, v3, v2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 120
    .local v4, "randomNum":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    int-to-long v9, v4

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v7

    const-string v8, "KEY_USER_ID"

    invoke-virtual {v7, v8}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->orderIdSt:Ljava/lang/String;

    .line 121
    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->paymentIdSt:Ljava/lang/String;

    .line 123
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->amountEt:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v6, Landroid/text/Editable;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->amountSt:Ljava/lang/String;

    .line 124
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const-string v7, "Minimum Add Amount is %s%d"

    const-string v8, "#ff0000"

    const/4 v9, 0x2

    if-nez v6, :cond_3

    .line 125
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->amountEt:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-double v10, v6

    .line 127
    .local v10, "payout":D
    sget v6, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MIN_DEPOSIT_LIMIT:I

    int-to-double v12, v6

    cmpg-double v6, v10, v12

    if-gez v6, :cond_0

    .line 128
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->submitBt:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 129
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->alertTv:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->alertTv:Landroid/widget/TextView;

    new-array v9, v9, [Ljava/lang/Object;

    sget-object v12, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v12, v9, v1

    sget v1, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MIN_DEPOSIT_LIMIT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v5

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->alertTv:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 132
    :cond_0
    sget v6, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MAX_DEPOSIT_LIMIT:I

    int-to-double v6, v6

    cmpl-double v12, v10, v6

    if-lez v12, :cond_1

    .line 133
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->submitBt:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->alertTv:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->alertTv:Landroid/widget/TextView;

    new-array v7, v9, [Ljava/lang/Object;

    sget-object v9, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v9, v7, v1

    sget v1, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MAX_DEPOSIT_LIMIT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    const-string v1, "Maximum Add Amount is %s%d"

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->alertTv:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 138
    :cond_1
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->alertTv:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :try_start_1
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->submitBt:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->mopSt:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v1, "flutterWaveRb"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_1
    const-string v1, "PayUMoney"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_2
    const-string v9, "PayTm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :goto_1
    const/4 v1, -0x1

    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 146
    :pswitch_0
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->alertTv:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->startPay()V

    .line 148
    goto :goto_3

    .line 143
    :pswitch_1
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->getToken()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    nop

    .line 155
    :goto_3
    goto :goto_4

    .line 153
    :catch_1
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->submitBt:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v10    # "payout":D
    :goto_4
    goto :goto_5

    .line 158
    :cond_3
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->submitBt:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 159
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->alertTv:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->alertTv:Landroid/widget/TextView;

    new-array v9, v9, [Ljava/lang/Object;

    sget-object v10, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v10, v9, v1

    sget v1, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MIN_DEPOSIT_LIMIT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v5

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->alertTv:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4954121 -> :sswitch_2
        0x4803cff3 -> :sswitch_1
        0x58566245 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 405
    const-string v0, "response"

    sget-object v1, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " result code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 410
    sget v2, Lcom/payumoney/sdkui/ui/utils/PayUmoneyFlowManager;->REQUEST_CODE_PAYMENT:I

    if-ne p1, v2, :cond_2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_2

    .line 411
    sget-object v0, Lcom/payumoney/sdkui/ui/utils/PayUmoneyFlowManager;->INTENT_EXTRA_TRANSACTION_RESPONSE:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/TransactionResponse;

    .line 413
    .local v0, "transactionResponse":Lcom/payumoney/core/entity/TransactionResponse;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/payumoney/core/entity/TransactionResponse;->getPayuResponse()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 415
    invoke-virtual {v0}, Lcom/payumoney/core/entity/TransactionResponse;->getTransactionStatus()Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    move-result-object v2

    sget-object v3, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->SUCCESSFUL:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    invoke-virtual {v2, v3}, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    const-string v2, "123"

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->checksumSt:Ljava/lang/String;

    .line 418
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->postDeposit()V

    goto :goto_0

    .line 421
    :cond_0
    const/4 v2, 0x0

    const-string v3, "Transaction failed.Please try again"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 425
    :goto_0
    invoke-virtual {v0}, Lcom/payumoney/core/entity/TransactionResponse;->getPayuResponse()Ljava/lang/String;

    move-result-object v2

    .line 428
    .local v2, "payuResponse":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/payumoney/core/entity/TransactionResponse;->getTransactionDetails()Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "merchantResponse":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tran "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v0    # "transactionResponse":Lcom/payumoney/core/entity/TransactionResponse;
    .end local v2    # "payuResponse":Ljava/lang/String;
    .end local v3    # "merchantResponse":Ljava/lang/String;
    :cond_1
    goto/16 :goto_4

    .line 432
    :cond_2
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->activityRequestCode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_6

    if-eqz p3, :cond_6

    .line 433
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 434
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_4

    .line 435
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 436
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_3
    const-string v6, "NULL"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_1

    .line 441
    :cond_4
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 442
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "STATUS"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "status":Ljava/lang/String;
    const-string v4, "TXN_SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 445
    const-string v4, "TXNID"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->paymentIdSt:Ljava/lang/String;

    .line 446
    const-string v4, "CHECKSUMHASH"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->checksumSt:Ljava/lang/String;

    .line 447
    const-string v4, "ORDERID"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->orderIdSt:Ljava/lang/String;

    .line 449
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->postDeposit()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "status":Ljava/lang/String;
    :cond_5
    goto :goto_3

    .line 451
    :catch_0
    move-exception v2

    .line 452
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 455
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_3
    sget-object v2, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " TXNID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->paymentIdSt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " CHECKSUMHASH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->checksumSt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ORDERID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->orderIdSt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "nativeSdkForMerchantMessage"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " data response - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_4

    .line 462
    :cond_6
    const-string v0, " payment failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 72
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->setContentView(I)V

    .line 74
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    .line 75
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    .line 77
    const v0, 0x7f0803d5

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 78
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 79
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/app/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 82
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$DepositActivity$CKNKWOgczK7Fpbn15bDRY59t2-E;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$DepositActivity$CKNKWOgczK7Fpbn15bDRY59t2-E;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->getUserDetails()V

    .line 86
    const v2, 0x7f0802c1

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->payTmRb:Landroid/widget/RadioButton;

    .line 87
    const v2, 0x7f0802c6

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->payuRb:Landroid/widget/RadioButton;

    .line 88
    const v2, 0x7f0801ab

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->flutterWaveRb:Landroid/widget/RadioButton;

    .line 89
    const v2, 0x7f08009b

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->amountEt:Lcom/google/android/material/textfield/TextInputEditText;

    .line 90
    const v2, 0x7f080292

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->noteTv:Landroid/widget/TextView;

    .line 91
    const v2, 0x7f080097

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->alertTv:Landroid/widget/TextView;

    .line 92
    const v2, 0x7f080346

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->signTv:Landroid/widget/TextView;

    .line 93
    const v2, 0x7f080376

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->submitBt:Landroid/widget/Button;

    .line 95
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->signTv:Landroid/widget/TextView;

    sget-object v4, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->alertTv:Landroid/widget/TextView;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v5, v4, v1

    sget v1, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MIN_DEPOSIT_LIMIT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    const-string v1, "Minimum Add Amount is %s%d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const-string v1, "PayTm"

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->mopSt:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->payTmRb:Landroid/widget/RadioButton;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$DepositActivity$V6t0w3P17TwhbOZt-jfvOo3n3tU;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$DepositActivity$V6t0w3P17TwhbOZt-jfvOo3n3tU;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->payuRb:Landroid/widget/RadioButton;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$DepositActivity$2GckvZw2he_ICVPh2eUb7Y5cz5s;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$DepositActivity$2GckvZw2he_ICVPh2eUb7Y5cz5s;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->flutterWaveRb:Landroid/widget/RadioButton;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$DepositActivity$DO6xUILkNygngKhxzKPbQpYCHPA;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$DepositActivity$DO6xUILkNygngKhxzKPbQpYCHPA;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->submitBt:Landroid/widget/Button;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$DepositActivity$lh300MumhnZWfFUo2G8-xwS_irE;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$DepositActivity$lh300MumhnZWfFUo2G8-xwS_irE;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    return-void
.end method

.method public startPaytmPayment(Ljava/lang/String;)V
    .locals 9
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 331
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->tokenSt:Ljava/lang/String;

    .line 336
    const-string v0, "https://securegw.paytm.in/"

    .line 338
    .local v0, "host":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "theia/paytmCallback?ORDER_ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->orderIdSt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "callBackUrl":Ljava/lang/String;
    sget-object v2, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " callback URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v2, Lcom/paytm/pgsdk/PaytmOrder;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->orderIdSt:Ljava/lang/String;

    sget-object v5, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->M_ID:Ljava/lang/String;

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->tokenSt:Ljava/lang/String;

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->amountSt:Ljava/lang/String;

    move-object v3, v2

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/paytm/pgsdk/PaytmOrder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .local v2, "paytmOrder":Lcom/paytm/pgsdk/PaytmOrder;
    new-instance v3, Lcom/paytm/pgsdk/TransactionManager;

    new-instance v4, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$5;

    invoke-direct {v4, p0}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$5;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)V

    invoke-direct {v3, v2, v4}, Lcom/paytm/pgsdk/TransactionManager;-><init>(Lcom/paytm/pgsdk/PaytmOrder;Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;)V

    .line 396
    .local v3, "transactionManager":Lcom/paytm/pgsdk/TransactionManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/paytm/pgsdk/TransactionManager;->setAppInvokeEnabled(Z)V

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "theia/api/v1/showPaymentPage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/paytm/pgsdk/TransactionManager;->setShowPaymentUrl(Ljava/lang/String;)V

    .line 398
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->activityRequestCode:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, p0, v4}, Lcom/paytm/pgsdk/TransactionManager;->startTransaction(Landroid/app/Activity;I)V

    .line 399
    return-void
.end method
