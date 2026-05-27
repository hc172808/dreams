.class public final Lcom/facebook/appevents/AppEventQueue;
.super Ljava/lang/Object;
.source "AppEventQueue.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J*\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u001e\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00190!2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u001fH\u0007J\u0010\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%H\u0007J\u0010\u0010&\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%H\u0007J\u000e\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00150(H\u0007J0\u0010)\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020,2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u0008\u0010-\u001a\u00020\u0013H\u0007J\u001a\u0010.\u001a\u0004\u0018\u00010\u001f2\u0006\u0010$\u001a\u00020%2\u0006\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/facebook/appevents/AppEventQueue;",
        "",
        "()V",
        "FLUSH_PERIOD_IN_SECONDS",
        "",
        "NO_CONNECTIVITY_ERROR_CODE",
        "NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER",
        "TAG",
        "",
        "appEventCollection",
        "Lcom/facebook/appevents/AppEventCollection;",
        "flushRunnable",
        "Ljava/lang/Runnable;",
        "scheduledFuture",
        "Ljava/util/concurrent/ScheduledFuture;",
        "singleThreadExecutor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "kotlin.jvm.PlatformType",
        "add",
        "",
        "accessTokenAppId",
        "Lcom/facebook/appevents/AccessTokenAppIdPair;",
        "appEvent",
        "Lcom/facebook/appevents/AppEvent;",
        "buildRequestForSession",
        "Lcom/facebook/GraphRequest;",
        "appEvents",
        "Lcom/facebook/appevents/SessionEventsState;",
        "limitEventUsage",
        "",
        "flushState",
        "Lcom/facebook/appevents/FlushStatistics;",
        "buildRequests",
        "",
        "flushResults",
        "flush",
        "reason",
        "Lcom/facebook/appevents/FlushReason;",
        "flushAndWait",
        "getKeySet",
        "",
        "handleResponse",
        "request",
        "response",
        "Lcom/facebook/GraphResponse;",
        "persistToDisk",
        "sendEventsToServer",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final FLUSH_PERIOD_IN_SECONDS:I = 0xf

.field public static final INSTANCE:Lcom/facebook/appevents/AppEventQueue;

.field private static final NO_CONNECTIVITY_ERROR_CODE:I = -0x1

.field private static final NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER:I

.field private static final TAG:Ljava/lang/String;

.field private static volatile appEventCollection:Lcom/facebook/appevents/AppEventCollection;

.field private static final flushRunnable:Ljava/lang/Runnable;

.field private static scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private static final singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventQueue;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->INSTANCE:Lcom/facebook/appevents/AppEventQueue;

    .line 47
    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppEventQueue::class.java.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    .line 48
    const/16 v0, 0x64

    sput v0, Lcom/facebook/appevents/AppEventQueue;->NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER:I

    .line 52
    new-instance v0, Lcom/facebook/appevents/AppEventCollection;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventCollection;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 57
    sget-object v0, Lcom/facebook/appevents/AppEventQueue$flushRunnable$1;->INSTANCE:Lcom/facebook/appevents/AppEventQueue$flushRunnable$1;

    check-cast v0, Ljava/lang/Runnable;

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->flushRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAppEventCollection$p(Lcom/facebook/appevents/AppEventQueue;)Lcom/facebook/appevents/AppEventCollection;
    .locals 3

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 46
    .local p0, "$this":Lcom/facebook/appevents/AppEventQueue;
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "$this":Lcom/facebook/appevents/AppEventQueue;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final synthetic access$getFlushRunnable$p(Lcom/facebook/appevents/AppEventQueue;)Ljava/lang/Runnable;
    .locals 3

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 46
    .local p0, "$this":Lcom/facebook/appevents/AppEventQueue;
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->flushRunnable:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "$this":Lcom/facebook/appevents/AppEventQueue;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final synthetic access$getNUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER$p(Lcom/facebook/appevents/AppEventQueue;)I
    .locals 3

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 46
    .local p0, "$this":Lcom/facebook/appevents/AppEventQueue;
    :cond_0
    :try_start_0
    sget v0, Lcom/facebook/appevents/AppEventQueue;->NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .end local p0    # "$this":Lcom/facebook/appevents/AppEventQueue;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static final synthetic access$getScheduledFuture$p(Lcom/facebook/appevents/AppEventQueue;)Ljava/util/concurrent/ScheduledFuture;
    .locals 3

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 46
    .local p0, "$this":Lcom/facebook/appevents/AppEventQueue;
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "$this":Lcom/facebook/appevents/AppEventQueue;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final synthetic access$getSingleThreadExecutor$p(Lcom/facebook/appevents/AppEventQueue;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 46
    .local p0, "$this":Lcom/facebook/appevents/AppEventQueue;
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "$this":Lcom/facebook/appevents/AppEventQueue;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final synthetic access$setAppEventCollection$p(Lcom/facebook/appevents/AppEventQueue;Lcom/facebook/appevents/AppEventCollection;)V
    .locals 2

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 46
    .local p0, "$this":Lcom/facebook/appevents/AppEventQueue;
    .local p1, "<set-?>":Lcom/facebook/appevents/AppEventCollection;
    :cond_0
    :try_start_0
    sput-object p1, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local p0    # "$this":Lcom/facebook/appevents/AppEventQueue;
    .end local p1    # "<set-?>":Lcom/facebook/appevents/AppEventCollection;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$setScheduledFuture$p(Lcom/facebook/appevents/AppEventQueue;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 2

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 46
    .local p0, "$this":Lcom/facebook/appevents/AppEventQueue;
    .local p1, "<set-?>":Ljava/util/concurrent/ScheduledFuture;
    :cond_0
    :try_start_0
    sput-object p1, Lcom/facebook/appevents/AppEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local p0    # "$this":Lcom/facebook/appevents/AppEventQueue;
    .end local p1    # "<set-?>":Ljava/util/concurrent/ScheduledFuture;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final add(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .local p0, "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .local p1, "appEvent":Lcom/facebook/appevents/AppEvent;
    :cond_0
    :try_start_0
    const-string v1, "accessTokenAppId"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appEvent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v1, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/facebook/appevents/AppEventQueue$add$1;

    invoke-direct {v2, p0, p1}, Lcom/facebook/appevents/AppEventQueue$add$1;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    return-void

    .end local p0    # "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local p1    # "appEvent":Lcom/facebook/appevents/AppEvent;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final buildRequestForSession(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;ZLcom/facebook/appevents/FlushStatistics;)Lcom/facebook/GraphRequest;
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .local p1, "appEvents":Lcom/facebook/appevents/SessionEventsState;
    .local p2, "limitEventUsage":Z
    .local p3, "flushState":Lcom/facebook/appevents/FlushStatistics;
    :cond_0
    :try_start_0
    const-string v1, "accessTokenAppId"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appEvents"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "flushState"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "applicationId":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v4

    .line 180
    .local v4, "fetchedAppSettings":Lcom/facebook/internal/FetchedAppSettings;
    nop

    .line 181
    sget-object v5, Lcom/facebook/GraphRequest;->Companion:Lcom/facebook/GraphRequest$Companion;

    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v6, "%s/activities"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v1, v8, v3

    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "java.lang.String.format(format, *args)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3, v2, v2}, Lcom/facebook/GraphRequest$Companion;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 180
    nop

    .line 182
    .local v3, "postRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v5

    .line 183
    .local v5, "requestParameters":Landroid/os/Bundle;
    if-nez v5, :cond_1

    .line 184
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v5, v6

    .line 186
    :cond_1
    const-string v6, "access_token"

    invoke-virtual {p0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getAccessTokenString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v6, Lcom/facebook/appevents/InternalAppEventsLogger;->Companion:Lcom/facebook/appevents/InternalAppEventsLogger$Companion;

    invoke-virtual {v6}, Lcom/facebook/appevents/InternalAppEventsLogger$Companion;->getPushNotificationsRegistrationId()Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "pushNotificationsRegistrationId":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 189
    const-string v7, "device_token"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_2
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->getInstallReferrer()Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "installReferrer":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 193
    const-string v8, "install_referrer"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_3
    invoke-virtual {v3, v5}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 196
    const/4 v8, 0x0

    .line 197
    .local v8, "supportsImplicitLogging":Z
    if-eqz v4, :cond_4

    .line 198
    invoke-virtual {v4}, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging()Z

    move-result v9

    move v8, v9

    .line 200
    :cond_4
    nop

    .line 201
    nop

    .line 202
    nop

    .line 203
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "FacebookSdk.getApplicationContext()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    nop

    .line 205
    nop

    .line 201
    invoke-virtual {p1, v3, v9, v8, p2}, Lcom/facebook/appevents/SessionEventsState;->populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I

    move-result v9

    .line 200
    nop

    .line 206
    .local v9, "numEvents":I
    if-nez v9, :cond_5

    .line 207
    return-object v2

    .line 209
    :cond_5
    invoke-virtual {p3}, Lcom/facebook/appevents/FlushStatistics;->getNumEvents()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {p3, v10}, Lcom/facebook/appevents/FlushStatistics;->setNumEvents(I)V

    .line 210
    nop

    .line 211
    new-instance v10, Lcom/facebook/appevents/AppEventQueue$buildRequestForSession$1;

    invoke-direct {v10, p0, v3, p1, p3}, Lcom/facebook/appevents/AppEventQueue$buildRequestForSession$1;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V

    check-cast v10, Lcom/facebook/GraphRequest$Callback;

    invoke-virtual {v3, v10}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    return-object v3

    .end local v1    # "applicationId":Ljava/lang/String;
    .end local v3    # "postRequest":Lcom/facebook/GraphRequest;
    .end local v4    # "fetchedAppSettings":Lcom/facebook/internal/FetchedAppSettings;
    .end local v5    # "requestParameters":Landroid/os/Bundle;
    .end local v6    # "pushNotificationsRegistrationId":Ljava/lang/String;
    .end local v7    # "installReferrer":Ljava/lang/String;
    .end local v8    # "supportsImplicitLogging":Z
    .end local v9    # "numEvents":I
    .end local p0    # "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local p1    # "appEvents":Lcom/facebook/appevents/SessionEventsState;
    .end local p2    # "limitEventUsage":Z
    .end local p3    # "flushState":Lcom/facebook/appevents/FlushStatistics;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final buildRequests(Lcom/facebook/appevents/AppEventCollection;Lcom/facebook/appevents/FlushStatistics;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/AppEventCollection;",
            "Lcom/facebook/appevents/FlushStatistics;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequest;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "appEventCollection":Lcom/facebook/appevents/AppEventCollection;
    .local p1, "flushResults":Lcom/facebook/appevents/FlushStatistics;
    :cond_0
    :try_start_0
    const-string v1, "appEventCollection"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "flushResults"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 154
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v3

    .line 155
    .local v3, "limitEventUsage":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v4, "requestsToExecute":Ljava/util/ArrayList;
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 157
    .local v6, "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    nop

    .line 158
    nop

    .line 159
    nop

    .line 160
    invoke-virtual {p0, v6}, Lcom/facebook/appevents/AppEventCollection;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 161
    nop

    .line 162
    nop

    .line 158
    invoke-static {v6, v7, v3, p1}, Lcom/facebook/appevents/AppEventQueue;->buildRequestForSession(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;ZLcom/facebook/appevents/FlushStatistics;)Lcom/facebook/GraphRequest;

    move-result-object v7

    .line 157
    nop

    .line 164
    .local v7, "request":Lcom/facebook/GraphRequest;
    if-eqz v7, :cond_1

    .line 165
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .end local v7    # "request":Lcom/facebook/GraphRequest;
    :cond_2
    const-string v5, "Required value was null."

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 168
    .end local v6    # "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    :cond_3
    move-object v5, v4

    check-cast v5, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "limitEventUsage":Z
    .end local v4    # "requestsToExecute":Ljava/util/ArrayList;
    .end local p0    # "appEventCollection":Lcom/facebook/appevents/AppEventCollection;
    .end local p1    # "flushResults":Lcom/facebook/appevents/FlushStatistics;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final flush(Lcom/facebook/appevents/FlushReason;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .local p0, "reason":Lcom/facebook/appevents/FlushReason;
    :cond_0
    :try_start_0
    const-string v1, "reason"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/facebook/appevents/AppEventQueue$flush$1;

    invoke-direct {v2, p0}, Lcom/facebook/appevents/AppEventQueue$flush$1;-><init>(Lcom/facebook/appevents/FlushReason;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    return-void

    .end local p0    # "reason":Lcom/facebook/appevents/FlushReason;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final flushAndWait(Lcom/facebook/appevents/FlushReason;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .local p0, "reason":Lcom/facebook/appevents/FlushReason;
    :cond_0
    :try_start_0
    const-string v1, "reason"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->readAndClearStore()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v1

    .line 105
    .local v1, "result":Lcom/facebook/appevents/PersistedEvents;
    sget-object v2, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-virtual {v2, v1}, Lcom/facebook/appevents/AppEventCollection;->addPersistedEvents(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    const/4 v2, 0x0

    .line 107
    .local v2, "flushResults":Lcom/facebook/appevents/FlushStatistics;
    nop

    .line 108
    nop

    .line 109
    :try_start_1
    sget-object v3, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-static {p0, v3}, Lcom/facebook/appevents/AppEventQueue;->sendEventsToServer(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/FlushStatistics;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    move-object v2, v3

    .line 114
    if-eqz v2, :cond_1

    .line 115
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    invoke-virtual {v2}, Lcom/facebook/appevents/FlushStatistics;->getNumEvents()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v4, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    invoke-virtual {v2}, Lcom/facebook/appevents/FlushStatistics;->getResult()Lcom/facebook/appevents/FlushResult;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 118
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 119
    .local v4, "context":Landroid/content/Context;
    invoke-static {v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 121
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "context":Landroid/content/Context;
    :cond_1
    return-void

    .line 110
    :catch_0
    move-exception v3

    .line 111
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    const-string v5, "Caught unexpected exception while flushing app events: "

    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    return-void

    .line 121
    .end local v1    # "result":Lcom/facebook/appevents/PersistedEvents;
    .end local v2    # "flushResults":Lcom/facebook/appevents/FlushStatistics;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local p0    # "reason":Lcom/facebook/appevents/FlushReason;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final getKeySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 97
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-virtual {v1}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final handleResponse(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    .locals 19
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v1, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v2, p0

    .local v2, "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    move-object/from16 v3, p2

    .local v3, "response":Lcom/facebook/GraphResponse;
    move-object/from16 v4, p4

    .local v4, "flushState":Lcom/facebook/appevents/FlushStatistics;
    move-object/from16 v5, p1

    .local v5, "request":Lcom/facebook/GraphRequest;
    move-object/from16 v6, p3

    .local v6, "appEvents":Lcom/facebook/appevents/SessionEventsState;
    :try_start_0
    const-string v0, "accessTokenAppId"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appEvents"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flushState"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v3}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    move-object v7, v0

    .line 226
    .local v7, "error":Lcom/facebook/FacebookRequestError;
    const-string v0, "Success"

    .line 227
    .local v0, "resultDescription":Ljava/lang/String;
    sget-object v8, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    .line 228
    .local v8, "flushResult":Lcom/facebook/appevents/FlushResult;
    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v7, :cond_2

    .line 229
    invoke-virtual {v7}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    .line 230
    const-string v12, "Failed: No Connectivity"

    move-object v0, v12

    .line 231
    sget-object v12, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    move-object v8, v12

    move-object v8, v0

    goto :goto_0

    .line 233
    :cond_1
    nop

    .line 234
    sget-object v12, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 235
    const-string v12, "Failed:\n  Response: %s\n  Error %s"

    new-array v13, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-virtual {v7}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    .line 234
    invoke-static {v13, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "java.lang.String.format(format, *args)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v12

    .line 236
    sget-object v12, Lcom/facebook/appevents/FlushResult;->SERVER_ERROR:Lcom/facebook/appevents/FlushResult;

    move-object v8, v12

    move-object v8, v0

    goto :goto_0

    .line 228
    :cond_2
    move-object v12, v8

    move-object v8, v0

    .line 237
    .end local v0    # "resultDescription":Ljava/lang/String;
    .local v8, "resultDescription":Ljava/lang/String;
    .local v12, "flushResult":Lcom/facebook/appevents/FlushResult;
    :goto_0
    nop

    .line 239
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    invoke-virtual {v5}, Lcom/facebook/GraphRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v0

    .line 241
    .local v13, "eventsJsonString":Ljava/lang/String;
    const/4 v14, 0x0

    .line 242
    .local v14, "prettyPrintedEvents":Ljava/lang/String;
    nop

    .line 243
    nop

    .line 244
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v15

    const-string v9, "jsonArray.toString(2)"

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "exc":Lorg/json/JSONException;
    :try_start_2
    const-string v15, "<Can\'t encode events for debug logging>"

    .line 243
    .end local v0    # "exc":Lorg/json/JSONException;
    :goto_1
    move-object v0, v15

    .line 249
    .end local v14    # "prettyPrintedEvents":Ljava/lang/String;
    .local v0, "prettyPrintedEvents":Ljava/lang/String;
    sget-object v9, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    .line 250
    sget-object v14, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 251
    sget-object v15, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    .line 252
    const-string v10, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 253
    invoke-virtual {v5}, Lcom/facebook/GraphRequest;->getGraphObject()Lorg/json/JSONObject;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v11, v17

    .line 254
    const/16 v16, 0x1

    aput-object v8, v11, v16

    .line 255
    const/16 v18, 0x2

    aput-object v0, v11, v18

    .line 249
    invoke-virtual {v9, v14, v15, v10, v11}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 239
    .end local v0    # "prettyPrintedEvents":Ljava/lang/String;
    .end local v13    # "eventsJsonString":Ljava/lang/String;
    :cond_3
    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 257
    :goto_2
    if-eqz v7, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v6, v10}, Lcom/facebook/appevents/SessionEventsState;->clearInFlightAndStats(Z)V

    .line 258
    sget-object v0, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    if-ne v12, v0, :cond_5

    .line 264
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v9, Lcom/facebook/appevents/AppEventQueue$handleResponse$1;

    invoke-direct {v9, v2, v6}, Lcom/facebook/appevents/AppEventQueue$handleResponse$1;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V

    check-cast v9, Ljava/lang/Runnable;

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 266
    :cond_5
    sget-object v0, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    if-eq v12, v0, :cond_6

    .line 268
    invoke-virtual {v4}, Lcom/facebook/appevents/FlushStatistics;->getResult()Lcom/facebook/appevents/FlushResult;

    move-result-object v0

    sget-object v9, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    if-eq v0, v9, :cond_6

    .line 269
    invoke-virtual {v4, v12}, Lcom/facebook/appevents/FlushStatistics;->setResult(Lcom/facebook/appevents/FlushResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    :cond_6
    return-void

    .end local v2    # "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local v3    # "response":Lcom/facebook/GraphResponse;
    .end local v4    # "flushState":Lcom/facebook/appevents/FlushStatistics;
    .end local v5    # "request":Lcom/facebook/GraphRequest;
    .end local v6    # "appEvents":Lcom/facebook/appevents/SessionEventsState;
    .end local v7    # "error":Lcom/facebook/FacebookRequestError;
    .end local v8    # "resultDescription":Ljava/lang/String;
    .end local v12    # "flushResult":Lcom/facebook/appevents/FlushResult;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final persistToDisk()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 66
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Lcom/facebook/appevents/AppEventQueue$persistToDisk$1;->INSTANCE:Lcom/facebook/appevents/AppEventQueue$persistToDisk$1;

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final sendEventsToServer(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/FlushStatistics;
    .locals 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "reason":Lcom/facebook/appevents/FlushReason;
    .local p1, "appEventCollection":Lcom/facebook/appevents/AppEventCollection;
    :cond_0
    :try_start_0
    const-string v1, "reason"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appEventCollection"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v1, Lcom/facebook/appevents/FlushStatistics;

    invoke-direct {v1}, Lcom/facebook/appevents/FlushStatistics;-><init>()V

    .line 130
    .local v1, "flushResults":Lcom/facebook/appevents/FlushStatistics;
    invoke-static {p1, v1}, Lcom/facebook/appevents/AppEventQueue;->buildRequests(Lcom/facebook/appevents/AppEventCollection;Lcom/facebook/appevents/FlushStatistics;)Ljava/util/List;

    move-result-object v3

    .line 131
    .local v3, "requestsToExecute":Ljava/util/List;
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 132
    sget-object v4, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    .line 133
    sget-object v6, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 134
    sget-object v7, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    .line 135
    const-string v8, "Flushing %d events due to %s."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 136
    const/4 v10, 0x0

    invoke-virtual {v1}, Lcom/facebook/appevents/FlushStatistics;->getNumEvents()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 137
    invoke-virtual {p0}, Lcom/facebook/appevents/FlushReason;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 132
    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/GraphRequest;

    .line 141
    .local v5, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v5}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    nop

    .end local v5    # "request":Lcom/facebook/GraphRequest;
    goto :goto_0

    .line 143
    :cond_1
    return-object v1

    .line 145
    :cond_2
    return-object v2

    .end local v1    # "flushResults":Lcom/facebook/appevents/FlushStatistics;
    .end local v3    # "requestsToExecute":Ljava/util/List;
    .end local p0    # "reason":Lcom/facebook/appevents/FlushReason;
    .end local p1    # "appEventCollection":Lcom/facebook/appevents/AppEventCollection;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method
