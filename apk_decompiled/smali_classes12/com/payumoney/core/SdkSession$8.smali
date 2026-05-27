.class Lcom/payumoney/core/SdkSession$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/SdkSession$Task;

.field final synthetic b:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/SdkSession$Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 500
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$8;->b:Lcom/payumoney/core/SdkSession;

    iput-object p2, p0, Lcom/payumoney/core/SdkSession$8;->a:Lcom/payumoney/core/SdkSession$Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 503
    invoke-static {}, Lcom/payumoney/core/PayUmoneySdkInitializer;->IsDebugMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session...new JsonHttpResponseHandler() {...}.onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayUMoneySdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_3

    .line 508
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->WALLET_SDK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "force"

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$8;->b:Lcom/payumoney/core/SdkSession;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->c(Lcom/payumoney/core/SdkSession;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$8;->b:Lcom/payumoney/core/SdkSession;

    invoke-virtual {v0, v1}, Lcom/payumoney/core/SdkSession;->logout(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$8;->b:Lcom/payumoney/core/SdkSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession;Z)Z

    goto :goto_0

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$8;->b:Lcom/payumoney/core/SdkSession;

    invoke-virtual {v0, v1}, Lcom/payumoney/core/SdkSession;->logout(Ljava/lang/String;)V

    .line 518
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$8;->b:Lcom/payumoney/core/SdkSession;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$8;->a:Lcom/payumoney/core/SdkSession$Task;

    invoke-static {v0, v1, p1}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/SdkSession$Task;Ljava/lang/Throwable;)V

    .line 519
    return-void
.end method
