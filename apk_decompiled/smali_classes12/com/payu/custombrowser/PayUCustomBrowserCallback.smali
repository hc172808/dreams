.class public Lcom/payu/custombrowser/PayUCustomBrowserCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNavigationDrawerObject(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 0
    .param p1, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;

    .line 66
    return-void
.end method

.method public getPostData()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPostURL()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isPaymentOptionAvailable(Lcom/payu/custombrowser/bean/CustomBrowserResultData;)V
    .locals 0
    .param p1, "resultData"    # Lcom/payu/custombrowser/bean/CustomBrowserResultData;

    .line 69
    return-void
.end method

.method public onBackApprove()V
    .locals 0

    .line 40
    return-void
.end method

.method public onBackButton(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "alertDialogBuilder"    # Landroid/app/AlertDialog$Builder;

    .line 37
    return-void
.end method

.method public onBackDismiss()V
    .locals 0

    .line 43
    return-void
.end method

.method public onCBErrorReceived(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "errormsg"    # Ljava/lang/String;

    .line 26
    return-void
.end method

.method public onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "payuResult"    # Ljava/lang/String;
    .param p2, "merchantResponse"    # Ljava/lang/String;

    .line 17
    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "payuResult"    # Ljava/lang/String;
    .param p2, "merchantResponse"    # Ljava/lang/String;

    .line 23
    return-void
.end method

.method public onPaymentTerminate()V
    .locals 0

    .line 20
    return-void
.end method

.method public onVpaEntered(Ljava/lang/String;Lcom/payu/custombrowser/PackageListDialogFragment;)V
    .locals 0
    .param p1, "vpa"    # Ljava/lang/String;
    .param p2, "packageListDialogFragment"    # Lcom/payu/custombrowser/PackageListDialogFragment;

    .line 72
    return-void
.end method

.method public setCBProperties(Landroid/webkit/WebView;Lcom/payu/custombrowser/Bank;)V
    .locals 0
    .param p1, "webview"    # Landroid/webkit/WebView;
    .param p2, "payUCustomBrowser"    # Lcom/payu/custombrowser/Bank;

    .line 34
    return-void
.end method

.method public setCBProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "postURL"    # Ljava/lang/String;
    .param p2, "postData"    # Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p2}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->setPostData(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->setPostURL(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public setPostData(Ljava/lang/String;)V
    .locals 0
    .param p1, "postData"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->a:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPostURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "postURL"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->b:Ljava/lang/String;

    .line 62
    return-void
.end method
