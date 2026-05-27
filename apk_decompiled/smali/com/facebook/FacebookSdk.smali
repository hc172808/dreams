.class public final Lcom/facebook/FacebookSdk;
.super Ljava/lang/Object;
.source "FacebookSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FacebookSdk$GraphRequestCreator;,
        Lcom/facebook/FacebookSdk$InitializeCallback;
    }
.end annotation


# static fields
.field public static final ADVERTISER_ID_COLLECTION_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.AdvertiserIDCollectionEnabled"

.field public static final APPLICATION_ID_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationId"

.field public static final APPLICATION_NAME_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationName"

.field public static final APP_EVENT_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.appEventPreferences"

.field private static final ATTRIBUTION_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.attributionTracking"

.field public static final AUTO_INIT_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.AutoInitEnabled"

.field public static final AUTO_LOG_APP_EVENTS_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.AutoLogAppEventsEnabled"

.field static final CALLBACK_OFFSET_CHANGED_AFTER_INIT:Ljava/lang/String; = "The callback request code offset can\'t be updated once the SDK is initialized. Call FacebookSdk.setCallbackRequestCodeOffset inside your Application.onCreate method"

.field static final CALLBACK_OFFSET_NEGATIVE:Ljava/lang/String; = "The callback request code offset can\'t be negative."

.field public static final CALLBACK_OFFSET_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.CallbackOffset"

.field public static final CLIENT_TOKEN_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ClientToken"

.field public static final CODELESS_DEBUG_LOG_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.CodelessDebugLogEnabled"

.field public static final DATA_PROCESSING_OPTIONS_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.DataProcessingOptions"

.field public static final DATA_PROCESSION_OPTIONS:Ljava/lang/String; = "data_processing_options"

.field public static final DATA_PROCESSION_OPTIONS_COUNTRY:Ljava/lang/String; = "data_processing_options_country"

.field public static final DATA_PROCESSION_OPTIONS_STATE:Ljava/lang/String; = "data_processing_options_state"

.field private static final DEFAULT_CALLBACK_REQUEST_CODE_OFFSET:I = 0xface

.field private static final FACEBOOK_COM:Ljava/lang/String; = "facebook.com"

.field private static final FB_GG:Ljava/lang/String; = "fb.gg"

.field public static final GAMING:Ljava/lang/String; = "gaming"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_REQUEST_CODE_RANGE:I = 0x64

.field public static final MONITOR_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.MonitorEnabled"

.field private static final PUBLISH_ACTIVITY_PATH:Ljava/lang/String; = "%s/activities"

.field private static final TAG:Ljava/lang/String;

.field public static final WEB_DIALOG_THEME:Ljava/lang/String; = "com.facebook.sdk.WebDialogTheme"

.field private static volatile appClientToken:Ljava/lang/String;

.field private static applicationContext:Landroid/content/Context;

.field private static volatile applicationId:Ljava/lang/String;

.field private static volatile applicationName:Ljava/lang/String;

.field private static cacheDir:Lcom/facebook/internal/LockOnGetVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/internal/LockOnGetVariable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static callbackRequestCodeOffset:I

.field private static volatile codelessDebugLogEnabled:Ljava/lang/Boolean;

.field private static executor:Ljava/util/concurrent/Executor;

.field private static volatile facebookDomain:Ljava/lang/String;

.field private static graphApiVersion:Ljava/lang/String;

.field private static graphRequestCreator:Lcom/facebook/FacebookSdk$GraphRequestCreator;

.field public static hasCustomTabsPrefetching:Z

.field public static ignoreAppSwitchToLoggedOut:Z

.field private static volatile isDebugEnabled:Z

.field private static isLegacyTokenUpgradeSupported:Z

.field private static final loggingBehaviors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private static onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

.field private static sdkFullyInitialized:Ljava/lang/Boolean;

.field private static final sdkInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/LoggingBehavior;

    sget-object v2, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 75
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    .line 85
    const-string v0, "facebook.com"

    sput-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v1, 0x10000

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    .line 87
    sput-boolean v3, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    .line 88
    sput-boolean v3, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    .line 91
    const v0, 0xface

    sput v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    .line 93
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDefaultAPIVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    .line 94
    sput-boolean v3, Lcom/facebook/FacebookSdk;->hasCustomTabsPrefetching:Z

    .line 95
    sput-boolean v3, Lcom/facebook/FacebookSdk;->ignoreAppSwitchToLoggedOut:Z

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 162
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->sdkFullyInitialized:Ljava/lang/Boolean;

    .line 164
    new-instance v0, Lcom/facebook/FacebookSdk$1;

    invoke-direct {v0}, Lcom/facebook/FacebookSdk$1;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk;->graphRequestCreator:Lcom/facebook/FacebookSdk$GraphRequestCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 71
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public static addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
    .locals 2
    .param p0, "behavior"    # Lcom/facebook/LoggingBehavior;

    .line 463
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 464
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-static {}, Lcom/facebook/FacebookSdk;->updateGraphDebugBehavior()V

    .line 466
    monitor-exit v0

    .line 467
    return-void

    .line 466
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static clearLoggingBehaviors()V
    .locals 2

    .line 490
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 491
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 492
    monitor-exit v0

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static fullyInitialize()V
    .locals 1

    .line 437
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->sdkFullyInitialized:Ljava/lang/Boolean;

    .line 438
    return-void
.end method

.method public static getAdvertiserIDCollectionEnabled()Z
    .locals 1

    .line 1029
    invoke-static {}, Lcom/facebook/UserSettingsManager;->getAdvertiserIDCollectionEnabled()Z

    move-result v0

    return v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 644
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 645
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getApplicationId()Ljava/lang/String;
    .locals 1

    .line 910
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 911
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .locals 1

    .line 931
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 932
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationSignature(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 870
    .local p0, "context":Landroid/content/Context;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 871
    if-nez p0, :cond_1

    .line 872
    return-object v2

    .line 874
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 875
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_2

    .line 876
    return-object v2

    .line 879
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    .local v3, "packageName":Ljava/lang/String;
    const/16 v4, 0x40

    :try_start_1
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 885
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 887
    :try_start_2
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 888
    .local v5, "signatures":[Landroid/content/pm/Signature;
    if-eqz v5, :cond_4

    array-length v6, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_3

    goto :goto_0

    .line 894
    :cond_3
    :try_start_3
    const-string v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 897
    .local v6, "md":Ljava/security/MessageDigest;
    nop

    .line 899
    :try_start_4
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 900
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    const/16 v8, 0x9

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v0

    .line 895
    .end local v6    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v2

    .line 889
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_4
    :goto_0
    return-object v2

    .line 883
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "signatures":[Landroid/content/pm/Signature;
    :catch_1
    move-exception v0

    .line 884
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v2

    .line 900
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static getAutoInitEnabled()Z
    .locals 1

    .line 966
    invoke-static {}, Lcom/facebook/UserSettingsManager;->getAutoInitEnabled()Z

    move-result v0

    return v0
.end method

.method public static getAutoLogAppEventsEnabled()Z
    .locals 1

    .line 988
    invoke-static {}, Lcom/facebook/UserSettingsManager;->getAutoLogAppEventsEnabled()Z

    move-result v0

    return v0
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 1

    .line 1093
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 1094
    sget-object v0, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    invoke-virtual {v0}, Lcom/facebook/internal/LockOnGetVariable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static getCallbackRequestCodeOffset()I
    .locals 1

    .line 1113
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 1114
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    return v0
.end method

.method public static getClientToken()Ljava/lang/String;
    .locals 1

    .line 951
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 952
    sget-object v0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getCodelessDebugLogEnabled()Z
    .locals 1

    .line 1009
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 1010
    sget-object v0, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getCodelessSetupEnabled()Z
    .locals 1

    .line 1015
    invoke-static {}, Lcom/facebook/UserSettingsManager;->getCodelessSetupEnabled()Z

    move-result v0

    return v0
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 559
    sget-object v0, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    :try_start_0
    sget-object v1, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 561
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v1, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    .line 563
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    sget-object v0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    return-object v0

    .line 563
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getFacebookDomain()Ljava/lang/String;
    .locals 1

    .line 588
    sget-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    return-object v0
.end method

.method public static getGraphApiVersion()Ljava/lang/String;
    .locals 4

    .line 673
    sget-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "getGraphApiVersion: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    sget-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getGraphDomain()Ljava/lang/String;
    .locals 5

    .line 601
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 602
    .local v0, "currentToken":Lcom/facebook/AccessToken;
    const/4 v1, 0x0

    .line 605
    .local v1, "tokenGraphDomain":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getGraphDomain()Ljava/lang/String;

    move-result-object v1

    .line 609
    :cond_0
    if-nez v1, :cond_1

    .line 610
    sget-object v2, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    .local v2, "graphDomain":Ljava/lang/String;
    goto :goto_0

    .line 611
    .end local v2    # "graphDomain":Ljava/lang/String;
    :cond_1
    const-string v2, "gaming"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 612
    sget-object v2, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    const-string v3, "facebook.com"

    const-string v4, "fb.gg"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "graphDomain":Ljava/lang/String;
    goto :goto_0

    .line 614
    .end local v2    # "graphDomain":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    .line 617
    .restart local v2    # "graphDomain":Ljava/lang/String;
    :goto_0
    return-object v2
.end method

.method public static getLimitEventAndDataUsage(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 769
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 770
    nop

    .line 771
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 772
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "limitEventUsage"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getLoggingBehaviors()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation

    .line 449
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 450
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 451
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getMonitorEnabled()Z
    .locals 1

    .line 1047
    invoke-static {}, Lcom/facebook/UserSettingsManager;->getMonitorEnabled()Z

    move-result v0

    return v0
.end method

.method public static getOnProgressThreshold()J
    .locals 2

    .line 794
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 795
    sget-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 757
    const-string v0, "11.1.0"

    return-object v0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .line 512
    sget-boolean v0, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    return v0
.end method

.method public static isFacebookRequestCode(I)Z
    .locals 1
    .param p0, "requestCode"    # I

    .line 1127
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    if-lt p0, v0, :cond_0

    add-int/lit8 v0, v0, 0x64

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static declared-synchronized isFullyInitialized()Z
    .locals 2

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    .line 432
    :try_start_0
    sget-object v1, Lcom/facebook/FacebookSdk;->sdkFullyInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 432
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isInitialized()Z
    .locals 1

    .line 420
    sget-object v0, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static isLegacyTokenUpgradeSupported()Z
    .locals 1

    .line 531
    sget-boolean v0, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    return v0
.end method

.method public static isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z
    .locals 2
    .param p0, "behavior"    # Lcom/facebook/LoggingBehavior;

    .line 505
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 506
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 507
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static loadDefaultsFromMetadata(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 810
    if-nez p0, :cond_0

    .line 811
    return-void

    .line 814
    :cond_0
    const/4 v0, 0x0

    .line 816
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    nop

    .line 818
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 819
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 822
    nop

    .line 824
    if-eqz v0, :cond_a

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 828
    :cond_1
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 829
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 830
    .local v1, "appId":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 831
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 832
    .local v2, "appIdString":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 833
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    goto :goto_0

    .line 835
    :cond_2
    sput-object v2, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    goto :goto_0

    .line 837
    .end local v2    # "appIdString":Ljava/lang/String;
    :cond_3
    instance-of v2, v1, Ljava/lang/Number;

    if-nez v2, :cond_4

    :goto_0
    goto :goto_1

    .line 838
    :cond_4
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 844
    .end local v1    # "appId":Ljava/lang/Object;
    :cond_5
    :goto_1
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 845
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    .line 848
    :cond_6
    sget-object v1, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 849
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ClientToken"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    .line 852
    :cond_7
    sget v1, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    const v2, 0xface

    if-ne v1, v2, :cond_8

    .line 853
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 854
    const-string v3, "com.facebook.sdk.CallbackOffset"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 857
    :cond_8
    sget-object v1, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_9

    .line 858
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v2, 0x0

    const-string v3, "com.facebook.sdk.CodelessDebugLogEnabled"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    .line 860
    :cond_9
    return-void

    .line 825
    :cond_a
    :goto_2
    return-void

    .line 820
    :catch_0
    move-exception v1

    .line 821
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void
.end method

.method static publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13

    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 706
    .local p0, "context":Landroid/content/Context;
    .local p1, "applicationId":Ljava/lang/String;
    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 709
    nop

    .line 710
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v1

    .line 711
    .local v1, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    const-string v2, "com.facebook.sdk.attributionTracking"

    .line 712
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 713
    .local v2, "preferences":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 714
    .local v4, "pingKey":Ljava/lang/String;
    const-wide/16 v5, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    .local v7, "lastPing":J
    :try_start_1
    sget-object v9, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;->MOBILE_INSTALL_EVENT:Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    .line 722
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 723
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v11

    .line 719
    invoke-static {v9, v1, v10, v11, p0}, Lcom/facebook/appevents/internal/AppEventsLoggerUtility;->getJSONObjectForGraphAPICall(Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v9
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 727
    .local v9, "publishParams":Lorg/json/JSONObject;
    nop

    .line 729
    :try_start_2
    const-string v10, "%s/activities"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p1, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 730
    .local v3, "publishUrl":Ljava/lang/String;
    sget-object v10, Lcom/facebook/FacebookSdk;->graphRequestCreator:Lcom/facebook/FacebookSdk$GraphRequestCreator;

    .line 731
    const/4 v11, 0x0

    invoke-interface {v10, v11, v3, v9, v11}, Lcom/facebook/FacebookSdk$GraphRequestCreator;->createPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v10

    .line 733
    .local v10, "publishRequest":Lcom/facebook/GraphRequest;
    cmp-long v11, v7, v5

    if-nez v11, :cond_1

    .line 735
    invoke-virtual {v10}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v5

    .line 737
    .local v5, "publishResponse":Lcom/facebook/GraphResponse;
    invoke-virtual {v5}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v6

    if-nez v6, :cond_1

    .line 739
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 740
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-wide v7, v11

    .line 741
    invoke-interface {v6, v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 742
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 748
    .end local v1    # "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    .end local v3    # "publishUrl":Ljava/lang/String;
    .end local v4    # "pingKey":Ljava/lang/String;
    .end local v5    # "publishResponse":Lcom/facebook/GraphResponse;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "lastPing":J
    .end local v9    # "publishParams":Lorg/json/JSONObject;
    .end local v10    # "publishRequest":Lcom/facebook/GraphRequest;
    :cond_1
    goto :goto_0

    .line 725
    .restart local v1    # "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    .restart local v2    # "preferences":Landroid/content/SharedPreferences;
    .restart local v4    # "pingKey":Ljava/lang/String;
    .restart local v7    # "lastPing":J
    :catch_0
    move-exception v3

    .line 726
    .local v3, "e":Lorg/json/JSONException;
    new-instance v5, Lcom/facebook/FacebookException;

    const-string v6, "An error occurred while publishing install."

    invoke-direct {v5, v6, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "applicationId":Ljava/lang/String;
    throw v5

    .line 707
    .end local v1    # "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v4    # "pingKey":Ljava/lang/String;
    .end local v7    # "lastPing":J
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "applicationId":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Both context and applicationId must be non-null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "applicationId":Ljava/lang/String;
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 749
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 745
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "applicationId":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 747
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "Facebook-publish"

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 749
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "applicationId":Ljava/lang/String;
    :goto_1
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 687
    .local p0, "context":Landroid/content/Context;
    .local p1, "applicationId":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 688
    .local v1, "applicationContext":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/FacebookSdk$8;

    invoke-direct {v3, v1, p1}, Lcom/facebook/FacebookSdk$8;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 689
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 697
    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->OnDeviceEventProcessing:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v2}, Lcom/facebook/internal/FeatureManager;->isEnabled(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 698
    invoke-static {}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->isOnDeviceProcessingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 699
    const-string v2, "com.facebook.sdk.attributionTracking"

    invoke-static {p1, v2}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->sendInstallEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    :cond_1
    return-void

    .end local v1    # "applicationContext":Landroid/content/Context;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "applicationId":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static removeLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
    .locals 2
    .param p0, "behavior"    # Lcom/facebook/LoggingBehavior;

    .line 478
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 479
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 480
    monitor-exit v0

    .line 481
    return-void

    .line 480
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    .line 255
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit v0

    return-void

    .line 254
    .end local p0    # "applicationContext":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;I)V
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "callbackRequestCodeOffset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    .line 198
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;ILcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit v0

    return-void

    .line 197
    .end local p0    # "applicationContext":Landroid/content/Context;
    .end local p1    # "callbackRequestCodeOffset":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;ILcom/facebook/FacebookSdk$InitializeCallback;)V
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "callbackRequestCodeOffset"    # I
    .param p2, "callback"    # Lcom/facebook/FacebookSdk$InitializeCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    .line 227
    :try_start_0
    sget-object v1, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "The callback request code offset can\'t be updated once the SDK is initialized. Call FacebookSdk.setCallbackRequestCodeOffset inside your Application.onCreate method"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_1
    :goto_0
    if-ltz p1, :cond_2

    .line 235
    sput p1, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 236
    invoke-static {p0, p2}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit v0

    return-void

    .line 232
    :cond_2
    :try_start_1
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "The callback request code offset can\'t be negative."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .end local p0    # "applicationContext":Landroid/content/Context;
    .end local p1    # "callbackRequestCodeOffset":I
    .end local p2    # "callback":Lcom/facebook/FacebookSdk$InitializeCallback;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/facebook/FacebookSdk$InitializeCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    .line 276
    :try_start_0
    sget-object v1, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    if-eqz p1, :cond_0

    .line 278
    invoke-interface {p1}, Lcom/facebook/FacebookSdk$InitializeCallback;->onInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :cond_0
    monitor-exit v0

    return-void

    .line 283
    :cond_1
    :try_start_1
    const-string v2, "applicationContext"

    invoke-static {p0, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;Z)V

    .line 288
    invoke-static {p0, v2}, Lcom/facebook/internal/Validate;->hasInternetPermissions(Landroid/content/Context;Z)V

    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    .line 293
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    .line 296
    sget-object v2, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/FacebookSdk;->loadDefaultsFromMetadata(Landroid/content/Context;)V

    .line 299
    sget-object v2, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 308
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 311
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoInitEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    invoke-static {}, Lcom/facebook/FacebookSdk;->fullyInitialize()V

    .line 316
    :cond_2
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_3

    .line 317
    invoke-static {}, Lcom/facebook/UserSettingsManager;->getAutoLogAppEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    sget-object v2, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->startTracking(Landroid/app/Application;Ljava/lang/String;)V

    .line 323
    :cond_3
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->loadAppSettingsAsync()V

    .line 326
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V

    .line 328
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/internal/BoltsMeasurementEventListener;->getInstance(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;

    .line 330
    new-instance v1, Lcom/facebook/internal/LockOnGetVariable;

    new-instance v2, Lcom/facebook/FacebookSdk$2;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$2;-><init>()V

    invoke-direct {v1, v2}, Lcom/facebook/internal/LockOnGetVariable;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v1, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    .line 339
    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->Instrument:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v2, Lcom/facebook/FacebookSdk$3;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$3;-><init>()V

    invoke-static {v1, v2}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 350
    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->AppEvents:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v2, Lcom/facebook/FacebookSdk$4;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$4;-><init>()V

    invoke-static {v1, v2}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 361
    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->ChromeCustomTabsPrefetching:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v2, Lcom/facebook/FacebookSdk$5;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$5;-><init>()V

    invoke-static {v1, v2}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 372
    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->IgnoreAppSwitchToLoggedOut:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v2, Lcom/facebook/FacebookSdk$6;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$6;-><init>()V

    invoke-static {v1, v2}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 383
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/FacebookSdk$7;

    invoke-direct {v2, p1, p0}, Lcom/facebook/FacebookSdk$7;-><init>(Lcom/facebook/FacebookSdk$InitializeCallback;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 411
    .local v1, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    monitor-exit v0

    return-void

    .line 300
    .end local v1    # "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    :cond_4
    :try_start_2
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    .end local p0    # "applicationContext":Landroid/content/Context;
    .end local p1    # "callback":Lcom/facebook/FacebookSdk$InitializeCallback;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setAdvertiserIDCollectionEnabled(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .line 1024
    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->setAdvertiserIDCollectionEnabled(Z)V

    .line 1025
    return-void
.end method

.method public static setApplicationId(Ljava/lang/String;)V
    .locals 0
    .param p0, "applicationId"    # Ljava/lang/String;

    .line 920
    sput-object p0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    .line 921
    return-void
.end method

.method public static setApplicationName(Ljava/lang/String;)V
    .locals 0
    .param p0, "applicationName"    # Ljava/lang/String;

    .line 941
    sput-object p0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    .line 942
    return-void
.end method

.method public static setAutoInitEnabled(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .line 976
    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->setAutoInitEnabled(Z)V

    .line 977
    if-eqz p0, :cond_0

    .line 978
    invoke-static {}, Lcom/facebook/FacebookSdk;->fullyInitialize()V

    .line 980
    :cond_0
    return-void
.end method

.method public static setAutoLogAppEventsEnabled(Z)V
    .locals 2
    .param p0, "flag"    # Z

    .line 1000
    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->setAutoLogAppEventsEnabled(Z)V

    .line 1001
    if-eqz p0, :cond_0

    .line 1002
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    sget-object v1, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->startTracking(Landroid/app/Application;Ljava/lang/String;)V

    .line 1005
    :cond_0
    return-void
.end method

.method public static setCacheDir(Ljava/io/File;)V
    .locals 1
    .param p0, "cacheDir"    # Ljava/io/File;

    .line 1103
    new-instance v0, Lcom/facebook/internal/LockOnGetVariable;

    invoke-direct {v0, p0}, Lcom/facebook/internal/LockOnGetVariable;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    .line 1104
    return-void
.end method

.method public static setClientToken(Ljava/lang/String;)V
    .locals 0
    .param p0, "clientToken"    # Ljava/lang/String;

    .line 961
    sput-object p0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    .line 962
    return-void
.end method

.method public static setCodelessDebugLogEnabled(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .line 1038
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    .line 1039
    return-void
.end method

.method public static setDataProcessingOptions([Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1062
    .local p0, "options":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1, v1}, Lcom/facebook/FacebookSdk;->setDataProcessingOptions([Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    return-void

    .end local p0    # "options":[Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static setDataProcessingOptions([Ljava/lang/String;II)V
    .locals 7

    const-string v0, "data_processing_options"

    const-class v1, Lcom/facebook/FacebookSdk;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 1068
    .local p0, "options":[Ljava/lang/String;
    .local p1, "country":I
    .local p2, "state":I
    :cond_0
    const/4 v2, 0x0

    if-nez p0, :cond_1

    .line 1069
    :try_start_0
    new-array v3, v2, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, v3

    .line 1072
    :cond_1
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1073
    .local v3, "dataProcessingOptions":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1074
    .local v4, "array":Lorg/json/JSONArray;
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1075
    const-string v5, "data_processing_options_country"

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1076
    const-string v5, "data_processing_options_state"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1077
    sget-object v5, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    const-string v6, "com.facebook.sdk.DataProcessingOptions"

    .line 1078
    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1079
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1080
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1081
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1083
    .end local v3    # "dataProcessingOptions":Lorg/json/JSONObject;
    .end local v4    # "array":Lorg/json/JSONArray;
    goto :goto_0

    .line 1084
    .end local p0    # "options":[Ljava/lang/String;
    .end local p1    # "country":I
    .end local p2    # "state":I
    :catchall_0
    move-exception p0

    invoke-static {p0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    .line 1082
    .restart local p0    # "options":[Ljava/lang/String;
    .restart local p1    # "country":I
    .restart local p2    # "state":I
    :catch_0
    move-exception v0

    .line 1084
    :goto_0
    return-void
.end method

.method public static setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .line 573
    const-string v0, "executor"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    sget-object v0, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_0
    sput-object p0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    .line 576
    monitor-exit v0

    .line 577
    return-void

    .line 576
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setFacebookDomain(Ljava/lang/String;)V
    .locals 2
    .param p0, "facebookDomain"    # Ljava/lang/String;

    .line 632
    sget-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: Calling setFacebookDomain from non-DEBUG code."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    sput-object p0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    .line 636
    return-void
.end method

.method public static setGraphApiVersion(Ljava/lang/String;)V
    .locals 2
    .param p0, "graphApiVersion"    # Ljava/lang/String;

    .line 657
    sget-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: Calling setGraphApiVersion from non-DEBUG code."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    .line 661
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    sput-object p0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    .line 664
    :cond_0
    return-void
.end method

.method public static setGraphRequestCreator(Lcom/facebook/FacebookSdk$GraphRequestCreator;)V
    .locals 0
    .param p0, "graphRequestCreator"    # Lcom/facebook/FacebookSdk$GraphRequestCreator;

    .line 1149
    sput-object p0, Lcom/facebook/FacebookSdk;->graphRequestCreator:Lcom/facebook/FacebookSdk$GraphRequestCreator;

    .line 1150
    return-void
.end method

.method public static setIsDebugEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 521
    sput-boolean p0, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    .line 522
    return-void
.end method

.method public static setLegacyTokenUpgradeSupported(Z)V
    .locals 0
    .param p0, "supported"    # Z

    .line 547
    sput-boolean p0, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    .line 548
    return-void
.end method

.method public static setLimitEventAndDataUsage(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "limitEventUsage"    # Z

    .line 785
    nop

    .line 786
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 787
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 788
    const-string v1, "limitEventUsage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 789
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 790
    return-void
.end method

.method public static setMonitorEnabled(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .line 1056
    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->setMonitorEnabled(Z)V

    .line 1057
    return-void
.end method

.method public static setOnProgressThreshold(J)V
    .locals 1
    .param p0, "threshold"    # J

    .line 805
    sget-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 806
    return-void
.end method

.method private static updateGraphDebugBehavior()V
    .locals 2

    .line 535
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    .line 536
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 537
    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_0
    return-void
.end method
