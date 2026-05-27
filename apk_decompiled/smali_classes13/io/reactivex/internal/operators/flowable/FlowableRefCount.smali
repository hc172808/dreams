.class public final Lio/reactivex/internal/operators/flowable/FlowableRefCount;
.super Lio/reactivex/Flowable;
.source "FlowableRefCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefCountSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field connection:Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;

.field final n:I

.field final scheduler:Lio/reactivex/Scheduler;

.field final source:Lio/reactivex/flowables/ConnectableFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TT;>;"
        }
    .end annotation
.end field

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/flowables/ConnectableFlowable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRefCount;, "Lio/reactivex/internal/operators/flowable/FlowableRefCount<TT;>;"
    .local p1, "source":Lio/reactivex/flowables/ConnectableFlowable;, "Lio/reactivex/flowables/ConnectableFlowable<TT;>;"
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    move-result-object v6

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableRefCount;-><init>(Lio/reactivex/flowables/ConnectableFlowable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lio/reactivex/flowables/ConnectableFlowable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p2, "n"    # I
    .param p3, "timeout"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lio/reactivex/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRefCount;, "Lio/reactivex/internal/operators/flowable/FlowableRefCount<TT;>;"
    .local p1, "source":Lio/reactivex/flowables/ConnectableFlowable;, "Lio/reactivex/flowables/ConnectableFlowable<TT;>;"
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->source:Lio/reactivex/flowables/ConnectableFlowable;

    .line 58
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->n:I

    .line 59
    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->timeout:J

    .line 60
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->unit:Ljava/util/concurrent/TimeUnit;

    .line 61
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->scheduler:Lio/reactivex/Scheduler;

    .line 62
    return-void
.end method


# virtual methods
.method cancel(Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;)V
    .locals 7
    .param p1, "rc"    # Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;

    .line 97
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRefCount;, "Lio/reactivex/internal/operators/flowable/FlowableRefCount<TT;>;"
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->connection:Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;

    if-nez v0, :cond_0

    .line 99
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;->subscriberCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 102
    .local v0, "c":J
    iput-wide v0, p1, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;->subscriberCount:J

    .line 103
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    iget-boolean v4, p1, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;->connected:Z

    if-nez v4, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->timeout:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_2

    .line 107
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->timeout(Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;)V

    .line 108
    monitor-exit p0

    return-void

    .line 110
    :cond_2
    new-instance v2, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v2}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    .line 111
    .local v2, "sd":Lio/reactivex/internal/disposables/SequentialDisposable;
    iput-object v2, p1, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    .line 112
    .end local v0    # "c":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->scheduler:Lio/reactivex/Scheduler;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->timeout:J

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v3, v4, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    .line 115
    return-void

    .line 104
    .end local v2    # "sd":Lio/reactivex/internal/disposables/SequentialDisposable;
    .restart local v0    # "c":J
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    .line 112
    .end local v0    # "c":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRefCount;, "Lio/reactivex/internal/operators/flowable/FlowableRefCount<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    const/4 v0, 0x0

    .line 70
    .local v0, "connect":Z
    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->connection:Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;

    .line 72
    .local v1, "conn":Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;
    if-nez v1, :cond_0

    .line 73
    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;-><init>(Lio/reactivex/internal/operators/flowable/FlowableRefCount;)V

    move-object v1, v2

    .line 74
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->connection:Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;

    .line 77
    :cond_0
    iget-wide v2, v1, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;->subscriberCount:J

    .line 78
    .local v2, "c":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-object v4, v1, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    if-eqz v4, :cond_1

    .line 79
    iget-object v4, v1, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    invoke-interface {v4}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 81
    :cond_1
    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    iput-wide v6, v1, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;->subscriberCount:J

    .line 82
    iget-boolean v6, v1, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;->connected:Z

    if-nez v6, :cond_2

    add-long/2addr v4, v2

    iget v6, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->n:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 83
    const/4 v0, 0x1

    .line 84
    const/4 v4, 0x1

    iput-boolean v4, v1, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;->connected:Z

    .line 86
    .end local v2    # "c":J
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->source:Lio/reactivex/flowables/ConnectableFlowable;

    new-instance v3, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefCountSubscriber;

    invoke-direct {v3, p1, p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefCountSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowableRefCount;Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;)V

    invoke-virtual {v2, v3}, Lio/reactivex/flowables/ConnectableFlowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 90
    if-eqz v0, :cond_3

    .line 91
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->source:Lio/reactivex/flowables/ConnectableFlowable;

    invoke-virtual {v2, v1}, Lio/reactivex/flowables/ConnectableFlowable;->connect(Lio/reactivex/functions/Consumer;)V

    .line 93
    :cond_3
    return-void

    .line 86
    .end local v1    # "conn":Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method terminated(Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;)V
    .locals 2
    .param p1, "rc"    # Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;

    .line 119
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRefCount;, "Lio/reactivex/internal/operators/flowable/FlowableRefCount<TT;>;"
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->connection:Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;

    if-eqz v0, :cond_1

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->connection:Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;

    .line 122
    iget-object v0, p1, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p1, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 125
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->source:Lio/reactivex/flowables/ConnectableFlowable;

    instance-of v1, v0, Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_1

    .line 126
    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 129
    :cond_1
    monitor-exit p0

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method timeout(Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;)V
    .locals 5
    .param p1, "rc"    # Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;

    .line 133
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRefCount;, "Lio/reactivex/internal/operators/flowable/FlowableRefCount<TT;>;"
    monitor-enter p0

    .line 134
    :try_start_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;->subscriberCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->connection:Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;

    if-ne p1, v0, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->connection:Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;

    .line 136
    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->source:Lio/reactivex/flowables/ConnectableFlowable;

    instance-of v1, v0, Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_0

    .line 138
    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 141
    :cond_0
    monitor-exit p0

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
