.class public Leasypay/actions/RadioHelper;
.super Ljava/lang/Object;
.source "RadioHelper.java"


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

.field cbNoOtp:Landroid/widget/CheckBox;

.field cbSendOtp:Landroid/widget/CheckBox;

.field customEventReceiver:Landroid/content/BroadcastReceiver;

.field fields:Ljava/lang/String;

.field fragment:Leasypay/actions/EasypayBrowserFragment;

.field inputKey:Ljava/lang/String;

.field mUrl:Ljava/lang/String;

.field radio_one:Ljava/lang/String;

.field radio_two:Ljava/lang/String;

.field webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Ljava/util/Map;)V
    .locals 5
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

    .line 59
    .local p4, "actn":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "0"

    iput-object v0, p0, Leasypay/actions/RadioHelper;->radio_one:Ljava/lang/String;

    .line 30
    const-string v0, "1"

    iput-object v0, p0, Leasypay/actions/RadioHelper;->radio_two:Ljava/lang/String;

    .line 34
    new-instance v0, Leasypay/actions/RadioHelper$1;

    invoke-direct {v0, p0}, Leasypay/actions/RadioHelper$1;-><init>(Leasypay/actions/RadioHelper;)V

    iput-object v0, p0, Leasypay/actions/RadioHelper;->customEventReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Leasypay/actions/RadioHelper;->activity:Landroid/app/Activity;

    .line 62
    iput-object p3, p0, Leasypay/actions/RadioHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    .line 63
    iput-object p4, p0, Leasypay/actions/RadioHelper;->action:Ljava/util/Map;

    .line 64
    iput-object p2, p0, Leasypay/actions/RadioHelper;->webview:Landroid/webkit/WebView;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.paytm.com.paytm.pgsdk.easypay.CUSTOM_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "customEventFilter":Landroid/content/IntentFilter;
    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Leasypay/actions/RadioHelper;->mUrl:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Leasypay/actions/RadioHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Leasypay/actions/RadioHelper;->customEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Leasypay/actions/RadioHelper;->activity:Landroid/app/Activity;

    new-instance v2, Leasypay/actions/RadioHelper$2;

    invoke-direct {v2, p0}, Leasypay/actions/RadioHelper$2;-><init>(Leasypay/actions/RadioHelper;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 79
    const-string v1, "javascript:"

    .line 81
    .local v1, "javascript":Ljava/lang/String;
    iget-object v2, p0, Leasypay/actions/RadioHelper;->action:Ljava/util/Map;

    const-string v3, "fields"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    .local v2, "fields":Ljava/lang/String;
    const-string v3, "radiohelper"

    const-string v4, "inside radiohelper constructor"

    invoke-static {v3, v4}, Leasypay/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Leasypay/actions/EasypayBrowserFragment;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lpaytm/assist/easypay/easypay/R$id;->cb_do_not_send_otp:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Leasypay/actions/RadioHelper;->cbNoOtp:Landroid/widget/CheckBox;

    .line 90
    invoke-virtual {p3}, Leasypay/actions/EasypayBrowserFragment;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lpaytm/assist/easypay/easypay/R$id;->cb_send_otp:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Leasypay/actions/RadioHelper;->cbSendOtp:Landroid/widget/CheckBox;

    .line 97
    return-void
.end method

.method static synthetic access$000(Leasypay/actions/RadioHelper;)V
    .locals 0
    .param p0, "x0"    # Leasypay/actions/RadioHelper;

    .line 21
    invoke-direct {p0}, Leasypay/actions/RadioHelper;->injectSelection()V

    return-void
.end method

.method private injectJs(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "jsBuilder":Ljava/lang/StringBuilder;
    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "(function (){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, "return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "document.passwdForm.otpDestinationOption["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "].checked=true ;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "return pwdBaseOtpChannelSelected(1);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, " })();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Leasypay/actions/RadioHelper;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 135
    iget-object v1, p0, Leasypay/actions/RadioHelper;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 141
    iget-object v1, p0, Leasypay/actions/RadioHelper;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Leasypay/actions/RadioHelper;->webview:Landroid/webkit/WebView;

    new-instance v2, Leasypay/actions/RadioHelper$3;

    invoke-direct {v2, p0}, Leasypay/actions/RadioHelper$3;-><init>(Leasypay/actions/RadioHelper;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 177
    return-void
.end method

.method private injectSelection()V
    .locals 1

    .line 101
    iget-object v0, p0, Leasypay/actions/RadioHelper;->cbSendOtp:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "0"

    invoke-direct {p0, v0}, Leasypay/actions/RadioHelper;->injectJs(Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object v0, p0, Leasypay/actions/RadioHelper;->cbNoOtp:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const-string v0, "1"

    invoke-direct {p0, v0}, Leasypay/actions/RadioHelper;->injectJs(Ljava/lang/String;)V

    .line 110
    :cond_1
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 0

    .line 182
    return-void
.end method

.method public reset()V
    .locals 2

    .line 208
    :try_start_0
    iget-object v0, p0, Leasypay/actions/RadioHelper;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Leasypay/actions/RadioHelper;->customEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 214
    :goto_0
    return-void
.end method

.method public selectOption(Ljava/lang/String;)V
    .locals 4
    .param p1, "option"    # Ljava/lang/String;

    .line 189
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "id"

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Leasypay/actions/RadioHelper;->action:Ljava/util/Map;

    const-string v2, "value1"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    .local v0, "selectedValue":Ljava/lang/String;
    iget-object v2, p0, Leasypay/actions/RadioHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v3, p0, Leasypay/actions/RadioHelper;->action:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "selectedOption1"

    invoke-virtual {v2, v3, v1}, Leasypay/actions/EasypayBrowserFragment;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    .end local v0    # "selectedValue":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Leasypay/actions/RadioHelper;->action:Ljava/util/Map;

    const-string v2, "value2"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    .restart local v0    # "selectedValue":Ljava/lang/String;
    iget-object v2, p0, Leasypay/actions/RadioHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v3, p0, Leasypay/actions/RadioHelper;->action:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "selectedOption2"

    invoke-virtual {v2, v3, v1}, Leasypay/actions/EasypayBrowserFragment;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    const-string v1, "javascript:"

    .line 198
    .local v1, "javascript":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "if(typeof(autoSelectRadio) != \'undefined\'){autoSelectRadio(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\');}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "triggerAutoSelect":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    iget-object v3, p0, Leasypay/actions/RadioHelper;->webview:Landroid/webkit/WebView;

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 202
    return-void
.end method
