.class Lcom/payumoney/core/SdkSession$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/SdkSession$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->fetchPaymentStatus(Ljava/lang/String;Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 803
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$15;->c:Lcom/payumoney/core/SdkSession;

    iput-object p2, p0, Lcom/payumoney/core/SdkSession$15;->a:Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;

    iput-object p3, p0, Lcom/payumoney/core/SdkSession$15;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 844
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$15;->a:Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$15;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .line 850
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .line 838
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$15;->a:Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$15;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;

    .line 806
    const-string v0, "additionalCharges"

    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 807
    if-eqz v1, :cond_2

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 814
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 815
    const-string v2, "EventSource"

    const-string v3, "SDK"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    :try_start_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 818
    const-wide/16 v3, 0x0

    .line 819
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 820
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 821
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 822
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 824
    :cond_1
    const-string v0, "amount"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    add-double/2addr v5, v3

    .line 826
    const-string v0, "Amount"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    goto :goto_0

    .line 827
    :catch_0
    move-exception v0

    .line 828
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 830
    :goto_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$15;->c:Lcom/payumoney/core/SdkSession;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->b(Lcom/payumoney/core/SdkSession;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "PaymentSucceeded"

    const-string v3, "clevertap"

    invoke-static {v0, v2, v1, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$15;->a:Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$15;->b:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;->OnPaymentDetailsReceivedFromPayuMoney(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2

    .line 808
    :cond_2
    :goto_1
    new-instance v0, Lcom/payumoney/core/response/ErrorResponse;

    invoke-direct {v0}, Lcom/payumoney/core/response/ErrorResponse;-><init>()V

    .line 809
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/response/ErrorResponse;->setMessage(Ljava/lang/String;)V

    .line 810
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$15;->a:Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$15;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V

    .line 812
    nop

    .line 834
    :goto_2
    return-void
.end method
