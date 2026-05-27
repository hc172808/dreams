.class public Lcom/payu/custombrowser/PayUSurePayWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/payu/custombrowser/Bank;


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)V
    .locals 1
    .param p1, "bank"    # Lcom/payu/custombrowser/Bank;
    .param p2, "merchantKey"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->a:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->b:Z

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->c:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    .line 59
    sget-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 60
    sput-object p2, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1, p2}, Lcom/payu/custombrowser/Bank;->onLoadResourse(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 75
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 77
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->a:Z

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 81
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->a:Z

    .line 82
    iput-boolean v2, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->b:Z

    goto :goto_0

    .line 84
    :cond_1
    iput-boolean v2, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->b:Z

    .line 86
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->isSurePayValueLoaded:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->isS2SHtmlSupport:Z

    if-eqz v0, :cond_3

    .line 87
    new-instance v0, Lcom/payu/custombrowser/util/c;

    invoke-direct {v0}, Lcom/payu/custombrowser/util/c;-><init>()V

    iget-object v1, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "surepay_s2s"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/util/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$string;->surepay_js:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 94
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_4

    .line 95
    invoke-virtual {v0, p2}, Lcom/payu/custombrowser/Bank;->onPageFinishWebclient(Ljava/lang/String;)V

    .line 97
    :cond_4
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->a:Z

    .line 68
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p2}, Lcom/payu/custombrowser/Bank;->onPageStartedWebclient(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    if-eqz p4, :cond_0

    .line 114
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    const-string v0, "net::ERR_CONNECTION_RESET"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, p2, p3}, Lcom/payu/custombrowser/Bank;->onReceivedErrorWebClient(ILjava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;

    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 127
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "net::ERR_CONNECTION_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->onReceivedErrorWebClient(ILjava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .line 136
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, p1, p2, p3}, Lcom/payu/custombrowser/Bank;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 141
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->c:Ljava/lang/String;

    .line 147
    invoke-static {p2}, Lcom/payu/custombrowser/util/c;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/payu/custombrowser/util/c;->a(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/payu/custombrowser/util/c;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return v1

    .line 153
    :cond_0
    const-string v0, "intent://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    return v1

    .line 157
    :cond_1
    iget-boolean v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->a:Z

    if-nez v0, :cond_2

    .line 158
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->b:Z

    .line 161
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->a:Z

    .line 163
    iget-object v1, p0, Lcom/payu/custombrowser/PayUSurePayWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    if-eqz v1, :cond_3

    .line 164
    invoke-virtual {v1, p2}, Lcom/payu/custombrowser/Bank;->onOverrideURL(Ljava/lang/String;)V

    .line 167
    :cond_3
    return v0
.end method
