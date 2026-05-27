.class public Leasypay/actions/ProceedHelper;
.super Ljava/lang/Object;
.source "ProceedHelper.java"


# instance fields
.field action:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field activity:Landroid/app/Activity;

.field customEventReceiver:Landroid/content/BroadcastReceiver;

.field fields:Ljava/lang/String;

.field fragment:Leasypay/actions/EasypayBrowserFragment;

.field inputKey:Ljava/lang/String;

.field webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Ljava/util/Map;)V
    .locals 10
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "frag"    # Leasypay/actions/EasypayBrowserFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/webkit/WebView;",
            "Leasypay/actions/EasypayBrowserFragment;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p4, "actn":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Leasypay/actions/ProceedHelper$1;

    invoke-direct {v0, p0}, Leasypay/actions/ProceedHelper$1;-><init>(Leasypay/actions/ProceedHelper;)V

    iput-object v0, p0, Leasypay/actions/ProceedHelper;->customEventReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object p1, p0, Leasypay/actions/ProceedHelper;->activity:Landroid/app/Activity;

    .line 48
    iput-object p3, p0, Leasypay/actions/ProceedHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    .line 49
    iput-object p4, p0, Leasypay/actions/ProceedHelper;->action:Ljava/util/Map;

    .line 50
    iput-object p2, p0, Leasypay/actions/ProceedHelper;->webview:Landroid/webkit/WebView;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.paytm.com.paytm.pgsdk.easypay.CUSTOM_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "customEventFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Leasypay/actions/ProceedHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Leasypay/actions/ProceedHelper;->customEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    iget-object v1, p0, Leasypay/actions/ProceedHelper;->action:Ljava/util/Map;

    const-string v2, "silent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, "silent":Ljava/lang/String;
    iget-object v2, p0, Leasypay/actions/ProceedHelper;->action:Ljava/util/Map;

    const-string v3, "autoproceed"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    .local v2, "autoProceed":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 59
    const-string v1, "true"

    .line 62
    :cond_0
    const-string v3, "javascript:"

    .line 64
    .local v3, "javascript":Ljava/lang/String;
    iget-object v4, p0, Leasypay/actions/ProceedHelper;->action:Ljava/util/Map;

    const-string v5, "fields"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 66
    .local v4, "fields":Ljava/lang/String;
    const-string v5, ""

    .line 69
    .local v5, "fn":Ljava/lang/String;
    iget-object v6, p0, Leasypay/actions/ProceedHelper;->action:Ljava/util/Map;

    const-string v7, "element"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "form"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 70
    const-string v5, ".submit()"

    .line 74
    :cond_1
    iget-object v6, p0, Leasypay/actions/ProceedHelper;->action:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "input"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 75
    const-string v5, ".click()"

    .line 78
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Android.showLog(\'inside proceed helper\'); var a=fields; if(!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "){ Android.sendEvent(\'activateProceedHelper\', 0, 0); } if(typeof(autoSubmitForm) == \'undefined\'){ autoSubmitForm=function(){Android.showLog(\'activating proceedhelper1\'); a[0]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "}; }  if("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "){ autoSubmitForm();}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "binder":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Leasypay/actions/ProceedHelper;->action:Ljava/util/Map;

    const-string v9, "functionStart"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Leasypay/actions/ProceedHelper;->action:Ljava/util/Map;

    const-string v9, "functionEnd"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {p2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 2

    .line 87
    iget-object v0, p0, Leasypay/actions/ProceedHelper;->activity:Landroid/app/Activity;

    new-instance v1, Leasypay/actions/ProceedHelper$2;

    invoke-direct {v1, p0}, Leasypay/actions/ProceedHelper$2;-><init>(Leasypay/actions/ProceedHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public proceed()V
    .locals 3

    .line 97
    iget-object v0, p0, Leasypay/actions/ProceedHelper;->customEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Leasypay/actions/ProceedHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    :cond_0
    const-string v0, "javascript:"

    .line 101
    .local v0, "javascript":Ljava/lang/String;
    const-string v1, "if(typeof(autoSubmitForm) != \'undefined\'){Android.showLog(\'activating proceedhelper0\'); autoSubmitForm();}"

    .line 102
    .local v1, "triggerAutoSubmit":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v2, p0, Leasypay/actions/ProceedHelper;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public reset()V
    .locals 2

    .line 111
    :try_start_0
    iget-object v0, p0, Leasypay/actions/ProceedHelper;->customEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Leasypay/actions/ProceedHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
