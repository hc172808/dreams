.class public Lcom/paytm/pgsdk/PaytmWebView;
.super Landroid/webkit/WebView;
.source "PaytmWebView.java"

# interfaces
.implements Leasypay/listeners/WebClientListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;,
        Lcom/paytm/pgsdk/PaytmWebView$PaytmWebViewClient;,
        Lcom/paytm/pgsdk/PaytmWebView$WbCListeners;
    }
.end annotation


# static fields
.field private static final CALLBACK:Ljava/lang/String; = "/CAS/Response"

.field public static final HTML_OUT:Ljava/lang/String; = "HTMLOUT"

.field public static final JAVA_SCRIPT:Ljava/lang/String; = "javascript:window.HTMLOUT.processResponse(document.getElementById(\'response\').value);"

.field public static final JAVA_SCRIPT_UPI:Ljava/lang/String; = "javascript:window.upiIntent.setUpiIntentApps("

.field private static final PAYTM_CALLBACK:Ljava/lang/String; = "theia/paytmCallback"

.field public static final REQUEST_CODE_UPI_APP:I = 0x69

.field private static final SUCCESS:Ljava/lang/String; = "01"

.field private static final Y:Ljava/lang/String; = "Y"


# instance fields
.field private isFetchTxnPorcessed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Lcom/paytm/pgsdk/PaytmPGActivity;

.field private mResolveInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mbMerchantCallbackURLLoaded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "inContext"    # Landroid/content/Context;
    .param p2, "inParamsr"    # Landroid/os/Bundle;

    .line 105
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView;->isFetchTxnPorcessed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    move-object v0, p1

    check-cast v0, Lcom/paytm/pgsdk/PaytmPGActivity;

    iput-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView;->mContext:Lcom/paytm/pgsdk/PaytmPGActivity;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView;->mResolveInfoMap:Ljava/util/HashMap;

    .line 110
    new-instance v0, Lcom/paytm/pgsdk/PaytmWebView$1;

    invoke-direct {v0, p0}, Lcom/paytm/pgsdk/PaytmWebView$1;-><init>(Lcom/paytm/pgsdk/PaytmWebView;)V

    invoke-virtual {p0, v0}, Lcom/paytm/pgsdk/PaytmWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 117
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    .line 119
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 121
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 123
    .local v0, "currentapiVersion":I
    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 129
    :cond_1
    new-instance v1, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;

    invoke-direct {v1, p0}, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;-><init>(Lcom/paytm/pgsdk/PaytmWebView;)V

    const-string v2, "HTMLOUT"

    invoke-virtual {p0, v1, v2}, Lcom/paytm/pgsdk/PaytmWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/paytm/pgsdk/PaytmWebView;)Lcom/paytm/pgsdk/PaytmPGActivity;
    .locals 1
    .param p0, "x0"    # Lcom/paytm/pgsdk/PaytmWebView;

    .line 63
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView;->mContext:Lcom/paytm/pgsdk/PaytmPGActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/paytm/pgsdk/PaytmWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/paytm/pgsdk/PaytmWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/paytm/pgsdk/PaytmWebView;->checkForDynamicURL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/paytm/pgsdk/PaytmWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/paytm/pgsdk/PaytmWebView;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/paytm/pgsdk/PaytmWebView;->mbMerchantCallbackURLLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/paytm/pgsdk/PaytmWebView;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/paytm/pgsdk/PaytmWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/paytm/pgsdk/PaytmWebView;->parseResponse(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/paytm/pgsdk/PaytmWebView;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/paytm/pgsdk/PaytmWebView;
    .param p1, "x1"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0, p1}, Lcom/paytm/pgsdk/PaytmWebView;->getUpiAppList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/paytm/pgsdk/PaytmWebView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/paytm/pgsdk/PaytmWebView;

    .line 63
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView;->mResolveInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private checkForDynamicURL(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 475
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    iget-object v0, v0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    iget-object v0, v0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v0

    .line 477
    .local v0, "orderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 478
    const-string v1, "CALLBACK_URL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 479
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "theia/paytmCallback"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    const-string v1, "Merchant specific Callback Url is finished loading. Extract data now. "

    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 481
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/paytm/pgsdk/PaytmWebView;->mbMerchantCallbackURLLoaded:Z

    .line 484
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmWebView;->fetchTransactionStatus()V

    .line 489
    .end local v0    # "orderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private getUpiAppList(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 635
    const-string v0, ""

    .line 636
    .local v0, "appPackageJson":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 640
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 641
    .local v1, "gsonMap":Lcom/google/gson/Gson;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 642
    .local v2, "upiAppMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 643
    .local v3, "upiDeepLink":Landroid/net/Uri$Builder;
    const-string v4, "upi"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "pay"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 644
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 645
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 647
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 649
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 650
    .local v6, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 652
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v8, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    iget-object v9, p0, Lcom/paytm/pgsdk/PaytmWebView;->mResolveInfoMap:Ljava/util/HashMap;

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    nop

    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 656
    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 660
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upi App List"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .end local v1    # "gsonMap":Lcom/google/gson/Gson;
    .end local v2    # "upiAppMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "upiDeepLink":Landroid/net/Uri$Builder;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_1

    .line 662
    :catch_0
    move-exception v1

    .line 663
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Redirection"

    invoke-virtual {v2, v4, v3}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 667
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v0
.end method

.method private declared-synchronized isValidChecksum(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "inResponse"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "bIsValid":Z
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 211
    const-string v1, "IS_CHECKSUM_VALID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IS_CHECKSUM_VALID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 212
    const/4 v0, 0x1

    goto :goto_1

    .line 207
    .end local v0    # "bIsValid":Z
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmWebView;
    .end local p1    # "inResponse":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 214
    .restart local v0    # "bIsValid":Z
    .restart local p1    # "inResponse":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 215
    .local v1, "inEx":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v2

    const-string v3, "Redirection"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 207
    .end local v0    # "bIsValid":Z
    .end local v1    # "inEx":Ljava/lang/Exception;
    .end local p1    # "inResponse":Landroid/os/Bundle;
    :goto_0
    monitor-exit p0

    throw p1

    .line 217
    .restart local v0    # "bIsValid":Z
    .restart local p1    # "inResponse":Landroid/os/Bundle;
    :cond_0
    :goto_1
    nop

    .line 218
    :goto_2
    monitor-exit p0

    return v0
.end method

.method private declared-synchronized parseResponse(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .param p1, "inResponse"    # Ljava/lang/String;

    monitor-enter p0

    .line 186
    :try_start_0
    const-string v0, "Parsing the Merchant Response"

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .local v0, "Response":Landroid/os/Bundle;
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "Obj":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 191
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 192
    .local v2, "Keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 194
    .local v3, "Key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "Value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .end local v3    # "Key":Ljava/lang/String;
    .end local v4    # "Value":Ljava/lang/String;
    goto :goto_0

    .line 203
    .end local v1    # "Obj":Lorg/json/JSONObject;
    .end local v2    # "Keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmWebView;
    :cond_0
    goto :goto_1

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "inEx":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v2

    const-string v3, "Redirection"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, "Error while parsing the Merchant Response"

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 202
    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    .end local v1    # "inEx":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-object v0

    .line 185
    .end local v0    # "Response":Landroid/os/Bundle;
    .end local p1    # "inResponse":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized startProgressDialog()V
    .locals 4

    monitor-enter p0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/paytm/pgsdk/PaytmWebView$2;

    invoke-direct {v1, p0}, Lcom/paytm/pgsdk/PaytmWebView$2;-><init>(Lcom/paytm/pgsdk/PaytmWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    goto :goto_0

    .line 144
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmWebView;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "inEx":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v1

    const-string v2, "Redirection"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .end local v0    # "inEx":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopProgressDialog()V
    .locals 4

    monitor-enter p0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/paytm/pgsdk/PaytmWebView$3;

    invoke-direct {v1, p0}, Lcom/paytm/pgsdk/PaytmWebView$3;-><init>(Lcom/paytm/pgsdk/PaytmWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    goto :goto_0

    .line 164
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmWebView;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "inEx":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v1

    const-string v2, "Redirection"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .end local v0    # "inEx":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 164
    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public OnWcPageFinish(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "inUrl"    # Ljava/lang/String;

    .line 223
    const-string v0, "CALLBACK_URL"

    const-string v1, "url"

    const-string v2, "postnotificationurl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wc Page finsih "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lcom/paytm/pgsdk/PaytmWebView;->mContext:Lcom/paytm/pgsdk/PaytmPGActivity;

    invoke-virtual {v3}, Lcom/paytm/pgsdk/PaytmPGActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_8

    .line 225
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v3

    iget-object v3, v3, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 229
    :cond_0
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v3

    iget-object v3, v3, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v3}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v3

    .line 230
    .local v3, "orderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "fail"

    const-string v5, "status"

    const-string v6, "Paytm_H5_Load"

    const-string v7, "Redirection"

    if-eqz v3, :cond_6

    .line 231
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "page finish url"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 233
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Page finished loading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "javascript:window.HTMLOUT.processResponse(document.getElementById(\'response\').value);"

    if-eqz v8, :cond_1

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const-string v0, "Merchant specific Callback Url is finished loading. Extract data now. "

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/paytm/pgsdk/PaytmWebView;->mbMerchantCallbackURLLoaded:Z

    .line 238
    invoke-virtual {p0, v9}, Lcom/paytm/pgsdk/PaytmWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_1
    const-string v0, "/CAS/Response"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "CAS Callback Url is finished loading. Extract data now. "

    if-eqz v0, :cond_2

    .line 240
    :try_start_2
    invoke-static {v8}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, v9}, Lcom/paytm/pgsdk/PaytmWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_2
    const-string v0, "theia/paytmCallback"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    invoke-static {v8}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, v9}, Lcom/paytm/pgsdk/PaytmWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    :cond_3
    :goto_0
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 256
    new-instance v0, Landroid/content/Intent;

    iget-object v8, p0, Lcom/paytm/pgsdk/PaytmWebView;->mContext:Lcom/paytm/pgsdk/PaytmPGActivity;

    const-class v9, Lcom/paytm/pgsdk/IntentServicePostNotification;

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 255
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "inEx":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v8

    iget-object v8, v8, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 251
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v8

    invoke-virtual {v8, v6, v7, v5, v4}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_4
    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    .end local v0    # "inEx":Ljava/lang/Exception;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 256
    new-instance v0, Landroid/content/Intent;

    iget-object v8, p0, Lcom/paytm/pgsdk/PaytmWebView;->mContext:Lcom/paytm/pgsdk/PaytmPGActivity;

    const-class v9, Lcom/paytm/pgsdk/IntentServicePostNotification;

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmWebView;->mContext:Lcom/paytm/pgsdk/PaytmPGActivity;

    invoke-virtual {v1, v0}, Lcom/paytm/pgsdk/PaytmPGActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 259
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_3

    .line 255
    :goto_2
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 256
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/paytm/pgsdk/PaytmWebView;->mContext:Lcom/paytm/pgsdk/PaytmPGActivity;

    const-class v6, Lcom/paytm/pgsdk/IntentServicePostNotification;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmWebView;->mContext:Lcom/paytm/pgsdk/PaytmPGActivity;

    invoke-virtual {v1, v4}, Lcom/paytm/pgsdk/PaytmPGActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 260
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_5
    throw v0

    .line 263
    .end local v3    # "orderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :goto_3
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    iget-object v0, v0, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 264
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, v6, v7, v5, v4}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 226
    :cond_7
    :goto_4
    const-string v0, "Transaction cancelled before loading web com.paytm.pgsdk.view completely."

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 227
    return-void

    .line 268
    :cond_8
    :goto_5
    return-void
.end method

.method public OnWcPageStart(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wc Page Start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 273
    invoke-direct {p0, p2}, Lcom/paytm/pgsdk/PaytmWebView;->checkForDynamicURL(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public OnWcSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "sslErrorHandler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "sslError"    # Landroid/net/http/SslError;

    .line 278
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred while loading url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Redirection"

    invoke-virtual {v0, v2, v1}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occured while loading url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v1

    iget-object v1, v1, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v0

    const-string v1, "Paytm_H5_Load"

    const-string v3, "status"

    const-string v4, "fail"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_0
    return-void
.end method

.method public WcshouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "s"    # Ljava/lang/String;

    .line 294
    invoke-direct {p0, p2}, Lcom/paytm/pgsdk/PaytmWebView;->checkForDynamicURL(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public WcshouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "o"    # Ljava/lang/Object;

    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public fetchTransactionStatus()V
    .locals 12

    .line 670
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView;->isFetchTxnPorcessed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView;->isFetchTxnPorcessed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 672
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    .line 673
    .local v0, "paytmPGService":Lcom/paytm/pgsdk/PaytmPGService;
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getTransactionStatusUrl()Ljava/lang/String;

    move-result-object v2

    .line 674
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 675
    .local v3, "transactionRequest":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 676
    .local v4, "head":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 678
    .local v5, "body":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "txnToken"

    iget-object v7, v0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v7}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v7

    const-string v8, "TXN_TOKEN"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 679
    const-string v6, "mid"

    iget-object v7, v0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v7}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v7

    const-string v8, "MID"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 680
    const-string v6, "orderId"

    iget-object v7, v0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v7}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v7

    const-string v8, "ORDER_ID"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 681
    const-string v6, "isCallbackUrlRequired"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 682
    const-string v1, "body"

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    const-string v1, "head"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    nop

    .line 692
    const-string v1, "application/json"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v6

    .line 693
    .local v6, "JSON":Lokhttp3/MediaType;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 694
    .local v7, "json":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v6, v8}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v8

    .line 695
    .local v8, "requestBody":Lokhttp3/RequestBody;
    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    .line 696
    invoke-virtual {v9, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    .line 697
    const-string v10, "content-type"

    invoke-virtual {v9, v10, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    .line 698
    const-string v10, "Accept"

    invoke-virtual {v9, v10, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 699
    invoke-virtual {v1, v8}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 700
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 701
    .local v1, "request":Lokhttp3/Request;
    new-instance v9, Lokhttp3/OkHttpClient;

    invoke-direct {v9}, Lokhttp3/OkHttpClient;-><init>()V

    .line 702
    .local v9, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v9, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v10

    .line 703
    .local v10, "call":Lokhttp3/Call;
    new-instance v11, Lcom/paytm/pgsdk/PaytmWebView$4;

    invoke-direct {v11, p0}, Lcom/paytm/pgsdk/PaytmWebView$4;-><init>(Lcom/paytm/pgsdk/PaytmWebView;)V

    invoke-interface {v10, v11}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_0

    .line 684
    .end local v1    # "request":Lokhttp3/Request;
    .end local v6    # "JSON":Lokhttp3/MediaType;
    .end local v7    # "json":Ljava/lang/String;
    .end local v8    # "requestBody":Lokhttp3/RequestBody;
    .end local v9    # "client":Lokhttp3/OkHttpClient;
    .end local v10    # "call":Lokhttp3/Call;
    :catch_0
    move-exception v1

    .line 685
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/paytm/pgsdk/PaytmPGService;->getmPaymentTransactionCallback()Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    move-result-object v6

    .line 686
    .local v6, "callback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    if-eqz v6, :cond_0

    .line 687
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onTransactionResponse(Landroid/os/Bundle;)V

    .line 689
    :cond_0
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Redirection"

    invoke-virtual {v7, v9, v8}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    return-void

    .line 766
    .end local v0    # "paytmPGService":Lcom/paytm/pgsdk/PaytmPGService;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "transactionRequest":Lorg/json/JSONObject;
    .end local v4    # "head":Lorg/json/JSONObject;
    .end local v5    # "body":Lorg/json/JSONObject;
    .end local v6    # "callback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    :cond_1
    :goto_0
    return-void
.end method

.method public setWebCLientCallBacks()V
    .locals 1

    .line 134
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getWebClientInstance()Leasypay/manager/EasypayWebViewClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paytm/pgsdk/PaytmWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 135
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getWebClientInstance()Leasypay/manager/EasypayWebViewClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Leasypay/manager/EasypayWebViewClient;->addAssistWebClientListener(Leasypay/listeners/WebClientListener;)V

    .line 136
    return-void
.end method
