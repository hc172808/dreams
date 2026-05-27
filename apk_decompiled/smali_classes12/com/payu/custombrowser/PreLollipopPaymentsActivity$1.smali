.class Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "client"    # Landroidx/browser/customtabs/CustomTabsClient;

    .line 76
    iget-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    iput-object p2, v0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->c:Landroidx/browser/customtabs/CustomTabsClient;

    .line 77
    iget-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    iget-object v0, v0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->c:Landroidx/browser/customtabs/CustomTabsClient;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    .line 78
    iget-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    iput-object v1, v0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->d:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 79
    iget-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    iget-object v0, v0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->d:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->enableUrlBarHiding()Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 80
    iget-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    iget-object v0, v0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->d:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 81
    iget-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    iget-object v0, v0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->d:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 82
    iget-object v2, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    iget-object v2, v2, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    iget-object v3, v3, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-static {v2}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "custom_tabs_load_html"

    const-string v4, "cb_status"

    const/4 v5, 0x1

    if-nez v2, :cond_1

    .line 86
    iget-object v1, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-virtual {v1, v4, v3}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    const-string v2, "http://127.0.0.1:8080/htmldata"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 88
    iget-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-static {v0, v5}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;Z)Z

    goto/16 :goto_0

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-static {v2}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->b(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    iget-object v1, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-virtual {v1, v4, v3}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-static {v1}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->b(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 92
    iget-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-static {v0, v5}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;Z)Z

    goto :goto_0

    .line 93
    :cond_2
    iget-object v2, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-static {v2}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->c(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-static {v2}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->d(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 94
    new-instance v1, Lcom/payu/custombrowser/util/c;

    invoke-direct {v1}, Lcom/payu/custombrowser/util/c;-><init>()V

    .line 95
    iget-object v2, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-static {v4}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->d(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/payu/custombrowser/util/c;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {v2, v3}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 96
    iget-object v1, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    const-string v2, "http://127.0.0.1:8080"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 97
    iget-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-static {v0, v5}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;Z)Z

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-static {v0, v1}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;Z)Z

    .line 100
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 101
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    const/16 v1, 0x68

    const-string v2, "POST_DATA_OR_HTML_DATA_NOT_PRESENT"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onCBErrorReceived(ILjava/lang/String;)V

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-static {v0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->e(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)V

    .line 105
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 109
    return-void
.end method
