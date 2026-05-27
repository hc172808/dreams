.class public Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;
.super Ljava/lang/Object;
.source "PaytmWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paytm/pgsdk/PaytmWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PaytmJavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/paytm/pgsdk/PaytmWebView;


# direct methods
.method public constructor <init>(Lcom/paytm/pgsdk/PaytmWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/paytm/pgsdk/PaytmWebView;

    .line 496
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized returnResponse(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "inResponse"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 592
    :try_start_0
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmPGService;->getmPaymentTransactionCallback()Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    move-result-object v0

    .line 594
    .local v0, "PaymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-virtual {v1}, Lcom/paytm/pgsdk/PaytmWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$2;-><init>(Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    .end local v0    # "PaymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    goto :goto_0

    .line 591
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;
    .end local p1    # "inResponse":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 613
    .restart local p1    # "inResponse":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 614
    .local v0, "inEx":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v1

    const-string v2, "Response_Back"

    const-string v3, "Redirection"

    const-string v4, "status"

    const-string v5, "fail"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v1

    const-string v2, "Redirection"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V

    .line 617
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paytm/pgsdk/PaytmPGService;->getmPaymentTransactionCallback()Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 618
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paytm/pgsdk/PaytmPGService;->getmPaymentTransactionCallback()Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onTransactionResponse(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    .end local v0    # "inEx":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 591
    .end local p1    # "inResponse":Landroid/os/Bundle;
    :goto_1
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized inVokeUpiFlow(Ljava/lang/String;)V
    .locals 4
    .param p1, "inres"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    monitor-enter p0

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmWebView;->access$000(Lcom/paytm/pgsdk/PaytmWebView;)Lcom/paytm/pgsdk/PaytmPGActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmWebView;->access$000(Lcom/paytm/pgsdk/PaytmWebView;)Lcom/paytm/pgsdk/PaytmPGActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paytm/pgsdk/PaytmWebView;->access$400(Lcom/paytm/pgsdk/PaytmWebView;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "appList":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window.upiIntent.setUpiIntentApps(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "jsUPi":Ljava/lang/String;
    iget-object v2, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    new-instance v3, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$1;

    invoke-direct {v3, p0, v1}, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$1;-><init>(Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/paytm/pgsdk/PaytmWebView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    .end local v0    # "appList":Ljava/lang/String;
    .end local v1    # "jsUPi":Ljava/lang/String;
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;
    :cond_0
    goto :goto_0

    .line 535
    .end local p1    # "inres":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 550
    .restart local p1    # "inres":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 551
    .local v0, "inEx":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v1

    const-string v2, "Redirection"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    .end local v0    # "inEx":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 535
    .end local p1    # "inres":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized postMobileNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "num"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    monitor-enter p0

    .line 630
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized processResponse(Ljava/lang/String;)V
    .locals 8
    .param p1, "inResponse"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    monitor-enter p0

    .line 507
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Merchant Response is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v0, p1}, Lcom/paytm/pgsdk/PaytmWebView;->access$300(Lcom/paytm/pgsdk/PaytmWebView;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 509
    .local v0, "bundleResponse":Landroid/os/Bundle;
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v1

    iget-object v1, v1, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v1}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "CALLBACK_URL"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 510
    .local v1, "callBackUrl":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;->returnResponse(Landroid/os/Bundle;)V

    .line 512
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    const-string v2, "Returning the response back to Merchant Application"

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paytm/pgsdk/PaytmPGService;->getmPaymentTransactionCallback()Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    move-result-object v2

    .line 515
    .local v2, "paymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    if-eqz v2, :cond_0

    .line 516
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v3

    const-string v4, "Response_Back"

    const-string v5, "Redirection"

    const-string v6, "status"

    const-string v7, "success"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v3, "no callback url"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onTransactionCancel(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 520
    .end local v2    # "paymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;
    :cond_0
    goto :goto_0

    .line 521
    :cond_1
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v2

    const-string v3, "Response_Back"

    const-string v4, "Redirection"

    const-string v5, "status"

    const-string v6, "fail"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v2, "Merchant Specific URL is present, So posting all parameters to Merchant specific URL"

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    .end local v0    # "bundleResponse":Landroid/os/Bundle;
    .end local v1    # "callBackUrl":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 506
    .end local p1    # "inResponse":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 524
    .restart local p1    # "inResponse":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 525
    .local v0, "inEx":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v1

    const-string v2, "Response_Back"

    const-string v3, "Redirection"

    const-string v4, "status"

    const-string v5, "fail"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v1

    const-string v2, "Redirection"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    .end local v0    # "inEx":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 506
    .end local p1    # "inResponse":Ljava/lang/String;
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveMobileNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "num"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    monitor-enter p0

    .line 625
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized upiAppClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deeplink"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    monitor-enter p0

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmWebView;->access$000(Lcom/paytm/pgsdk/PaytmWebView;)Lcom/paytm/pgsdk/PaytmPGActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmWebView;->access$000(Lcom/paytm/pgsdk/PaytmWebView;)Lcom/paytm/pgsdk/PaytmPGActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 561
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .local v1, "startActivityIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmWebView;->access$500(Lcom/paytm/pgsdk/PaytmWebView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 563
    iget-object v2, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmWebView;->access$500(Lcom/paytm/pgsdk/PaytmWebView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 564
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 565
    .local v3, "activity":Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .local v4, "name":Landroid/content/ComponentName;
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 569
    .local v5, "upiDeepLink":Landroid/net/Uri$Builder;
    const-string v6, "upi"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "pay"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 570
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 571
    .local v6, "deepLinkUpi":Landroid/net/Uri$Builder;
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 572
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 574
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App click package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 575
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App click deeplink:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 576
    iget-object v7, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v7}, Lcom/paytm/pgsdk/PaytmWebView;->access$000(Lcom/paytm/pgsdk/PaytmWebView;)Lcom/paytm/pgsdk/PaytmPGActivity;

    move-result-object v7

    const/16 v8, 0x69

    invoke-virtual {v7, v1, v8}, Lcom/paytm/pgsdk/PaytmPGActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "startActivityIntent":Landroid/content/Intent;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "activity":Landroid/content/pm/ActivityInfo;
    .end local v4    # "name":Landroid/content/ComponentName;
    .end local v5    # "upiDeepLink":Landroid/net/Uri$Builder;
    .end local v6    # "deepLinkUpi":Landroid/net/Uri$Builder;
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;
    :cond_0
    goto :goto_0

    .line 557
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "deeplink":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 579
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "deeplink":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 580
    .local v0, "inEx":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v1

    const-string v2, "Redirection"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    .end local v0    # "inEx":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 557
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "deeplink":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    throw p1
.end method
