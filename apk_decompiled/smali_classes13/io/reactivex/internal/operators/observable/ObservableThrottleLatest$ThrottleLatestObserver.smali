.class final Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableThrottleLatest.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableThrottleLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThrottleLatestObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7323c2cdbcdaca16L


# instance fields
.field volatile cancelled:Z

.field volatile done:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final emitLast:Z

.field error:Ljava/lang/Throwable;

.field final latest:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field final timeout:J

.field volatile timerFired:Z

.field timerRunning:Z

.field final unit:Ljava/util/concurrent/TimeUnit;

.field upstream:Lio/reactivex/disposables/Disposable;

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;Z)V
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "worker"    # Lio/reactivex/Scheduler$Worker;
    .param p6, "emitLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler$Worker;",
            "Z)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;, "Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver<TT;>;"
    .local p1, "downstream":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 93
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->downstream:Lio/reactivex/Observer;

    .line 94
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timeout:J

    .line 95
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 96
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->worker:Lio/reactivex/Scheduler$Worker;

    .line 97
    iput-boolean p6, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->emitLast:Z

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->latest:Ljava/util/concurrent/atomic/AtomicReference;

    .line 99
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 130
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;, "Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->cancelled:Z

    .line 131
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 133
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->latest:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 136
    :cond_0
    return-void
.end method

.method drain()V
    .locals 10

    .line 150
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;, "Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x1

    .line 156
    .local v0, "missed":I
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->latest:Ljava/util/concurrent/atomic/AtomicReference;

    .line 157
    .local v1, "latest":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->downstream:Lio/reactivex/Observer;

    .line 162
    .local v2, "downstream":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->cancelled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 163
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 164
    return-void

    .line 167
    :cond_2
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->done:Z

    .line 169
    .local v3, "d":Z
    if-eqz v3, :cond_3

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->error:Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    .line 170
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 171
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->error:Ljava/lang/Throwable;

    invoke-interface {v2, v4}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 172
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v4}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 173
    return-void

    .line 176
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 177
    .local v5, "v":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 179
    .local v8, "empty":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 180
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 181
    .end local v5    # "v":Ljava/lang/Object;, "TT;"
    .local v4, "v":Ljava/lang/Object;, "TT;"
    if-nez v8, :cond_5

    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->emitLast:Z

    if-eqz v5, :cond_5

    .line 182
    invoke-interface {v2, v4}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 184
    :cond_5
    invoke-interface {v2}, Lio/reactivex/Observer;->onComplete()V

    .line 185
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v5}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 186
    return-void

    .line 189
    .end local v4    # "v":Ljava/lang/Object;, "TT;"
    .restart local v5    # "v":Ljava/lang/Object;, "TT;"
    :cond_6
    if-eqz v8, :cond_7

    .line 190
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timerFired:Z

    if-eqz v4, :cond_8

    .line 191
    iput-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timerRunning:Z

    .line 192
    iput-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timerFired:Z

    goto :goto_2

    .line 197
    :cond_7
    iget-boolean v9, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timerRunning:Z

    if-eqz v9, :cond_9

    iget-boolean v9, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timerFired:Z

    if-eqz v9, :cond_8

    goto :goto_3

    .line 209
    .end local v3    # "d":Z
    .end local v5    # "v":Ljava/lang/Object;, "TT;"
    .end local v8    # "empty":Z
    :cond_8
    :goto_2
    neg-int v3, v0

    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->addAndGet(I)I

    move-result v0

    .line 210
    if-nez v0, :cond_1

    .line 211
    nop

    .line 214
    return-void

    .line 198
    .restart local v3    # "d":Z
    .restart local v5    # "v":Ljava/lang/Object;, "TT;"
    .restart local v8    # "empty":Z
    :cond_9
    :goto_3
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 199
    .end local v5    # "v":Ljava/lang/Object;, "TT;"
    .restart local v4    # "v":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, v4}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 201
    iput-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timerFired:Z

    .line 202
    iput-boolean v6, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timerRunning:Z

    .line 203
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->worker:Lio/reactivex/Scheduler$Worker;

    iget-wide v6, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timeout:J

    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p0, v6, v7, v9}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 207
    .end local v3    # "d":Z
    .end local v4    # "v":Ljava/lang/Object;, "TT;"
    .end local v8    # "empty":Z
    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    .line 140
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;, "Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 124
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;, "Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->done:Z

    .line 125
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->drain()V

    .line 126
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 117
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;, "Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->error:Ljava/lang/Throwable;

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->done:Z

    .line 119
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->drain()V

    .line 120
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;, "Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->latest:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->drain()V

    .line 113
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 103
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;, "Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 107
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 145
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;, "Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timerFired:Z

    .line 146
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->drain()V

    .line 147
    return-void
.end method
