.class Lcom/facebook/appevents/FacebookSDKJSInterface;
.super Ljava/lang/Object;
.source "FacebookSDKJSInterface.java"


# static fields
.field private static final PARAMETER_FBSDK_PIXEL_REFERRAL:Ljava/lang/String; = "_fb_pixel_referral_id"

.field private static final PROTOCOL:Ljava/lang/String; = "fbmq-0.1"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/facebook/appevents/FacebookSDKJSInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/FacebookSDKJSInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/facebook/appevents/FacebookSDKJSInterface;->context:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static jsonStringToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    const-class v0, Lcom/facebook/appevents/FacebookSDKJSInterface;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 59
    .local p0, "jsonString":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/facebook/appevents/FacebookSDKJSInterface;->jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 64
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local p0    # "jsonString":Ljava/lang/String;
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 61
    .restart local p0    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 64
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .end local p0    # "jsonString":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/FacebookSDKJSInterface;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 46
    .local p0, "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 48
    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 50
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .line 53
    :cond_1
    return-object v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local p0    # "jsonObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public getProtocol()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 86
    .local v0, "this":Lcom/facebook/appevents/FacebookSDKJSInterface;
    :try_start_0
    const-string v1, "fbmq-0.1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .end local v0    # "this":Lcom/facebook/appevents/FacebookSDKJSInterface;
    :catchall_0
    move-exception v2

    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 69
    .local v0, "this":Lcom/facebook/appevents/FacebookSDKJSInterface;
    .local p1, "pixelId":Ljava/lang/String;
    .local p2, "event_name":Ljava/lang/String;
    .local p3, "jsonString":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 70
    :try_start_0
    sget-object v1, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    sget-object v2, Lcom/facebook/appevents/FacebookSDKJSInterface;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t bridge an event without a referral Pixel ID. Check your webview Pixel configuration"

    invoke-static {v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 77
    .end local v0    # "this":Lcom/facebook/appevents/FacebookSDKJSInterface;
    :cond_1
    new-instance v1, Lcom/facebook/appevents/InternalAppEventsLogger;

    iget-object v2, v0, Lcom/facebook/appevents/FacebookSDKJSInterface;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, "logger":Lcom/facebook/appevents/InternalAppEventsLogger;
    invoke-static {p3}, Lcom/facebook/appevents/FacebookSDKJSInterface;->jsonStringToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 80
    .local v2, "parameters":Landroid/os/Bundle;
    const-string v3, "_fb_pixel_referral_id"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, p2, v2}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    return-void

    .end local v1    # "logger":Lcom/facebook/appevents/InternalAppEventsLogger;
    .end local v2    # "parameters":Landroid/os/Bundle;
    .end local p1    # "pixelId":Ljava/lang/String;
    .end local p2    # "event_name":Ljava/lang/String;
    .end local p3    # "jsonString":Ljava/lang/String;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
