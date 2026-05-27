.class public Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/ui/PayULoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onFocusListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/ui/PayULoginDialog;


# direct methods
.method public constructor <init>(Lcom/payumoney/core/ui/PayULoginDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/ui/PayULoginDialog;

    .line 535
    iput-object p1, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 539
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/payumoney/core/R$id;->email:I

    if-ne v1, v2, :cond_4

    .line 542
    if-nez p2, :cond_5

    .line 544
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v1}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v1}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 545
    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->isValidNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0, v2}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 548
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-virtual {v1}, Lcom/payumoney/core/ui/PayULoginDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payumoney/core/R$string;->email_phone_invalid:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 550
    :cond_0
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 553
    :cond_1
    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->isValidEmail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 554
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0, v2}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-virtual {v1}, Lcom/payumoney/core/ui/PayULoginDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payumoney/core/R$string;->email_phone_invalid:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 557
    :cond_2
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v1, v0}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 560
    :cond_3
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, "Please fill the details"

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 563
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/core/R$id;->password:I

    if-ne v0, v1, :cond_5

    .line 564
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->c(Lcom/payumoney/core/ui/PayULoginDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->isValidateUsername(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 568
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->g(Lcom/payumoney/core/ui/PayULoginDialog;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 570
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->h(Lcom/payumoney/core/ui/PayULoginDialog;)V

    .line 572
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v1}, Lcom/payumoney/core/ui/PayULoginDialog;->c(Lcom/payumoney/core/ui/PayULoginDialog;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "otp_request_api_tag"

    invoke-virtual {v0, v1, v2, v3}, Lcom/payumoney/core/PayUmoneySDK;->requestOTPForLogin(Lcom/payumoney/core/listener/OnOTPRequestSendListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->d(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 582
    :cond_5
    :goto_0
    return-void
.end method
