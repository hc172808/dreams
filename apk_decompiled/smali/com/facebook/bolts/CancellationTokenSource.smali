.class public final Lcom/facebook/bolts/CancellationTokenSource;
.super Ljava/lang/Object;
.source "CancellationTokenSource.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellationTokenSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellationTokenSource.kt\ncom/facebook/bolts/CancellationTokenSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,200:1\n1#2:201\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u001aJ\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u0017H\u0002J\u0008\u0010\u001e\u001a\u00020\u0017H\u0016J\u0016\u0010\u001f\u001a\u00020\u00172\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0 H\u0002J\u0012\u0010!\u001a\u00020\u000f2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0007J\u0008\u0010$\u001a\u00020\u0017H\u0007J\u0008\u0010%\u001a\u00020\u0017H\u0002J\u0008\u0010&\u001a\u00020\'H\u0016J\u0010\u0010(\u001a\u00020\u00172\u0006\u0010)\u001a\u00020\u000fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0012\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006*"
    }
    d2 = {
        "Lcom/facebook/bolts/CancellationTokenSource;",
        "Ljava/io/Closeable;",
        "()V",
        "cancellationRequested",
        "",
        "closed",
        "executor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "kotlin.jvm.PlatformType",
        "isCancellationRequested",
        "()Z",
        "lock",
        "",
        "registrations",
        "",
        "Lcom/facebook/bolts/CancellationTokenRegistration;",
        "scheduledCancellation",
        "Ljava/util/concurrent/ScheduledFuture;",
        "token",
        "Lcom/facebook/bolts/CancellationToken;",
        "getToken",
        "()Lcom/facebook/bolts/CancellationToken;",
        "cancel",
        "",
        "cancelAfter",
        "delay",
        "",
        "timeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "cancelScheduledCancellation",
        "close",
        "notifyListeners",
        "",
        "register",
        "action",
        "Ljava/lang/Runnable;",
        "throwIfCancellationRequested",
        "throwIfClosed",
        "toString",
        "",
        "unregister",
        "registration",
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
.field private cancellationRequested:Z

.field private closed:Z

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final lock:Ljava/lang/Object;

.field private final registrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/bolts/CancellationTokenRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->registrations:Ljava/util/List;

    .line 39
    invoke-static {}, Lcom/facebook/bolts/BoltsExecutors;->scheduled()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static final synthetic access$getLock$p(Lcom/facebook/bolts/CancellationTokenSource;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/bolts/CancellationTokenSource;

    .line 36
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getScheduledCancellation$p(Lcom/facebook/bolts/CancellationTokenSource;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/bolts/CancellationTokenSource;

    .line 36
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method public static final synthetic access$setScheduledCancellation$p(Lcom/facebook/bolts/CancellationTokenSource;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0
    .param p0, "$this"    # Lcom/facebook/bolts/CancellationTokenSource;
    .param p1, "<set-?>"    # Ljava/util/concurrent/ScheduledFuture;

    .line 36
    iput-object p1, p0, Lcom/facebook/bolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private final cancelAfter(JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "delay"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 90
    const/4 v0, -0x1

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 91
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/facebook/bolts/CancellationTokenSource;->cancel()V

    .line 93
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 96
    .local v1, "$i$a$-synchronized-CancellationTokenSource$cancelAfter$2":I
    :try_start_0
    iget-boolean v2, p0, Lcom/facebook/bolts/CancellationTokenSource;->cancellationRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 97
    .end local v1    # "$i$a$-synchronized-CancellationTokenSource$cancelAfter$2":I
    monitor-exit v0

    return-void

    .line 99
    .restart local v1    # "$i$a$-synchronized-CancellationTokenSource$cancelAfter$2":I
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->cancelScheduledCancellation()V

    .line 100
    const-wide/16 v2, -0x1

    cmp-long v4, p1, v2

    if-eqz v4, :cond_3

    .line 101
    nop

    .line 102
    iget-object v2, p0, Lcom/facebook/bolts/CancellationTokenSource;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 103
    new-instance v3, Lcom/facebook/bolts/CancellationTokenSource$cancelAfter$$inlined$synchronized$lambda$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/facebook/bolts/CancellationTokenSource$cancelAfter$$inlined$synchronized$lambda$1;-><init>(Lcom/facebook/bolts/CancellationTokenSource;JLjava/util/concurrent/TimeUnit;)V

    check-cast v3, Ljava/lang/Runnable;

    .line 107
    nop

    .line 108
    nop

    .line 102
    invoke-interface {v2, v3, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/bolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    .line 110
    .end local v1    # "$i$a$-synchronized-CancellationTokenSource$cancelAfter$2":I
    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    monitor-exit v0

    .line 111
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 201
    :cond_4
    const/4 v0, 0x0

    .line 90
    .local v0, "$i$a$-require-CancellationTokenSource$cancelAfter$1":I
    const-string v0, "Delay must be >= -1"

    .end local v0    # "$i$a$-require-CancellationTokenSource$cancelAfter$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private final cancelScheduledCancellation()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 196
    .local v0, "scheduledCancellation":Ljava/util/concurrent/ScheduledFuture;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 197
    const/4 v1, 0x0

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    iput-object v1, p0, Lcom/facebook/bolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    .line 198
    return-void

    .line 195
    .end local v0    # "scheduledCancellation":Ljava/util/concurrent/ScheduledFuture;
    :cond_0
    return-void
.end method

.method private final notifyListeners(Ljava/util/List;)V
    .locals 2
    .param p1, "registrations"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/bolts/CancellationTokenRegistration;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/bolts/CancellationTokenRegistration;

    .line 173
    .local v1, "registration":Lcom/facebook/bolts/CancellationTokenRegistration;
    invoke-virtual {v1}, Lcom/facebook/bolts/CancellationTokenRegistration;->runAction()V

    .line 172
    .end local v1    # "registration":Lcom/facebook/bolts/CancellationTokenRegistration;
    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method private final throwIfClosed()V
    .locals 2

    .line 190
    iget-boolean v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 191
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    .line 190
    .local v0, "$i$a$-check-CancellationTokenSource$throwIfClosed$1":I
    nop

    .end local v0    # "$i$a$-check-CancellationTokenSource$throwIfClosed$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object already closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public final cancel()V
    .locals 5

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "registrations":Ljava/lang/Object;
    iget-object v1, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 66
    .local v2, "$i$a$-synchronized-CancellationTokenSource$cancel$1":I
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->throwIfClosed()V

    .line 67
    iget-boolean v3, p0, Lcom/facebook/bolts/CancellationTokenSource;->cancellationRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 68
    .end local v2    # "$i$a$-synchronized-CancellationTokenSource$cancel$1":I
    monitor-exit v1

    return-void

    .line 70
    .restart local v2    # "$i$a$-synchronized-CancellationTokenSource$cancel$1":I
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->cancelScheduledCancellation()V

    .line 71
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/bolts/CancellationTokenSource;->cancellationRequested:Z

    .line 72
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/facebook/bolts/CancellationTokenSource;->registrations:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v3, Ljava/util/List;

    move-object v0, v3

    .line 73
    .end local v2    # "$i$a$-synchronized-CancellationTokenSource$cancel$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    monitor-exit v1

    .line 74
    invoke-direct {p0, v0}, Lcom/facebook/bolts/CancellationTokenSource;->notifyListeners(Ljava/util/List;)V

    .line 75
    return-void

    .line 65
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public final cancelAfter(J)V
    .locals 1
    .param p1, "delay"    # J

    .line 86
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/bolts/CancellationTokenSource;->cancelAfter(JLjava/util/concurrent/TimeUnit;)V

    .line 87
    return-void
.end method

.method public close()V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 115
    .local v1, "$i$a$-synchronized-CancellationTokenSource$close$1":I
    :try_start_0
    iget-boolean v2, p0, Lcom/facebook/bolts/CancellationTokenSource;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 116
    .end local v1    # "$i$a$-synchronized-CancellationTokenSource$close$1":I
    monitor-exit v0

    return-void

    .line 118
    .restart local v1    # "$i$a$-synchronized-CancellationTokenSource$close$1":I
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->cancelScheduledCancellation()V

    .line 119
    iget-object v2, p0, Lcom/facebook/bolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/bolts/CancellationTokenRegistration;

    .line 120
    .local v3, "registration":Lcom/facebook/bolts/CancellationTokenRegistration;
    invoke-virtual {v3}, Lcom/facebook/bolts/CancellationTokenRegistration;->close()V

    .end local v3    # "registration":Lcom/facebook/bolts/CancellationTokenRegistration;
    goto :goto_0

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/facebook/bolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 123
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/bolts/CancellationTokenSource;->closed:Z

    .line 124
    .end local v1    # "$i$a$-synchronized-CancellationTokenSource$close$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    monitor-exit v0

    .line 125
    return-void

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getToken()Lcom/facebook/bolts/CancellationToken;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 57
    .local v1, "$i$a$-synchronized-CancellationTokenSource$token$1":I
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->throwIfClosed()V

    .line 58
    new-instance v2, Lcom/facebook/bolts/CancellationToken;

    invoke-direct {v2, p0}, Lcom/facebook/bolts/CancellationToken;-><init>(Lcom/facebook/bolts/CancellationTokenSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "$i$a$-synchronized-CancellationTokenSource$token$1":I
    monitor-exit v0

    return-object v2

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final isCancellationRequested()Z
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 48
    .local v1, "$i$a$-synchronized-CancellationTokenSource$isCancellationRequested$1":I
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->throwIfClosed()V

    .line 49
    iget-boolean v2, p0, Lcom/facebook/bolts/CancellationTokenSource;->cancellationRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "$i$a$-synchronized-CancellationTokenSource$isCancellationRequested$1":I
    monitor-exit v0

    return v2

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final register(Ljava/lang/Runnable;)Lcom/facebook/bolts/CancellationTokenRegistration;
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "ctr":Ljava/lang/Object;
    iget-object v1, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 131
    .local v2, "$i$a$-synchronized-CancellationTokenSource$register$1":I
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->throwIfClosed()V

    .line 132
    new-instance v3, Lcom/facebook/bolts/CancellationTokenRegistration;

    invoke-direct {v3, p0, p1}, Lcom/facebook/bolts/CancellationTokenRegistration;-><init>(Lcom/facebook/bolts/CancellationTokenSource;Ljava/lang/Runnable;)V

    move-object v0, v3

    .line 133
    iget-boolean v3, p0, Lcom/facebook/bolts/CancellationTokenSource;->cancellationRequested:Z

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/facebook/bolts/CancellationTokenRegistration;->runAction()V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 136
    :cond_0
    iget-object v3, p0, Lcom/facebook/bolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    nop

    .line 130
    .end local v2    # "$i$a$-synchronized-CancellationTokenSource$register$1":I
    :goto_0
    monitor-exit v1

    .line 139
    return-object v0

    .line 130
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public final throwIfCancellationRequested()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 150
    .local v1, "$i$a$-synchronized-CancellationTokenSource$throwIfCancellationRequested$1":I
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->throwIfClosed()V

    .line 151
    iget-boolean v2, p0, Lcom/facebook/bolts/CancellationTokenSource;->cancellationRequested:Z

    if-nez v2, :cond_0

    .line 154
    .end local v1    # "$i$a$-synchronized-CancellationTokenSource$throwIfCancellationRequested$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit v0

    .line 155
    return-void

    .line 152
    .restart local v1    # "$i$a$-synchronized-CancellationTokenSource$throwIfCancellationRequested$1":I
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .end local v1    # "$i$a$-synchronized-CancellationTokenSource$throwIfCancellationRequested$1":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 178
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 179
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 180
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 182
    invoke-virtual {p0}, Lcom/facebook/bolts/CancellationTokenSource;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 183
    invoke-virtual {p0}, Lcom/facebook/bolts/CancellationTokenSource;->isCancellationRequested()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 178
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s@%s[cancellationRequested=%s]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(locale, format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final unregister(Lcom/facebook/bolts/CancellationTokenRegistration;)V
    .locals 3
    .param p1, "registration"    # Lcom/facebook/bolts/CancellationTokenRegistration;

    const-string v0, "registration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 160
    .local v1, "$i$a$-synchronized-CancellationTokenSource$unregister$1":I
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->throwIfClosed()V

    .line 161
    iget-object v2, p0, Lcom/facebook/bolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v1    # "$i$a$-synchronized-CancellationTokenSource$unregister$1":I
    monitor-exit v0

    .line 163
    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
