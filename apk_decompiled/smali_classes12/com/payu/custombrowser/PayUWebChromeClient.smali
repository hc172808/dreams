.class public Lcom/payu/custombrowser/PayUWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field private a:Lcom/payu/custombrowser/Bank;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/Bank;)V
    .locals 1
    .param p1, "bank"    # Lcom/payu/custombrowser/Bank;

    .line 38
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUWebChromeClient;->b:Z

    .line 39
    iput-object p1, p0, Lcom/payu/custombrowser/PayUWebChromeClient;->a:Lcom/payu/custombrowser/Bank;

    .line 40
    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .line 49
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebChromeClient;->a:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_2

    .line 50
    iget-boolean v1, p0, Lcom/payu/custombrowser/PayUWebChromeClient;->b:Z

    const/16 v2, 0x64

    if-nez v1, :cond_0

    if-ge p2, v2, :cond_0

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUWebChromeClient;->b:Z

    .line 52
    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->onPageStarted()V

    goto :goto_0

    .line 53
    :cond_0
    if-ne p2, v2, :cond_1

    .line 54
    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->onPageStarted()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUWebChromeClient;->b:Z

    .line 56
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebChromeClient;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->onPageFinished()V

    .line 58
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebChromeClient;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, p2}, Lcom/payu/custombrowser/Bank;->onProgressChanged(I)V

    .line 61
    :cond_2
    return-void
.end method
