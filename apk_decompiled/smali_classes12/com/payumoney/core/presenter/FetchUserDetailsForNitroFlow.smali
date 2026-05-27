.class public Lcom/payumoney/core/presenter/FetchUserDetailsForNitroFlow;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "paymentId"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "phone"    # Ljava/lang/String;
    .param p6, "tag"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p2}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v1

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/payumoney/core/SdkSession;->fetchUserDetailsForNitro(Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void

    .line 16
    :cond_1
    :goto_0
    const-string v0, "Mandatory param is missing"

    invoke-interface {p1, v0, p6}, Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method
