.class Lcom/payumoney/core/SdkSession$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/SdkSession$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->fetchCardBinInfo(Lcom/payumoney/core/listener/OnCardBinDetailsReceived;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/listener/OnCardBinDetailsReceived;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/OnCardBinDetailsReceived;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 1427
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$22;->c:Lcom/payumoney/core/SdkSession;

    iput-object p2, p0, Lcom/payumoney/core/SdkSession$22;->a:Lcom/payumoney/core/listener/OnCardBinDetailsReceived;

    iput-object p3, p0, Lcom/payumoney/core/SdkSession$22;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1452
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$22;->a:Lcom/payumoney/core/listener/OnCardBinDetailsReceived;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$22;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/OnCardBinDetailsReceived;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .line 1459
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 1447
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$22;->a:Lcom/payumoney/core/listener/OnCardBinDetailsReceived;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$22;->b:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/payumoney/core/listener/OnCardBinDetailsReceived;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 1431
    :try_start_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$22;->c:Lcom/payumoney/core/SdkSession;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession;)Lcom/payumoney/core/utils/ResponseParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/payumoney/core/utils/ResponseParser;->parseBinDetail(Lorg/json/JSONObject;)Lcom/payumoney/core/response/PayUMoneyAPIResponse;

    move-result-object v0

    .line 1433
    instance-of v1, v0, Lcom/payumoney/core/response/BinDetail;

    if-eqz v1, :cond_0

    .line 1434
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$22;->a:Lcom/payumoney/core/listener/OnCardBinDetailsReceived;

    check-cast v0, Lcom/payumoney/core/response/BinDetail;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$22;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnCardBinDetailsReceived;->onCardBinDetailReceived(Lcom/payumoney/core/response/BinDetail;Ljava/lang/String;)V

    .line 1435
    return-void

    .line 1437
    :cond_0
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$22;->a:Lcom/payumoney/core/listener/OnCardBinDetailsReceived;

    check-cast v0, Lcom/payumoney/core/response/ErrorResponse;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$22;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnCardBinDetailsReceived;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/payumoney/core/utils/PayUMoneyCustomException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1438
    return-void

    .line 1440
    :catch_0
    move-exception v0

    .line 1441
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$22;->a:Lcom/payumoney/core/listener/OnCardBinDetailsReceived;

    invoke-virtual {v0}, Lcom/payumoney/core/utils/PayUMoneyCustomException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$22;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnCardBinDetailsReceived;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    return-void
.end method
