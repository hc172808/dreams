.class Lcom/payumoney/sdkui/ui/activities/BaseActivity$TermCondWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/activities/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TermCondWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/activities/BaseActivity;


# direct methods
.method private constructor <init>(Lcom/payumoney/sdkui/ui/activities/BaseActivity;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$TermCondWebViewClient;->a:Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/payumoney/sdkui/ui/activities/BaseActivity;Lcom/payumoney/sdkui/ui/activities/BaseActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/payumoney/sdkui/ui/activities/BaseActivity;
    .param p2, "x1"    # Lcom/payumoney/sdkui/ui/activities/BaseActivity$1;

    .line 538
    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/activities/BaseActivity$TermCondWebViewClient;-><init>(Lcom/payumoney/sdkui/ui/activities/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 542
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 543
    const/4 v0, 0x1

    return v0
.end method
