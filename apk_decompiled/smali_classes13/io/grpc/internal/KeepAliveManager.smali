.class public Lio/grpc/internal/KeepAliveManager;
.super Ljava/lang/Object;
.source "KeepAliveManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;,
        Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;,
        Lio/grpc/internal/KeepAliveManager$State;
    }
.end annotation


# static fields
.field private static final MIN_KEEPALIVE_TIMEOUT_NANOS:J

.field private static final MIN_KEEPALIVE_TIME_NANOS:J


# instance fields
.field private final keepAliveDuringTransportIdle:Z

.field private final keepAlivePinger:Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;

.field private final keepAliveTimeInNanos:J

.field private final keepAliveTimeoutInNanos:J

.field private pingFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final sendPing:Ljava/lang/Runnable;

.field private final shutdown:Ljava/lang/Runnable;

.field private shutdownFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private state:Lio/grpc/internal/KeepAliveManager$State;

.field private final stopwatch:Lcom/google/common/base/Stopwatch;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lio/grpc/internal/KeepAliveManager;->MIN_KEEPALIVE_TIME_NANOS:J

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/KeepAliveManager;->MIN_KEEPALIVE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>(Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;Ljava/util/concurrent/ScheduledExecutorService;JJZ)V
    .locals 9
    .param p1, "keepAlivePinger"    # Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;
    .param p2, "scheduler"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "keepAliveTimeInNanos"    # J
    .param p5, "keepAliveTimeoutInNanos"    # J
    .param p7, "keepAliveDuringTransportIdle"    # Z

    .line 132
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createUnstarted()Lcom/google/common/base/Stopwatch;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lio/grpc/internal/KeepAliveManager;-><init>(Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Stopwatch;JJZ)V

    .line 135
    return-void
.end method

.method constructor <init>(Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Stopwatch;JJZ)V
    .locals 2
    .param p1, "keepAlivePinger"    # Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;
    .param p2, "scheduler"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "stopwatch"    # Lcom/google/common/base/Stopwatch;
    .param p4, "keepAliveTimeInNanos"    # J
    .param p6, "keepAliveTimeoutInNanos"    # J
    .param p8, "keepAliveDuringTransportIdle"    # Z

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->IDLE:Lio/grpc/internal/KeepAliveManager$State;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    .line 49
    new-instance v0, Lio/grpc/internal/LogExceptionRunnable;

    new-instance v1, Lio/grpc/internal/KeepAliveManager$1;

    invoke-direct {v1, p0}, Lio/grpc/internal/KeepAliveManager$1;-><init>(Lio/grpc/internal/KeepAliveManager;)V

    invoke-direct {v0, v1}, Lio/grpc/internal/LogExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->shutdown:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Lio/grpc/internal/LogExceptionRunnable;

    new-instance v1, Lio/grpc/internal/KeepAliveManager$2;

    invoke-direct {v1, p0}, Lio/grpc/internal/KeepAliveManager$2;-><init>(Lio/grpc/internal/KeepAliveManager;)V

    invoke-direct {v0, v1}, Lio/grpc/internal/LogExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->sendPing:Ljava/lang/Runnable;

    .line 141
    const-string v0, "keepAlivePinger"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->keepAlivePinger:Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;

    .line 142
    const-string v0, "scheduler"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 143
    const-string v0, "stopwatch"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Stopwatch;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->stopwatch:Lcom/google/common/base/Stopwatch;

    .line 144
    iput-wide p4, p0, Lio/grpc/internal/KeepAliveManager;->keepAliveTimeInNanos:J

    .line 145
    iput-wide p6, p0, Lio/grpc/internal/KeepAliveManager;->keepAliveTimeoutInNanos:J

    .line 146
    iput-boolean p8, p0, Lio/grpc/internal/KeepAliveManager;->keepAliveDuringTransportIdle:Z

    .line 147
    invoke-virtual {p3}, Lcom/google/common/base/Stopwatch;->reset()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/KeepAliveManager$State;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/KeepAliveManager;

    .line 34
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    return-object v0
.end method

.method static synthetic access$002(Lio/grpc/internal/KeepAliveManager;Lio/grpc/internal/KeepAliveManager$State;)Lio/grpc/internal/KeepAliveManager$State;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/KeepAliveManager;
    .param p1, "x1"    # Lio/grpc/internal/KeepAliveManager$State;

    .line 34
    iput-object p1, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    return-object p1
.end method

.method static synthetic access$100(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/KeepAliveManager;

    .line 34
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->keepAlivePinger:Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;

    return-object v0
.end method

.method static synthetic access$202(Lio/grpc/internal/KeepAliveManager;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/KeepAliveManager;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledFuture;

    .line 34
    iput-object p1, p0, Lio/grpc/internal/KeepAliveManager;->pingFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$302(Lio/grpc/internal/KeepAliveManager;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/KeepAliveManager;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledFuture;

    .line 34
    iput-object p1, p0, Lio/grpc/internal/KeepAliveManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$400(Lio/grpc/internal/KeepAliveManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/KeepAliveManager;

    .line 34
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->shutdown:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/internal/KeepAliveManager;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/KeepAliveManager;

    .line 34
    iget-wide v0, p0, Lio/grpc/internal/KeepAliveManager;->keepAliveTimeoutInNanos:J

    return-wide v0
.end method

.method static synthetic access$600(Lio/grpc/internal/KeepAliveManager;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/KeepAliveManager;

    .line 34
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/internal/KeepAliveManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/KeepAliveManager;

    .line 34
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->sendPing:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lio/grpc/internal/KeepAliveManager;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/KeepAliveManager;

    .line 34
    iget-wide v0, p0, Lio/grpc/internal/KeepAliveManager;->keepAliveTimeInNanos:J

    return-wide v0
.end method

.method static synthetic access$900(Lio/grpc/internal/KeepAliveManager;)Lcom/google/common/base/Stopwatch;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/KeepAliveManager;

    .line 34
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->stopwatch:Lcom/google/common/base/Stopwatch;

    return-object v0
.end method

.method public static clampKeepAliveTimeInNanos(J)J
    .locals 2
    .param p0, "keepAliveTimeInNanos"    # J

    .line 239
    sget-wide v0, Lio/grpc/internal/KeepAliveManager;->MIN_KEEPALIVE_TIME_NANOS:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static clampKeepAliveTimeoutInNanos(J)J
    .locals 2
    .param p0, "keepAliveTimeoutInNanos"    # J

    .line 246
    sget-wide v0, Lio/grpc/internal/KeepAliveManager;->MIN_KEEPALIVE_TIMEOUT_NANOS:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized onDataReceived()V
    .locals 5

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->stopwatch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->reset()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    .line 165
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->PING_SCHEDULED:Lio/grpc/internal/KeepAliveManager$State;

    if-ne v0, v1, :cond_0

    .line 166
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->PING_DELAYED:Lio/grpc/internal/KeepAliveManager$State;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    goto :goto_0

    .line 167
    .end local p0    # "this":Lio/grpc/internal/KeepAliveManager;
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->IDLE_AND_PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

    if-ne v0, v1, :cond_5

    .line 170
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 171
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 173
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    sget-object v2, Lio/grpc/internal/KeepAliveManager$State;->IDLE_AND_PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

    if-ne v0, v2, :cond_3

    .line 175
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->IDLE:Lio/grpc/internal/KeepAliveManager$State;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 179
    :cond_3
    :try_start_1
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->PING_SCHEDULED:Lio/grpc/internal/KeepAliveManager$State;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    .line 180
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->pingFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    const-string v0, "There should be no outstanding pingFuture"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lio/grpc/internal/KeepAliveManager;->sendPing:Ljava/lang/Runnable;

    iget-wide v2, p0, Lio/grpc/internal/KeepAliveManager;->keepAliveTimeInNanos:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->pingFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTransportActive()V
    .locals 6

    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->IDLE:Lio/grpc/internal/KeepAliveManager$State;

    if-ne v0, v1, :cond_0

    .line 192
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->PING_SCHEDULED:Lio/grpc/internal/KeepAliveManager$State;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    .line 193
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->pingFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lio/grpc/internal/KeepAliveManager;->sendPing:Ljava/lang/Runnable;

    iget-wide v2, p0, Lio/grpc/internal/KeepAliveManager;->keepAliveTimeInNanos:J

    iget-object v4, p0, Lio/grpc/internal/KeepAliveManager;->stopwatch:Lcom/google/common/base/Stopwatch;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 196
    invoke-virtual {v4, v5}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 194
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->pingFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 199
    .end local p0    # "this":Lio/grpc/internal/KeepAliveManager;
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->IDLE_AND_PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

    if-ne v0, v1, :cond_1

    .line 200
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTransportIdle()V
    .locals 2

    monitor-enter p0

    .line 208
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/KeepAliveManager;->keepAliveDuringTransportIdle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 209
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->PING_SCHEDULED:Lio/grpc/internal/KeepAliveManager$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->PING_DELAYED:Lio/grpc/internal/KeepAliveManager$State;

    if-ne v0, v1, :cond_2

    .line 212
    .end local p0    # "this":Lio/grpc/internal/KeepAliveManager;
    :cond_1
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->IDLE:Lio/grpc/internal/KeepAliveManager$State;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    .line 214
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

    if-ne v0, v1, :cond_3

    .line 215
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->IDLE_AND_PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :cond_3
    monitor-exit p0

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTransportStarted()V
    .locals 1

    monitor-enter p0

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/KeepAliveManager;->keepAliveDuringTransportIdle:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lio/grpc/internal/KeepAliveManager;->onTransportActive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local p0    # "this":Lio/grpc/internal/KeepAliveManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTransportTermination()V
    .locals 2

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->DISCONNECTED:Lio/grpc/internal/KeepAliveManager$State;

    if-eq v0, v1, :cond_1

    .line 224
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->DISCONNECTED:Lio/grpc/internal/KeepAliveManager$State;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    .line 225
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 228
    .end local p0    # "this":Lio/grpc/internal/KeepAliveManager;
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->pingFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 229
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->pingFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_1
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
