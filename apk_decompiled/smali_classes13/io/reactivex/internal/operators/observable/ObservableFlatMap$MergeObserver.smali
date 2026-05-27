.class final Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableFlatMap.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableFlatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final CANCELLED:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "**>;"
        }
    .end annotation
.end field

.field static final EMPTY:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "**>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x1d634c9cafb5cc5aL


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final bufferSize:I

.field volatile cancelled:Z

.field final delayErrors:Z

.field volatile done:Z

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field lastId:J

.field lastIndex:I

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final maxConcurrency:I

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "**>;>;"
        }
    .end annotation
.end field

.field volatile queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TU;>;"
        }
    .end annotation
.end field

.field s:Lio/reactivex/disposables/Disposable;

.field sources:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/reactivex/ObservableSource<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field uniqueId:J

.field wip:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    sput-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 80
    new-array v0, v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->CANCELLED:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    return-void
.end method

.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;ZII)V
    .locals 2
    .param p3, "delayErrors"    # Z
    .param p4, "maxConcurrency"    # I
    .param p5, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lio/reactivex/ObservableSource<+TU;>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 72
    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 94
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->actual:Lio/reactivex/Observer;

    .line 95
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->mapper:Lio/reactivex/functions/Function;

    .line 96
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->delayErrors:Z

    .line 97
    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    .line 98
    iput p5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->bufferSize:I

    .line 99
    const v0, 0x7fffffff

    if-eq p4, v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p4}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->sources:Ljava/util/Queue;

    .line 102
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 103
    return-void
.end method


# virtual methods
.method addInner(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "TT;TU;>;)Z"
        }
    .end annotation

    .line 174
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<TT;TU;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 175
    .local v0, "a":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->CANCELLED:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 176
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->dispose()V

    .line 177
    return v2

    .line 179
    :cond_0
    array-length v1, v0

    .line 180
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 181
    .local v3, "b":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    aput-object p1, v3, v1

    .line 183
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    const/4 v2, 0x1

    return v2

    .line 186
    .end local v0    # "a":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    :cond_1
    goto :goto_0
.end method

.method checkTerminate()Z
    .locals 3

    .line 498
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 499
    return v1

    .line 501
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 502
    .local v0, "e":Ljava/lang/Throwable;
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->delayErrors:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 503
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->disposeAll()Z

    .line 504
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 505
    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v2, :cond_1

    .line 506
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 508
    :cond_1
    return v1

    .line 510
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public dispose()V
    .locals 2

    .line 309
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->cancelled:Z

    if-nez v0, :cond_0

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->cancelled:Z

    .line 311
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->disposeAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 313
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_0

    .line 314
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 318
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method disposeAll()Z
    .locals 4

    .line 514
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 515
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 516
    .local v0, "a":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->CANCELLED:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 517
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 518
    if-eq v0, v1, :cond_1

    .line 519
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 520
    .local v3, "inner":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    invoke-virtual {v3}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->dispose()V

    .line 519
    .end local v3    # "inner":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 525
    :cond_1
    return v2
.end method

.method drain()V
    .locals 1

    .line 326
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drainLoop()V

    .line 329
    :cond_0
    return-void
.end method

.method drainLoop()V
    .locals 19

    .line 332
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    move-object/from16 v1, p0

    iget-object v2, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->actual:Lio/reactivex/Observer;

    .line 333
    .local v2, "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    const/4 v0, 0x1

    move v3, v0

    .line 335
    .local v3, "missed":I
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    return-void

    .line 338
    :cond_1
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 340
    .local v0, "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    if-eqz v0, :cond_5

    .line 344
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 345
    return-void

    .line 348
    :cond_2
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 350
    .local v4, "o":Ljava/lang/Object;, "TU;"
    if-nez v4, :cond_4

    .line 351
    nop

    .line 356
    if-nez v4, :cond_3

    .line 357
    goto :goto_2

    .line 359
    .end local v4    # "o":Ljava/lang/Object;, "TU;"
    :cond_3
    goto :goto_1

    .line 354
    .restart local v4    # "o":Ljava/lang/Object;, "TU;"
    :cond_4
    invoke-interface {v2, v4}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 362
    .end local v4    # "o":Ljava/lang/Object;, "TU;"
    :cond_5
    :goto_2
    iget-boolean v4, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    .line 363
    .local v4, "d":Z
    iget-object v5, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 364
    .end local v0    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .local v5, "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 365
    .local v6, "inner":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    array-length v7, v6

    .line 367
    .local v7, "n":I
    const/4 v8, 0x0

    .line 368
    .local v8, "nSources":I
    iget v0, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    const v9, 0x7fffffff

    if-eq v0, v9, :cond_6

    .line 369
    monitor-enter p0

    .line 370
    :try_start_0
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->sources:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    move v8, v0

    .line 371
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 374
    :cond_6
    :goto_3
    if-eqz v4, :cond_a

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    if-nez v7, :cond_a

    if-nez v8, :cond_a

    .line 375
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 376
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v9, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v9, :cond_9

    .line 377
    if-nez v0, :cond_8

    .line 378
    invoke-interface {v2}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_4

    .line 380
    :cond_8
    invoke-interface {v2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 383
    :cond_9
    :goto_4
    return-void

    .line 386
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_a
    const/4 v0, 0x0

    .line 387
    .local v0, "innerCompleted":Z
    if-eqz v7, :cond_1c

    .line 388
    iget-wide v10, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastId:J

    .line 389
    .local v10, "startId":J
    iget v12, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastIndex:I

    .line 391
    .local v12, "index":I
    if-le v7, v12, :cond_c

    aget-object v13, v6, v12

    iget-wide v13, v13, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->id:J

    cmp-long v15, v13, v10

    if-eqz v15, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_8

    .line 392
    :cond_c
    :goto_5
    if-gt v7, v12, :cond_d

    .line 393
    const/4 v12, 0x0

    .line 395
    :cond_d
    move v13, v12

    .line 396
    .local v13, "j":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    if-ge v14, v7, :cond_10

    .line 397
    aget-object v15, v6, v13

    move/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4    # "d":Z
    .end local v5    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .local v16, "d":Z
    .local v17, "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    iget-wide v4, v15, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->id:J

    cmp-long v15, v4, v10

    if-nez v15, :cond_e

    .line 398
    goto :goto_7

    .line 400
    :cond_e
    add-int/lit8 v13, v13, 0x1

    .line 401
    if-ne v13, v7, :cond_f

    .line 402
    const/4 v4, 0x0

    move v13, v4

    .line 396
    :cond_f
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v16

    move-object/from16 v5, v17

    goto :goto_6

    .end local v16    # "d":Z
    .end local v17    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .restart local v4    # "d":Z
    .restart local v5    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    :cond_10
    move/from16 v16, v4

    move-object/from16 v17, v5

    .line 405
    .end local v4    # "d":Z
    .end local v5    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .end local v14    # "i":I
    .restart local v16    # "d":Z
    .restart local v17    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    :goto_7
    move v12, v13

    .line 406
    iput v13, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastIndex:I

    .line 407
    aget-object v4, v6, v13

    iget-wide v4, v4, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->id:J

    iput-wide v4, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastId:J

    .line 410
    .end local v13    # "j":I
    :goto_8
    move v4, v12

    .line 412
    .local v4, "j":I
    const/4 v5, 0x0

    move v13, v5

    move v5, v4

    move v4, v0

    .end local v0    # "innerCompleted":Z
    .local v4, "innerCompleted":Z
    .local v5, "j":I
    .local v13, "i":I
    :goto_9
    if-ge v13, v7, :cond_1b

    .line 413
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 414
    return-void

    .line 417
    :cond_11
    aget-object v14, v6, v5

    .line 420
    .local v14, "is":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<TT;TU;>;"
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 421
    return-void

    .line 423
    :cond_12
    iget-object v15, v14, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 424
    .local v15, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    if-nez v15, :cond_13

    .line 425
    goto :goto_b

    .line 430
    :cond_13
    :try_start_1
    invoke-interface {v15}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 442
    .local v0, "o":Ljava/lang/Object;, "TU;"
    nop

    .line 443
    if-nez v0, :cond_18

    .line 444
    nop

    .line 453
    if-nez v0, :cond_17

    .line 454
    nop

    .line 457
    .end local v0    # "o":Ljava/lang/Object;, "TU;"
    .end local v15    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    :goto_b
    iget-boolean v0, v14, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->done:Z

    .line 458
    .local v0, "innerDone":Z
    iget-object v15, v14, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 459
    .local v15, "innerQueue":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    if-eqz v0, :cond_16

    if-eqz v15, :cond_14

    invoke-interface {v15}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_16

    .line 460
    :cond_14
    invoke-virtual {v1, v14}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->removeInner(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 462
    return-void

    .line 464
    :cond_15
    const/4 v4, 0x1

    .line 467
    :cond_16
    add-int/lit8 v5, v5, 0x1

    .line 468
    if-ne v5, v7, :cond_1a

    .line 469
    const/4 v5, 0x0

    goto :goto_c

    .line 456
    .end local v0    # "innerDone":Z
    .end local v15    # "innerQueue":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    :cond_17
    goto :goto_a

    .line 447
    .local v0, "o":Ljava/lang/Object;, "TU;"
    .local v15, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    :cond_18
    invoke-interface {v2, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 450
    return-void

    .line 431
    .end local v0    # "o":Ljava/lang/Object;, "TU;"
    :catchall_1
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    .line 432
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 433
    invoke-virtual {v14}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->dispose()V

    .line 434
    iget-object v9, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v9, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 435
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 436
    return-void

    .line 438
    :cond_19
    invoke-virtual {v1, v14}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->removeInner(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V

    .line 439
    const/4 v4, 0x1

    .line 440
    add-int/lit8 v13, v13, 0x1

    .line 441
    nop

    .line 412
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v14    # "is":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<TT;TU;>;"
    .end local v15    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    :cond_1a
    :goto_c
    add-int/lit8 v13, v13, 0x1

    const v9, 0x7fffffff

    goto :goto_9

    .line 472
    .end local v13    # "i":I
    :cond_1b
    iput v5, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastIndex:I

    .line 473
    aget-object v0, v6, v5

    iget-wide v13, v0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->id:J

    iput-wide v13, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastId:J

    goto :goto_d

    .line 387
    .end local v10    # "startId":J
    .end local v12    # "index":I
    .end local v16    # "d":Z
    .end local v17    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .local v0, "innerCompleted":Z
    .local v4, "d":Z
    .local v5, "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    :cond_1c
    move/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4    # "d":Z
    .end local v5    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .restart local v16    # "d":Z
    .restart local v17    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    move v4, v0

    .line 476
    .end local v0    # "innerCompleted":Z
    .local v4, "innerCompleted":Z
    :goto_d
    if-eqz v4, :cond_1e

    .line 477
    iget v0, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    const v5, 0x7fffffff

    if-eq v0, v5, :cond_0

    .line 479
    monitor-enter p0

    .line 480
    :try_start_2
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->sources:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    .line 481
    .local v0, "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TU;>;"
    if-nez v0, :cond_1d

    .line 482
    iget v5, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    .line 483
    monitor-exit p0

    goto/16 :goto_0

    .line 485
    :cond_1d
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 486
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->subscribeInner(Lio/reactivex/ObservableSource;)V

    .line 487
    .end local v0    # "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TU;>;"
    goto/16 :goto_0

    .line 485
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 490
    :cond_1e
    neg-int v0, v3

    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->addAndGet(I)I

    move-result v3

    .line 491
    if-nez v3, :cond_1f

    .line 492
    nop

    .line 495
    .end local v4    # "innerCompleted":Z
    .end local v6    # "inner":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    .end local v7    # "n":I
    .end local v8    # "nSources":I
    .end local v16    # "d":Z
    .end local v17    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    return-void

    .line 494
    :cond_1f
    goto/16 :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    .line 322
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 300
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    if-eqz v0, :cond_0

    .line 301
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    .line 304
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    .line 305
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 286
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 288
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    .line 292
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    goto :goto_0

    .line 294
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 296
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    if-eqz v0, :cond_0

    .line 117
    return-void

    .line 121
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null ObservableSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    .local v0, "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TU;>;"
    nop

    .line 129
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 130
    monitor-enter p0

    .line 131
    :try_start_1
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    if-ne v1, v2, :cond_1

    .line 132
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->sources:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 133
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    .line 136
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 139
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->subscribeInner(Lio/reactivex/ObservableSource;)V

    .line 140
    return-void

    .line 122
    .end local v0    # "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TU;>;"
    :catchall_1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 124
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 125
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->onError(Ljava/lang/Throwable;)V

    .line 126
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 107
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 111
    :cond_0
    return-void
.end method

.method removeInner(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 191
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<TT;TU;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 192
    .local v0, "a":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    array-length v1, v0

    .line 193
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    const/4 v2, -0x1

    .line 197
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 198
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 199
    move v2, v3

    .line 200
    goto :goto_2

    .line 197
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 203
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 204
    return-void

    .line 207
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 208
    sget-object v3, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .local v3, "b":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    goto :goto_3

    .line 210
    .end local v3    # "b":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 211
    .local v4, "b":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 214
    .end local v4    # "b":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    .restart local v3    # "b":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 215
    return-void

    .line 217
    .end local v0    # "a":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    :cond_5
    goto :goto_0
.end method

.method subscribeInner(Lio/reactivex/ObservableSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "+TU;>;)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    .local p1, "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TU;>;"
    :goto_0
    instance-of v0, p1, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_2

    .line 146
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->tryEmitScalar(Ljava/util/concurrent/Callable;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "empty":Z
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->sources:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    move-object p1, v1

    .line 150
    if-nez p1, :cond_0

    .line 151
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    .line 152
    const/4 v0, 0x1

    .line 154
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    .line 157
    goto :goto_1

    .line 159
    .end local v0    # "empty":Z
    :cond_1
    goto :goto_0

    .line 154
    .restart local v0    # "empty":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 163
    .end local v0    # "empty":Z
    :cond_2
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->uniqueId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->uniqueId:J

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;J)V

    .line 164
    .local v0, "inner":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<TT;TU;>;"
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->addInner(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    invoke-interface {p1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 170
    .end local v0    # "inner":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<TT;TU;>;"
    :cond_3
    :goto_1
    return-void
.end method

.method tryEmit(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 265
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    .local p1, "value":Ljava/lang/Object;, "TU;"
    .local p2, "inner":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<TT;TU;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    .line 268
    return-void

    .line 271
    :cond_0
    iget-object v0, p2, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 272
    .local v0, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    if-nez v0, :cond_1

    .line 273
    new-instance v1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->bufferSize:I

    invoke-direct {v1, v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    move-object v0, v1

    .line 274
    iput-object v0, p2, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 276
    :cond_1
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    return-void

    .line 281
    .end local v0    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drainLoop()V

    .line 282
    return-void
.end method

.method tryEmitScalar(Ljava/util/concurrent/Callable;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;)Z"
        }
    .end annotation

    .line 223
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    .local p1, "value":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TU;>;"
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .local v1, "u":Ljava/lang/Object;, "TU;"
    nop

    .line 231
    if-nez v1, :cond_0

    .line 232
    return v0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->get()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0, v3, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_5

    .line 239
    return v0

    .line 242
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 243
    .local v2, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    if-nez v2, :cond_3

    .line 244
    iget v4, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_2

    .line 245
    new-instance v4, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->bufferSize:I

    invoke-direct {v4, v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    move-object v2, v4

    goto :goto_0

    .line 247
    :cond_2
    new-instance v4, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    invoke-direct {v4, v5}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    move-object v2, v4

    .line 249
    :goto_0
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 252
    :cond_3
    invoke-interface {v2, v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 253
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Scalar queue full?!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->onError(Ljava/lang/Throwable;)V

    .line 254
    return v0

    .line 256
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->getAndIncrement()I

    move-result v4

    if-eqz v4, :cond_5

    .line 257
    return v3

    .line 260
    .end local v2    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drainLoop()V

    .line 261
    return v0

    .line 224
    .end local v1    # "u":Ljava/lang/Object;, "TU;"
    :catchall_0
    move-exception v1

    .line 225
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 226
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2, v1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 227
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    .line 228
    return v0
.end method
