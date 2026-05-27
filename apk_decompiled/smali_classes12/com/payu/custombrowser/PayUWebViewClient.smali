.class public Lcom/payu/custombrowser/PayUWebViewClient;
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

    .line 56
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->a:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->b:Z

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->c:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/payu/custombrowser/PayUWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    .line 58
    sget-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    sput-object p2, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1, p2}, Lcom/payu/custombrowser/Bank;->onLoadResourse(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 84
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 86
    iget-boolean v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 87
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUWebViewClient;->a:Z

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 91
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUWebViewClient;->a:Z

    .line 92
    iput-boolean v2, p0, Lcom/payu/custombrowser/PayUWebViewClient;->b:Z

    goto :goto_0

    .line 94
    :cond_1
    iput-boolean v2, p0, Lcom/payu/custombrowser/PayUWebViewClient;->b:Z

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {v0, p2}, Lcom/payu/custombrowser/Bank;->onPageFinishWebclient(Ljava/lang/String;)V

    .line 100
    :cond_2
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->a:Z

    .line 76
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p2}, Lcom/payu/custombrowser/Bank;->onPageStartedWebclient(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    if-eqz p4, :cond_0

    .line 115
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->d:Lcom/payu/custombrowser/Bank;

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
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    .line 128
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
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, p1, p2, p3}, Lcom/payu/custombrowser/Bank;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 158
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/payu/custombrowser/PayUWebViewClient;->c:Ljava/lang/String;

    .line 164
    invoke-static {p2}, Lcom/payu/custombrowser/util/c;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/payu/custombrowser/util/c;->a(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/payu/custombrowser/util/c;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return v1

    .line 170
    :cond_0
    const-string v0, "intent://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    return v1

    .line 175
    :cond_1
    iget-boolean v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->a:Z

    if-nez v0, :cond_2

    .line 176
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUWebViewClient;->b:Z

    .line 178
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->a:Z

    .line 179
    iget-object v1, p0, Lcom/payu/custombrowser/PayUWebViewClient;->d:Lcom/payu/custombrowser/Bank;

    if-eqz v1, :cond_3

    .line 180
    invoke-virtual {v1, p2}, Lcom/payu/custombrowser/Bank;->onOverrideURL(Ljava/lang/String;)V

    .line 182
    :cond_3
    return v0
.end method
