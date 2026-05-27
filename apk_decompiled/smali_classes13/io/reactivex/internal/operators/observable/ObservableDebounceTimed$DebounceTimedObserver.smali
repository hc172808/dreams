.class final Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;
.super Ljava/lang/Object;
.source "ObservableDebounceTimed.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableDebounceTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DebounceTimedObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field volatile index:J

.field s:Lio/reactivex/disposables/Disposable;

.field final timeout:J

.field timer:Lio/reactivex/disposables/Disposable;

.field final unit:Ljava/util/concurrent/TimeUnit;

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;)V
    .locals 0
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "worker"    # Lio/reactivex/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;, "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->actual:Lio/reactivex/Observer;

    .line 62
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->timeout:J

    .line 63
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 64
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    .line 65
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 131
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;, "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 133
    return-void
.end method

.method emit(JLjava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;)V
    .locals 3
    .param p1, "idx"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 141
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;, "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver<TT;>;"
    .local p3, "t":Ljava/lang/Object;, "TT;"
    .local p4, "emitter":Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;, "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter<TT;>;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->index:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p3}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p4}, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->dispose()V

    .line 145
    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 137
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;, "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 111
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;, "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->done:Z

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->done:Z

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->timer:Lio/reactivex/disposables/Disposable;

    .line 117
    .local v0, "d":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_1

    .line 118
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 121
    :cond_1
    move-object v1, v0

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;

    .line 122
    .local v1, "de":Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;, "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter<TT;>;"
    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->run()V

    .line 125
    :cond_2
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2}, Lio/reactivex/Observer;->onComplete()V

    .line 126
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v2}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 127
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 96
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;, "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->done:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 98
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->timer:Lio/reactivex/disposables/Disposable;

    .line 101
    .local v0, "d":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 104
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->done:Z

    .line 105
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 106
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 107
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;, "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->done:Z

    if-eqz v0, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 81
    .local v0, "idx":J
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->index:J

    .line 83
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->timer:Lio/reactivex/disposables/Disposable;

    .line 84
    .local v2, "d":Lio/reactivex/disposables/Disposable;
    if-eqz v2, :cond_1

    .line 85
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 88
    :cond_1
    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;

    invoke-direct {v3, p1, v0, v1, p0}, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;-><init>(Ljava/lang/Object;JLio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;)V

    .line 89
    .local v3, "de":Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;, "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter<TT;>;"
    iput-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->timer:Lio/reactivex/disposables/Disposable;

    .line 90
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->timeout:J

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v3, v5, v6, v7}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 91
    invoke-virtual {v3, v2}, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->setResource(Lio/reactivex/disposables/Disposable;)V

    .line 92
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 69
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;, "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 73
    :cond_0
    return-void
.end method
