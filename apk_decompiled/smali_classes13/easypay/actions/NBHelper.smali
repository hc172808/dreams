.class Leasypay/actions/NBHelper;
.super Ljava/lang/Object;
.source "NBHelper.java"

# interfaces
.implements Leasypay/listeners/WebClientListener;
.implements Leasypay/listeners/JavaScriptCallBacks;


# instance fields
.field private activity:Landroid/app/Activity;

.field private autoFillCalledAlready:Z

.field private autoFillOperation:Leasypay/entity/Operation;

.field private bank:Ljava/lang/String;

.field private browser:Landroid/webkit/WebView;

.field private etUserName:Landroid/widget/CheckBox;

.field private fragment:Leasypay/actions/EasypayBrowserFragment;

.field private mAnalyticsManager:Leasypay/actions/GAEventManager;

.field private mNumberOfSavedUserId:I

.field private operationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Leasypay/entity/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private pwdBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Landroid/webkit/WebView;Landroid/app/Activity;Leasypay/entity/AssistDetailsResponse;)V
    .locals 5
    .param p2, "webview"    # Landroid/webkit/WebView;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "detailsResponse"    # Leasypay/entity/AssistDetailsResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Leasypay/entity/Operation;",
            ">;",
            "Landroid/webkit/WebView;",
            "Landroid/app/Activity;",
            "Leasypay/entity/AssistDetailsResponse;",
            ")V"
        }
    .end annotation

    .line 73
    .local p1, "operationMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Leasypay/entity/Operation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Leasypay/actions/NBHelper;->autoFillCalledAlready:Z

    .line 70
    iput v0, p0, Leasypay/actions/NBHelper;->mNumberOfSavedUserId:I

    .line 75
    if-eqz p1, :cond_0

    .line 76
    :try_start_0
    iput-object p1, p0, Leasypay/actions/NBHelper;->operationMap:Ljava/util/HashMap;

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 78
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    .line 79
    invoke-virtual {p4}, Leasypay/entity/AssistDetailsResponse;->getBank()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leasypay/actions/NBHelper;->bank:Ljava/lang/String;

    .line 82
    :cond_1
    iput-object p2, p0, Leasypay/actions/NBHelper;->browser:Landroid/webkit/WebView;

    .line 83
    iput-object p3, p0, Leasypay/actions/NBHelper;->activity:Landroid/app/Activity;

    .line 84
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->cb_nb_userId:I

    invoke-virtual {p3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Leasypay/actions/NBHelper;->etUserName:Landroid/widget/CheckBox;

    .line 85
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getEasyPayHelper()Leasypay/manager/EasyPayHelper;

    move-result-object v0

    .line 86
    .local v0, "mEasyPayHelper":Leasypay/manager/EasyPayHelper;
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1}, Leasypay/manager/PaytmAssist;->getmAnalyticsManager()Leasypay/actions/GAEventManager;

    move-result-object v1

    iput-object v1, p0, Leasypay/actions/NBHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    .line 87
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1}, Leasypay/manager/PaytmAssist;->getFragment()Leasypay/actions/EasypayBrowserFragment;

    move-result-object v1

    iput-object v1, p0, Leasypay/actions/NBHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    .line 90
    invoke-virtual {v0, p0}, Leasypay/manager/EasyPayHelper;->addJsCallListener(Leasypay/listeners/JavaScriptCallBacks;)V

    .line 91
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1}, Leasypay/manager/PaytmAssist;->getmAnalyticsManager()Leasypay/actions/GAEventManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Leasypay/actions/GAEventManager;->isNetBanking(Z)V

    .line 92
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1}, Leasypay/manager/PaytmAssist;->getWebClientInstance()Leasypay/manager/EasypayWebViewClient;

    move-result-object v1

    .line 93
    .local v1, "mwebViewClient":Leasypay/manager/EasypayWebViewClient;
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v3

    invoke-virtual {v3}, Leasypay/manager/PaytmAssist;->getmAnalyticsManager()Leasypay/actions/GAEventManager;

    move-result-object v3

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Leasypay/actions/GAEventManager;->NbUrl(Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Leasypay/actions/NBHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v3, v2}, Leasypay/actions/GAEventManager;->isNetBanking(Z)V

    .line 97
    invoke-virtual {v1, p0}, Leasypay/manager/EasypayWebViewClient;->addAssistWebClientListener(Leasypay/listeners/WebClientListener;)V

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Leasypay/actions/NBHelper;->pwdBuilder:Ljava/lang/StringBuilder;

    .line 100
    iget-object v3, p0, Leasypay/actions/NBHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    invoke-virtual {v3, v2}, Leasypay/actions/EasypayBrowserFragment;->setUIDCheck(Z)V

    .line 101
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v2

    invoke-virtual {v2}, Leasypay/manager/PaytmAssist;->getmEventMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "rememberUserId"

    const-string v4, "Checked"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    nop

    .end local v0    # "mEasyPayHelper":Leasypay/manager/EasyPayHelper;
    .end local v1    # "mwebViewClient":Leasypay/manager/EasypayWebViewClient;
    goto :goto_2

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method static synthetic access$000(Leasypay/actions/NBHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Leasypay/actions/NBHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Leasypay/actions/NBHelper;->inectJS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Leasypay/actions/NBHelper;)Leasypay/actions/EasypayBrowserFragment;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/NBHelper;

    .line 57
    iget-object v0, p0, Leasypay/actions/NBHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    return-object v0
.end method

.method static synthetic access$1000(Leasypay/actions/NBHelper;)Z
    .locals 1
    .param p0, "x0"    # Leasypay/actions/NBHelper;

    .line 57
    iget-boolean v0, p0, Leasypay/actions/NBHelper;->autoFillCalledAlready:Z

    return v0
.end method

.method static synthetic access$1002(Leasypay/actions/NBHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Leasypay/actions/NBHelper;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Leasypay/actions/NBHelper;->autoFillCalledAlready:Z

    return p1
.end method

.method static synthetic access$1100(Leasypay/actions/NBHelper;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/NBHelper;

    .line 57
    iget-object v0, p0, Leasypay/actions/NBHelper;->etUserName:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1200(Leasypay/actions/NBHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Leasypay/actions/NBHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Leasypay/actions/NBHelper;->saveUserId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Leasypay/actions/NBHelper;Leasypay/entity/Operation;)Leasypay/entity/Operation;
    .locals 0
    .param p0, "x0"    # Leasypay/actions/NBHelper;
    .param p1, "x1"    # Leasypay/entity/Operation;

    .line 57
    iput-object p1, p0, Leasypay/actions/NBHelper;->autoFillOperation:Leasypay/entity/Operation;

    return-object p1
.end method

.method static synthetic access$300(Leasypay/actions/NBHelper;)V
    .locals 0
    .param p0, "x0"    # Leasypay/actions/NBHelper;

    .line 57
    invoke-direct {p0}, Leasypay/actions/NBHelper;->fetchUserId()V

    return-void
.end method

.method static synthetic access$400(Leasypay/actions/NBHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/NBHelper;

    .line 57
    iget-object v0, p0, Leasypay/actions/NBHelper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Leasypay/actions/NBHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/NBHelper;

    .line 57
    iget-object v0, p0, Leasypay/actions/NBHelper;->bank:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Leasypay/actions/NBHelper;)I
    .locals 1
    .param p0, "x0"    # Leasypay/actions/NBHelper;

    .line 57
    iget v0, p0, Leasypay/actions/NBHelper;->mNumberOfSavedUserId:I

    return v0
.end method

.method static synthetic access$602(Leasypay/actions/NBHelper;I)I
    .locals 0
    .param p0, "x0"    # Leasypay/actions/NBHelper;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Leasypay/actions/NBHelper;->mNumberOfSavedUserId:I

    return p1
.end method

.method static synthetic access$700(Leasypay/actions/NBHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Leasypay/actions/NBHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Leasypay/actions/NBHelper;->fillUserId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Leasypay/actions/NBHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/NBHelper;

    .line 57
    iget-object v0, p0, Leasypay/actions/NBHelper;->operationMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Leasypay/actions/NBHelper;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/NBHelper;

    .line 57
    iget-object v0, p0, Leasypay/actions/NBHelper;->pwdBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private fetchUserId()V
    .locals 2

    .line 229
    const-string v0, "inside fetch USerID before run"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Leasypay/actions/NBHelper$2;

    invoke-direct {v1, p0}, Leasypay/actions/NBHelper$2;-><init>(Leasypay/actions/NBHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 286
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 289
    return-void
.end method

.method private fillUserId(Ljava/lang/String;)V
    .locals 5
    .param p1, "userID"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Leasypay/actions/NBHelper;->autoFillOperation:Leasypay/entity/Operation;

    invoke-virtual {v0}, Leasypay/entity/Operation;->getJsTemplate()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "js":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "\'\'"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 204
    .local v2, "index":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Autofill JS After UserId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    iget-object v3, p0, Leasypay/actions/NBHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Leasypay/actions/EasypayBrowserFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    iget-object v3, p0, Leasypay/actions/NBHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    invoke-virtual {v3, p1}, Leasypay/actions/EasypayBrowserFragment;->setUIdToTextView(Ljava/lang/String;)V

    .line 210
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autofill js:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    invoke-direct {p0, v0}, Leasypay/actions/NBHelper;->inectJS(Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Leasypay/actions/NBHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v3, :cond_1

    .line 213
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Leasypay/actions/GAEventManager;->isAutoFillUserIdSuccess(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v2    # "index":I
    :cond_1
    goto :goto_0

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Leasypay/actions/NBHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v3, :cond_2

    .line 217
    invoke-virtual {v3, v1}, Leasypay/actions/GAEventManager;->isAutoFillUserIdSuccess(Z)V

    .line 219
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    const-string v1, "EXCEPTION"

    invoke-static {v1, v2}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private inectJS(Ljava/lang/String;)V
    .locals 2
    .param p1, "javaScript"    # Ljava/lang/String;

    .line 294
    :try_start_0
    iget-object v0, p0, Leasypay/actions/NBHelper;->browser:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Leasypay/actions/NBHelper;->browser:Landroid/webkit/WebView;

    new-instance v1, Leasypay/actions/NBHelper$3;

    invoke-direct {v1, p0}, Leasypay/actions/NBHelper$3;-><init>(Leasypay/actions/NBHelper;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Leasypay/actions/NBHelper;->browser:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_1
    :goto_0
    goto :goto_1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private saveUserId(Ljava/lang/String;)V
    .locals 12
    .param p1, "nbUserId"    # Ljava/lang/String;

    .line 523
    const-string v0, "USER_ID_NET_BANK_KEY"

    :try_start_0
    iget-object v1, p0, Leasypay/actions/NBHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-eqz v1, :cond_0

    .line 524
    iget-boolean v1, v1, Leasypay/actions/EasypayBrowserFragment;->isSaveIdChecked:Z

    if-nez v1, :cond_0

    .line 525
    return-void

    .line 528
    :cond_0
    new-instance v1, Leasypay/utils/EasyPaySecureSharedPref;

    iget-object v2, p0, Leasypay/actions/NBHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "PaytmAsist"

    invoke-direct {v1, v2, v3}, Leasypay/utils/EasyPaySecureSharedPref;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 529
    .local v1, "easyPaySecureSharedPref":Leasypay/utils/EasyPaySecureSharedPref;
    invoke-virtual {v1}, Leasypay/utils/EasyPaySecureSharedPref;->edit()Leasypay/utils/EasyPaySecureSharedPref$Editor;

    move-result-object v2

    .line 530
    .local v2, "editor":Leasypay/utils/EasyPaySecureSharedPref$Editor;
    iget-object v3, p0, Leasypay/actions/NBHelper;->bank:Ljava/lang/String;

    .line 531
    .local v3, "keybank":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v0, v4}, Leasypay/utils/EasyPaySecureSharedPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 533
    .local v4, "storedHashMapString":Ljava/lang/String;
    new-instance v5, Leasypay/actions/NBHelper$7;

    invoke-direct {v5, p0}, Leasypay/actions/NBHelper$7;-><init>(Leasypay/actions/NBHelper;)V

    .line 534
    invoke-virtual {v5}, Leasypay/actions/NBHelper$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 535
    .local v5, "type":Ljava/lang/reflect/Type;
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 536
    .local v6, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v6, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 537
    .local v7, "mUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 541
    .local v8, "saveGson":Lcom/google/gson/Gson;
    if-eqz v7, :cond_4

    .line 542
    iget-object v9, p0, Leasypay/actions/NBHelper;->bank:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 545
    .local v9, "existUserId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_3

    .line 547
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 548
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    .line 549
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 550
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    :cond_1
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 555
    :cond_2
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 556
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    :goto_0
    invoke-virtual {v7, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 560
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-virtual {v7, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v8, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 565
    .local v9, "hashMapString":Ljava/lang/String;
    goto :goto_2

    .line 566
    .end local v9    # "hashMapString":Ljava/lang/String;
    :cond_4
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 567
    .local v9, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-virtual {v9, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    invoke-virtual {v8, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 572
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v9, "hashMapString":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0, v9}, Leasypay/utils/EasyPaySecureSharedPref$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Leasypay/utils/EasyPaySecureSharedPref$Editor;

    .line 573
    invoke-virtual {v2}, Leasypay/utils/EasyPaySecureSharedPref$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v1    # "easyPaySecureSharedPref":Leasypay/utils/EasyPaySecureSharedPref;
    .end local v2    # "editor":Leasypay/utils/EasyPaySecureSharedPref$Editor;
    .end local v3    # "keybank":Ljava/lang/String;
    .end local v4    # "storedHashMapString":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/reflect/Type;
    .end local v6    # "gson":Lcom/google/gson/Gson;
    .end local v7    # "mUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v8    # "saveGson":Lcom/google/gson/Gson;
    .end local v9    # "hashMapString":Ljava/lang/String;
    goto :goto_3

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 577
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private uiStarter(I)V
    .locals 2
    .param p1, "eventCode"    # I

    .line 491
    :try_start_0
    iget-object v0, p0, Leasypay/actions/NBHelper;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Leasypay/actions/NBHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-eqz v1, :cond_0

    .line 492
    new-instance v1, Leasypay/actions/NBHelper$6;

    invoke-direct {v1, p0, p1}, Leasypay/actions/NBHelper$6;-><init>(Leasypay/actions/NBHelper;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_0
    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 514
    :goto_0
    return-void
.end method


# virtual methods
.method public OnWcPageFinish(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 318
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 319
    :try_start_1
    iget-object v0, p0, Leasypay/actions/NBHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-eqz v0, :cond_1

    .line 320
    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Leasypay/actions/EasypayBrowserFragment;->passwordViewer(Ljava/lang/String;I)V

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Leasypay/actions/NBHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-eqz v0, :cond_1

    .line 324
    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Leasypay/actions/EasypayBrowserFragment;->passwordViewer(Ljava/lang/String;I)V

    .line 325
    iget-object v0, p0, Leasypay/actions/NBHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    invoke-virtual {v0, v1, v2}, Leasypay/actions/EasypayBrowserFragment;->passwordViewer(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 331
    :cond_1
    :goto_0
    goto :goto_1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public OnWcPageStart(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 337
    return-void
.end method

.method public OnWcSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "inView"    # Landroid/webkit/WebView;
    .param p2, "inHandler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "inError"    # Landroid/net/http/SslError;

    .line 342
    return-void
.end method

.method public WcshouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 352
    return-void
.end method

.method public WcshouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Ljava/lang/Object;

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method fireActions(Ljava/lang/String;Leasypay/entity/Operation;)V
    .locals 2
    .param p1, "actionType"    # Ljava/lang/String;
    .param p2, "operation"    # Leasypay/entity/Operation;

    .line 132
    :try_start_0
    iget-object v0, p0, Leasypay/actions/NBHelper;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 133
    new-instance v1, Leasypay/actions/NBHelper$1;

    invoke-direct {v1, p0, p2, p1}, Leasypay/actions/NBHelper$1;-><init>(Leasypay/actions/NBHelper;Leasypay/entity/Operation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 193
    :goto_0
    return-void
.end method

.method getNumberOfSavedId()I
    .locals 1

    .line 588
    iget v0, p0, Leasypay/actions/NBHelper;->mNumberOfSavedUserId:I

    return v0
.end method

.method public helperCallBack(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "uiID"    # Ljava/lang/String;
    .param p2, "eventValue"    # Ljava/lang/String;
    .param p3, "eventCode"    # I

    .line 450
    const-string v0, "PASSOWRD_INPUT_REGISTER"

    const-string v1, "PASSWORD_FINDER"

    const-string v2, "SUBMIT_BTN"

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 470
    :sswitch_0
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 471
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Leasypay/actions/NBHelper$5;

    invoke-direct {v1, p0}, Leasypay/actions/NBHelper$5;-><init>(Leasypay/actions/NBHelper;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 464
    .end local v0    # "mHandler":Landroid/os/Handler;
    :sswitch_1
    iget-object v0, p0, Leasypay/actions/NBHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-eqz v0, :cond_0

    .line 465
    const/16 v1, 0x9b

    const-string v2, "START OTP FROM NET BANKING"

    invoke-virtual {v0, v1, v2}, Leasypay/actions/EasypayBrowserFragment;->onHelperAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 459
    :sswitch_2
    const/16 v1, 0x9a

    invoke-direct {p0, v1}, Leasypay/actions/NBHelper;->uiStarter(I)V

    .line 460
    iget-object v1, p0, Leasypay/actions/NBHelper;->operationMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/entity/Operation;

    invoke-virtual {p0, v0, v1}, Leasypay/actions/NBHelper;->fireActions(Ljava/lang/String;Leasypay/entity/Operation;)V

    .line 461
    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    goto :goto_1

    .line 456
    :sswitch_3
    iget-object v0, p0, Leasypay/actions/NBHelper;->operationMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leasypay/entity/Operation;

    invoke-virtual {p0, v1, v0}, Leasypay/actions/NBHelper;->fireActions(Ljava/lang/String;Leasypay/entity/Operation;)V

    .line 457
    goto :goto_0

    .line 453
    :sswitch_4
    iget-object v0, p0, Leasypay/actions/NBHelper;->operationMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leasypay/entity/Operation;

    invoke-virtual {p0, v2, v0}, Leasypay/actions/NBHelper;->fireActions(Ljava/lang/String;Leasypay/entity/Operation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :cond_0
    :goto_0
    nop

    .line 486
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_4
        0x6a -> :sswitch_3
        0x9a -> :sswitch_2
        0x9b -> :sswitch_1
        0x9c -> :sswitch_0
    .end sparse-switch
.end method

.method startNbFeatures(Ljava/util/HashMap;Leasypay/entity/AssistDetailsResponse;)V
    .locals 2
    .param p2, "mDetailsResponse"    # Leasypay/entity/AssistDetailsResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Leasypay/entity/Operation;",
            ">;",
            "Leasypay/entity/AssistDetailsResponse;",
            ")V"
        }
    .end annotation

    .line 112
    .local p1, "mNbOpMapSearch":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Leasypay/entity/Operation;>;"
    const-string v0, "FILLER_FROM_WEB"

    if-eqz p1, :cond_0

    .line 113
    :try_start_0
    iput-object p1, p0, Leasypay/actions/NBHelper;->operationMap:Ljava/util/HashMap;

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    goto :goto_1

    .line 115
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 116
    invoke-virtual {p2}, Leasypay/entity/AssistDetailsResponse;->getBank()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Leasypay/actions/NBHelper;->bank:Ljava/lang/String;

    .line 118
    :cond_1
    iget-object v1, p0, Leasypay/actions/NBHelper;->operationMap:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Leasypay/actions/NBHelper;->operationMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/entity/Operation;

    invoke-virtual {p0, v0, v1}, Leasypay/actions/NBHelper;->fireActions(Ljava/lang/String;Leasypay/entity/Operation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_2
    goto :goto_2

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public uiCallBack(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "uiID"    # Ljava/lang/String;
    .param p2, "evenValue"    # Ljava/lang/String;
    .param p3, "eventCode"    # I

    .line 358
    :try_start_0
    iget-object v0, p0, Leasypay/actions/NBHelper;->activity:Landroid/app/Activity;

    new-instance v1, Leasypay/actions/NBHelper$4;

    invoke-direct {v1, p0, p3, p2, p1}, Leasypay/actions/NBHelper$4;-><init>(Leasypay/actions/NBHelper;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 445
    :goto_0
    return-void
.end method

.method updateValueForAutoFill(Ljava/lang/String;)V
    .locals 1
    .param p1, "c"    # Ljava/lang/String;

    .line 582
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    invoke-direct {p0, p1}, Leasypay/actions/NBHelper;->fillUserId(Ljava/lang/String;)V

    .line 585
    :cond_0
    return-void
.end method
