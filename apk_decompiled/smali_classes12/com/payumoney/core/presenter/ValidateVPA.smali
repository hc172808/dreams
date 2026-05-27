.class public Lcom/payumoney/core/presenter/ValidateVPA;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/payumoney/core/listener/OnValidateVpaListener;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnValidateVpaListener;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "vpa"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/payumoney/core/utils/SdkHelper;->isValidVPA(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p2}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Lcom/payumoney/core/SdkSession;->validateVPA(Lcom/payumoney/core/listener/OnValidateVpaListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void

    .line 20
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySDK;->isUserLoggedIn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isUserLoggedIn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v1, Lcom/payumoney/core/SdkSession;->paymentId:Ljava/lang/String;

    const-string v2, "PaymentId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "vpa"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "Invalid VPA entered"

    const-string v2, "clevertap"

    invoke-static {p2, v1, v0, v2}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/payumoney/core/response/ErrorResponse;

    invoke-direct {v0}, Lcom/payumoney/core/response/ErrorResponse;-><init>()V

    .line 27
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payumoney/core/R$string;->error_incorrect_upi_id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/response/ErrorResponse;->setMessage(Ljava/lang/String;)V

    .line 28
    invoke-interface {p1, v0, p4}, Lcom/payumoney/core/listener/OnValidateVpaListener;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V

    .line 29
    return-void
.end method
