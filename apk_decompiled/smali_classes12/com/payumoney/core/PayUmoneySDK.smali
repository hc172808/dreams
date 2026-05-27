.class public Lcom/payumoney/core/PayUmoneySDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/payumoney/core/PayUmoneySDK;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public static getInstance()Lcom/payumoney/core/PayUmoneySDK;
    .locals 1

    .line 49
    sget-object v0, Lcom/payumoney/core/PayUmoneySDK;->a:Lcom/payumoney/core/PayUmoneySDK;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;)Lcom/payumoney/core/PayUmoneySDK;
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "paymentParam"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    .line 53
    new-instance v0, Lcom/payumoney/core/PayUmoneySDK;

    invoke-direct {v0}, Lcom/payumoney/core/PayUmoneySDK;-><init>()V

    sput-object v0, Lcom/payumoney/core/PayUmoneySDK;->a:Lcom/payumoney/core/PayUmoneySDK;

    .line 54
    invoke-direct {v0, p0}, Lcom/payumoney/core/PayUmoneySDK;->a(Landroid/content/Context;)V

    .line 55
    sget-object v0, Lcom/payumoney/core/PayUmoneySDK;->a:Lcom/payumoney/core/PayUmoneySDK;

    invoke-virtual {v0, p1}, Lcom/payumoney/core/PayUmoneySDK;->setPaymentParam(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;)V

    .line 56
    invoke-static {p0}, Lcom/payumoney/core/SdkSession;->createNewInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    .line 57
    invoke-static {}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->initPayUMoneyTransaction()V

    .line 58
    new-instance v0, Lcom/payumoney/core/utils/SdkHelper;

    invoke-direct {v0}, Lcom/payumoney/core/utils/SdkHelper;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->deviceAnalytics(Landroid/content/Context;Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;)V

    .line 59
    sget-object v0, Lcom/payumoney/core/PayUmoneySDK;->a:Lcom/payumoney/core/PayUmoneySDK;

    return-object v0
.end method

.method public static isUserLoggedIn(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 166
    invoke-static {p0}, Lcom/payumoney/core/SdkSession;->isLoggedIn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static logoutUser(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 170
    invoke-static {p0}, Lcom/payumoney/core/SdkSession;->logout(Landroid/content/Context;)V

    .line 171
    return-void
.end method

.method public static setINSTANCE(Lcom/payumoney/core/PayUmoneySDK;)V
    .locals 0
    .param p0, "INSTANCE"    # Lcom/payumoney/core/PayUmoneySDK;

    .line 199
    sput-object p0, Lcom/payumoney/core/PayUmoneySDK;->a:Lcom/payumoney/core/PayUmoneySDK;

    .line 200
    return-void
.end method


# virtual methods
.method public addPayment(Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;
    .param p2, "tag"    # Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/payumoney/core/presenter/GetPaymentOption;

    iget-object v1, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/payumoney/core/PayUmoneySDK;->c:Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/payumoney/core/presenter/GetPaymentOption;-><init>(Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;Landroid/content/Context;Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public fetchDetailsForNitroFlow(Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;
    .param p2, "paymentId"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/payumoney/core/presenter/FetchUserDetailsForNitroFlow;

    iget-object v2, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/payumoney/core/PayUmoneySDK;->c:Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "email"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget-object v1, p0, Lcom/payumoney/core/PayUmoneySDK;->c:Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    move-object v1, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/payumoney/core/presenter/FetchUserDetailsForNitroFlow;-><init>(Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public getCardBinDetails(Lcom/payumoney/core/listener/OnCardBinDetailsReceived;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnCardBinDetailsReceived;
    .param p2, "cardNumber"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 203
    new-instance v0, Lcom/payumoney/core/presenter/GetBinDetails;

    iget-object v1, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/payumoney/core/presenter/GetBinDetails;-><init>(Lcom/payumoney/core/listener/OnCardBinDetailsReceived;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public getEmiInterestForBank(Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;Ljava/lang/String;DLjava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;
    .param p2, "paymentId"    # Ljava/lang/String;
    .param p3, "amount"    # D
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/EmiThreshold;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 98
    .local p5, "emiThresholds":Ljava/util/List;, "Ljava/util/List<Lcom/payumoney/core/entity/EmiThreshold;>;"
    new-instance v0, Lcom/payumoney/core/presenter/GetEmiInterestsForBank;

    iget-object v2, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/payumoney/core/presenter/GetEmiInterestsForBank;-><init>(Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;Landroid/content/Context;Ljava/lang/String;DLjava/util/List;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public getMultipleCardBinDetails(Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 207
    .local p2, "cardNumbersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/payumoney/core/presenter/GetMultipleBinDetails;

    iget-object v1, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/payumoney/core/presenter/GetMultipleBinDetails;-><init>(Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public getNetBankingStatusList(Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;
    .param p2, "tag"    # Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/payumoney/core/presenter/GetNetBankingStatusList;

    iget-object v1, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    invoke-direct {v0, p1, v1, p2}, Lcom/payumoney/core/presenter/GetNetBankingStatusList;-><init>(Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySDK;->c:Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    return-object v0
.end method

.method public getUserAccount(Lcom/payumoney/core/listener/onUserAccountReceivedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/payumoney/core/listener/onUserAccountReceivedListener;
    .param p2, "paymentID"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 195
    new-instance v0, Lcom/payumoney/core/presenter/PayUMoneyLogin;

    iget-object v1, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/payumoney/core/presenter/PayUMoneyLogin;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/payumoney/core/presenter/PayUMoneyLogin;->getUserLoginDetails(Lcom/payumoney/core/listener/onUserAccountReceivedListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/SdkSession;->getRegisteredUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMobileNumberRegistered()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/SdkSession;->isMobileNumberRegistered()Z

    move-result v0

    return v0
.end method

.method public isNitroEnabled()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/SdkSession;->isNitroEnabled()Z

    move-result v0

    return v0
.end method

.method public isUserAccountActive()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/SdkSession;->isUserAccountActive()Z

    move-result v0

    return v0
.end method

.method public isUserLoggedIn()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/SdkSession;->isLoggedIn()Z

    move-result v0

    return v0
.end method

.method public isUserSignUpDisabled()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/SdkSession;->isUserSignUpDisabled()Z

    move-result v0

    return v0
.end method

.method public launchLoginScreen(Lcom/payumoney/core/listener/OnUserLoginListener;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnUserLoginListener;
    .param p2, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p3, "theme"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/payumoney/core/presenter/PayUMoneyLogin;

    iget-object v1, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/payumoney/core/presenter/PayUMoneyLogin;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/payumoney/core/presenter/PayUMoneyLogin;->launchPayUMoneyLoginFragment(Lcom/payumoney/core/listener/OnUserLoginListener;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V

    .line 192
    return-void
.end method

.method public login(Lcom/payumoney/core/listener/OnUserLoginListener;Lcom/payumoney/core/request/LoginParamsRequest;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnUserLoginListener;
    .param p2, "loginParamsRequest"    # Lcom/payumoney/core/request/LoginParamsRequest;
    .param p3, "tag"    # Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/payumoney/core/presenter/PayUMoneyLogin;

    iget-object v1, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/payumoney/core/presenter/PayUMoneyLogin;-><init>(Lcom/payumoney/core/listener/OnUserLoginListener;Landroid/content/Context;Lcom/payumoney/core/request/LoginParamsRequest;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public logoutUser()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    const-string v1, "force"

    invoke-virtual {v0, v1}, Lcom/payumoney/core/SdkSession;->logout(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public makePayment(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;Lcom/payumoney/core/request/PaymentRequest;ZLandroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;
    .param p2, "request"    # Lcom/payumoney/core/request/PaymentRequest;
    .param p3, "validateDetails"    # Z
    .param p4, "activity"    # Landroid/app/Activity;
    .param p5, "tag"    # Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/payumoney/core/presenter/MakePayment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/payumoney/core/presenter/MakePayment;-><init>(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;Lcom/payumoney/core/request/PaymentRequest;ZLandroid/app/Activity;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public requestOTPForLogin(Lcom/payumoney/core/listener/OnOTPRequestSendListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnOTPRequestSendListener;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 174
    new-instance v0, Lcom/payumoney/core/presenter/GetOTPForLogin;

    iget-object v1, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/payumoney/core/presenter/GetOTPForLogin;-><init>(Lcom/payumoney/core/listener/OnOTPRequestSendListener;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public setPaymentParam(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;)V
    .locals 0
    .param p1, "paymentParam"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    .line 71
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySDK;->c:Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    .line 72
    return-void
.end method

.method public userCancelledTransaction()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    sget-object v1, Lcom/payumoney/core/SdkSession;->paymentId:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/core/SdkSession;->notifyUserCancelledTransaction(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public validateAccount(Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/listener/OnUserLoginListener;Ljava/lang/String;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onUserLoginListener"    # Lcom/payumoney/core/listener/OnUserLoginListener;
    .param p4, "tag"    # Ljava/lang/String;

    .line 178
    new-instance v0, Lcom/payumoney/core/presenter/ValidateAccount;

    iget-object v1, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/payumoney/core/presenter/ValidateAccount;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/listener/OnUserLoginListener;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public validateVPA(Lcom/payumoney/core/listener/OnValidateVpaListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnValidateVpaListener;
    .param p2, "vpa"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 93
    new-instance v0, Lcom/payumoney/core/presenter/ValidateVPA;

    iget-object v1, p0, Lcom/payumoney/core/PayUmoneySDK;->b:Landroid/content/Context;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/payumoney/core/presenter/ValidateVPA;-><init>(Lcom/payumoney/core/listener/OnValidateVpaListener;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method
