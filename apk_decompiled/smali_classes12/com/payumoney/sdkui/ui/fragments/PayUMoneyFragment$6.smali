.class Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/listener/OnValidateVpaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    .line 876
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->c:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->a:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Lcom/payumoney/core/response/ErrorResponse;
    .param p2, "tag"    # Ljava/lang/String;

    .line 898
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 899
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->c:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonDisable()V

    .line 900
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->c:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->h(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->setErrorEnabled(Z)V

    .line 901
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/payumoney/core/response/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->c:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->h(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payumoney/core/response/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->c:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->h(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->c:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payumoney/sdkui/R$string;->error_incorrect_upi_id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 906
    :goto_0
    return-void
.end method

.method public onSuccess(ZLjava/lang/String;)V
    .locals 7
    .param p1, "isValidVpa"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .line 879
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 880
    if-eqz p1, :cond_0

    .line 882
    new-instance v3, Lcom/payumoney/core/request/PaymentRequest;

    invoke-direct {v3}, Lcom/payumoney/core/request/PaymentRequest;-><init>()V

    .line 883
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->c:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getPaymentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setPaymentID(Ljava/lang/String;)V

    .line 884
    const-string v0, "UPI"

    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setPg(Ljava/lang/String;)V

    .line 885
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->UPI:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setBankCode(Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->c:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getConvenieneceFee()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setConvenienceFee(D)V

    .line 887
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setVpa(Ljava/lang/String;)V

    .line 888
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->c:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-string v6, "UPI_PAYMENT_REQUEST_API_TAG"

    invoke-virtual/range {v1 .. v6}, Lcom/payumoney/core/PayUmoneySDK;->makePayment(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;Lcom/payumoney/core/request/PaymentRequest;ZLandroid/app/Activity;Ljava/lang/String;)V

    .line 889
    goto :goto_0

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->c:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->h(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->setErrorEnabled(Z)V

    .line 891
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->c:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->h(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->c:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payumoney/sdkui/R$string;->error_incorrect_upi_id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 892
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;->c:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonDisable()V

    .line 894
    :goto_0
    return-void
.end method
