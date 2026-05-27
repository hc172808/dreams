.class public Leasypay/actions/PasswordHelper;
.super Ljava/lang/Object;
.source "PasswordHelper.java"


# instance fields
.field private action:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private activity:Landroid/app/Activity;

.field customEventReceiver:Landroid/content/BroadcastReceiver;

.field private editText:Landroid/widget/EditText;

.field private fields:Ljava/lang/String;

.field private fragment:Leasypay/actions/EasypayBrowserFragment;

.field private password:Ljava/lang/String;

.field private passwordBtnText:Ljava/lang/String;

.field private passwordShown:Ljava/lang/Boolean;

.field private submitButtonID:Ljava/lang/String;

.field private tempData:Ljava/lang/String;

.field private final txtWatcher:Landroid/text/TextWatcher;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "frag"    # Leasypay/actions/EasypayBrowserFragment;
    .param p5, "submit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/webkit/WebView;",
            "Leasypay/actions/EasypayBrowserFragment;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 61
    .local p4, "actn":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Leasypay/actions/PasswordHelper;->tempData:Ljava/lang/String;

    .line 27
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Leasypay/actions/PasswordHelper;->passwordShown:Ljava/lang/Boolean;

    .line 28
    iput-object v0, p0, Leasypay/actions/PasswordHelper;->password:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Leasypay/actions/PasswordHelper;->passwordBtnText:Ljava/lang/String;

    .line 34
    new-instance v0, Leasypay/actions/PasswordHelper$1;

    invoke-direct {v0, p0}, Leasypay/actions/PasswordHelper$1;-><init>(Leasypay/actions/PasswordHelper;)V

    iput-object v0, p0, Leasypay/actions/PasswordHelper;->customEventReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p1, p0, Leasypay/actions/PasswordHelper;->activity:Landroid/app/Activity;

    .line 64
    iput-object p3, p0, Leasypay/actions/PasswordHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    .line 65
    iput-object p4, p0, Leasypay/actions/PasswordHelper;->action:Ljava/util/Map;

    .line 66
    iput-object p2, p0, Leasypay/actions/PasswordHelper;->webview:Landroid/webkit/WebView;

    .line 67
    iput-object p5, p0, Leasypay/actions/PasswordHelper;->submitButtonID:Ljava/lang/String;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.paytm.com.paytm.pgsdk.easypay.CUSTOM_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "customEventFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Leasypay/actions/PasswordHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Leasypay/actions/PasswordHelper;->customEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    const-string v1, "javascript:"

    .line 77
    .local v1, "javascript":Ljava/lang/String;
    iget-object v2, p0, Leasypay/actions/PasswordHelper;->action:Ljava/util/Map;

    const-string v3, "fields"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Leasypay/actions/PasswordHelper;->fields:Ljava/lang/String;

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Leasypay/actions/PasswordHelper;->fields:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "var a=fields; for(var i=0;i<a.length;i++){if(a[i].type==\'password\'){a[i].blur();Android.showLog(\"input type is password\");a[i].addEventListener(\'input\', function(e){Android.logTempData(this.value)}); a[i].addEventListener(\'focus\', function(){Android.sendEvent(\'activatePasswordHelper\', true, 0);Android.logTempData(this.value);});}}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "focusAndKeyListener":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Leasypay/actions/PasswordHelper;->action:Ljava/util/Map;

    const-string v5, "functionStart"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Leasypay/actions/PasswordHelper;->fields:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Leasypay/actions/PasswordHelper;->action:Ljava/util/Map;

    const-string v5, "functionEnd"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 86
    new-instance v3, Leasypay/actions/PasswordHelper$2;

    invoke-direct {v3, p0}, Leasypay/actions/PasswordHelper$2;-><init>(Leasypay/actions/PasswordHelper;)V

    iput-object v3, p0, Leasypay/actions/PasswordHelper;->txtWatcher:Landroid/text/TextWatcher;

    .line 111
    iget-object v4, p0, Leasypay/actions/PasswordHelper;->editText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    return-void
.end method

.method static synthetic access$000(Leasypay/actions/PasswordHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/PasswordHelper;

    .line 18
    iget-object v0, p0, Leasypay/actions/PasswordHelper;->action:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Leasypay/actions/PasswordHelper;)Leasypay/actions/EasypayBrowserFragment;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/PasswordHelper;

    .line 18
    iget-object v0, p0, Leasypay/actions/PasswordHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    return-object v0
.end method

.method static synthetic access$200(Leasypay/actions/PasswordHelper;)V
    .locals 0
    .param p0, "x0"    # Leasypay/actions/PasswordHelper;

    .line 18
    invoke-direct {p0}, Leasypay/actions/PasswordHelper;->submitPassword()V

    return-void
.end method

.method static synthetic access$302(Leasypay/actions/PasswordHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Leasypay/actions/PasswordHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Leasypay/actions/PasswordHelper;->tempData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Leasypay/actions/PasswordHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/PasswordHelper;

    .line 18
    iget-object v0, p0, Leasypay/actions/PasswordHelper;->fields:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Leasypay/actions/PasswordHelper;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/PasswordHelper;

    .line 18
    iget-object v0, p0, Leasypay/actions/PasswordHelper;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method private showKeyboard()V
    .locals 0

    .line 167
    return-void
.end method

.method private submitPassword()V
    .locals 4

    .line 116
    const-string v0, "javascript:"

    .line 118
    .local v0, "javascript":Ljava/lang/String;
    const-string v1, "(function(){l=document.getElementsByName(\'"

    .line 119
    .local v1, "triggerAutoSubmit":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Leasypay/actions/PasswordHelper;->submitButtonID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\');e=document.createEvent(\'HTMLEvents\');e.initEvent(\'click\',true,true);l[0].dispatchEvent(e);})()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v2, p0, Leasypay/actions/PasswordHelper;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 124
    const-string v2, "false"

    invoke-virtual {p0, v2}, Leasypay/actions/PasswordHelper;->activate(Ljava/lang/String;)V

    .line 130
    return-void
.end method


# virtual methods
.method public activate(Ljava/lang/String;)V
    .locals 0
    .param p1, "show"    # Ljava/lang/String;

    .line 156
    return-void
.end method

.method public logTempData(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 209
    iput-object p1, p0, Leasypay/actions/PasswordHelper;->tempData:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Leasypay/actions/PasswordHelper;->setPassword()V

    .line 212
    return-void
.end method

.method public reset()V
    .locals 2

    .line 218
    :try_start_0
    iget-object v0, p0, Leasypay/actions/PasswordHelper;->customEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Leasypay/actions/PasswordHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Leasypay/actions/PasswordHelper;->editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method

.method public setPassword()V
    .locals 2

    .line 178
    iget-object v0, p0, Leasypay/actions/PasswordHelper;->passwordShown:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Leasypay/actions/PasswordHelper;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 180
    iget-object v0, p0, Leasypay/actions/PasswordHelper;->tempData:Ljava/lang/String;

    iput-object v0, p0, Leasypay/actions/PasswordHelper;->password:Ljava/lang/String;

    .line 181
    const-string v0, "Hide"

    iput-object v0, p0, Leasypay/actions/PasswordHelper;->passwordBtnText:Ljava/lang/String;

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Leasypay/actions/PasswordHelper;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 187
    const-string v0, "Show"

    iput-object v0, p0, Leasypay/actions/PasswordHelper;->passwordBtnText:Ljava/lang/String;

    .line 205
    :goto_0
    return-void
.end method

.method public togglePassword()V
    .locals 1

    .line 171
    iget-object v0, p0, Leasypay/actions/PasswordHelper;->passwordShown:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Leasypay/actions/PasswordHelper;->passwordShown:Ljava/lang/Boolean;

    .line 172
    invoke-virtual {p0}, Leasypay/actions/PasswordHelper;->setPassword()V

    .line 174
    return-void
.end method

.method public unregisterEvent()V
    .locals 2

    .line 230
    iget-object v0, p0, Leasypay/actions/PasswordHelper;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Leasypay/actions/PasswordHelper;->customEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    :cond_0
    return-void
.end method
