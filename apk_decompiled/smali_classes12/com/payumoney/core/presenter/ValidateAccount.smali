.class public Lcom/payumoney/core/presenter/ValidateAccount;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/listener/OnUserLoginListener;Ljava/lang/String;)V
    .locals 8
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onUserLoginListener"    # Lcom/payumoney/core/listener/OnUserLoginListener;
    .param p5, "tag"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "Invalid params"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 19
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    invoke-static {p2}, Lcom/payumoney/core/utils/SdkHelper;->isValidateUsername(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    invoke-static {p1}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v2

    const/4 v6, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/payumoney/core/SdkSession;->create(Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/listener/OnUserLoginListener;Lcom/payumoney/core/listener/PayULoginDialogListener;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {p4, v0, p5}, Lcom/payumoney/core/listener/OnUserLoginListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_0
    return-void

    .line 20
    :cond_2
    :goto_1
    invoke-interface {p4, v0, p5}, Lcom/payumoney/core/listener/OnUserLoginListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
