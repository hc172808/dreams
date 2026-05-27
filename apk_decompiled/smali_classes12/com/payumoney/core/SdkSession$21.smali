.class Lcom/payumoney/core/SdkSession$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/SdkSession$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->getNetBankingStatus(Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 1341
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$21;->c:Lcom/payumoney/core/SdkSession;

    iput-object p2, p0, Lcom/payumoney/core/SdkSession$21;->a:Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;

    iput-object p3, p0, Lcom/payumoney/core/SdkSession$21;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1368
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$21;->a:Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$21;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .line 1373
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 1363
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$21;->a:Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$21;->b:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 1345
    :try_start_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$21;->c:Lcom/payumoney/core/SdkSession;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession;)Lcom/payumoney/core/utils/ResponseParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/payumoney/core/utils/ResponseParser;->getParseNetBankingStatusList(Lorg/json/JSONObject;)Lcom/payumoney/core/response/PayUMoneyAPIResponse;

    move-result-object v0

    .line 1347
    instance-of v1, v0, Lcom/payumoney/core/response/NetBankingStatusResponse;

    if-eqz v1, :cond_0

    .line 1348
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$21;->a:Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;

    check-cast v0, Lcom/payumoney/core/response/NetBankingStatusResponse;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$21;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;->OnNetBankingListReceived(Lcom/payumoney/core/response/NetBankingStatusResponse;Ljava/lang/String;)V

    .line 1349
    return-void

    .line 1351
    :cond_0
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$21;->a:Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;

    check-cast v0, Lcom/payumoney/core/response/ErrorResponse;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$21;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/payumoney/core/utils/PayUMoneyCustomException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    return-void

    .line 1356
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1354
    :catch_1
    move-exception v0

    .line 1355
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$21;->a:Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;

    invoke-virtual {v0}, Lcom/payumoney/core/utils/PayUMoneyCustomException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$21;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    nop

    .line 1359
    :goto_0
    return-void
.end method
