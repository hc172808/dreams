.class Lcom/payumoney/core/SdkSession$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/SdkSession$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->fetchUserDetailsForNitro(Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 1533
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$24;->c:Lcom/payumoney/core/SdkSession;

    iput-object p2, p0, Lcom/payumoney/core/SdkSession$24;->a:Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;

    iput-object p3, p0, Lcom/payumoney/core/SdkSession$24;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1560
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$24;->a:Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$24;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .line 1566
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 1555
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$24;->a:Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$24;->b:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 1538
    :try_start_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$24;->c:Lcom/payumoney/core/SdkSession;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession;)Lcom/payumoney/core/utils/ResponseParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/payumoney/core/utils/ResponseParser;->parseUserDetailsForNitroFlow(Lorg/json/JSONObject;)Lcom/payumoney/core/response/PayUMoneyAPIResponse;

    move-result-object v0

    .line 1539
    instance-of v1, v0, Lcom/payumoney/core/response/UserDetail;

    if-eqz v1, :cond_0

    .line 1540
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$24;->a:Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payumoney/core/SdkSession$24;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$24;->a:Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;

    check-cast v0, Lcom/payumoney/core/response/UserDetail;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$24;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;->onUserDetailsReceivedForNitroFlow(Lcom/payumoney/core/response/UserDetail;Ljava/lang/String;)V

    .line 1542
    return-void

    .line 1544
    :cond_0
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$24;->a:Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;

    check-cast v0, Lcom/payumoney/core/response/ErrorResponse;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$24;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/payumoney/core/utils/PayUMoneyCustomException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1545
    return-void

    .line 1547
    :catch_0
    move-exception v0

    .line 1548
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$24;->a:Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;

    invoke-virtual {v0}, Lcom/payumoney/core/utils/PayUMoneyCustomException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$24;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    return-void
.end method
