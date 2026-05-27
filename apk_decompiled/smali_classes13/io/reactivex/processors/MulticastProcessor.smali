.class public final Lio/reactivex/processors/MulticastProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "MulticastProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lio/reactivex/annotations/BackpressureSupport;
    value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
.end annotation

.annotation runtime Lio/reactivex/annotations/SchedulerSupport;
    value = "none"
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

.field static final TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;


# instance fields
.field final bufferSize:I

.field consumed:I

.field volatile done:Z

.field volatile error:Ljava/lang/Throwable;

.field fusionMode:I

.field final limit:I

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final refcount:Z

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 158
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    sput-object v1, Lio/reactivex/processors/MulticastProcessor;->EMPTY:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 161
    new-array v0, v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    sput-object v0, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 2
    .param p1, "bufferSize"    # I
    .param p2, "refCount"    # Z

    .line 224
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    .line 225
    const-string v0, "bufferSize"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 226
    iput p1, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    .line 227
    shr-int/lit8 v0, p1, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lio/reactivex/processors/MulticastProcessor;->limit:I

    .line 228
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 229
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/MulticastProcessor;->EMPTY:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 230
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 231
    iput-boolean p2, p0, Lio/reactivex/processors/MulticastProcessor;->refcount:Z

    .line 232
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 233
    return-void
.end method

.method public static create()Lio/reactivex/processors/MulticastProcessor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/MulticastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 172
    new-instance v0, Lio/reactivex/processors/MulticastProcessor;

    invoke-static {}, Lio/reactivex/processors/MulticastProcessor;->bufferSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/processors/MulticastProcessor;-><init>(IZ)V

    return-object v0
.end method

.method public static create(I)Lio/reactivex/processors/MulticastProcessor;
    .locals 2
    .param p0, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/processors/MulticastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 198
    new-instance v0, Lio/reactivex/processors/MulticastProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/processors/MulticastProcessor;-><init>(IZ)V

    return-object v0
.end method

.method public static create(IZ)Lio/reactivex/processors/MulticastProcessor;
    .locals 1
    .param p0, "bufferSize"    # I
    .param p1, "refCount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IZ)",
            "Lio/reactivex/processors/MulticastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 213
    new-instance v0, Lio/reactivex/processors/MulticastProcessor;

    invoke-direct {v0, p0, p1}, Lio/reactivex/processors/MulticastProcessor;-><init>(IZ)V

    return-object v0
.end method

.method public static create(Z)Lio/reactivex/processors/MulticastProcessor;
    .locals 2
    .param p0, "refCount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lio/reactivex/processors/MulticastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 186
    new-instance v0, Lio/reactivex/processors/MulticastProcessor;

    invoke-static {}, Lio/reactivex/processors/MulticastProcessor;->bufferSize()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lio/reactivex/processors/MulticastProcessor;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 389
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    .local p1, "inner":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 390
    .local v0, "a":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    sget-object v1, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 391
    return v2

    .line 393
    :cond_0
    array-length v1, v0

    .line 395
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 396
    .local v3, "b":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    aput-object p1, v3, v1

    .line 398
    iget-object v2, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    const/4 v2, 0x1

    return v2

    .line 401
    .end local v0    # "a":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method drain()V
    .locals 23

    .line 450
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    move-object/from16 v1, p0

    iget-object v0, v1, Lio/reactivex/processors/MulticastProcessor;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    return-void

    .line 454
    :cond_0
    const/4 v0, 0x1

    .line 455
    .local v0, "missed":I
    iget-object v2, v1, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 456
    .local v2, "subs":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;>;"
    iget v3, v1, Lio/reactivex/processors/MulticastProcessor;->consumed:I

    .line 457
    .local v3, "c":I
    iget v4, v1, Lio/reactivex/processors/MulticastProcessor;->limit:I

    .line 458
    .local v4, "lim":I
    iget v5, v1, Lio/reactivex/processors/MulticastProcessor;->fusionMode:I

    move/from16 v22, v3

    move v3, v0

    move/from16 v0, v22

    .line 463
    .local v0, "c":I
    .local v3, "missed":I
    .local v5, "fm":I
    :goto_0
    iget-object v6, v1, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 465
    .local v6, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    if-eqz v6, :cond_14

    .line 466
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 467
    .local v7, "as":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    array-length v8, v7

    .line 469
    .local v8, "n":I
    if-eqz v8, :cond_13

    .line 470
    const-wide/16 v9, -0x1

    .line 472
    .local v9, "r":J
    array-length v11, v7

    const/4 v13, 0x0

    :goto_1
    const-wide/16 v14, 0x0

    if-ge v13, v11, :cond_3

    aget-object v12, v7, v13

    .line 473
    .local v12, "a":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    invoke-virtual {v12}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->get()J

    move-result-wide v17

    .line 474
    .local v17, "ra":J
    cmp-long v19, v17, v14

    if-ltz v19, :cond_2

    .line 475
    const-wide/16 v14, -0x1

    cmp-long v19, v9, v14

    if-nez v19, :cond_1

    .line 476
    iget-wide v14, v12, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->emitted:J

    sub-long v9, v17, v14

    goto :goto_2

    .line 478
    :cond_1
    iget-wide v14, v12, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->emitted:J

    sub-long v14, v17, v14

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 472
    .end local v12    # "a":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .end local v17    # "ra":J
    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    move-wide v10, v9

    move v9, v0

    .line 483
    .end local v0    # "c":I
    .local v9, "c":I
    .local v10, "r":J
    :goto_3
    cmp-long v0, v10, v14

    if-lez v0, :cond_d

    .line 484
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 486
    .local v12, "bs":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    sget-object v0, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    if-ne v12, v0, :cond_4

    .line 487
    invoke-interface {v6}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 488
    return-void

    .line 491
    :cond_4
    if-eq v7, v12, :cond_5

    .line 492
    goto/16 :goto_a

    .line 495
    :cond_5
    iget-boolean v13, v1, Lio/reactivex/processors/MulticastProcessor;->done:Z

    .line 500
    .local v13, "d":Z
    const/4 v14, 0x1

    :try_start_0
    invoke-interface {v6}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    .local v0, "v":Ljava/lang/Object;, "TT;"
    goto :goto_4

    .line 501
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 502
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 503
    iget-object v15, v1, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v15}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 504
    const/4 v13, 0x1

    .line 505
    const/4 v15, 0x0

    .line 506
    .local v15, "v":Ljava/lang/Object;, "TT;"
    iput-object v0, v1, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    .line 507
    iput-boolean v14, v1, Lio/reactivex/processors/MulticastProcessor;->done:Z

    move-object v0, v15

    .line 509
    .end local v15    # "v":Ljava/lang/Object;, "TT;"
    .local v0, "v":Ljava/lang/Object;, "TT;"
    :goto_4
    if-nez v0, :cond_6

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    const/4 v15, 0x0

    .line 511
    .local v15, "empty":Z
    :goto_5
    if-eqz v13, :cond_9

    if-eqz v15, :cond_9

    .line 512
    iget-object v14, v1, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    .line 513
    .local v14, "ex":Ljava/lang/Throwable;
    if-eqz v14, :cond_7

    .line 514
    move/from16 v19, v8

    .end local v8    # "n":I
    .local v19, "n":I
    sget-object v8, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    move-object/from16 v20, v12

    .end local v12    # "bs":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .local v20, "bs":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    array-length v12, v8

    move/from16 v21, v13

    const/4 v13, 0x0

    .end local v13    # "d":Z
    .local v21, "d":Z
    :goto_6
    if-ge v13, v12, :cond_8

    move/from16 v17, v12

    aget-object v12, v8, v13

    .line 515
    .local v12, "inner":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    invoke-virtual {v12, v14}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onError(Ljava/lang/Throwable;)V

    .line 514
    .end local v12    # "inner":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v17

    goto :goto_6

    .line 518
    .end local v19    # "n":I
    .end local v20    # "bs":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .end local v21    # "d":Z
    .restart local v8    # "n":I
    .local v12, "bs":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .restart local v13    # "d":Z
    :cond_7
    move/from16 v19, v8

    move-object/from16 v20, v12

    move/from16 v21, v13

    .end local v8    # "n":I
    .end local v12    # "bs":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .end local v13    # "d":Z
    .restart local v19    # "n":I
    .restart local v20    # "bs":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .restart local v21    # "d":Z
    sget-object v8, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    array-length v12, v8

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v12, :cond_8

    aget-object v16, v8, v13

    .line 519
    .local v16, "inner":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    invoke-virtual/range {v16 .. v16}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onComplete()V

    .line 518
    .end local v16    # "inner":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 522
    :cond_8
    return-void

    .line 511
    .end local v14    # "ex":Ljava/lang/Throwable;
    .end local v19    # "n":I
    .end local v20    # "bs":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .end local v21    # "d":Z
    .restart local v8    # "n":I
    .restart local v12    # "bs":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .restart local v13    # "d":Z
    :cond_9
    move/from16 v19, v8

    move-object/from16 v20, v12

    move/from16 v21, v13

    .line 525
    .end local v8    # "n":I
    .end local v12    # "bs":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .end local v13    # "d":Z
    .restart local v19    # "n":I
    .restart local v20    # "bs":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .restart local v21    # "d":Z
    if-eqz v15, :cond_a

    .line 526
    goto :goto_9

    .line 529
    :cond_a
    array-length v8, v7

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v8, :cond_b

    aget-object v13, v7, v12

    .line 530
    .local v13, "inner":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    invoke-virtual {v13, v0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onNext(Ljava/lang/Object;)V

    .line 529
    .end local v13    # "inner":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 533
    :cond_b
    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    .line 535
    if-eq v5, v14, :cond_c

    .line 536
    add-int/lit8 v9, v9, 0x1

    if-ne v9, v4, :cond_c

    .line 537
    const/4 v9, 0x0

    .line 538
    iget-object v8, v1, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/reactivestreams/Subscription;

    int-to-long v12, v4

    invoke-interface {v8, v12, v13}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 541
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    .end local v15    # "empty":Z
    .end local v20    # "bs":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .end local v21    # "d":Z
    :cond_c
    move/from16 v8, v19

    const-wide/16 v14, 0x0

    goto/16 :goto_3

    .line 483
    .end local v19    # "n":I
    .restart local v8    # "n":I
    :cond_d
    move/from16 v19, v8

    .line 543
    .end local v8    # "n":I
    .restart local v19    # "n":I
    :goto_9
    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-nez v0, :cond_12

    .line 544
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 546
    .local v0, "bs":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    sget-object v8, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    if-ne v0, v8, :cond_e

    .line 547
    invoke-interface {v6}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 548
    return-void

    .line 551
    :cond_e
    if-eq v7, v0, :cond_f

    .line 552
    nop

    .line 463
    .end local v0    # "bs":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .end local v6    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v7    # "as":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .end local v10    # "r":J
    .end local v19    # "n":I
    :goto_a
    move v0, v9

    goto/16 :goto_0

    .line 555
    .restart local v0    # "bs":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .restart local v6    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v7    # "as":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .restart local v10    # "r":J
    .restart local v19    # "n":I
    :cond_f
    iget-boolean v12, v1, Lio/reactivex/processors/MulticastProcessor;->done:Z

    if-eqz v12, :cond_12

    invoke-interface {v6}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 556
    iget-object v12, v1, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    .line 557
    .local v12, "ex":Ljava/lang/Throwable;
    if-eqz v12, :cond_10

    .line 558
    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    array-length v13, v8

    const/4 v14, 0x0

    :goto_b
    if-ge v14, v13, :cond_11

    aget-object v15, v8, v14

    .line 559
    .local v15, "inner":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    invoke-virtual {v15, v12}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onError(Ljava/lang/Throwable;)V

    .line 558
    .end local v15    # "inner":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 562
    :cond_10
    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    array-length v13, v8

    const/4 v14, 0x0

    :goto_c
    if-ge v14, v13, :cond_11

    aget-object v15, v8, v14

    .line 563
    .restart local v15    # "inner":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    invoke-virtual {v15}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onComplete()V

    .line 562
    .end local v15    # "inner":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 566
    :cond_11
    return-void

    .line 572
    .end local v0    # "bs":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .end local v7    # "as":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .end local v10    # "r":J
    .end local v12    # "ex":Ljava/lang/Throwable;
    .end local v19    # "n":I
    :cond_12
    move v0, v9

    goto :goto_d

    .line 469
    .end local v9    # "c":I
    .local v0, "c":I
    .restart local v7    # "as":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .restart local v8    # "n":I
    :cond_13
    move/from16 v19, v8

    .line 572
    .end local v7    # "as":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .end local v8    # "n":I
    :cond_14
    :goto_d
    iget-object v7, v1, Lio/reactivex/processors/MulticastProcessor;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v8, v3

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    .line 573
    if-nez v3, :cond_15

    .line 574
    nop

    .line 577
    .end local v6    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    return-void

    .line 576
    :cond_15
    goto/16 :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 362
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasComplete()Z
    .locals 1

    .line 357
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSubscribers()Z
    .locals 1

    .line 347
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThrowable()Z
    .locals 1

    .line 352
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 312
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 313
    return v1

    .line 315
    :cond_0
    const-string v0, "offer called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    iget v0, p0, Lio/reactivex/processors/MulticastProcessor;->fusionMode:I

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    .line 319
    const/4 v0, 0x1

    return v0

    .line 322
    :cond_1
    return v1
.end method

.method public onComplete()V
    .locals 3

    .line 339
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iput-boolean v2, p0, Lio/reactivex/processors/MulticastProcessor;->done:Z

    .line 341
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    .line 343
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 327
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iput-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    .line 330
    iput-boolean v2, p0, Lio/reactivex/processors/MulticastProcessor;->done:Z

    .line 331
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    goto :goto_0

    .line 333
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 335
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 291
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    iget v0, p0, Lio/reactivex/processors/MulticastProcessor;->fusionMode:I

    if-nez v0, :cond_1

    .line 295
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 298
    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/processors/MulticastProcessor;->onError(Ljava/lang/Throwable;)V

    .line 299
    return-void

    .line 302
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    .line 303
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 4
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 261
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_1

    .line 264
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    .line 266
    .local v0, "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v1

    .line 267
    .local v1, "m":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 268
    iput v1, p0, Lio/reactivex/processors/MulticastProcessor;->fusionMode:I

    .line 269
    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 270
    iput-boolean v2, p0, Lio/reactivex/processors/MulticastProcessor;->done:Z

    .line 271
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    .line 272
    return-void

    .line 274
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 275
    iput v1, p0, Lio/reactivex/processors/MulticastProcessor;->fusionMode:I

    .line 276
    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 278
    iget v2, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 279
    return-void

    .line 283
    .end local v0    # "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    .end local v1    # "m":I
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 285
    iget v0, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 287
    :cond_2
    return-void
.end method

.method remove(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 407
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    .local p1, "inner":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 408
    .local v0, "a":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    array-length v1, v0

    .line 409
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 410
    return-void

    .line 413
    :cond_0
    const/4 v2, -0x1

    .line 414
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 415
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 416
    move v2, v3

    .line 417
    goto :goto_2

    .line 414
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 421
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 422
    goto :goto_3

    .line 425
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 426
    iget-boolean v4, p0, Lio/reactivex/processors/MulticastProcessor;->refcount:Z

    if-eqz v4, :cond_4

    .line 427
    iget-object v4, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-virtual {v4, v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 428
    iget-object v4, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v4}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 429
    iget-object v4, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 430
    goto :goto_3

    .line 433
    :cond_4
    iget-object v3, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lio/reactivex/processors/MulticastProcessor;->EMPTY:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 434
    goto :goto_3

    .line 438
    :cond_5
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 439
    .local v4, "b":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    iget-object v3, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 442
    nop

    .line 446
    .end local v0    # "a":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v4    # "b":[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    :goto_3
    return-void

    .line 445
    :cond_6
    goto :goto_0
.end method

.method public start()V
    .locals 2

    .line 242
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    invoke-static {v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 245
    :cond_0
    return-void
.end method

.method public startUnbounded()V
    .locals 2

    .line 254
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    invoke-static {v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    iget v1, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 257
    :cond_0
    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 367
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/MulticastProcessor;)V

    .line 368
    .local v0, "ms":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 369
    invoke-virtual {p0, v0}, Lio/reactivex/processors/MulticastProcessor;->add(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    invoke-virtual {v0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->get()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 371
    invoke-virtual {p0, v0}, Lio/reactivex/processors/MulticastProcessor;->remove(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)V

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    goto :goto_0

    .line 376
    :cond_1
    iget-object v1, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lio/reactivex/processors/MulticastProcessor;->refcount:Z

    if-nez v1, :cond_3

    .line 377
    :cond_2
    iget-object v1, p0, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    .line 378
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 379
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 380
    return-void

    .line 383
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 385
    :goto_0
    return-void
.end method
