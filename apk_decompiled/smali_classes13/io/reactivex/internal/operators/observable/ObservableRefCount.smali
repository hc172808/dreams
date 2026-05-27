.class public final Lio/reactivex/internal/operators/observable/ObservableRefCount;
.super Lio/reactivex/Observable;
.source "ObservableRefCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;,
        Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

.field final n:I

.field final scheduler:Lio/reactivex/Scheduler;

.field final source:Lio/reactivex/observables/ConnectableObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;"
        }
    .end annotation
.end field

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/observables/ConnectableObservable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRefCount;, "Lio/reactivex/internal/operators/observable/ObservableRefCount<TT;>;"
    .local p1, "source":Lio/reactivex/observables/ConnectableObservable;, "Lio/reactivex/observables/ConnectableObservable<TT;>;"
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    move-result-object v6

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/ObservableRefCount;-><init>(Lio/reactivex/observables/ConnectableObservable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lio/reactivex/observables/ConnectableObservable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p2, "n"    # I
    .param p3, "timeout"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lio/reactivex/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRefCount;, "Lio/reactivex/internal/operators/observable/ObservableRefCount<TT;>;"
    .local p1, "source":Lio/reactivex/observables/ConnectableObservable;, "Lio/reactivex/observables/ConnectableObservable<TT;>;"
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 54
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    .line 55
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->n:I

    .line 56
    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->timeout:J

    .line 57
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->unit:Ljava/util/concurrent/TimeUnit;

    .line 58
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->scheduler:Lio/reactivex/Scheduler;

    .line 59
    return-void
.end method


# virtual methods
.method cancel(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V
    .locals 7
    .param p1, "rc"    # Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    .line 94
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRefCount;, "Lio/reactivex/internal/operators/observable/ObservableRefCount<TT;>;"
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    if-nez v0, :cond_0

    .line 96
    monitor-exit p0

    return-void

    .line 98
    :cond_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 99
    .local v0, "c":J
    iput-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    .line 100
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    iget-boolean v4, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->connected:Z

    if-nez v4, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->timeout:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_2

    .line 104
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->timeout(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V

    .line 105
    monitor-exit p0

    return-void

    .line 107
    :cond_2
    new-instance v2, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v2}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    .line 108
    .local v2, "sd":Lio/reactivex/internal/disposables/SequentialDisposable;
    iput-object v2, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    .line 109
    .end local v0    # "c":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->scheduler:Lio/reactivex/Scheduler;

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->timeout:J

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v3, v4, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    .line 112
    return-void

    .line 101
    .end local v2    # "sd":Lio/reactivex/internal/disposables/SequentialDisposable;
    .restart local v0    # "c":J
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    .line 109
    .end local v0    # "c":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRefCount;, "Lio/reactivex/internal/operators/observable/ObservableRefCount<TT;>;"
    .local p1, "s":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    const/4 v0, 0x0

    .line 67
    .local v0, "connect":Z
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    .line 69
    .local v1, "conn":Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;
    if-nez v1, :cond_0

    .line 70
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;-><init>(Lio/reactivex/internal/operators/observable/ObservableRefCount;)V

    move-object v1, v2

    .line 71
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    .line 74
    :cond_0
    iget-wide v2, v1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    .line 75
    .local v2, "c":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-object v4, v1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    if-eqz v4, :cond_1

    .line 76
    iget-object v4, v1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    invoke-interface {v4}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 78
    :cond_1
    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    iput-wide v6, v1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    .line 79
    iget-boolean v6, v1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->connected:Z

    if-nez v6, :cond_2

    add-long/2addr v4, v2

    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->n:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 80
    const/4 v0, 0x1

    .line 81
    const/4 v4, 0x1

    iput-boolean v4, v1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->connected:Z

    .line 83
    .end local v2    # "c":J
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;

    invoke-direct {v3, p1, p0, v1}, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/operators/observable/ObservableRefCount;Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V

    invoke-virtual {v2, v3}, Lio/reactivex/observables/ConnectableObservable;->subscribe(Lio/reactivex/Observer;)V

    .line 87
    if-eqz v0, :cond_3

    .line 88
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    invoke-virtual {v2, v1}, Lio/reactivex/observables/ConnectableObservable;->connect(Lio/reactivex/functions/Consumer;)V

    .line 90
    :cond_3
    return-void

    .line 83
    .end local v1    # "conn":Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method terminated(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V
    .locals 2
    .param p1, "rc"    # Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    .line 115
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRefCount;, "Lio/reactivex/internal/operators/observable/ObservableRefCount<TT;>;"
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    .line 118
    iget-object v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 121
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    instance-of v1, v0, Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_1

    .line 122
    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 125
    :cond_1
    monitor-exit p0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method timeout(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V
    .locals 5
    .param p1, "rc"    # Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    .line 129
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRefCount;, "Lio/reactivex/internal/operators/observable/ObservableRefCount<TT;>;"
    monitor-enter p0

    .line 130
    :try_start_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    if-ne p1, v0, :cond_0

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    .line 132
    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    instance-of v1, v0, Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_0

    .line 134
    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 137
    :cond_0
    monitor-exit p0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
