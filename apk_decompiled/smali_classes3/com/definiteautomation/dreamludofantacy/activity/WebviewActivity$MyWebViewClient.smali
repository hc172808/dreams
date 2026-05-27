.class Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;


# direct methods
.method private constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$MyWebViewClient;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;
    .param p2, "x1"    # Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$1;

    .line 258
    invoke-direct {p0, p1}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$MyWebViewClient;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$MyWebViewClient;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 274
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "url",
            "favicon"
        }
    .end annotation

    .line 267
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 268
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$MyWebViewClient;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 269
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "errorCode",
            "description",
            "failingUrl"
        }
    .end annotation

    .line 278
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$MyWebViewClient;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 280
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url"
        }
    .end annotation

    .line 261
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 262
    const/4 v0, 0x1

    return v0
.end method
