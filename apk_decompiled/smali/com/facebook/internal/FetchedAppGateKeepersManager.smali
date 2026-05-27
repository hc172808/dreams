.class public final Lcom/facebook/internal/FetchedAppGateKeepersManager;
.super Ljava/lang/Object;
.source "FetchedAppGateKeepersManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFetchedAppGateKeepersManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchedAppGateKeepersManager.kt\ncom/facebook/internal/FetchedAppGateKeepersManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,267:1\n1799#2,2:268\n95#3:270\n122#3,3:271\n*E\n*S KotlinDebug\n*F\n+ 1 FetchedAppGateKeepersManager.kt\ncom/facebook/internal/FetchedAppGateKeepersManager\n*L\n168#1,2:268\n179#1:270\n179#1,3:271\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u00012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0004H\u0002J\"\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00042\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0006\u0010!\u001a\u00020\u001fH\u0007J\u001c\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001f0#2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0004J\u0017\u0010$\u001a\u00020\u001f2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0002\u0010%J\u0006\u0010&\u001a\u00020\'J\u0012\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010\u0012H\u0007J\u001a\u0010)\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00042\u0008\u0010*\u001a\u0004\u0018\u00010\u0015H\u0007J\u0008\u0010+\u001a\u00020\'H\u0002J\u0018\u0010,\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u001fH\u0007J\u0008\u0010.\u001a\u00020\'H\u0007J\u001a\u0010/\u001a\u00020\'2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00042\u0006\u00100\u001a\u000201H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001b\u00a8\u00063"
    }
    d2 = {
        "Lcom/facebook/internal/FetchedAppGateKeepersManager;",
        "",
        "()V",
        "APPLICATION_FIELDS",
        "",
        "APPLICATION_GATEKEEPER_CACHE_TIMEOUT",
        "",
        "APPLICATION_GATEKEEPER_EDGE",
        "APPLICATION_GATEKEEPER_FIELD",
        "APPLICATION_GRAPH_DATA",
        "APPLICATION_PLATFORM",
        "APPLICATION_SDK_VERSION",
        "APP_GATEKEEPERS_PREFS_KEY_FORMAT",
        "APP_GATEKEEPERS_PREFS_STORE",
        "APP_PLATFORM",
        "TAG",
        "callbacks",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;",
        "fetchedAppGateKeepers",
        "",
        "Lorg/json/JSONObject;",
        "gateKeeperRuntimeCache",
        "Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;",
        "isLoading",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "timestamp",
        "Ljava/lang/Long;",
        "getAppGateKeepersQueryResponse",
        "applicationId",
        "getGateKeeperForKey",
        "",
        "name",
        "defaultValue",
        "getGateKeepersForApplication",
        "",
        "isTimestampValid",
        "(Ljava/lang/Long;)Z",
        "loadAppGateKeepersAsync",
        "",
        "callback",
        "parseAppGateKeepersFromJSON",
        "gateKeepersJSON",
        "pollCallbacks",
        "queryAppGateKeepers",
        "forceRequery",
        "resetRuntimeGateKeeperCache",
        "setRuntimeGateKeeper",
        "gateKeeper",
        "Lcom/facebook/internal/gatekeeper/GateKeeper;",
        "Callback",
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
.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final APPLICATION_GATEKEEPER_CACHE_TIMEOUT:J = 0x36ee80L

.field private static final APPLICATION_GATEKEEPER_EDGE:Ljava/lang/String; = "mobile_sdk_gk"

.field private static final APPLICATION_GATEKEEPER_FIELD:Ljava/lang/String; = "gatekeepers"

.field private static final APPLICATION_GRAPH_DATA:Ljava/lang/String; = "data"

.field private static final APPLICATION_PLATFORM:Ljava/lang/String; = "platform"

.field private static final APPLICATION_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final APP_GATEKEEPERS_PREFS_KEY_FORMAT:Ljava/lang/String; = "com.facebook.internal.APP_GATEKEEPERS.%s"

.field private static final APP_GATEKEEPERS_PREFS_STORE:Ljava/lang/String; = "com.facebook.internal.preferences.APP_GATEKEEPERS"

.field private static final APP_PLATFORM:Ljava/lang/String; = "android"

.field public static final INSTANCE:Lcom/facebook/internal/FetchedAppGateKeepersManager;

.field private static final TAG:Ljava/lang/String;

.field private static final callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private static final fetchedAppGateKeepers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static gateKeeperRuntimeCache:Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;

.field private static final isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static timestamp:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;

    invoke-direct {v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;-><init>()V

    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->INSTANCE:Lcom/facebook/internal/FetchedAppGateKeepersManager;

    .line 47
    const-class v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAppGateKeepersQueryResponse(Lcom/facebook/internal/FetchedAppGateKeepersManager;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/internal/FetchedAppGateKeepersManager;
    .param p1, "applicationId"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getAppGateKeepersQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getTimestamp$p(Lcom/facebook/internal/FetchedAppGateKeepersManager;)Ljava/lang/Long;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/internal/FetchedAppGateKeepersManager;

    .line 46
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public static final synthetic access$isLoading$p(Lcom/facebook/internal/FetchedAppGateKeepersManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/internal/FetchedAppGateKeepersManager;

    .line 46
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic access$pollCallbacks(Lcom/facebook/internal/FetchedAppGateKeepersManager;)V
    .locals 0
    .param p0, "$this"    # Lcom/facebook/internal/FetchedAppGateKeepersManager;

    .line 46
    invoke-direct {p0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->pollCallbacks()V

    return-void
.end method

.method public static final synthetic access$setTimestamp$p(Lcom/facebook/internal/FetchedAppGateKeepersManager;Ljava/lang/Long;)V
    .locals 0
    .param p0, "$this"    # Lcom/facebook/internal/FetchedAppGateKeepersManager;
    .param p1, "<set-?>"    # Ljava/lang/Long;

    .line 46
    sput-object p1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->timestamp:Ljava/lang/Long;

    return-void
.end method

.method private final getAppGateKeepersQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "applicationId"    # Ljava/lang/String;

    .line 223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v0, "appGateKeepersParams":Landroid/os/Bundle;
    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "fields"

    const-string v2, "gatekeepers"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    nop

    .line 228
    sget-object v1, Lcom/facebook/GraphRequest;->Companion:Lcom/facebook/GraphRequest$Companion;

    .line 229
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "mobile_sdk_gk"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s/%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lcom/facebook/GraphRequest$Companion;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 227
    nop

    .line 230
    .local v1, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v1, v5}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 231
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 232
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/GraphResponse;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    return-object v2
.end method

.method public static final getGateKeeperForKey(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->INSTANCE:Lcom/facebook/internal/FetchedAppGateKeepersManager;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getGateKeepersForApplication(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 188
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    move v1, p2

    goto :goto_0

    .line 190
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 188
    :goto_0
    return v1

    .line 190
    :cond_1
    return p2
.end method

.method private final isTimestampValid(Ljava/lang/Long;)Z
    .locals 6
    .param p1, "timestamp"    # Ljava/lang/Long;

    .line 256
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 257
    goto :goto_0

    .line 258
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    const/4 v0, 0x1

    .line 256
    :cond_1
    :goto_0
    return v0
.end method

.method public static final declared-synchronized loadAppGateKeepersAsync(Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;)V
    .locals 12
    .param p0, "callback"    # Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;

    monitor-enter v0

    .line 74
    if-eqz p0, :cond_0

    .line 75
    :try_start_0
    sget-object v1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "applicationId":Ljava/lang/String;
    sget-object v2, Lcom/facebook/internal/FetchedAppGateKeepersManager;->INSTANCE:Lcom/facebook/internal/FetchedAppGateKeepersManager;

    sget-object v3, Lcom/facebook/internal/FetchedAppGateKeepersManager;->timestamp:Ljava/lang/Long;

    invoke-direct {v2, v3}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->isTimestampValid(Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    invoke-direct {v2}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->pollCallbacks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v0

    return-void

    .line 82
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 83
    .local v2, "context":Landroid/content/Context;
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v3, "com.facebook.internal.APP_GATEKEEPERS.%s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .local v3, "gateKeepersKey":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 85
    monitor-exit v0

    return-void

    .line 89
    :cond_2
    nop

    .line 90
    :try_start_2
    const-string v5, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 89
    nop

    .line 91
    .local v5, "gateKeepersSharedPrefs":Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    invoke-interface {v5, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, "gateKeepersJSONString":Ljava/lang/String;
    invoke-static {v8}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 93
    check-cast v7, Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .local v7, "gateKeepersJSON":Lorg/json/JSONObject;
    nop

    .line 95
    :try_start_3
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v7, v9

    goto :goto_0

    .line 96
    :catch_0
    move-exception v9

    .line 97
    .local v9, "je":Lorg/json/JSONException;
    :try_start_4
    const-string v10, "FacebookSDK"

    move-object v11, v9

    check-cast v11, Ljava/lang/Exception;

    invoke-static {v10, v11}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 98
    .end local v9    # "je":Lorg/json/JSONException;
    :goto_0
    nop

    .line 99
    if-eqz v7, :cond_3

    .line 100
    sget-object v9, Lcom/facebook/internal/FetchedAppGateKeepersManager;->INSTANCE:Lcom/facebook/internal/FetchedAppGateKeepersManager;

    const-string v10, "applicationId"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1, v7}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 103
    .end local v7    # "gateKeepersJSON":Lorg/json/JSONObject;
    :cond_3
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 104
    .local v7, "executor":Ljava/util/concurrent/Executor;
    sget-object v9, Lcom/facebook/internal/FetchedAppGateKeepersManager;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_4

    .line 105
    monitor-exit v0

    return-void

    .line 107
    :cond_4
    :try_start_5
    new-instance v4, Lcom/facebook/internal/FetchedAppGateKeepersManager$loadAppGateKeepersAsync$1;

    invoke-direct {v4, v1, v2, v3}, Lcom/facebook/internal/FetchedAppGateKeepersManager$loadAppGateKeepersAsync$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v7, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 123
    monitor-exit v0

    return-void

    .line 103
    .end local v7    # "executor":Ljava/util/concurrent/Executor;
    :cond_5
    monitor-exit v0

    return-void

    .line 73
    .end local v1    # "applicationId":Ljava/lang/String;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "gateKeepersKey":Ljava/lang/String;
    .end local v5    # "gateKeepersSharedPrefs":Landroid/content/SharedPreferences;
    .end local v8    # "gateKeepersJSONString":Ljava/lang/String;
    .end local p0    # "callback":Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final pollCallbacks()V
    .locals 3

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 127
    .local v0, "handler":Landroid/os/Handler;
    :goto_0
    sget-object v1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;

    .line 130
    .local v1, "callback":Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;
    if-eqz v1, :cond_0

    .line 131
    new-instance v2, Lcom/facebook/internal/FetchedAppGateKeepersManager$pollCallbacks$1;

    invoke-direct {v2, v1}, Lcom/facebook/internal/FetchedAppGateKeepersManager$pollCallbacks$1;-><init>(Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    .end local v1    # "callback":Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;
    :cond_0
    goto :goto_0

    .line 134
    :cond_1
    return-void
.end method

.method public static final queryAppGateKeepers(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 7
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "forceRequery"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "applicationId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    if-nez p1, :cond_1

    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    return-object v0

    .line 145
    :cond_1
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->INSTANCE:Lcom/facebook/internal/FetchedAppGateKeepersManager;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getAppGateKeepersQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 146
    .local v1, "response":Lorg/json/JSONObject;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 147
    .local v2, "context":Landroid/content/Context;
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "com.facebook.internal.APP_GATEKEEPERS.%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .local v3, "gateKeepersKey":Ljava/lang/String;
    nop

    .line 149
    const-string v4, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 148
    nop

    .line 150
    .local v4, "gateKeepersSharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    invoke-virtual {v0, p0, v1}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static final resetRuntimeGateKeeperCache()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 217
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->gateKeeperRuntimeCache:Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;->resetCache$default(Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;Ljava/lang/String;ILjava/lang/Object;)V

    .line 218
    :cond_0
    return-void
.end method

.method public static final setRuntimeGateKeeper(Ljava/lang/String;Lcom/facebook/internal/gatekeeper/GateKeeper;)V
    .locals 2
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "gateKeeper"    # Lcom/facebook/internal/gatekeeper/GateKeeper;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "applicationId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gateKeeper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->gateKeeperRuntimeCache:Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/internal/gatekeeper/GateKeeper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;->getGateKeeper(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/gatekeeper/GateKeeper;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 206
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->gateKeeperRuntimeCache:Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, p1}, Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;->setGateKeeper(Ljava/lang/String;Lcom/facebook/internal/gatekeeper/GateKeeper;)V

    goto :goto_1

    .line 208
    :cond_1
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->TAG:Ljava/lang/String;

    const-string v1, "Missing gatekeeper runtime cache"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_2
    :goto_1
    nop

    .line 210
    return-void
.end method

.method public static synthetic setRuntimeGateKeeper$default(Ljava/lang/String;Lcom/facebook/internal/gatekeeper/GateKeeper;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 202
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FacebookSdk.getApplicationId()"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->setRuntimeGateKeeper(Ljava/lang/String;Lcom/facebook/internal/gatekeeper/GateKeeper;)V

    return-void
.end method


# virtual methods
.method public final getGateKeepersForApplication(Ljava/lang/String;)Ljava/util/Map;
    .locals 19
    .param p1, "applicationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 161
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->loadAppGateKeepersAsync()V

    .line 162
    if-eqz v0, :cond_8

    sget-object v1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 165
    :cond_0
    sget-object v2, Lcom/facebook/internal/FetchedAppGateKeepersManager;->gateKeeperRuntimeCache:Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;->dumpGateKeepers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 166
    .local v2, "cacheList":Ljava/util/List;
    :goto_0
    if-eqz v2, :cond_3

    .line 167
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v1, "cacheMap":Ljava/util/HashMap;
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 268
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/facebook/internal/gatekeeper/GateKeeper;

    .local v7, "it":Lcom/facebook/internal/gatekeeper/GateKeeper;
    const/4 v8, 0x0

    .line 168
    .local v8, "$i$a$-forEach-FetchedAppGateKeepersManager$getGateKeepersForApplication$1":I
    move-object v9, v1

    check-cast v9, Ljava/util/Map;

    invoke-virtual {v7}, Lcom/facebook/internal/gatekeeper/GateKeeper;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/facebook/internal/gatekeeper/GateKeeper;->getValue()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6    # "element$iv":Ljava/lang/Object;
    .end local v7    # "it":Lcom/facebook/internal/gatekeeper/GateKeeper;
    .end local v8    # "$i$a$-forEach-FetchedAppGateKeepersManager$getGateKeepersForApplication$1":I
    goto :goto_1

    .line 269
    :cond_2
    nop

    .line 169
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    check-cast v1, Ljava/util/Map;

    move-object/from16 v18, v2

    .end local v1    # "cacheMap":Ljava/util/HashMap;
    goto/16 :goto_6

    .line 171
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .line 172
    .local v3, "output":Ljava/util/Map;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 173
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 174
    .local v4, "jsonIterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 175
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 176
    .local v5, "key":Ljava/lang/String;
    const-string v6, "key"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_3

    .line 178
    :cond_5
    sget-object v5, Lcom/facebook/internal/FetchedAppGateKeepersManager;->gateKeeperRuntimeCache:Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    new-instance v5, Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;

    invoke-direct {v5}, Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;-><init>()V

    .line 179
    .local v5, "runtimeCache":Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;
    :goto_4
    move-object v6, v3

    .local v6, "$this$map$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 270
    .local v7, "$i$f$map":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v6

    .local v9, "$this$mapTo$iv$iv":Ljava/util/Map;
    const/4 v10, 0x0

    .line 271
    .local v10, "$i$f$mapTo":I
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 272
    .local v12, "item$iv$iv":Ljava/util/Map$Entry;
    move-object v13, v12

    .local v13, "it":Ljava/util/Map$Entry;
    const/4 v14, 0x0

    .line 179
    .local v14, "$i$a$-map-FetchedAppGateKeepersManager$getGateKeepersForApplication$2":I
    new-instance v15, Lcom/facebook/internal/gatekeeper/GateKeeper;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v1

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v17, "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    move-object/from16 v18, v2

    .end local v2    # "cacheList":Ljava/util/List;
    .local v18, "cacheList":Ljava/util/List;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v15, v1, v2}, Lcom/facebook/internal/gatekeeper/GateKeeper;-><init>(Ljava/lang/String;Z)V

    .end local v13    # "it":Ljava/util/Map$Entry;
    .end local v14    # "$i$a$-map-FetchedAppGateKeepersManager$getGateKeepersForApplication$2":I
    invoke-interface {v8, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v12    # "item$iv$iv":Ljava/util/Map$Entry;
    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto :goto_5

    .line 273
    .end local v17    # "jsonObject":Lorg/json/JSONObject;
    .end local v18    # "cacheList":Ljava/util/List;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "cacheList":Ljava/util/List;
    :cond_7
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "cacheList":Ljava/util/List;
    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .end local v10    # "$i$f$mapTo":I
    .restart local v17    # "jsonObject":Lorg/json/JSONObject;
    .restart local v18    # "cacheList":Ljava/util/List;
    move-object v1, v8

    check-cast v1, Ljava/util/List;

    .line 270
    .end local v6    # "$this$map$iv":Ljava/util/Map;
    .end local v7    # "$i$f$map":I
    nop

    .line 179
    invoke-virtual {v5, v0, v1}, Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;->setGateKeepers(Ljava/lang/String;Ljava/util/List;)V

    .line 180
    sput-object v5, Lcom/facebook/internal/FetchedAppGateKeepersManager;->gateKeeperRuntimeCache:Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;

    .line 181
    move-object v1, v3

    .line 166
    .end local v3    # "output":Ljava/util/Map;
    .end local v4    # "jsonIterator":Ljava/util/Iterator;
    .end local v5    # "runtimeCache":Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;
    .end local v17    # "jsonObject":Lorg/json/JSONObject;
    :goto_6
    return-object v1

    .line 163
    .end local v18    # "cacheList":Ljava/util/List;
    :cond_8
    :goto_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    return-object v1
.end method

.method public final loadAppGateKeepersAsync()V
    .locals 1

    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->loadAppGateKeepersAsync(Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;)V

    .line 69
    return-void
.end method

.method public final declared-synchronized parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "gateKeepersJSON"    # Lorg/json/JSONObject;

    monitor-enter p0

    :try_start_0
    const-string v0, "applicationId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 239
    .local v0, "result":Lorg/json/JSONObject;
    :goto_1
    nop

    .line 240
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const-string v2, "data"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_2

    .end local p0    # "this":Lcom/facebook/internal/FetchedAppGateKeepersManager;
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 239
    :goto_2
    nop

    .line 242
    .local v2, "gateKeepers":Lorg/json/JSONObject;
    const-string v3, "gatekeepers"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_3
    goto :goto_4

    :cond_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    goto :goto_3

    .line 243
    .local v3, "data":Lorg/json/JSONArray;
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    if-ge v1, v4, :cond_3

    .line 244
    .local v1, "i":I
    nop

    .line 245
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 246
    .local v5, "gk":Lorg/json/JSONObject;
    const-string v6, "key"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 247
    .end local v5    # "gk":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 248
    .local v5, "je":Lorg/json/JSONException;
    :try_start_2
    const-string v6, "FacebookSDK"

    move-object v7, v5

    check-cast v7, Ljava/lang/Exception;

    invoke-static {v6, v7}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 249
    .end local v5    # "je":Lorg/json/JSONException;
    :goto_6
    nop

    .line 243
    nop

    .end local v1    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 251
    :cond_3
    sget-object v1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    monitor-exit p0

    return-object v0

    .line 237
    .end local v0    # "result":Lorg/json/JSONObject;
    .end local v2    # "gateKeepers":Lorg/json/JSONObject;
    .end local v3    # "data":Lorg/json/JSONArray;
    .end local p1    # "applicationId":Ljava/lang/String;
    .end local p2    # "gateKeepersJSON":Lorg/json/JSONObject;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
