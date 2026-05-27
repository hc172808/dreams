.class public final Lcom/facebook/appevents/AppEventCollection;
.super Ljava/lang/Object;
.source "AppEventCollection.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0013\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\tH\u0086\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0015\u001a\u00020\tH\u0002J\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0017R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/facebook/appevents/AppEventCollection;",
        "",
        "()V",
        "eventCount",
        "",
        "getEventCount",
        "()I",
        "stateMap",
        "Ljava/util/HashMap;",
        "Lcom/facebook/appevents/AccessTokenAppIdPair;",
        "Lcom/facebook/appevents/SessionEventsState;",
        "addEvent",
        "",
        "accessTokenAppIdPair",
        "appEvent",
        "Lcom/facebook/appevents/AppEvent;",
        "addPersistedEvents",
        "persistedEvents",
        "Lcom/facebook/appevents/PersistedEvents;",
        "get",
        "getSessionEventsState",
        "accessTokenAppId",
        "keySet",
        "",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final stateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            "Lcom/facebook/appevents/SessionEventsState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    return-void
.end method

.method private final declared-synchronized getSessionEventsState(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;
    .locals 8
    .param p1, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/SessionEventsState;

    .line 73
    .local v0, "eventsState":Lcom/facebook/appevents/SessionEventsState;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 74
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 78
    .local v2, "context":Landroid/content/Context;
    nop

    .line 79
    sget-object v3, Lcom/facebook/internal/AttributionIdentifiers;->Companion:Lcom/facebook/internal/AttributionIdentifiers$Companion;

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/facebook/internal/AttributionIdentifiers$Companion;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v3

    if-eqz v3, :cond_0

    .local v3, "it":Lcom/facebook/internal/AttributionIdentifiers;
    const/4 v4, 0x0

    .line 80
    .local v4, "$i$a$-let-AppEventCollection$getSessionEventsState$1":I
    new-instance v5, Lcom/facebook/appevents/SessionEventsState;

    invoke-static {v2}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AppEventsLogger.getAnonymousAppDeviceGUID(context)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v3, v6}, Lcom/facebook/appevents/SessionEventsState;-><init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v3    # "it":Lcom/facebook/internal/AttributionIdentifiers;
    .end local v4    # "$i$a$-let-AppEventCollection$getSessionEventsState$1":I
    goto :goto_0

    .end local p0    # "this":Lcom/facebook/appevents/AppEventCollection;
    :cond_0
    move-object v5, v1

    :goto_0
    move-object v0, v5

    .line 83
    .end local v2    # "context":Landroid/content/Context;
    :cond_1
    if-nez v0, :cond_2

    .line 84
    monitor-exit p0

    return-object v1

    .line 86
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    monitor-exit p0

    return-object v0

    .line 71
    .end local v0    # "eventsState":Lcom/facebook/appevents/SessionEventsState;
    .end local p1    # "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized addEvent(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .locals 1
    .param p1, "accessTokenAppIdPair"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p2, "appEvent"    # Lcom/facebook/appevents/AppEvent;

    monitor-enter p0

    :try_start_0
    const-string v0, "accessTokenAppIdPair"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/appevents/AppEventCollection;->getSessionEventsState(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/facebook/appevents/SessionEventsState;->addEvent(Lcom/facebook/appevents/AppEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local p0    # "this":Lcom/facebook/appevents/AppEventCollection;
    :cond_0
    monitor-exit p0

    return-void

    .line 46
    .end local p1    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local p2    # "appEvent":Lcom/facebook/appevents/AppEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized addPersistedEvents(Lcom/facebook/appevents/PersistedEvents;)V
    .locals 6
    .param p1, "persistedEvents"    # Lcom/facebook/appevents/PersistedEvents;

    monitor-enter p0

    .line 33
    if-nez p1, :cond_0

    .line 34
    monitor-exit p0

    return-void

    .line 36
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/appevents/PersistedEvents;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 37
    .local v1, "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    invoke-direct {p0, v1}, Lcom/facebook/appevents/AppEventCollection;->getSessionEventsState(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v2

    if-eqz v2, :cond_3

    .local v2, "it":Lcom/facebook/appevents/SessionEventsState;
    const/4 v3, 0x0

    .line 38
    .local v3, "$i$a$-let-AppEventCollection$addPersistedEvents$1":I
    invoke-virtual {p1, v1}, Lcom/facebook/appevents/PersistedEvents;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/appevents/AppEvent;

    .line 39
    .local v5, "appEvent":Lcom/facebook/appevents/AppEvent;
    invoke-virtual {v2, v5}, Lcom/facebook/appevents/SessionEventsState;->addEvent(Lcom/facebook/appevents/AppEvent;)V

    .end local v5    # "appEvent":Lcom/facebook/appevents/AppEvent;
    goto :goto_1

    .line 41
    .end local p0    # "this":Lcom/facebook/appevents/AppEventCollection;
    :cond_1
    nop

    .end local v2    # "it":Lcom/facebook/appevents/SessionEventsState;
    .end local v3    # "$i$a$-let-AppEventCollection$addPersistedEvents$1":I
    goto :goto_2

    .line 38
    .restart local v2    # "it":Lcom/facebook/appevents/SessionEventsState;
    .restart local v3    # "$i$a$-let-AppEventCollection$addPersistedEvents$1":I
    :cond_2
    const-string v0, "Required value was null."

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .end local v2    # "it":Lcom/facebook/appevents/SessionEventsState;
    .end local v3    # "$i$a$-let-AppEventCollection$addPersistedEvents$1":I
    :cond_3
    :goto_2
    nop

    .line 36
    .end local v1    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    goto :goto_0

    .line 43
    :cond_4
    monitor-exit p0

    return-void

    .line 32
    .end local p1    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;
    .locals 1
    .param p1, "accessTokenAppIdPair"    # Lcom/facebook/appevents/AccessTokenAppIdPair;

    monitor-enter p0

    :try_start_0
    const-string v0, "accessTokenAppIdPair"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/SessionEventsState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 57
    .end local p0    # "this":Lcom/facebook/appevents/AppEventCollection;
    .end local p1    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getEventCount()I
    .locals 4

    monitor-enter p0

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "count":I
    :try_start_0
    iget-object v1, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/SessionEventsState;

    .line 65
    .local v2, "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    invoke-virtual {v2}, Lcom/facebook/appevents/SessionEventsState;->getAccumulatedEventCount()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v3

    .end local v2    # "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    goto :goto_0

    .line 67
    .end local p0    # "this":Lcom/facebook/appevents/AppEventCollection;
    :cond_0
    monitor-exit p0

    return v0

    .line 62
    .end local v0    # "count":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "stateMap.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 52
    .end local p0    # "this":Lcom/facebook/appevents/AppEventCollection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
