.class public Lcom/facebook/appevents/AppEventsLoggerImpl;
.super Ljava/lang/Object;
.source "AppEventsLoggerImpl.java"


# static fields
.field private static final ACCOUNT_KIT_EVENT_NAME_PREFIX:Ljava/lang/String; = "fb_ak"

.field private static final APP_EVENTS_KILLSWITCH:Ljava/lang/String; = "app_events_killswitch"

.field private static final APP_EVENT_NAME_PUSH_OPENED:Ljava/lang/String; = "fb_mobile_push_opened"

.field private static final APP_EVENT_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.appEventPreferences"

.field private static final APP_EVENT_PUSH_PARAMETER_ACTION:Ljava/lang/String; = "fb_push_action"

.field private static final APP_EVENT_PUSH_PARAMETER_CAMPAIGN:Ljava/lang/String; = "fb_push_campaign"

.field private static final APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS:I = 0x15180

.field private static final PUSH_PAYLOAD_CAMPAIGN_KEY:Ljava/lang/String; = "campaign"

.field private static final PUSH_PAYLOAD_KEY:Ljava/lang/String; = "fb_push_payload"

.field private static final TAG:Ljava/lang/String;

.field private static anonymousAppDeviceGUID:Ljava/lang/String;

.field private static backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

.field private static isActivateAppEventRequested:Z

.field private static pushNotificationsRegistrationId:Ljava/lang/String;

.field private static final staticLock:Ljava/lang/Object;


# instance fields
.field private final accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

.field private final contextName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->TAG:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->AUTO:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    sput-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->staticLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/facebook/AccessToken;

    .line 487
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/appevents/AppEventsLoggerImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 488
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 2
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/facebook/AccessToken;

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 492
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->contextName:Ljava/lang/String;

    .line 494
    if-nez p3, :cond_0

    .line 495
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p3

    .line 499
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 500
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    :cond_1
    new-instance v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-direct {v0, p3}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Lcom/facebook/AccessToken;)V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    goto :goto_0

    .line 504
    :cond_2
    if-nez p2, :cond_3

    .line 505
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 507
    :cond_3
    new-instance v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 510
    :goto_0
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->initializeTimersIfNeeded()V

    .line 511
    return-void
.end method

.method static activateApp(Landroid/app/Application;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 96
    .local p0, "application":Landroid/app/Application;
    .local p1, "applicationId":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->initStore()V

    .line 102
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->initStore()V

    .line 104
    if-nez p1, :cond_1

    .line 105
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 111
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/FacebookSdk;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    invoke-static {p0, p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->startTracking(Landroid/app/Application;Ljava/lang/String;)V

    .line 116
    return-void

    .line 97
    :cond_2
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "The Facebook sdk must be initialized before calling activateApp"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local p0    # "application":Landroid/app/Application;
    .end local p1    # "applicationId":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static augmentWebView(Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 7

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 440
    .local p0, "webView":Landroid/webkit/WebView;
    .local p1, "context":Landroid/content/Context;
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_1

    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 442
    .local v2, "majorRelease":I
    :goto_0
    array-length v4, v1

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 444
    .local v3, "minorRelease":I
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v4, v6, :cond_4

    const/4 v4, 0x4

    if-lt v2, v4, :cond_4

    if-ne v2, v4, :cond_3

    if-gt v3, v5, :cond_3

    goto :goto_1

    .line 454
    :cond_3
    new-instance v4, Lcom/facebook/appevents/FacebookSDKJSInterface;

    invoke-direct {v4, p1}, Lcom/facebook/appevents/FacebookSDKJSInterface;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fbmq_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 454
    invoke-virtual {p0, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    return-void

    .line 447
    :cond_4
    :goto_1
    sget-object v4, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    sget-object v5, Lcom/facebook/appevents/AppEventsLoggerImpl;->TAG:Ljava/lang/String;

    const-string v6, "augmentWebView is only available for Android SDK version >= 17 on devices running Android >= 4.2"

    invoke-static {v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    return-void

    .line 456
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "majorRelease":I
    .end local v3    # "minorRelease":I
    .end local p0    # "webView":Landroid/webkit/WebView;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static eagerFlush()V
    .locals 3

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 640
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v1

    sget-object v2, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v1, v2, :cond_1

    .line 641
    sget-object v1, Lcom/facebook/appevents/FlushReason;->EAGER_FLUSHING_EVENT:Lcom/facebook/appevents/FlushReason;

    invoke-static {v1}, Lcom/facebook/appevents/AppEventQueue;->flush(Lcom/facebook/appevents/FlushReason;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :cond_1
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static functionDEPRECATED(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 119
    .local p0, "extraMsg":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This function is deprecated. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    return-void

    .end local p0    # "extraMsg":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static getAnalyticsExecutor()Ljava/util/concurrent/Executor;
    .locals 3

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 655
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_1

    .line 656
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->initializeTimersIfNeeded()V

    .line 659
    :cond_1
    sget-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 663
    .local p0, "context":Landroid/content/Context;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 664
    sget-object v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->staticLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 665
    :try_start_1
    sget-object v3, Lcom/facebook/appevents/AppEventsLoggerImpl;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 667
    const-string v3, "com.facebook.sdk.appEventPreferences"

    .line 668
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 669
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "anonymousAppDeviceGUID"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/facebook/appevents/AppEventsLoggerImpl;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 670
    if-nez v5, :cond_1

    .line 672
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XZ"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/facebook/appevents/AppEventsLoggerImpl;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 674
    const-string v5, "com.facebook.sdk.appEventPreferences"

    .line 675
    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 676
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "anonymousAppDeviceGUID"

    sget-object v6, Lcom/facebook/appevents/AppEventsLoggerImpl;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 677
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 678
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 681
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 684
    :cond_2
    :goto_0
    sget-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->anonymousAppDeviceGUID:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .end local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;
    .locals 4

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 195
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->staticLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 196
    :try_start_1
    sget-object v3, Lcom/facebook/appevents/AppEventsLoggerImpl;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    monitor-exit v1

    return-object v3

    .line 197
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static getInstallReferrer()Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 423
    :cond_0
    :try_start_0
    new-instance v1, Lcom/facebook/appevents/AppEventsLoggerImpl$2;

    invoke-direct {v1}, Lcom/facebook/appevents/AppEventsLoggerImpl$2;-><init>()V

    invoke-static {v1}, Lcom/facebook/internal/InstallReferrerUtil;->tryUpdateReferrerInfo(Lcom/facebook/internal/InstallReferrerUtil$Callback;)V

    .line 433
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 434
    .local v1, "ctx":Landroid/content/Context;
    const-string v3, "com.facebook.sdk.appEventPreferences"

    const/4 v4, 0x0

    .line 435
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 436
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "install_referrer"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local v1    # "ctx":Landroid/content/Context;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static getPushNotificationsRegistrationId()Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 407
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->staticLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 408
    :try_start_1
    sget-object v3, Lcom/facebook/appevents/AppEventsLoggerImpl;->pushNotificationsRegistrationId:Ljava/lang/String;

    monitor-exit v1

    return-object v3

    .line 409
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static initializeLib(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 123
    .local p0, "context":Landroid/content/Context;
    .local p1, "applicationId":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    return-void

    .line 126
    :cond_1
    new-instance v1, Lcom/facebook/appevents/AppEventsLoggerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/facebook/appevents/AppEventsLoggerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 127
    .local v1, "logger":Lcom/facebook/appevents/AppEventsLoggerImpl;
    sget-object v2, Lcom/facebook/appevents/AppEventsLoggerImpl;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/facebook/appevents/AppEventsLoggerImpl$1;

    invoke-direct {v3, p0, v1}, Lcom/facebook/appevents/AppEventsLoggerImpl$1;-><init>(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLoggerImpl;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    return-void

    .end local v1    # "logger":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "applicationId":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static initializeTimersIfNeeded()V
    .locals 11

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 514
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->staticLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 515
    :try_start_1
    sget-object v2, Lcom/facebook/appevents/AppEventsLoggerImpl;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v2, :cond_1

    .line 516
    monitor-exit v1

    return-void

    .line 521
    :cond_1
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v2, Lcom/facebook/appevents/AppEventsLoggerImpl;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 522
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    :try_start_2
    new-instance v5, Lcom/facebook/appevents/AppEventsLoggerImpl$3;

    invoke-direct {v5}, Lcom/facebook/appevents/AppEventsLoggerImpl$3;-><init>()V

    .line 539
    .local v5, "attributionRecheckRunnable":Ljava/lang/Runnable;
    sget-object v4, Lcom/facebook/appevents/AppEventsLoggerImpl;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v6, 0x0

    const-wide/32 v8, 0x15180

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v4 .. v10}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 544
    return-void

    .line 522
    .end local v5    # "attributionRecheckRunnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 544
    :catchall_1
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static logEvent(Lcom/facebook/appevents/AppEvent;Lcom/facebook/appevents/AccessTokenAppIdPair;)V
    .locals 4

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 617
    .local p0, "event":Lcom/facebook/appevents/AppEvent;
    .local p1, "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    :cond_0
    :try_start_0
    invoke-static {p1, p0}, Lcom/facebook/appevents/AppEventQueue;->add(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    .line 619
    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->OnDevicePostInstallEventProcessing:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v1}, Lcom/facebook/internal/FeatureManager;->isEnabled(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    invoke-static {}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->isOnDeviceProcessingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    invoke-virtual {p1}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->sendCustomEventAsync(Ljava/lang/String;Lcom/facebook/appevents/AppEvent;)V

    .line 625
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEvent;->getIsImplicit()Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->isActivateAppEventRequested:Z

    if-nez v1, :cond_3

    .line 626
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEvent;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fb_mobile_activate_app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 627
    const/4 v1, 0x1

    sput-boolean v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->isActivateAppEventRequested:Z

    goto :goto_0

    .line 629
    :cond_2
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v2, "AppEvents"

    const-string v3, "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity\'s onResume() methodbefore logging other app events."

    invoke-static {v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    :cond_3
    :goto_0
    return-void

    .end local p0    # "event":Lcom/facebook/appevents/AppEvent;
    .end local p1    # "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static notifyDeveloperError(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 651
    .local p0, "message":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const-string v2, "AppEvents"

    invoke-static {v1, v2, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    return-void

    .end local p0    # "message":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static onContextStop()V
    .locals 2

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 382
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->persistToDisk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static setFlushBehavior(Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;)V
    .locals 3

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 201
    .local p0, "flushBehavior":Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->staticLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    :try_start_1
    sput-object p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 203
    monitor-exit v1

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 204
    .end local p0    # "flushBehavior":Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;
    :catchall_1
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static setInstallReferrer(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 413
    .local p0, "referrer":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 414
    .local v1, "ctx":Landroid/content/Context;
    const-string v2, "com.facebook.sdk.appEventPreferences"

    const/4 v3, 0x0

    .line 415
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 416
    .local v2, "preferences":Landroid/content/SharedPreferences;
    if-eqz p0, :cond_1

    .line 417
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "install_referrer"

    invoke-interface {v3, v4, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :cond_1
    return-void

    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    .end local p0    # "referrer":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static setPushNotificationsRegistrationId(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 391
    .local p0, "registrationId":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->staticLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 392
    :try_start_1
    sget-object v2, Lcom/facebook/appevents/AppEventsLoggerImpl;->pushNotificationsRegistrationId:Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/facebook/internal/Utility;->stringsEqualOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 393
    sput-object p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->pushNotificationsRegistrationId:Ljava/lang/String;

    .line 395
    new-instance v2, Lcom/facebook/appevents/AppEventsLoggerImpl;

    .line 396
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Lcom/facebook/appevents/AppEventsLoggerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 398
    .local v2, "logger":Lcom/facebook/appevents/AppEventsLoggerImpl;
    const-string v3, "fb_mobile_obtain_push_token"

    invoke-virtual {v2, v3}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v3

    sget-object v4, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v3, v4, :cond_1

    .line 400
    invoke-virtual {v2}, Lcom/facebook/appevents/AppEventsLoggerImpl;->flush()V

    .line 403
    .end local v2    # "logger":Lcom/facebook/appevents/AppEventsLoggerImpl;
    :cond_1
    monitor-exit v1

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 404
    .end local p0    # "registrationId":Ljava/lang/String;
    :catchall_1
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method flush()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 377
    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/FlushReason;->EXPLICIT:Lcom/facebook/appevents/FlushReason;

    invoke-static {v1}, Lcom/facebook/appevents/AppEventQueue;->flush(Lcom/facebook/appevents/FlushReason;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 483
    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    :try_start_0
    iget-object v2, v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-virtual {v2}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    :catchall_0
    move-exception v2

    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method isValidForAccessToken(Lcom/facebook/AccessToken;)Z
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    .line 386
    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .local p1, "accessToken":Lcom/facebook/AccessToken;
    :try_start_0
    new-instance v2, Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-direct {v2, p1}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Lcom/facebook/AccessToken;)V

    .line 387
    .local v2, "other":Lcom/facebook/appevents/AccessTokenAppIdPair;
    iget-object v3, v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-virtual {v3, v2}, Lcom/facebook/appevents/AccessTokenAppIdPair;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .end local v2    # "other":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local p1    # "accessToken":Lcom/facebook/AccessToken;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method logEvent(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 207
    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .local p1, "eventName":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .end local p1    # "eventName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logEvent(Ljava/lang/String;D)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 211
    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .local p1, "eventName":Ljava/lang/String;
    .local p2, "valueToSum":D
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .end local p1    # "eventName":Ljava/lang/String;
    .end local p2    # "valueToSum":D
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .local p2, "valueToSum":D
    move-object v4, p4

    .local v4, "parameters":Landroid/os/Bundle;
    move-object v2, p1

    .line 219
    .local v2, "eventName":Ljava/lang/String;
    nop

    .line 220
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v6

    .line 219
    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .end local v2    # "eventName":Ljava/lang/String;
    .end local v4    # "parameters":Landroid/os/Bundle;
    .end local p2    # "valueToSum":D
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    move-object v4, p2

    .local v4, "parameters":Landroid/os/Bundle;
    move-object v2, p1

    .line 215
    .local v2, "eventName":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .end local v2    # "eventName":Ljava/lang/String;
    .end local v4    # "parameters":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    .locals 9

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    move-object v4, p2

    .local v4, "valueToSum":Ljava/lang/Double;
    move v6, p4

    .local v6, "isImplicitlyLogged":Z
    .local p1, "eventName":Ljava/lang/String;
    move-object v5, p3

    .local v5, "parameters":Landroid/os/Bundle;
    move-object v8, p5

    .line 576
    .local v8, "currentSessionId":Ljava/util/UUID;
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    .line 581
    :cond_1
    const-string p2, "app_events_killswitch"

    .line 582
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object p3

    .line 581
    const/4 p4, 0x0

    invoke-static {p2, p3, p4}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getGateKeeperForKey(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x1

    const-string p5, "AppEvents"

    if-eqz p2, :cond_2

    .line 583
    :try_start_1
    sget-object p2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v1, "KillSwitch is enabled and fail to log app event: %s"

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, p4

    invoke-static {p2, p5, v1, p3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    return-void

    .line 592
    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    :cond_2
    :try_start_2
    new-instance p2, Lcom/facebook/appevents/AppEvent;

    iget-object v2, v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->contextName:Ljava/lang/String;

    .line 599
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isInBackground()Z

    move-result v7

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/facebook/appevents/AppEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)V

    .line 601
    .local p2, "event":Lcom/facebook/appevents/AppEvent;
    iget-object v1, v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-static {p2, v1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Lcom/facebook/appevents/AppEvent;Lcom/facebook/appevents/AccessTokenAppIdPair;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/facebook/FacebookException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 613
    .end local p2    # "event":Lcom/facebook/appevents/AppEvent;
    :goto_0
    goto :goto_1

    .line 610
    :catch_0
    move-exception p2

    .line 612
    .local p2, "e":Lcom/facebook/FacebookException;
    :try_start_3
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v2, "Invalid app event: %s"

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, p4

    invoke-static {v1, p5, v2, p3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 602
    .end local p2    # "e":Lcom/facebook/FacebookException;
    :catch_1
    move-exception p2

    .line 604
    .local p2, "jsonException":Lorg/json/JSONException;
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v2, "JSON encoding for app event failed: \'%s\'"

    new-array p3, p3, [Ljava/lang/Object;

    .line 608
    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, p4

    .line 604
    invoke-static {v1, p5, v2, p3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p2    # "jsonException":Lorg/json/JSONException;
    goto :goto_0

    .line 614
    :goto_1
    return-void

    .end local v4    # "valueToSum":Ljava/lang/Double;
    .end local v5    # "parameters":Landroid/os/Bundle;
    .end local v6    # "isImplicitlyLogged":Z
    .end local v8    # "currentSessionId":Ljava/util/UUID;
    .end local p1    # "eventName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    .line 577
    .restart local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .restart local v4    # "valueToSum":Ljava/lang/Double;
    .restart local v5    # "parameters":Landroid/os/Bundle;
    .restart local v6    # "isImplicitlyLogged":Z
    .restart local v8    # "currentSessionId":Ljava/util/UUID;
    .restart local p1    # "eventName":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void
.end method

.method logEventFromSE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 224
    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .local p1, "eventName":Ljava/lang/String;
    .local p2, "buttonText":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 225
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v2, "_is_suggested_event"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v2, "_button_text"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p1, v1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .end local v1    # "parameters":Landroid/os/Bundle;
    .end local p1    # "eventName":Ljava/lang/String;
    .end local p2    # "buttonText":Ljava/lang/String;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logEventImplicitly(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    move-object v3, p2

    .local v3, "valueToSum":Ljava/lang/Double;
    move-object v2, p1

    .local v2, "eventName":Ljava/lang/String;
    move-object v4, p3

    .line 547
    .local v4, "parameters":Landroid/os/Bundle;
    const/4 v5, 0x1

    .line 548
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v6

    .line 547
    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .end local v2    # "eventName":Ljava/lang/String;
    .end local v3    # "valueToSum":Ljava/lang/Double;
    .end local v4    # "parameters":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logEventImplicitly(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .local p2, "purchaseAmount":Ljava/math/BigDecimal;
    .local p4, "parameters":Landroid/os/Bundle;
    move-object v2, p1

    .local v2, "eventName":Ljava/lang/String;
    move-object p1, p3

    .line 553
    .local p1, "currency":Ljava/util/Currency;
    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 558
    :cond_1
    if-nez p4, :cond_2

    .line 559
    :try_start_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    move-object p4, p3

    .line 561
    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    :cond_2
    const-string p3, "fb_currency"

    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    nop

    .line 564
    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v5, 0x1

    .line 567
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v6

    .line 562
    move-object v1, v0

    move-object v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 568
    return-void

    .line 554
    :cond_3
    :goto_0
    sget-object p3, Lcom/facebook/appevents/AppEventsLoggerImpl;->TAG:Ljava/lang/String;

    const-string v1, "purchaseAmount and currency cannot be null"

    invoke-static {p3, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    return-void

    .line 568
    .end local v2    # "eventName":Ljava/lang/String;
    .end local p1    # "currency":Ljava/util/Currency;
    .end local p2    # "purchaseAmount":Ljava/math/BigDecimal;
    .end local p4    # "parameters":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logProductItem(Ljava/lang/String;Lcom/facebook/appevents/AppEventsLogger$ProductAvailability;Lcom/facebook/appevents/AppEventsLogger$ProductCondition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 16

    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p0

    .local v1, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    move-object/from16 v0, p2

    .local v0, "availability":Lcom/facebook/appevents/AppEventsLogger$ProductAvailability;
    move-object/from16 v2, p6

    .local v2, "link":Ljava/lang/String;
    move-object/from16 v3, p4

    .local v3, "description":Ljava/lang/String;
    move-object/from16 v4, p12

    .local v4, "brand":Ljava/lang/String;
    move-object/from16 v5, p13

    .local v5, "parameters":Landroid/os/Bundle;
    move-object/from16 v6, p8

    .local v6, "priceAmount":Ljava/math/BigDecimal;
    move-object/from16 v7, p9

    .local v7, "currency":Ljava/util/Currency;
    move-object/from16 v8, p11

    .local v8, "mpn":Ljava/lang/String;
    move-object/from16 v9, p10

    .local v9, "gtin":Ljava/lang/String;
    move-object/from16 v10, p1

    .local v10, "itemID":Ljava/lang/String;
    move-object/from16 v11, p3

    .local v11, "condition":Lcom/facebook/appevents/AppEventsLogger$ProductCondition;
    move-object/from16 v12, p7

    .local v12, "title":Ljava/lang/String;
    move-object/from16 v13, p5

    .line 316
    .local v13, "imageLink":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 317
    :try_start_0
    const-string v14, "itemID cannot be null"

    invoke-static {v14}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    .line 318
    return-void

    .line 374
    .end local v0    # "availability":Lcom/facebook/appevents/AppEventsLogger$ProductAvailability;
    .end local v1    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .end local v2    # "link":Ljava/lang/String;
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "brand":Ljava/lang/String;
    .end local v5    # "parameters":Landroid/os/Bundle;
    .end local v6    # "priceAmount":Ljava/math/BigDecimal;
    .end local v7    # "currency":Ljava/util/Currency;
    .end local v8    # "mpn":Ljava/lang/String;
    .end local v9    # "gtin":Ljava/lang/String;
    .end local v10    # "itemID":Ljava/lang/String;
    .end local v11    # "condition":Lcom/facebook/appevents/AppEventsLogger$ProductCondition;
    .end local v12    # "title":Ljava/lang/String;
    .end local v13    # "imageLink":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto/16 :goto_0

    .line 319
    .restart local v0    # "availability":Lcom/facebook/appevents/AppEventsLogger$ProductAvailability;
    .restart local v2    # "link":Ljava/lang/String;
    .restart local v3    # "description":Ljava/lang/String;
    .restart local v4    # "brand":Ljava/lang/String;
    .restart local v5    # "parameters":Landroid/os/Bundle;
    .restart local v6    # "priceAmount":Ljava/math/BigDecimal;
    .restart local v7    # "currency":Ljava/util/Currency;
    .restart local v8    # "mpn":Ljava/lang/String;
    .restart local v9    # "gtin":Ljava/lang/String;
    .restart local v10    # "itemID":Ljava/lang/String;
    .restart local v11    # "condition":Lcom/facebook/appevents/AppEventsLogger$ProductCondition;
    .restart local v12    # "title":Ljava/lang/String;
    .restart local v13    # "imageLink":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 320
    const-string v14, "availability cannot be null"

    invoke-static {v14}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    .line 321
    return-void

    .line 322
    :cond_2
    if-nez v11, :cond_3

    .line 323
    const-string v14, "condition cannot be null"

    invoke-static {v14}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    .line 324
    return-void

    .line 325
    :cond_3
    if-nez v3, :cond_4

    .line 326
    const-string v14, "description cannot be null"

    invoke-static {v14}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    .line 327
    return-void

    .line 328
    :cond_4
    if-nez v13, :cond_5

    .line 329
    const-string v14, "imageLink cannot be null"

    invoke-static {v14}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    .line 330
    return-void

    .line 331
    :cond_5
    if-nez v2, :cond_6

    .line 332
    const-string v14, "link cannot be null"

    invoke-static {v14}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    .line 333
    return-void

    .line 334
    :cond_6
    if-nez v12, :cond_7

    .line 335
    const-string/jumbo v14, "title cannot be null"

    invoke-static {v14}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    .line 336
    return-void

    .line 337
    :cond_7
    if-nez v6, :cond_8

    .line 338
    const-string v14, "priceAmount cannot be null"

    invoke-static {v14}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    .line 339
    return-void

    .line 340
    :cond_8
    if-nez v7, :cond_9

    .line 341
    const-string v14, "currency cannot be null"

    invoke-static {v14}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    .line 342
    return-void

    .line 343
    :cond_9
    if-nez v9, :cond_a

    if-nez v8, :cond_a

    if-nez v4, :cond_a

    .line 344
    const-string v14, "Either gtin, mpn or brand is required"

    invoke-static {v14}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    .line 345
    return-void

    .line 348
    :cond_a
    if-nez v5, :cond_b

    .line 349
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move-object v5, v14

    .line 351
    :cond_b
    const-string v14, "fb_product_item_id"

    invoke-virtual {v5, v14, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v14, "fb_product_availability"

    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventsLogger$ProductAvailability;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v14, "fb_product_condition"

    invoke-virtual {v11}, Lcom/facebook/appevents/AppEventsLogger$ProductCondition;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v14, "fb_product_description"

    invoke-virtual {v5, v14, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v14, "fb_product_image_link"

    invoke-virtual {v5, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v14, "fb_product_link"

    invoke-virtual {v5, v14, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v14, "fb_product_title"

    invoke-virtual {v5, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v14, "fb_product_price_amount"

    const/4 v15, 0x3

    move-object/from16 p2, v0

    .end local v0    # "availability":Lcom/facebook/appevents/AppEventsLogger$ProductAvailability;
    .local p2, "availability":Lcom/facebook/appevents/AppEventsLogger$ProductAvailability;
    const/4 v0, 0x4

    .line 360
    invoke-virtual {v6, v15, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-virtual {v5, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v0, "fb_product_price_currency"

    invoke-virtual {v7}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-eqz v9, :cond_c

    .line 363
    const-string v0, "fb_product_gtin"

    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_c
    if-eqz v8, :cond_d

    .line 366
    const-string v0, "fb_product_mpn"

    invoke-virtual {v5, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_d
    if-eqz v4, :cond_e

    .line 369
    const-string v0, "fb_product_brand"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_e
    const-string v0, "fb_mobile_catalog_update"

    invoke-virtual {v1, v0, v5}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 373
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->eagerFlush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    return-void

    .end local v2    # "link":Ljava/lang/String;
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "brand":Ljava/lang/String;
    .end local v5    # "parameters":Landroid/os/Bundle;
    .end local v6    # "priceAmount":Ljava/math/BigDecimal;
    .end local v7    # "currency":Ljava/util/Currency;
    .end local v8    # "mpn":Ljava/lang/String;
    .end local v9    # "gtin":Ljava/lang/String;
    .end local v10    # "itemID":Ljava/lang/String;
    .end local v11    # "condition":Lcom/facebook/appevents/AppEventsLogger$ProductCondition;
    .end local v12    # "title":Ljava/lang/String;
    .end local v13    # "imageLink":Ljava/lang/String;
    .end local p2    # "availability":Lcom/facebook/appevents/AppEventsLogger$ProductAvailability;
    :goto_0
    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 231
    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .local p1, "purchaseAmount":Ljava/math/BigDecimal;
    .local p2, "currency":Ljava/util/Currency;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .end local p1    # "purchaseAmount":Ljava/math/BigDecimal;
    .end local p2    # "currency":Ljava/util/Currency;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 235
    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .local p1, "purchaseAmount":Ljava/math/BigDecimal;
    .local p2, "currency":Ljava/util/Currency;
    .local p3, "parameters":Landroid/os/Bundle;
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->isImplicitPurchaseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    sget-object v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->TAG:Ljava/lang/String;

    const-string v2, "You are logging purchase events while auto-logging of in-app purchase is enabled in the SDK. Make sure you don\'t log duplicate events"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    return-void

    .end local p1    # "purchaseAmount":Ljava/math/BigDecimal;
    .end local p2    # "currency":Ljava/util/Currency;
    .end local p3    # "parameters":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .local p2, "currency":Ljava/util/Currency;
    move v5, p4

    .line 251
    .local v5, "isImplicitlyLogged":Z
    .local p1, "purchaseAmount":Ljava/math/BigDecimal;
    .local p3, "parameters":Landroid/os/Bundle;
    if-nez p1, :cond_1

    .line 252
    :try_start_0
    const-string p4, "purchaseAmount cannot be null"

    invoke-static {p4}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    .line 253
    return-void

    .line 271
    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .end local v5    # "isImplicitlyLogged":Z
    .end local p1    # "purchaseAmount":Ljava/math/BigDecimal;
    .end local p2    # "currency":Ljava/util/Currency;
    .end local p3    # "parameters":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 254
    .restart local v5    # "isImplicitlyLogged":Z
    .restart local p1    # "purchaseAmount":Ljava/math/BigDecimal;
    .restart local p2    # "currency":Ljava/util/Currency;
    .restart local p3    # "parameters":Landroid/os/Bundle;
    :cond_1
    if-nez p2, :cond_2

    .line 255
    const-string p4, "currency cannot be null"

    invoke-static {p4}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    .line 256
    return-void

    .line 259
    :cond_2
    if-nez p3, :cond_3

    .line 260
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    move-object p3, p4

    .line 262
    :cond_3
    const-string p4, "fb_currency"

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v2, "fb_mobile_purchase"

    .line 266
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 269
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v6

    .line 264
    move-object v1, v0

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 270
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->eagerFlush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    return-void

    .end local v5    # "isImplicitlyLogged":Z
    .end local p1    # "purchaseAmount":Ljava/math/BigDecimal;
    .end local p2    # "currency":Ljava/util/Currency;
    .end local p3    # "parameters":Landroid/os/Bundle;
    :goto_0
    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logPurchaseImplicitly(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 245
    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .local p1, "purchaseAmount":Ljava/math/BigDecimal;
    .local p2, "currency":Ljava/util/Currency;
    .local p3, "parameters":Landroid/os/Bundle;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .end local p1    # "purchaseAmount":Ljava/math/BigDecimal;
    .end local p2    # "currency":Ljava/util/Currency;
    .end local p3    # "parameters":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logPushNotificationOpen(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 274
    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .local p1, "payload":Landroid/os/Bundle;
    .local p2, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 276
    .local v1, "campaignId":Ljava/lang/String;
    :try_start_0
    const-string v2, "fb_push_payload"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "payloadString":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    return-void

    .line 281
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 282
    .local v3, "facebookPayload":Lorg/json/JSONObject;
    const-string v4, "campaign"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 285
    .end local v2    # "payloadString":Ljava/lang/String;
    .end local v3    # "facebookPayload":Lorg/json/JSONObject;
    goto :goto_0

    .line 300
    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    .end local v1    # "campaignId":Ljava/lang/String;
    .end local p1    # "payload":Landroid/os/Bundle;
    .end local p2    # "action":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 283
    .restart local v1    # "campaignId":Ljava/lang/String;
    .restart local p1    # "payload":Landroid/os/Bundle;
    .restart local p2    # "action":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 286
    :goto_0
    if-nez v1, :cond_2

    .line 287
    :try_start_1
    sget-object v2, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    sget-object v3, Lcom/facebook/appevents/AppEventsLoggerImpl;->TAG:Ljava/lang/String;

    const-string v4, "Malformed payload specified for logging a push notification open."

    invoke-static {v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void

    .line 294
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 295
    .local v2, "parameters":Landroid/os/Bundle;
    const-string v3, "fb_push_campaign"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    if-eqz p2, :cond_3

    .line 297
    const-string v3, "fb_push_action"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_3
    const-string v3, "fb_mobile_push_opened"

    invoke-virtual {v0, v3, v2}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    return-void

    .end local v1    # "campaignId":Ljava/lang/String;
    .end local v2    # "parameters":Landroid/os/Bundle;
    .end local p1    # "payload":Landroid/os/Bundle;
    .end local p2    # "action":Ljava/lang/String;
    :goto_1
    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .local v0, "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    move-object v3, p2

    .local v3, "valueToSum":Ljava/lang/Double;
    .local p1, "eventName":Ljava/lang/String;
    move-object v4, p3

    .line 459
    .local v4, "parameters":Landroid/os/Bundle;
    :try_start_0
    const-string p2, "fb_ak"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 460
    sget-object p2, Lcom/facebook/appevents/AppEventsLoggerImpl;->TAG:Ljava/lang/String;

    const-string p3, "logSdkEvent is deprecated and only supports account kit for legacy, please use logEvent instead"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void

    .line 467
    .end local v0    # "this":Lcom/facebook/appevents/AppEventsLoggerImpl;
    :cond_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 468
    const/4 v5, 0x1

    .line 473
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v6

    .line 468
    move-object v1, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :cond_2
    return-void

    .end local v3    # "valueToSum":Ljava/lang/Double;
    .end local v4    # "parameters":Landroid/os/Bundle;
    .end local p1    # "eventName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
