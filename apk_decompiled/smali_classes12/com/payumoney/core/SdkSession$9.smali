.class Lcom/payumoney/core/SdkSession$9;
.super Lcom/android/volley/toolbox/StringRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/lang/String;
    .param p5, "x3"    # Lcom/android/volley/Response$ErrorListener;

    .line 520
    .local p4, "x2":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$9;->c:Lcom/payumoney/core/SdkSession;

    iput-object p6, p0, Lcom/payumoney/core/SdkSession$9;->a:Ljava/util/Map;

    iput-object p7, p0, Lcom/payumoney/core/SdkSession$9;->b:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$9;->c:Lcom/payumoney/core/SdkSession;

    invoke-virtual {v0}, Lcom/payumoney/core/SdkSession;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 558
    const-string v0, "application/x-www-form-urlencoded"

    return-object v0

    .line 560
    :cond_0
    invoke-super {p0}, Lcom/android/volley/toolbox/StringRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 532
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 534
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$9;->b:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$9;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$9;->c:Lcom/payumoney/core/SdkSession;

    invoke-static {v1}, Lcom/payumoney/core/SdkSession;->d(Lcom/payumoney/core/SdkSession;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 540
    const-string v1, "User-Agent"

    const-string v2, "PayUMoneyAndroidSDK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v1, "x-payumoney-sdk-ver"

    const-string v2, "7.6.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v1, Lcom/payumoney/core/utils/SdkHelper;->pnpVersion:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 544
    sget-object v1, Lcom/payumoney/core/utils/SdkHelper;->pnpVersion:Ljava/lang/String;

    const-string v2, "x-payumoney-pnp-ver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$9;->c:Lcom/payumoney/core/SdkSession;

    invoke-virtual {v1}, Lcom/payumoney/core/SdkSession;->getToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$9;->c:Lcom/payumoney/core/SdkSession;

    invoke-virtual {v2}, Lcom/payumoney/core/SdkSession;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 550
    :cond_2
    const-string v1, "Accept"

    const-string v2, "*/*;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :goto_0
    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 523
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->WALLET_SDK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$9;->a:Ljava/util/Map;

    invoke-static {}, Lcom/payumoney/core/SdkSession;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$9;->a:Ljava/util/Map;

    const-string v1, "isMobile"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$9;->a:Ljava/util/Map;

    return-object v0
.end method
