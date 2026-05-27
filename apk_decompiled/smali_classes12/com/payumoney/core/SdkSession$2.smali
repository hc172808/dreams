.class Lcom/payumoney/core/SdkSession$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/SdkSession$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->fetchMechantParams(Ljava/lang/String;Lcom/payumoney/core/listener/OnMerchantLoginParams;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/listener/OnMerchantLoginParams;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/OnMerchantLoginParams;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 276
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$2;->c:Lcom/payumoney/core/SdkSession;

    iput-object p2, p0, Lcom/payumoney/core/SdkSession$2;->a:Lcom/payumoney/core/listener/OnMerchantLoginParams;

    iput-object p3, p0, Lcom/payumoney/core/SdkSession$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 301
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$2;->a:Lcom/payumoney/core/listener/OnMerchantLoginParams;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/OnMerchantLoginParams;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .line 307
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$2;->a:Lcom/payumoney/core/listener/OnMerchantLoginParams;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$2;->b:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/payumoney/core/listener/OnMerchantLoginParams;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$2;->c:Lcom/payumoney/core/SdkSession;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession;)Lcom/payumoney/core/utils/ResponseParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/payumoney/core/utils/ResponseParser;->parseFetchMerchant(Lorg/json/JSONObject;)Lcom/payumoney/core/response/PayUMoneyAPIResponse;

    move-result-object v0

    .line 281
    instance-of v1, v0, Lcom/payumoney/core/response/MerchantLoginResponse;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$2;->a:Lcom/payumoney/core/listener/OnMerchantLoginParams;

    check-cast v0, Lcom/payumoney/core/response/MerchantLoginResponse;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$2;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnMerchantLoginParams;->onMerchantLoginParams(Lcom/payumoney/core/response/MerchantLoginResponse;Ljava/lang/String;)V

    .line 283
    return-void

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$2;->a:Lcom/payumoney/core/listener/OnMerchantLoginParams;

    check-cast v0, Lcom/payumoney/core/response/ErrorResponse;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$2;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnMerchantLoginParams;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/payumoney/core/utils/PayUMoneyCustomException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$2;->a:Lcom/payumoney/core/listener/OnMerchantLoginParams;

    invoke-virtual {v0}, Lcom/payumoney/core/utils/PayUMoneyCustomException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$2;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnMerchantLoginParams;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method
