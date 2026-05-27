.class Lcom/payumoney/core/ui/PayULoginDialog$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/ui/PayULoginDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/ui/PayULoginDialog;


# direct methods
.method constructor <init>(Lcom/payumoney/core/ui/PayULoginDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/ui/PayULoginDialog;

    .line 296
    iput-object p1, p0, Lcom/payumoney/core/ui/PayULoginDialog$8;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 300
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$8;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->c(Lcom/payumoney/core/ui/PayULoginDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->isValidateUsername(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 304
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog$8;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v1}, Lcom/payumoney/core/ui/PayULoginDialog;->c(Lcom/payumoney/core/ui/PayULoginDialog;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdValue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog$8;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-virtual {v1}, Lcom/payumoney/core/ui/PayULoginDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "LoginOTPResent"

    const-string v3, "clevertap"

    invoke-static {v1, v2, v0, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$8;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->g(Lcom/payumoney/core/ui/PayULoginDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$8;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->h(Lcom/payumoney/core/ui/PayULoginDialog;)V

    .line 313
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog$8;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v1}, Lcom/payumoney/core/ui/PayULoginDialog;->c(Lcom/payumoney/core/ui/PayULoginDialog;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "otp_request_api_tag"

    invoke-virtual {v0, v1, v2, v3}, Lcom/payumoney/core/PayUmoneySDK;->requestOTPForLogin(Lcom/payumoney/core/listener/OnOTPRequestSendListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$8;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->i(Lcom/payumoney/core/ui/PayULoginDialog;)V

    .line 316
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$8;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->e(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;Landroid/view/View;)V

    .line 317
    goto :goto_1

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$8;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->c(Lcom/payumoney/core/ui/PayULoginDialog;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$8;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->c(Lcom/payumoney/core/ui/PayULoginDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$8;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->c(Lcom/payumoney/core/ui/PayULoginDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->isValidNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$8;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, "Invalid Phone number"

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$8;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->c(Lcom/payumoney/core/ui/PayULoginDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 323
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$8;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, "Invalid Email"

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 319
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$8;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, "Please fill the details"

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 326
    :cond_5
    :goto_1
    return-void
.end method
