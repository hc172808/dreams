.class Lcom/payumoney/core/SdkSession$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/SdkSession$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->createPayment(Ljava/util/HashMap;Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/HashMap;

.field final synthetic d:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 959
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$16;->d:Lcom/payumoney/core/SdkSession;

    iput-object p2, p0, Lcom/payumoney/core/SdkSession$16;->a:Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;

    iput-object p3, p0, Lcom/payumoney/core/SdkSession$16;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/payumoney/core/SdkSession$16;->c:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1002
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.volley.AuthFailureError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$16;->d:Lcom/payumoney/core/SdkSession;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$16;->c:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$16;->a:Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;

    iget-object v3, p0, Lcom/payumoney/core/SdkSession$16;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/payumoney/core/SdkSession;->createPayment(Ljava/util/HashMap;Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;Ljava/lang/String;)V

    goto :goto_0

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$16;->a:Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$16;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :goto_0
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .line 1011
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 996
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$16;->a:Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$16;->b:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 963
    :try_start_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$16;->d:Lcom/payumoney/core/SdkSession;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession;)Lcom/payumoney/core/utils/ResponseParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/payumoney/core/utils/ResponseParser;->parsePaymentOption(Lorg/json/JSONObject;)Lcom/payumoney/core/response/PayUMoneyAPIResponse;

    move-result-object v0

    .line 964
    instance-of v1, v0, Lcom/payumoney/core/response/PaymentOptionDetails;

    if-eqz v1, :cond_1

    .line 965
    move-object v1, v0

    check-cast v1, Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v1}, Lcom/payumoney/core/response/PaymentOptionDetails;->getPaymentID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/payumoney/core/SdkSession;->paymentId:Ljava/lang/String;

    .line 966
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$16;->a:Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payumoney/core/SdkSession$16;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 970
    const-string v2, "MerchantPassedEmail"

    iget-object v3, p0, Lcom/payumoney/core/SdkSession$16;->c:Ljava/util/HashMap;

    const-string v4, "email"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const-string v2, "MerchantPassedPhone"

    iget-object v3, p0, Lcom/payumoney/core/SdkSession$16;->c:Ljava/util/HashMap;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const-string v2, "Amount"

    iget-object v3, p0, Lcom/payumoney/core/SdkSession$16;->c:Ljava/util/HashMap;

    const-string v4, "amount"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    iget-object v2, p0, Lcom/payumoney/core/SdkSession$16;->d:Lcom/payumoney/core/SdkSession;

    invoke-static {v2}, Lcom/payumoney/core/SdkSession;->b(Lcom/payumoney/core/SdkSession;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "PaymentAdded"

    const-string v4, "clevertap"

    invoke-static {v2, v3, v1, v4}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 975
    nop

    .line 976
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneyConfig;->getPayUmoneyActivityTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneyConfig;->getPayUmoneyActivityTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 977
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneyConfig;->getPayUmoneyActivityTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 980
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v1}, Lcom/payumoney/core/response/PaymentOptionDetails;->getMerchantDetails()Lcom/payumoney/core/entity/MerchantDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/entity/MerchantDetails;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 982
    :goto_0
    iget-object v2, p0, Lcom/payumoney/core/SdkSession$16;->d:Lcom/payumoney/core/SdkSession;

    invoke-static {v2}, Lcom/payumoney/core/SdkSession;->b(Lcom/payumoney/core/SdkSession;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "merchant_name"

    invoke-static {v2, v3, v1}, Lcom/payumoney/core/utils/SharedPrefsUtils;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 983
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$16;->a:Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;

    check-cast v0, Lcom/payumoney/core/response/PaymentOptionDetails;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$16;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;->onPaymentOptionReceived(Lcom/payumoney/core/response/PaymentOptionDetails;Ljava/lang/String;)V

    .line 984
    return-void

    .line 986
    :cond_1
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$16;->a:Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;

    check-cast v0, Lcom/payumoney/core/response/ErrorResponse;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$16;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/payumoney/core/utils/PayUMoneyCustomException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    return-void

    .line 989
    :catch_0
    move-exception v0

    .line 990
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$16;->a:Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;

    invoke-virtual {v0}, Lcom/payumoney/core/utils/PayUMoneyCustomException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$16;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    return-void
.end method
