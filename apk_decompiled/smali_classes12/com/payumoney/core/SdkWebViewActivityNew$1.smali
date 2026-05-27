.class Lcom/payumoney/core/SdkWebViewActivityNew$1;
.super Lcom/payu/custombrowser/PayUCustomBrowserCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkWebViewActivityNew;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/payumoney/core/SdkWebViewActivityNew;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkWebViewActivityNew;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkWebViewActivityNew;

    .line 67
    iput-object p1, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    iput-object p2, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackApprove()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-virtual {v0}, Lcom/payumoney/core/SdkWebViewActivityNew;->cancelTransaction()V

    .line 126
    return-void
.end method

.method public onBackButton(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1, "alertDialogBuilder"    # Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-super {p0, p1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onBackButton(Landroid/app/AlertDialog$Builder;)V

    .line 150
    const-string v0, "Press Ok to cancel the transaction. You will have to restart the transaction"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 151
    return-void
.end method

.method public onBackDismiss()V
    .locals 4

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "TxnCancelled"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-virtual {v1}, Lcom/payumoney/core/SdkWebViewActivityNew;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "TxnCancelAttempt"

    const-string v3, "clevertap"

    invoke-static {v1, v2, v0, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 136
    invoke-super {p0}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onBackDismiss()V

    .line 137
    return-void
.end method

.method public onCBErrorReceived(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "errormsg"    # Ljava/lang/String;

    .line 112
    return-void
.end method

.method public onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "payuResponse"    # Ljava/lang/String;
    .param p2, "merchantResponse"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-static {v0, p2}, Lcom/payumoney/core/SdkWebViewActivityNew;->a(Lcom/payumoney/core/SdkWebViewActivityNew;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    const-string v1, "onPaymentFailure"

    invoke-static {v0, v1}, Lcom/payumoney/core/SdkWebViewActivityNew;->b(Lcom/payumoney/core/SdkWebViewActivityNew;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/payumoney/core/PayUmoneySdkInitializer;->IsDebugMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure -- payuResponse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayUMoneySdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure -- merchantResponse"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 83
    new-instance v1, Lcom/payumoney/core/SdkWebViewActivityNew$1$1;

    invoke-direct {v1, p0}, Lcom/payumoney/core/SdkWebViewActivityNew$1$1;-><init>(Lcom/payumoney/core/SdkWebViewActivityNew$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "payuResponse"    # Ljava/lang/String;
    .param p2, "merchantResponse"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-static {v0, p2}, Lcom/payumoney/core/SdkWebViewActivityNew;->a(Lcom/payumoney/core/SdkWebViewActivityNew;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    const-string v1, "onPaymentSuccess"

    invoke-static {v0, v1}, Lcom/payumoney/core/SdkWebViewActivityNew;->b(Lcom/payumoney/core/SdkWebViewActivityNew;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/payumoney/core/PayUmoneySdkInitializer;->IsDebugMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success -- payuResponse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayUMoneySdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success -- merchantResponse"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-virtual {v0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-static {v1}, Lcom/payumoney/core/SdkWebViewActivityNew;->a(Lcom/payumoney/core/SdkWebViewActivityNew;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/core/SdkSession;->verifyPaymentDetails(Ljava/lang/String;Lcom/payumoney/core/listener/OnVerifyPaymentResponse;)V

    .line 108
    return-void
.end method

.method public onPaymentTerminate()V
    .locals 0

    .line 94
    return-void
.end method

.method public setCBProperties(Landroid/webkit/WebView;Lcom/payu/custombrowser/Bank;)V
    .locals 2
    .param p1, "webview"    # Landroid/webkit/WebView;
    .param p2, "payUCustomBrowser"    # Lcom/payu/custombrowser/Bank;

    .line 117
    new-instance v0, Lcom/payu/custombrowser/PayUWebChromeClient;

    invoke-direct {v0, p2}, Lcom/payu/custombrowser/PayUWebChromeClient;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 118
    new-instance v0, Lcom/payu/custombrowser/PayUWebViewClient;

    iget-object v1, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1;->a:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/payu/custombrowser/PayUWebViewClient;-><init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 119
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-static {v0, p2}, Lcom/payumoney/core/SdkWebViewActivityNew;->a(Lcom/payumoney/core/SdkWebViewActivityNew;Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank;

    .line 120
    return-void
.end method
