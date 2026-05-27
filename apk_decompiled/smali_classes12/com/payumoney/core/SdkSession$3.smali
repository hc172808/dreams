.class Lcom/payumoney/core/SdkSession$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->validateVPA(Lcom/payumoney/core/listener/OnValidateVpaListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/payumoney/core/listener/OnValidateVpaListener;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;Ljava/util/Map;Lcom/payumoney/core/listener/OnValidateVpaListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 321
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$3;->e:Lcom/payumoney/core/SdkSession;

    iput-object p2, p0, Lcom/payumoney/core/SdkSession$3;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/payumoney/core/SdkSession$3;->b:Lcom/payumoney/core/listener/OnValidateVpaListener;

    iput-object p4, p0, Lcom/payumoney/core/SdkSession$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/payumoney/core/SdkSession$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 321
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/payumoney/core/SdkSession$3;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SdkSession.validateVpa.onSuccess: url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/payumoney/core/PayUmoneyConstants;->PM_VALIDATE_VPA_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$3;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", method"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", response="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PayUMoneySdk"

    invoke-static {v2, v0}, Lcom/payumoney/core/utils/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    nop

    .line 327
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 332
    :goto_0
    move v0, v1

    goto :goto_1

    .line 328
    :catch_0
    move-exception v1

    .line 329
    new-instance v1, Lcom/payumoney/core/response/ErrorResponse;

    invoke-direct {v1}, Lcom/payumoney/core/response/ErrorResponse;-><init>()V

    .line 330
    iget-object v2, p0, Lcom/payumoney/core/SdkSession$3;->e:Lcom/payumoney/core/SdkSession;

    invoke-static {v2}, Lcom/payumoney/core/SdkSession;->b(Lcom/payumoney/core/SdkSession;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/payumoney/core/R$string;->error_unable_to_validate_vpa:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payumoney/core/response/ErrorResponse;->setMessage(Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/payumoney/core/SdkSession$3;->b:Lcom/payumoney/core/listener/OnValidateVpaListener;

    iget-object v3, p0, Lcom/payumoney/core/SdkSession$3;->c:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/payumoney/core/listener/OnValidateVpaListener;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V

    .line 334
    :goto_1
    if-nez v0, :cond_1

    .line 336
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 337
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/PayUmoneySDK;->isUserLoggedIn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isUserLoggedIn"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v2, Lcom/payumoney/core/SdkSession;->paymentId:Ljava/lang/String;

    const-string v3, "PaymentId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v2, p0, Lcom/payumoney/core/SdkSession$3;->d:Ljava/lang/String;

    const-string v3, "vpa"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v2, p0, Lcom/payumoney/core/SdkSession$3;->e:Lcom/payumoney/core/SdkSession;

    invoke-static {v2}, Lcom/payumoney/core/SdkSession;->b(Lcom/payumoney/core/SdkSession;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Invalid VPA entered"

    const-string v4, "clevertap"

    invoke-static {v2, v3, v1, v4}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$3;->b:Lcom/payumoney/core/listener/OnValidateVpaListener;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$3;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnValidateVpaListener;->onSuccess(ZLjava/lang/String;)V

    .line 344
    return-void
.end method
