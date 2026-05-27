.class Lcom/payumoney/core/SdkSession$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/SdkSession$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->getEmiInterestsForBank(Ljava/lang/String;DLcom/payumoney/core/listener/OnEmiInterestReceivedListener;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;DLjava/util/List;Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 1024
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$17;->e:Lcom/payumoney/core/SdkSession;

    iput-wide p2, p0, Lcom/payumoney/core/SdkSession$17;->a:D

    iput-object p4, p0, Lcom/payumoney/core/SdkSession$17;->b:Ljava/util/List;

    iput-object p5, p0, Lcom/payumoney/core/SdkSession$17;->c:Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;

    iput-object p6, p0, Lcom/payumoney/core/SdkSession$17;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1046
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$17;->c:Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$17;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;->onUpdatedEmiInterestFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .line 1051
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .line 1041
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$17;->c:Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$17;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;->onUpdatedEmiInterestFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 1028
    :try_start_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$17;->e:Lcom/payumoney/core/SdkSession;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession;)Lcom/payumoney/core/utils/ResponseParser;

    move-result-object v0

    iget-wide v1, p0, Lcom/payumoney/core/SdkSession$17;->a:D

    iget-object v3, p0, Lcom/payumoney/core/SdkSession$17;->b:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/payumoney/core/utils/ResponseParser;->parseEmiInterestsForBankResponse(Lorg/json/JSONObject;DLjava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1029
    if-eqz v0, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$17;->c:Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$17;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;->onUpdatedEmiInterestReceived(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$17;->c:Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$17;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;->onUpdatedEmiInterestFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/payumoney/core/utils/PayUMoneyCustomException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :goto_0
    goto :goto_1

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$17;->c:Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;

    invoke-virtual {v0}, Lcom/payumoney/core/utils/PayUMoneyCustomException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$17;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;->onUpdatedEmiInterestFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    :goto_1
    return-void
.end method
