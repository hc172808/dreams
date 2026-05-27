.class final Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "ObservableTimeout.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x343e2a2afd6bc01eL


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final itemTimeoutIndicator:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "*>;>;"
        }
    .end annotation
.end field

.field final task:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "*>;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local p2, "itemTimeoutIndicator":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lio/reactivex/ObservableSource<*>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->actual:Lio/reactivex/Observer;

    .line 78
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    .line 79
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 81
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 173
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 174
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 175
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 179
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 5

    .line 144
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->getAndSet(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 149
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 133
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->getAndSet(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 134
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 140
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->get()J

    move-result-wide v0

    .line 91
    .local v0, "idx":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x1

    add-long v6, v0, v4

    invoke-virtual {p0, v0, v1, v6, v7}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->compareAndSet(JJ)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v6}, Lio/reactivex/internal/disposables/SequentialDisposable;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/disposables/Disposable;

    .line 96
    .local v6, "d":Lio/reactivex/disposables/Disposable;
    if-eqz v6, :cond_1

    .line 97
    invoke-interface {v6}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 100
    :cond_1
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v7, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 105
    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    .line 106
    invoke-interface {v7, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The itemTimeoutIndicator returned a null ObservableSource."

    .line 105
    invoke-static {v7, v8}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/ObservableSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v7

    .line 114
    .local v2, "itemTimeoutObservableSource":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<*>;"
    nop

    .line 116
    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;

    add-long/2addr v4, v0

    invoke-direct {v3, v4, v5, p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;-><init>(JLio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;)V

    .line 117
    .local v3, "consumer":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v4, v3}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    invoke-interface {v2, v3}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 120
    :cond_2
    return-void

    .line 108
    .end local v2    # "itemTimeoutObservableSource":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<*>;"
    .end local v3    # "consumer":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;
    :catchall_0
    move-exception v4

    .line 109
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 110
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/disposables/Disposable;

    invoke-interface {v5}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 111
    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->getAndSet(J)J

    .line 112
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, v4}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 113
    return-void

    .line 92
    .end local v4    # "ex":Ljava/lang/Throwable;
    .end local v6    # "d":Lio/reactivex/disposables/Disposable;
    :cond_3
    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 85
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 86
    return-void
.end method

.method public onTimeout(J)V
    .locals 2
    .param p1, "idx"    # J

    .line 153
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 156
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->actual:Lio/reactivex/Observer;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onTimeoutError(JLjava/lang/Throwable;)V
    .locals 2
    .param p1, "idx"    # J
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 162
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p3}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {p3}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 169
    :goto_0
    return-void
.end method

.method startFirstTimeout(Lio/reactivex/ObservableSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "*>;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver<TT;>;"
    .local p1, "firstTimeoutIndicator":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<*>;"
    if-eqz p1, :cond_0

    .line 124
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;-><init>(JLio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;)V

    .line 125
    .local v0, "consumer":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-interface {p1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 129
    .end local v0    # "consumer":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;
    :cond_0
    return-void
.end method
