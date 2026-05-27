.class final Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
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
    name = "TimeoutFallbackObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6833286fc4dbe315L


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field fallback:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final index:Ljava/util/concurrent/atomic/AtomicLong;

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
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Lio/reactivex/ObservableSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "*>;>;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 203
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local p2, "itemTimeoutIndicator":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lio/reactivex/ObservableSource<*>;>;"
    .local p3, "fallback":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 204
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->actual:Lio/reactivex/Observer;

    .line 205
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    .line 206
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 207
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->fallback:Lio/reactivex/ObservableSource;

    .line 208
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    .line 209
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 210
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 309
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 310
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 311
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 312
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 316
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 5

    .line 275
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 278
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 280
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 282
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 262
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 265
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 267
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    goto :goto_0

    .line 269
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 271
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

    .line 219
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 220
    .local v0, "idx":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x1

    add-long v7, v0, v5

    invoke-virtual {v4, v0, v1, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v4}, Lio/reactivex/internal/disposables/SequentialDisposable;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/disposables/Disposable;

    .line 225
    .local v4, "d":Lio/reactivex/disposables/Disposable;
    if-eqz v4, :cond_1

    .line 226
    invoke-interface {v4}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 229
    :cond_1
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v7, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 234
    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    .line 235
    invoke-interface {v7, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The itemTimeoutIndicator returned a null ObservableSource."

    .line 234
    invoke-static {v7, v8}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/ObservableSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v7

    .line 243
    .local v2, "itemTimeoutObservableSource":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<*>;"
    nop

    .line 245
    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;

    add-long/2addr v5, v0

    invoke-direct {v3, v5, v6, p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;-><init>(JLio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;)V

    .line 246
    .local v3, "consumer":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v5, v3}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    invoke-interface {v2, v3}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 249
    :cond_2
    return-void

    .line 237
    .end local v2    # "itemTimeoutObservableSource":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<*>;"
    .end local v3    # "consumer":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;
    :catchall_0
    move-exception v5

    .line 238
    .local v5, "ex":Ljava/lang/Throwable;
    invoke-static {v5}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 239
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/disposables/Disposable;

    invoke-interface {v6}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 240
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    .line 241
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, v5}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 242
    return-void

    .line 221
    .end local v4    # "d":Lio/reactivex/disposables/Disposable;
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 214
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 215
    return-void
.end method

.method public onTimeout(J)V
    .locals 3
    .param p1, "idx"    # J

    .line 286
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 289
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->fallback:Lio/reactivex/ObservableSource;

    .line 290
    .local v0, "f":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TT;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->fallback:Lio/reactivex/ObservableSource;

    .line 292
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->actual:Lio/reactivex/Observer;

    invoke-direct {v1, v2, p0}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;-><init>(Lio/reactivex/Observer;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 294
    .end local v0    # "f":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TT;>;"
    :cond_0
    return-void
.end method

.method public onTimeoutError(JLjava/lang/Throwable;)V
    .locals 3
    .param p1, "idx"    # J
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 298
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 301
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p3}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-static {p3}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 305
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

    .line 252
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver<TT;>;"
    .local p1, "firstTimeoutIndicator":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<*>;"
    if-eqz p1, :cond_0

    .line 253
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;-><init>(JLio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;)V

    .line 254
    .local v0, "consumer":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-interface {p1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 258
    .end local v0    # "consumer":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;
    :cond_0
    return-void
.end method
