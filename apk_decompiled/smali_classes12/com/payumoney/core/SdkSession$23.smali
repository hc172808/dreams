.class Lcom/payumoney/core/SdkSession$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/SdkSession$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->fetchMultipleCardBinInfo(Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 1474
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$23;->c:Lcom/payumoney/core/SdkSession;

    iput-object p2, p0, Lcom/payumoney/core/SdkSession$23;->a:Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;

    iput-object p3, p0, Lcom/payumoney/core/SdkSession$23;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1515
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$23;->a:Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$23;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .line 1522
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 1510
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$23;->a:Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$23;->b:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 1478
    const-string v0, "message"

    const-string v1, "status"

    const-string v2, "errorCode"

    :try_start_0
    iget-object v3, p0, Lcom/payumoney/core/SdkSession$23;->c:Lcom/payumoney/core/SdkSession;

    invoke-static {v3}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession;)Lcom/payumoney/core/utils/ResponseParser;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/payumoney/core/utils/ResponseParser;->parseMultipleBinDetail(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    .line 1481
    if-eqz v3, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$23;->a:Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$23;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;->onMultipleCardBinDetailsReceived(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 1485
    :cond_0
    new-instance v3, Lcom/payumoney/core/response/ErrorResponse;

    invoke-direct {v3}, Lcom/payumoney/core/response/ErrorResponse;-><init>()V

    .line 1486
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1487
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/payumoney/core/response/ErrorResponse;->setStatus(Ljava/lang/String;)V

    .line 1489
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1490
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/response/ErrorResponse;->setMessage(Ljava/lang/String;)V

    .line 1492
    :cond_2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1493
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/response/ErrorResponse;->setErrorCode(Ljava/lang/String;)V

    .line 1495
    :cond_3
    const-string v0, "responseCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1496
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/response/ErrorResponse;->setErrorCode(Ljava/lang/String;)V

    .line 1499
    :cond_4
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$23;->a:Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$23;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/payumoney/core/utils/PayUMoneyCustomException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1503
    :catch_0
    move-exception v0

    .line 1504
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$23;->a:Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;

    invoke-virtual {v0}, Lcom/payumoney/core/utils/PayUMoneyCustomException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$23;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1501
    :catch_1
    move-exception v0

    .line 1502
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$23;->a:Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$23;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :goto_0
    nop

    .line 1506
    :goto_1
    return-void
.end method
