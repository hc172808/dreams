.class public Lio/grpc/internal/Http2Ping;
.super Ljava/lang/Object;
.source "Http2Ping.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/internal/ClientTransport$PingCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private completed:Z

.field private final data:J

.field private failureCause:Ljava/lang/Throwable;

.field private roundTripTimeNanos:J

.field private final stopwatch:Lcom/google/common/base/Stopwatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lio/grpc/internal/Http2Ping;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/Http2Ping;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(JLcom/google/common/base/Stopwatch;)V
    .locals 1
    .param p1, "data"    # J
    .param p3, "stopwatch"    # Lcom/google/common/base/Stopwatch;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/Http2Ping;->callbacks:Ljava/util/Map;

    .line 82
    iput-wide p1, p0, Lio/grpc/internal/Http2Ping;->data:J

    .line 83
    iput-object p3, p0, Lio/grpc/internal/Http2Ping;->stopwatch:Lcom/google/common/base/Stopwatch;

    .line 84
    return-void
.end method

.method private static asRunnable(Lio/grpc/internal/ClientTransport$PingCallback;J)Ljava/lang/Runnable;
    .locals 1
    .param p0, "callback"    # Lio/grpc/internal/ClientTransport$PingCallback;
    .param p1, "roundTripTimeNanos"    # J

    .line 192
    new-instance v0, Lio/grpc/internal/Http2Ping$1;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/internal/Http2Ping$1;-><init>(Lio/grpc/internal/ClientTransport$PingCallback;J)V

    return-object v0
.end method

.method private static asRunnable(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/lang/Throwable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "callback"    # Lio/grpc/internal/ClientTransport$PingCallback;
    .param p1, "failureCause"    # Ljava/lang/Throwable;

    .line 207
    new-instance v0, Lio/grpc/internal/Http2Ping$2;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/Http2Ping$2;-><init>(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static doExecute(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 180
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    .local v0, "th":Ljava/lang/Throwable;
    sget-object v1, Lio/grpc/internal/Http2Ping;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Failed to execute PingCallback"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static notifyFailed(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "callback"    # Lio/grpc/internal/ClientTransport$PingCallback;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 171
    invoke-static {p0, p2}, Lio/grpc/internal/Http2Ping;->asRunnable(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/lang/Throwable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {p1, v0}, Lio/grpc/internal/Http2Ping;->doExecute(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method


# virtual methods
.method public addCallback(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "callback"    # Lio/grpc/internal/ClientTransport$PingCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/Http2Ping;->completed:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lio/grpc/internal/Http2Ping;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/Http2Ping;->failureCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lio/grpc/internal/Http2Ping;->asRunnable(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/lang/Throwable;)Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_1
    iget-wide v0, p0, Lio/grpc/internal/Http2Ping;->roundTripTimeNanos:J

    invoke-static {p1, v0, v1}, Lio/grpc/internal/Http2Ping;->asRunnable(Lio/grpc/internal/ClientTransport$PingCallback;J)Ljava/lang/Runnable;

    move-result-object v0

    :goto_0
    nop

    .line 103
    .local v0, "runnable":Ljava/lang/Runnable;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-static {p2, v0}, Lio/grpc/internal/Http2Ping;->doExecute(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 105
    return-void

    .line 103
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public complete()Z
    .locals 8

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/Http2Ping;->completed:Z

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 130
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/Http2Ping;->completed:Z

    .line 131
    iget-object v1, p0, Lio/grpc/internal/Http2Ping;->stopwatch:Lcom/google/common/base/Stopwatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/grpc/internal/Http2Ping;->roundTripTimeNanos:J

    .line 132
    .local v1, "roundTripTimeNanos":J
    iget-object v3, p0, Lio/grpc/internal/Http2Ping;->callbacks:Ljava/util/Map;

    .line 133
    .local v3, "callbacks":Ljava/util/Map;, "Ljava/util/Map<Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;>;"
    const/4 v4, 0x0

    iput-object v4, p0, Lio/grpc/internal/Http2Ping;->callbacks:Ljava/util/Map;

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 136
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Executor;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/grpc/internal/ClientTransport$PingCallback;

    invoke-static {v7, v1, v2}, Lio/grpc/internal/Http2Ping;->asRunnable(Lio/grpc/internal/ClientTransport$PingCallback;J)Ljava/lang/Runnable;

    move-result-object v7

    invoke-static {v6, v7}, Lio/grpc/internal/Http2Ping;->doExecute(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 137
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;>;"
    goto :goto_0

    .line 138
    :cond_1
    return v0

    .line 134
    .end local v1    # "roundTripTimeNanos":J
    .end local v3    # "callbacks":Ljava/util/Map;, "Ljava/util/Map<Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public failed(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "failureCause"    # Ljava/lang/Throwable;

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/Http2Ping;->completed:Z

    if-eqz v0, :cond_0

    .line 151
    monitor-exit p0

    return-void

    .line 153
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/Http2Ping;->completed:Z

    .line 154
    iput-object p1, p0, Lio/grpc/internal/Http2Ping;->failureCause:Ljava/lang/Throwable;

    .line 155
    iget-object v0, p0, Lio/grpc/internal/Http2Ping;->callbacks:Ljava/util/Map;

    .line 156
    .local v0, "callbacks":Ljava/util/Map;, "Ljava/util/Map<Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/internal/Http2Ping;->callbacks:Ljava/util/Map;

    .line 157
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 159
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/internal/ClientTransport$PingCallback;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    invoke-static {v3, v4, p1}, Lio/grpc/internal/Http2Ping;->notifyFailed(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;)V

    .line 160
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;>;"
    goto :goto_0

    .line 161
    :cond_1
    return-void

    .line 157
    .end local v0    # "callbacks":Ljava/util/Map;, "Ljava/util/Map<Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public payload()J
    .locals 2

    .line 113
    iget-wide v0, p0, Lio/grpc/internal/Http2Ping;->data:J

    return-wide v0
.end method
