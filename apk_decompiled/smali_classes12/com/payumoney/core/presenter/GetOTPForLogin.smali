.class public Lcom/payumoney/core/presenter/GetOTPForLogin;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/payumoney/core/listener/OnOTPRequestSendListener;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnOTPRequestSendListener;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "Invalid params"

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    invoke-static {p3}, Lcom/payumoney/core/utils/SdkHelper;->isValidateUsername(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-static {p2}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p4}, Lcom/payumoney/core/SdkSession;->sendOTPsForLoginSignUP(Ljava/lang/String;Lcom/payumoney/core/listener/OnOTPRequestSendListener;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_1
    invoke-interface {p1, v0, p4}, Lcom/payumoney/core/listener/OnOTPRequestSendListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_0
    return-void

    .line 17
    :cond_2
    :goto_1
    invoke-interface {p1, v0, p4}, Lcom/payumoney/core/listener/OnOTPRequestSendListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
