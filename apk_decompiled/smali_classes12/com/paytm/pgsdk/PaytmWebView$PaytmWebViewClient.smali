.class Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;
.super Leasypay/manager/EasypayWebViewClient;
.source "PaytmWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paytm/pgsdk/PaytmWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaytmWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/paytm/pgsdk/PaytmWebView;


# direct methods
.method public constructor <init>(Lcom/paytm/pgsdk/PaytmWebView;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    .line 371
    invoke-static {p1}, Lcom/paytm/pgsdk/PaytmWebView;->access$000(Lcom/paytm/pgsdk/PaytmWebView;)Lcom/paytm/pgsdk/PaytmPGActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Leasypay/manager/EasypayWebViewClient;-><init>(Landroid/app/Activity;)V

    .line 372
    return-void
.end method


# virtual methods
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .line 460
    invoke-super {p0, p1, p2, p3}, Leasypay/manager/EasypayWebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 461
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 429
    invoke-super {p0, p1, p2}, Leasypay/manager/EasypayWebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageCommitVisible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 435
    invoke-super {p0, p1, p2}, Leasypay/manager/EasypayWebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public declared-synchronized onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7
    .param p1, "inView"    # Landroid/webkit/WebView;
    .param p2, "inUrl"    # Ljava/lang/String;

    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmWebView;->access$000(Lcom/paytm/pgsdk/PaytmWebView;)Lcom/paytm/pgsdk/PaytmPGActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmPGActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 325
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    iget-object v0, v0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 329
    :cond_0
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    iget-object v0, v0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v0

    .line 330
    .local v0, "orderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_6

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page finish url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 333
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Page finished loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 334
    const-string v1, "CALLBACK_URL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    :try_start_2
    const-string v1, "CALLBACK_URL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    const-string v1, "Merchant specific Callback Url is finished loading. Extract data now. "

    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/paytm/pgsdk/PaytmWebView;->access$202(Lcom/paytm/pgsdk/PaytmWebView;Z)Z

    .line 338
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    const-string v2, "javascript:window.HTMLOUT.processResponse(document.getElementById(\'response\').value);"

    invoke-virtual {v1, v2}, Lcom/paytm/pgsdk/PaytmWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 348
    :catch_0
    move-exception v1

    goto :goto_1

    .line 339
    :cond_1
    :try_start_3
    const-string v1, "/CAS/Response"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 340
    :try_start_4
    const-string v1, "CAS Callback Url is finished loading. Extract data now. "

    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    const-string v2, "javascript:window.HTMLOUT.processResponse(document.getElementById(\'response\').value);"

    invoke-virtual {v1, v2}, Lcom/paytm/pgsdk/PaytmWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 343
    :cond_2
    :try_start_5
    const-string v1, "theia/paytmCallback"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_3

    .line 344
    :try_start_6
    const-string v1, "CAS Callback Url is finished loading. Extract data now. "

    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    const-string v2, "javascript:window.HTMLOUT.processResponse(document.getElementById(\'response\').value);"

    invoke-virtual {v1, v2}, Lcom/paytm/pgsdk/PaytmWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 355
    :cond_3
    :goto_0
    :try_start_7
    const-string v1, "postnotificationurl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 356
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmWebView;->access$000(Lcom/paytm/pgsdk/PaytmWebView;)Lcom/paytm/pgsdk/PaytmPGActivity;

    move-result-object v2

    const-class v3, Lcom/paytm/pgsdk/IntentServicePostNotification;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "url"

    const-string v3, "postnotificationurl"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    iget-object v2, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmWebView;->access$000(Lcom/paytm/pgsdk/PaytmWebView;)Lcom/paytm/pgsdk/PaytmPGActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/paytm/pgsdk/PaytmPGActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 359
    nop

    .end local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_3

    .line 355
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 348
    :catch_1
    move-exception v1

    .line 349
    .local v1, "inEx":Ljava/lang/Exception;
    :goto_1
    :try_start_8
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v2

    const-string v3, "Redirection"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v2

    iget-object v2, v2, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 351
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v2

    const-string v3, "Paytm_H5_Load"

    const-string v4, "Redirection"

    const-string v5, "status"

    const-string v6, "fail"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_4
    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 355
    .end local v1    # "inEx":Ljava/lang/Exception;
    :try_start_9
    const-string v1, "postnotificationurl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 356
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmWebView;->access$000(Lcom/paytm/pgsdk/PaytmWebView;)Lcom/paytm/pgsdk/PaytmPGActivity;

    move-result-object v2

    const-class v3, Lcom/paytm/pgsdk/IntentServicePostNotification;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "url"

    const-string v3, "postnotificationurl"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    iget-object v2, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmWebView;->access$000(Lcom/paytm/pgsdk/PaytmWebView;)Lcom/paytm/pgsdk/PaytmPGActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/paytm/pgsdk/PaytmPGActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 359
    nop

    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_3

    .line 355
    :goto_2
    const-string v2, "postnotificationurl"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 356
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v3}, Lcom/paytm/pgsdk/PaytmWebView;->access$000(Lcom/paytm/pgsdk/PaytmWebView;)Lcom/paytm/pgsdk/PaytmPGActivity;

    move-result-object v3

    const-class v4, Lcom/paytm/pgsdk/IntentServicePostNotification;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "url"

    const-string v4, "postnotificationurl"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    iget-object v3, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v3}, Lcom/paytm/pgsdk/PaytmWebView;->access$000(Lcom/paytm/pgsdk/PaytmWebView;)Lcom/paytm/pgsdk/PaytmPGActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/paytm/pgsdk/PaytmPGActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 360
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    throw v1

    .line 363
    .end local v0    # "orderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :goto_3
    invoke-super {p0, p1, p2}, Leasypay/manager/EasypayWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    iget-object v0, v0, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 365
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v0

    const-string v1, "Paytm_H5_Load"

    const-string v2, "Redirection"

    const-string v3, "status"

    const-string v4, "fail"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 326
    :cond_7
    :goto_4
    const-string v0, "Transaction cancelled before loading web com.paytm.pgsdk.view completely."

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 327
    monitor-exit p0

    return-void

    .line 368
    :cond_8
    :goto_5
    monitor-exit p0

    return-void

    .line 323
    .end local p1    # "inView":Landroid/webkit/WebView;
    .end local p2    # "inUrl":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "inView"    # Landroid/webkit/WebView;
    .param p2, "inUrl"    # Ljava/lang/String;
    .param p3, "inFavicon"    # Landroid/graphics/Bitmap;

    monitor-enter p0

    .line 314
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Leasypay/manager/EasypayWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 317
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v0, p2}, Lcom/paytm/pgsdk/PaytmWebView;->access$100(Lcom/paytm/pgsdk/PaytmWebView;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 313
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;
    .end local p1    # "inView":Landroid/webkit/WebView;
    .end local p2    # "inUrl":Ljava/lang/String;
    .end local p3    # "inFavicon":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "inView"    # Landroid/webkit/WebView;
    .param p2, "iniErrorCode"    # I
    .param p3, "inDescription"    # Ljava/lang/String;
    .param p4, "inFailingUrl"    # Ljava/lang/String;

    monitor-enter p0

    .line 390
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occured while loading url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v0

    const-string v1, "Redirection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred while loading url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-super {p0, p1, p2, p3, p4}, Leasypay/manager/EasypayWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    iget-object v0, v0, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v0

    const-string v1, "Paytm_H5_Load"

    const-string v2, "Redirection"

    const-string v3, "status"

    const-string v4, "fail"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Description is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 399
    const/4 v0, -0x6

    if-ne p2, v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 401
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmPGService;->getmPaymentTransactionCallback()Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    move-result-object v0

    .line 402
    .local v0, "PaymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    if-eqz v0, :cond_1

    .line 403
    invoke-interface {v0, p2, p3, p4}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onErrorLoadingWebPage(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    .end local v0    # "PaymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    :cond_1
    monitor-exit p0

    return-void

    .line 389
    .end local p1    # "inView":Landroid/webkit/WebView;
    .end local p2    # "iniErrorCode":I
    .end local p3    # "inDescription":Ljava/lang/String;
    .end local p4    # "inFailingUrl":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 441
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Redirection"

    invoke-virtual {v0, v2, v1}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v1

    iget-object v1, v1, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v0

    const-string v1, "Paytm_H5_Load"

    const-string v3, "status"

    const-string v4, "fail"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_0
    invoke-super {p0, p1, p2, p3}, Leasypay/manager/EasypayWebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 446
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedHttpError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedHttpError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Redirection"

    invoke-virtual {v0, v2, v1}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v1

    iget-object v1, v1, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v0

    const-string v1, "Paytm_H5_Load"

    const-string v3, "status"

    const-string v4, "fail"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_0
    invoke-super {p0, p1, p2, p3}, Leasypay/manager/EasypayWebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 456
    return-void
.end method

.method public declared-synchronized onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5
    .param p1, "inView"    # Landroid/webkit/WebView;
    .param p2, "inHandler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "inError"    # Landroid/net/http/SslError;

    monitor-enter p0

    .line 410
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSL Error occured "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v0

    const-string v1, "Redirection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSL Error occurred "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v1

    iget-object v1, v1, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v0

    const-string v1, "Paytm_H5_Load"

    const-string v2, "Redirection"

    const-string v3, "status"

    const-string v4, "fail"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSL Handler is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 416
    if-eqz p2, :cond_1

    .line 417
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    :cond_1
    monitor-exit p0

    return-void

    .line 409
    .end local p1    # "inView":Landroid/webkit/WebView;
    .end local p2    # "inHandler":Landroid/webkit/SslErrorHandler;
    .end local p3    # "inError":Landroid/net/http/SslError;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 470
    invoke-super {p0, p1, p2}, Leasypay/manager/EasypayWebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 471
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .line 383
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "inUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v1, v0}, Lcom/paytm/pgsdk/PaytmWebView;->access$100(Lcom/paytm/pgsdk/PaytmWebView;Ljava/lang/String;)V

    .line 385
    invoke-super {p0, p1, p2}, Leasypay/manager/EasypayWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    return-object v1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 465
    invoke-super {p0, p1, p2}, Leasypay/manager/EasypayWebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .line 377
    invoke-super {p0, p1, p2}, Leasypay/manager/EasypayWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 423
    invoke-super {p0, p1, p2}, Leasypay/manager/EasypayWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
