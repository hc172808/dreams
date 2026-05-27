.class public Lcom/payumoney/core/presenter/PayUMoneyLogin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/listener/PayULoginDialogListener;


# instance fields
.field a:Lcom/payumoney/core/ui/PayULoginDialog;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/payumoney/core/listener/OnUserLoginListener;Landroid/content/Context;Lcom/payumoney/core/request/LoginParamsRequest;Ljava/lang/String;)V
    .locals 7
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnUserLoginListener;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "loginParams"    # Lcom/payumoney/core/request/LoginParamsRequest;
    .param p4, "tag"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p3}, Lcom/payumoney/core/request/LoginParamsRequest;->getPassword()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/payumoney/core/request/LoginParamsRequest;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    const-string v0, "Password can not be empty"

    invoke-interface {p1, v0, p4}, Lcom/payumoney/core/listener/OnUserLoginListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_1
    invoke-virtual {p3}, Lcom/payumoney/core/request/LoginParamsRequest;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/payumoney/core/request/LoginParamsRequest;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    :cond_2
    const-string v0, "Username can not be empty"

    invoke-interface {p1, v0, p4}, Lcom/payumoney/core/listener/OnUserLoginListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_3
    invoke-static {p2}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v1

    invoke-virtual {p3}, Lcom/payumoney/core/request/LoginParamsRequest;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/payumoney/core/request/LoginParamsRequest;->getPassword()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p0

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/payumoney/core/SdkSession;->create(Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/listener/OnUserLoginListener;Lcom/payumoney/core/listener/PayULoginDialogListener;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getUserLoginDetails(Lcom/payumoney/core/listener/onUserAccountReceivedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/payumoney/core/listener/onUserAccountReceivedListener;
    .param p2, "paymentID"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 76
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/presenter/PayUMoneyLogin;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lcom/payumoney/core/SdkSession;->fetchUserPaymentData(Ljava/lang/String;Lcom/payumoney/core/listener/onUserAccountReceivedListener;Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    const-string v0, "Invalid Payment ID"

    invoke-interface {p1, v0, p3}, Lcom/payumoney/core/listener/onUserAccountReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_1
    return-void
.end method

.method public launchPayUMoneyLoginFragment(Lcom/payumoney/core/listener/OnUserLoginListener;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V
    .locals 1
    .param p1, "onUserLoginListener"    # Lcom/payumoney/core/listener/OnUserLoginListener;
    .param p2, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p3, "theme"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .line 48
    if-nez p2, :cond_0

    .line 49
    const-string v0, "fragment manager is null"

    invoke-interface {p1, v0, p4}, Lcom/payumoney/core/listener/OnUserLoginListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void

    .line 52
    :cond_0
    invoke-static {p3}, Lcom/payumoney/core/ui/PayULoginDialog;->newInstance(I)Lcom/payumoney/core/ui/PayULoginDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/presenter/PayUMoneyLogin;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    .line 53
    invoke-virtual {v0, p1}, Lcom/payumoney/core/ui/PayULoginDialog;->setLoginListener(Lcom/payumoney/core/listener/OnUserLoginListener;)V

    .line 54
    iget-object v0, p0, Lcom/payumoney/core/presenter/PayUMoneyLogin;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-virtual {v0, p0}, Lcom/payumoney/core/ui/PayULoginDialog;->setLoginDialogListener(Lcom/payumoney/core/listener/PayULoginDialogListener;)V

    .line 55
    iget-object v0, p0, Lcom/payumoney/core/presenter/PayUMoneyLogin;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-virtual {v0, p2, p4}, Lcom/payumoney/core/ui/PayULoginDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public onDialogDismiss(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/payumoney/core/presenter/PayUMoneyLogin;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/payumoney/core/presenter/PayUMoneyLogin;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-virtual {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 67
    :goto_0
    return-void
.end method

.method public onErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/payumoney/core/presenter/PayUMoneyLogin;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-virtual {v0, p1}, Lcom/payumoney/core/ui/PayULoginDialog;->updateUiOnError(Ljava/lang/String;)V

    .line 72
    return-void
.end method
