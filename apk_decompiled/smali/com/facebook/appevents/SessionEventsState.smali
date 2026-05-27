.class public final Lcom/facebook/appevents/SessionEventsState;
.super Ljava/lang/Object;
.source "SessionEventsState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/SessionEventsState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 %2\u00020\u0001:\u0001%B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0014\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000fJ\u000e\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\rJ\u000e\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001bJ&\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u001bJ0\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010#\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020$2\u0006\u0010\"\u001a\u00020\u001bH\u0002R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/facebook/appevents/SessionEventsState;",
        "",
        "attributionIdentifiers",
        "Lcom/facebook/internal/AttributionIdentifiers;",
        "anonymousAppDeviceGUID",
        "",
        "(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;)V",
        "accumulatedEventCount",
        "",
        "getAccumulatedEventCount",
        "()I",
        "accumulatedEvents",
        "",
        "Lcom/facebook/appevents/AppEvent;",
        "eventsToPersist",
        "",
        "getEventsToPersist",
        "()Ljava/util/List;",
        "inFlightEvents",
        "numSkippedEventsDueToFullBuffer",
        "accumulatePersistedEvents",
        "",
        "events",
        "addEvent",
        "event",
        "clearInFlightAndStats",
        "moveToAccumulated",
        "",
        "populateRequest",
        "request",
        "Lcom/facebook/GraphRequest;",
        "applicationContext",
        "Landroid/content/Context;",
        "includeImplicitEvents",
        "limitEventUsage",
        "numSkipped",
        "Lorg/json/JSONArray;",
        "Companion",
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
.field public static final Companion:Lcom/facebook/appevents/SessionEventsState$Companion;

.field private static final MAX_ACCUMULATED_LOG_EVENTS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accumulatedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final anonymousAppDeviceGUID:Ljava/lang/String;

.field private final attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

.field private final inFlightEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private numSkippedEventsDueToFullBuffer:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/appevents/SessionEventsState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/appevents/SessionEventsState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/appevents/SessionEventsState;->Companion:Lcom/facebook/appevents/SessionEventsState$Companion;

    .line 158
    const-class v0, Lcom/facebook/appevents/SessionEventsState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionEventsState::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/SessionEventsState;->TAG:Ljava/lang/String;

    .line 159
    const/16 v0, 0x3e8

    sput v0, Lcom/facebook/appevents/SessionEventsState;->MAX_ACCUMULATED_LOG_EVENTS:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;)V
    .locals 1
    .param p1, "attributionIdentifiers"    # Lcom/facebook/internal/AttributionIdentifiers;
    .param p2, "anonymousAppDeviceGUID"    # Ljava/lang/String;

    const-string v0, "attributionIdentifiers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anonymousAppDeviceGUID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    iput-object p2, p0, Lcom/facebook/appevents/SessionEventsState;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    return-void
.end method

.method private final populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ILorg/json/JSONArray;Z)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 133
    .local v0, "this":Lcom/facebook/appevents/SessionEventsState;
    .local p1, "request":Lcom/facebook/GraphRequest;
    .local p2, "applicationContext":Landroid/content/Context;
    .local p3, "numSkipped":I
    .local p4, "events":Lorg/json/JSONArray;
    .local p5, "limitEventUsage":Z
    const/4 v1, 0x0

    .line 134
    .local v1, "publishParams":Lorg/json/JSONObject;
    nop

    .line 135
    nop

    .line 136
    nop

    .line 137
    :try_start_0
    sget-object v2, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;->CUSTOM_APP_EVENTS:Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    .line 138
    iget-object v3, v0, Lcom/facebook/appevents/SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 139
    iget-object v4, v0, Lcom/facebook/appevents/SessionEventsState;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 140
    nop

    .line 141
    nop

    .line 136
    invoke-static {v2, v3, v4, p5, p2}, Lcom/facebook/appevents/internal/AppEventsLoggerUtility;->getJSONObjectForGraphAPICall(Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v1, v2

    .line 142
    iget v2, v0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    if-lez v2, :cond_1

    .line 143
    const-string v2, "num_skipped_events"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 155
    .end local v0    # "this":Lcom/facebook/appevents/SessionEventsState;
    .end local v1    # "publishParams":Lorg/json/JSONObject;
    .end local p1    # "request":Lcom/facebook/GraphRequest;
    .end local p2    # "applicationContext":Landroid/content/Context;
    .end local p3    # "numSkipped":I
    .end local p4    # "events":Lorg/json/JSONArray;
    .end local p5    # "limitEventUsage":Z
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 145
    .restart local v1    # "publishParams":Lorg/json/JSONObject;
    .restart local p1    # "request":Lcom/facebook/GraphRequest;
    .restart local p2    # "applicationContext":Landroid/content/Context;
    .restart local p3    # "numSkipped":I
    .restart local p4    # "events":Lorg/json/JSONArray;
    .restart local p5    # "limitEventUsage":Z
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Lorg/json/JSONException;
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v3

    .line 148
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    nop

    .line 149
    invoke-virtual {p1, v1}, Lcom/facebook/GraphRequest;->setGraphObject(Lorg/json/JSONObject;)V

    .line 150
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    .line 151
    .local v2, "requestParameters":Landroid/os/Bundle;
    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "events.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .local v3, "jsonString":Ljava/lang/String;
    const-string v4, "custom_events"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1, v3}, Lcom/facebook/GraphRequest;->setTag(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p1, v2}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    return-void

    .end local v1    # "publishParams":Lorg/json/JSONObject;
    .end local v2    # "requestParameters":Landroid/os/Bundle;
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local p1    # "request":Lcom/facebook/GraphRequest;
    .end local p2    # "applicationContext":Landroid/content/Context;
    .end local p3    # "numSkipped":I
    .end local p4    # "events":Lorg/json/JSONArray;
    .end local p5    # "limitEventUsage":Z
    :goto_1
    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized accumulatePersistedEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    move-object v0, p0

    .local v0, "this":Lcom/facebook/appevents/SessionEventsState;
    .local p1, "events":Ljava/util/List;
    :try_start_1
    const-string v1, "events"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v1, v0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .end local v0    # "this":Lcom/facebook/appevents/SessionEventsState;
    .end local p1    # "events":Ljava/util/List;
    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    .line 122
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized addEvent(Lcom/facebook/appevents/AppEvent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    move-object v0, p0

    .local v0, "this":Lcom/facebook/appevents/SessionEventsState;
    .local p1, "event":Lcom/facebook/appevents/AppEvent;
    :try_start_1
    const-string v1, "event"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v1, v0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/facebook/appevents/SessionEventsState;->MAX_ACCUMULATED_LOG_EVENTS:I

    if-lt v1, v2, :cond_1

    .line 50
    iget v1, v0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    goto :goto_0

    .line 52
    .end local v0    # "this":Lcom/facebook/appevents/SessionEventsState;
    :cond_1
    iget-object v1, v0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_0
    nop

    .line 54
    monitor-exit p0

    return-void

    .end local p1    # "event":Lcom/facebook/appevents/AppEvent;
    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    .line 48
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized clearInFlightAndStats(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    move-object v0, p0

    .line 62
    .local v0, "this":Lcom/facebook/appevents/SessionEventsState;
    .local p1, "moveToAccumulated":Z
    if-eqz p1, :cond_1

    .line 63
    :try_start_1
    iget-object v1, v0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    iget-object v2, v0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    .end local v0    # "this":Lcom/facebook/appevents/SessionEventsState;
    :cond_1
    iget-object v1, v0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 66
    const/4 v1, 0x0

    iput v1, v0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .end local p1    # "moveToAccumulated":Z
    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    .line 61
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getAccumulatedEventCount()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    move-object v0, p0

    .line 58
    .local v0, "this":Lcom/facebook/appevents/SessionEventsState;
    :try_start_1
    iget-object v2, v0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .end local v0    # "this":Lcom/facebook/appevents/SessionEventsState;
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v1

    .line 58
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getEventsToPersist()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 113
    .local v0, "this":Lcom/facebook/appevents/SessionEventsState;
    :try_start_1
    iget-object v2, v0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 114
    .local v2, "result":Ljava/util/List;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    iput-object v3, v0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    monitor-exit p0

    return-object v2

    .end local v0    # "this":Lcom/facebook/appevents/SessionEventsState;
    .end local v2    # "result":Ljava/util/List;
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .line 112
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I
    .locals 11

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    .local v0, "this":Lcom/facebook/appevents/SessionEventsState;
    .local p2, "applicationContext":Landroid/content/Context;
    move v7, p4

    .local v7, "limitEventUsage":Z
    .local p1, "request":Lcom/facebook/GraphRequest;
    .local p3, "includeImplicitEvents":Z
    :try_start_0
    const-string p4, "request"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "applicationContext"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    const/4 p4, 0x0

    .line 76
    .local p4, "numSkipped":I
    const/4 v2, 0x0

    .line 77
    .local v2, "jsonArray":Ljava/lang/Object;
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v3, 0x0

    .line 78
    .local v3, "$i$a$-synchronized-SessionEventsState$populateRequest$1":I
    :try_start_1
    iget v5, v0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 81
    .end local p4    # "numSkipped":I
    .local v5, "numSkipped":I
    :try_start_2
    iget-object p4, v0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-static {p4}, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->processEvents(Ljava/util/List;)V

    .line 84
    iget-object p4, v0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    iget-object v4, v0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {p4, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    iget-object p4, v0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 86
    new-instance p4, Lorg/json/JSONArray;

    invoke-direct {p4}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 87
    .end local v2    # "jsonArray":Ljava/lang/Object;
    .local p4, "jsonArray":Ljava/lang/Object;
    :try_start_3
    iget-object v2, v0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_4

    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/appevents/AppEvent;

    .line 88
    .local v4, "event":Lcom/facebook/appevents/AppEvent;
    invoke-virtual {v4}, Lcom/facebook/appevents/AppEvent;->isChecksumValid()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 89
    if-nez p3, :cond_1

    invoke-virtual {v4}, Lcom/facebook/appevents/AppEvent;->isImplicit()Z

    move-result v6

    if-nez v6, :cond_3

    .line 90
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/appevents/AppEvent;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 93
    :cond_2
    sget-object v6, Lcom/facebook/appevents/SessionEventsState;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event with invalid checksum: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    .end local v4    # "event":Lcom/facebook/appevents/AppEvent;
    :cond_3
    :goto_1
    goto :goto_0

    .line 77
    .end local v3    # "$i$a$-synchronized-SessionEventsState$populateRequest$1":I
    :catchall_0
    move-exception v2

    move-object v3, p4

    move p4, v5

    goto :goto_2

    .line 96
    .restart local v3    # "$i$a$-synchronized-SessionEventsState$populateRequest$1":I
    :cond_4
    :try_start_5
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v2, :cond_5

    .line 97
    nop

    .end local v3    # "$i$a$-synchronized-SessionEventsState$populateRequest$1":I
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    return v1

    .line 99
    .end local v0    # "this":Lcom/facebook/appevents/SessionEventsState;
    .restart local v3    # "$i$a$-synchronized-SessionEventsState$populateRequest$1":I
    :cond_5
    nop

    .end local v3    # "$i$a$-synchronized-SessionEventsState$populateRequest$1":I
    :try_start_7
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 77
    :try_start_8
    monitor-exit v0

    .line 100
    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/facebook/appevents/SessionEventsState;->populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ILorg/json/JSONArray;Z)V

    .line 101
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v1

    return v1

    .line 77
    :catchall_1
    move-exception v2

    move-object v3, p4

    move p4, v5

    goto :goto_2

    .end local p4    # "jsonArray":Ljava/lang/Object;
    .restart local v2    # "jsonArray":Ljava/lang/Object;
    :catchall_2
    move-exception p4

    move-object v3, v2

    move-object v2, p4

    move p4, v5

    goto :goto_2

    .end local v5    # "numSkipped":I
    .local p4, "numSkipped":I
    :catchall_3
    move-exception v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    .end local v2    # "jsonArray":Ljava/lang/Object;
    .local v3, "jsonArray":Ljava/lang/Object;
    :goto_2
    monitor-exit v0

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 101
    .end local v3    # "jsonArray":Ljava/lang/Object;
    .end local v7    # "limitEventUsage":Z
    .end local p1    # "request":Lcom/facebook/GraphRequest;
    .end local p2    # "applicationContext":Landroid/content/Context;
    .end local p3    # "includeImplicitEvents":Z
    .end local p4    # "numSkipped":I
    :catchall_4
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method
