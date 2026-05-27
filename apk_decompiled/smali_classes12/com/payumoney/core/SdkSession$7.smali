.class Lcom/payumoney/core/SdkSession$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:I

.field final synthetic d:Lcom/payumoney/core/SdkSession$Task;

.field final synthetic e:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;Ljava/lang/String;Ljava/util/Map;ILcom/payumoney/core/SdkSession$Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 455
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$7;->e:Lcom/payumoney/core/SdkSession;

    iput-object p2, p0, Lcom/payumoney/core/SdkSession$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/payumoney/core/SdkSession$7;->b:Ljava/util/Map;

    iput p4, p0, Lcom/payumoney/core/SdkSession$7;->c:I

    iput-object p5, p0, Lcom/payumoney/core/SdkSession$7;->d:Lcom/payumoney/core/SdkSession$Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 481
    invoke-static {}, Lcom/payumoney/core/PayUmoneySdkInitializer;->IsDebugMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session...new JsonHttpResponseHandler() {...}.onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayUMoneySdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    const-string v0, "401"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 486
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->WALLET_SDK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "force"

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$7;->e:Lcom/payumoney/core/SdkSession;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->c(Lcom/payumoney/core/SdkSession;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$7;->e:Lcom/payumoney/core/SdkSession;

    invoke-virtual {v0, v1}, Lcom/payumoney/core/SdkSession;->logout(Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$7;->e:Lcom/payumoney/core/SdkSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession;Z)Z

    goto :goto_0

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$7;->e:Lcom/payumoney/core/SdkSession;

    invoke-virtual {v0, v1}, Lcom/payumoney/core/SdkSession;->logout(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$7;->e:Lcom/payumoney/core/SdkSession;

    sget-object v1, Lcom/payumoney/core/SdkSession;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payumoney/core/SdkSession;->cancelPendingRequests(Ljava/lang/Object;)V

    .line 497
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$7;->e:Lcom/payumoney/core/SdkSession;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$7;->d:Lcom/payumoney/core/SdkSession$Task;

    invoke-static {v0, v1, p2}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/SdkSession$Task;Ljava/lang/Throwable;)V

    .line 498
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 455
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/payumoney/core/SdkSession$7;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;

    .line 458
    const-string v0, "error"

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$7;->e:Lcom/payumoney/core/SdkSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/payumoney/core/SdkSession$7;->e:Lcom/payumoney/core/SdkSession;

    iget-object v4, v4, Lcom/payumoney/core/SdkSession;->b:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/payumoney/core/SdkSession;->d:Ljava/lang/Long;

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$7;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$7;->e:Lcom/payumoney/core/SdkSession;

    iget-object v2, v2, Lcom/payumoney/core/SdkSession;->d:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Difference "

    invoke-static {v2, v1}, Lcom/payumoney/core/utils/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdkSession.postFetch.onSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$7;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/payumoney/core/SdkSession$7;->b:Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/payumoney/core/SdkSession$7;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PayUMoneySdk"

    invoke-static {v2, v1}, Lcom/payumoney/core/utils/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$7;->a:Ljava/lang/String;

    const-string v3, "/payment/postBackParamIcp.do"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/payumoney/core/SdkSession$7;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$7;->e:Lcom/payumoney/core/SdkSession;

    const-string v1, "force"

    invoke-virtual {v0, v1}, Lcom/payumoney/core/SdkSession;->logout(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$7;->e:Lcom/payumoney/core/SdkSession;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$7;->d:Lcom/payumoney/core/SdkSession$Task;

    invoke-static {v0, v2, v1}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/SdkSession$Task;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    goto :goto_1

    .line 474
    :catch_0
    move-exception v0

    .line 476
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/payumoney/core/SdkSession$7;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 478
    :goto_1
    return-void
.end method
