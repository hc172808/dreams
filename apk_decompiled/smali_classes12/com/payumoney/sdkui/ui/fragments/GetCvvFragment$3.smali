.class Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    .line 171
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-static {v2}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->a(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->a(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;J)J

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 182
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v3, "page"

    const-string v4, "CVVEntry"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v3}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "PayNowButtonClicked"

    const-string v5, "clevertap"

    invoke-static {v3, v4, v0, v5}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v3}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->isDataConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getCvv()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->b(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)Lcom/payumoney/core/request/PaymentRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/payumoney/core/utils/SdkHelper;->isValidCvv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SavedCard CVV Entered"

    invoke-static {v1, v2, v0, v5}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->b(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)Lcom/payumoney/core/request/PaymentRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getCvv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setCvv(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v2

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->c(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;

    move-result-object v3

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->b(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)Lcom/payumoney/core/request/PaymentRequest;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-string v7, "CARD_PAYMENT_REQUEST_API_TAG"

    invoke-virtual/range {v2 .. v7}, Lcom/payumoney/core/PayUmoneySDK;->makePayment(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;Lcom/payumoney/core/request/PaymentRequest;ZLandroid/app/Activity;Ljava/lang/String;)V

    .line 195
    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->setPaymentButtonDisable()V

    .line 197
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    sget v1, Lcom/payumoney/sdkui/R$string;->payu_invalid_cvv:I

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->showError(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->setPaymentButtonDisable()V

    .line 201
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    sget v1, Lcom/payumoney/sdkui/R$string;->no_internet_connection:I

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->showError(Ljava/lang/String;)V

    .line 203
    :goto_0
    return-void
.end method
