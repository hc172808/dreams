.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;
.super Ljava/lang/Object;
.source "Uploader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Uploader"


# instance fields
.field private final backendRegistry:Lcom/google/android/datatransport/runtime/backends/BackendRegistry;

.field private final clock:Lcom/google/android/datatransport/runtime/time/Clock;

.field private final context:Landroid/content/Context;

.field private final eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final guard:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

.field private final workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/backends/BackendRegistry;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;Lcom/google/android/datatransport/runtime/time/Clock;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backendRegistry"    # Lcom/google/android/datatransport/runtime/backends/BackendRegistry;
    .param p3, "eventStore"    # Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;
    .param p4, "workScheduler"    # Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "guard"    # Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;
    .param p7, "clock"    # Lcom/google/android/datatransport/runtime/time/Clock;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->backendRegistry:Lcom/google/android/datatransport/runtime/backends/BackendRegistry;

    .line 62
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    .line 63
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    .line 64
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->executor:Ljava/util/concurrent/Executor;

    .line 65
    iput-object p6, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->guard:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    .line 66
    iput-object p7, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->clock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 67
    return-void
.end method


# virtual methods
.method isNetworkAvailable()Z
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->context:Landroid/content/Context;

    .line 71
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 72
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 73
    .local v1, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public synthetic lambda$logAndUpdateState$2$Uploader(Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;

    .line 102
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {v0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->hasPendingEventsFor(Lcom/google/android/datatransport/runtime/TransportContext;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$logAndUpdateState$3$Uploader(Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;

    .line 104
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {v0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->loadBatch(Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$logAndUpdateState$4$Uploader(Ljava/lang/Iterable;Lcom/google/android/datatransport/runtime/TransportContext;J)Ljava/lang/Object;
    .locals 3
    .param p1, "persistedEvents"    # Ljava/lang/Iterable;
    .param p2, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p3, "finalMaxNextRequestWaitMillis1"    # J

    .line 133
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {v0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->recordFailure(Ljava/lang/Iterable;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->clock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 135
    invoke-interface {v1}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v1

    add-long/2addr v1, p3

    .line 134
    invoke-interface {v0, p2, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->recordNextCallTime(Lcom/google/android/datatransport/runtime/TransportContext;J)V

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$logAndUpdateState$5$Uploader(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .param p1, "persistedEvents"    # Ljava/lang/Iterable;

    .line 143
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {v0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->recordSuccess(Ljava/lang/Iterable;)V

    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$logAndUpdateState$6$Uploader(Lcom/google/android/datatransport/runtime/TransportContext;J)Ljava/lang/Object;
    .locals 3
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p2, "finalMaxNextRequestWaitMillis"    # J

    .line 155
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->clock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 156
    invoke-interface {v1}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 155
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->recordNextCallTime(Lcom/google/android/datatransport/runtime/TransportContext;J)V

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$upload$0$Uploader(Lcom/google/android/datatransport/runtime/TransportContext;I)Ljava/lang/Object;
    .locals 2
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p2, "attemptNumber"    # I

    .line 84
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    add-int/lit8 v1, p2, 0x1

    invoke-interface {v0, p1, v1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;->schedule(Lcom/google/android/datatransport/runtime/TransportContext;I)V

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$upload$1$Uploader(Lcom/google/android/datatransport/runtime/TransportContext;ILjava/lang/Runnable;)V
    .locals 3
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p2, "attemptNumber"    # I
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->guard:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$DPpDAVxuR9YHLjNY9v3GYiOTm8c;

    invoke-direct {v2, v1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$DPpDAVxuR9YHLjNY9v3GYiOTm8c;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;)V

    invoke-interface {v0, v2}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;->runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->guard:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$sr3vPq_E-juy6AzUzRSaApsvUdw;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$sr3vPq_E-juy6AzUzRSaApsvUdw;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;I)V

    invoke-interface {v0, v1}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;->runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->logAndUpdateState(Lcom/google/android/datatransport/runtime/TransportContext;I)V
    :try_end_0
    .catch Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;
    :try_start_1
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;->schedule(Lcom/google/android/datatransport/runtime/TransportContext;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .end local v0    # "e":Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;
    :goto_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 94
    nop

    .line 95
    return-void

    .line 93
    :goto_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 94
    throw v0
.end method

.method logAndUpdateState(Lcom/google/android/datatransport/runtime/TransportContext;I)V
    .locals 13
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p2, "attemptNumber"    # I

    .line 99
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->backendRegistry:Lcom/google/android/datatransport/runtime/backends/BackendRegistry;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/datatransport/runtime/backends/BackendRegistry;->get(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/TransportBackend;

    move-result-object v0

    .line 100
    .local v0, "backend":Lcom/google/android/datatransport/runtime/backends/TransportBackend;
    const-wide/16 v1, 0x0

    .line 102
    .local v1, "maxNextRequestWaitMillis":J
    :goto_0
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->guard:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    new-instance v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$H09k0NyVJ8nyzTbBch5HKLFo-RI;

    invoke-direct {v4, p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$H09k0NyVJ8nyzTbBch5HKLFo-RI;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;)V

    invoke-interface {v3, v4}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;->runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 103
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->guard:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    new-instance v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$WlL8ZL_7Ts4FrW7MJOx0CJZv3Es;

    invoke-direct {v4, p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$WlL8ZL_7Ts4FrW7MJOx0CJZv3Es;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;)V

    .line 104
    invoke-interface {v3, v4}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;->runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/Iterable;

    .line 107
    .local v9, "persistedEvents":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    return-void

    .line 112
    :cond_0
    if-nez v0, :cond_1

    .line 113
    const-string v3, "Uploader"

    const-string v4, "Unknown backend for %s, deleting event batch for it..."

    invoke-static {v3, v4, p1}, Lcom/google/android/datatransport/runtime/logging/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->fatalError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v3

    move-object v10, v3

    .local v3, "response":Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    goto :goto_2

    .line 117
    .end local v3    # "response":Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v3, "eventInternals":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/datatransport/runtime/EventInternal;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    .line 120
    .local v5, "persistedEvent":Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;
    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getEvent()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v5    # "persistedEvent":Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;
    goto :goto_1

    .line 122
    :cond_2
    nop

    .line 124
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->builder()Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;

    move-result-object v4

    .line 125
    invoke-virtual {v4, v3}, Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;->setEvents(Ljava/lang/Iterable;)Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;

    move-result-object v4

    .line 126
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;->setExtras([B)Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;

    move-result-object v4

    .line 127
    invoke-virtual {v4}, Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;->build()Lcom/google/android/datatransport/runtime/backends/BackendRequest;

    move-result-object v4

    .line 123
    invoke-interface {v0, v4}, Lcom/google/android/datatransport/runtime/backends/TransportBackend;->send(Lcom/google/android/datatransport/runtime/backends/BackendRequest;)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v4

    move-object v10, v4

    .line 129
    .end local v3    # "eventInternals":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/datatransport/runtime/EventInternal;>;"
    .local v10, "response":Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    :goto_2
    invoke-virtual {v10}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->getStatus()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    move-result-object v3

    sget-object v4, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->TRANSIENT_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    if-ne v3, v4, :cond_3

    .line 130
    move-wide v7, v1

    .line 131
    .local v7, "finalMaxNextRequestWaitMillis1":J
    iget-object v11, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->guard:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    new-instance v12, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$kh6WMyPap03iYRJ0qy-X3ogOyXs;

    move-object v3, v12

    move-object v4, p0

    move-object v5, v9

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$kh6WMyPap03iYRJ0qy-X3ogOyXs;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Ljava/lang/Iterable;Lcom/google/android/datatransport/runtime/TransportContext;J)V

    invoke-interface {v11, v12}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;->runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    .line 138
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    add-int/lit8 v4, p2, 0x1

    const/4 v5, 0x1

    invoke-interface {v3, p1, v4, v5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;->schedule(Lcom/google/android/datatransport/runtime/TransportContext;IZ)V

    .line 139
    return-void

    .line 141
    .end local v7    # "finalMaxNextRequestWaitMillis1":J
    :cond_3
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->guard:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    new-instance v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$sE0URA4dL1HoYpRkW5kh5p1DD4Y;

    invoke-direct {v4, p0, v9}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$sE0URA4dL1HoYpRkW5kh5p1DD4Y;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Ljava/lang/Iterable;)V

    invoke-interface {v3, v4}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;->runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    .line 146
    invoke-virtual {v10}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->getStatus()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    move-result-object v3

    sget-object v4, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->OK:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    if-ne v3, v4, :cond_4

    .line 147
    nop

    .line 148
    invoke-virtual {v10}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->getNextRequestWaitMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 151
    .end local v9    # "persistedEvents":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;>;"
    .end local v10    # "response":Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    :cond_4
    goto/16 :goto_0

    .line 152
    :cond_5
    move-wide v3, v1

    .line 153
    .local v3, "finalMaxNextRequestWaitMillis":J
    iget-object v5, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->guard:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    new-instance v6, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$ki16rtOsCRxzqVA-0ntlPB-LZo4;

    invoke-direct {v6, p0, p1, v3, v4}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$ki16rtOsCRxzqVA-0ntlPB-LZo4;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;J)V

    invoke-interface {v5, v6}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;->runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public upload(Lcom/google/android/datatransport/runtime/TransportContext;ILjava/lang/Runnable;)V
    .locals 2
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p2, "attemptNumber"    # I
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 77
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$DXUaNZ7S78mHsDrcqc_9ECz1Ymg;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$DXUaNZ7S78mHsDrcqc_9ECz1Ymg;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;ILjava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method
