.class final Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;
.super Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;
.source "ParallelRunOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelRunOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunOnConditionalSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xeeb976b788f368aL


# instance fields
.field final actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V
    .locals 0
    .param p2, "prefetch"    # I
    .param p4, "worker"    # Lio/reactivex/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;I",
            "Lio/reactivex/internal/queue/SpscArrayQueue<",
            "TT;>;",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .line 334
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber<TT;>;"
    .local p1, "actual":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TT;>;"
    .local p3, "queue":Lio/reactivex/internal/queue/SpscArrayQueue;, "Lio/reactivex/internal/queue/SpscArrayQueue<TT;>;"
    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;-><init>(ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V

    .line 335
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 336
    return-void
.end method


# virtual methods
.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 340
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 343
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v0, p0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 345
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 347
    :cond_0
    return-void
.end method

.method public run()V
    .locals 17

    .line 351
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber<TT;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 352
    .local v1, "missed":I
    iget v2, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->consumed:I

    .line 353
    .local v2, "c":I
    iget-object v3, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->queue:Lio/reactivex/internal/queue/SpscArrayQueue;

    .line 354
    .local v3, "q":Lio/reactivex/internal/queue/SpscArrayQueue;, "Lio/reactivex/internal/queue/SpscArrayQueue<TT;>;"
    iget-object v4, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 355
    .local v4, "a":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TT;>;"
    iget v5, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->limit:I

    .line 359
    .local v5, "lim":I
    :goto_0
    iget-object v6, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 360
    .local v6, "r":J
    const-wide/16 v8, 0x0

    .line 362
    .local v8, "e":J
    :goto_1
    cmp-long v10, v8, v6

    if-eqz v10, :cond_7

    .line 363
    iget-boolean v10, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->cancelled:Z

    if-eqz v10, :cond_0

    .line 364
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    .line 365
    return-void

    .line 368
    :cond_0
    iget-boolean v10, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->done:Z

    .line 370
    .local v10, "d":Z
    if-eqz v10, :cond_1

    .line 371
    iget-object v11, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->error:Ljava/lang/Throwable;

    .line 372
    .local v11, "ex":Ljava/lang/Throwable;
    if-eqz v11, :cond_1

    .line 373
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    .line 375
    invoke-interface {v4, v11}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 377
    iget-object v12, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v12}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 378
    return-void

    .line 382
    .end local v11    # "ex":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v11

    .line 384
    .local v11, "v":Ljava/lang/Object;, "TT;"
    if-nez v11, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 386
    .local v12, "empty":Z
    :goto_2
    if-eqz v10, :cond_3

    if-eqz v12, :cond_3

    .line 387
    invoke-interface {v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 389
    iget-object v13, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v13}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 390
    return-void

    .line 393
    :cond_3
    if-eqz v12, :cond_4

    .line 394
    goto :goto_4

    .line 397
    :cond_4
    invoke-interface {v4, v11}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 398
    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    .line 401
    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v13, v2

    .line 402
    .local v13, "p":I
    if-ne v13, v5, :cond_6

    .line 403
    const/4 v2, 0x0

    .line 404
    iget-object v14, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    move-wide v15, v8

    .end local v8    # "e":J
    .local v15, "e":J
    int-to-long v8, v13

    invoke-interface {v14, v8, v9}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_3

    .line 402
    .end local v15    # "e":J
    .restart local v8    # "e":J
    :cond_6
    move-wide v15, v8

    .line 406
    .end local v8    # "e":J
    .end local v10    # "d":Z
    .end local v11    # "v":Ljava/lang/Object;, "TT;"
    .end local v12    # "empty":Z
    .end local v13    # "p":I
    .restart local v15    # "e":J
    :goto_3
    move-wide v8, v15

    goto :goto_1

    .line 408
    .end local v15    # "e":J
    .restart local v8    # "e":J
    :cond_7
    :goto_4
    cmp-long v10, v8, v6

    if-nez v10, :cond_a

    .line 409
    iget-boolean v10, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->cancelled:Z

    if-eqz v10, :cond_8

    .line 410
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    .line 411
    return-void

    .line 414
    :cond_8
    iget-boolean v10, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->done:Z

    if-eqz v10, :cond_a

    .line 415
    iget-object v10, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->error:Ljava/lang/Throwable;

    .line 416
    .local v10, "ex":Ljava/lang/Throwable;
    if-eqz v10, :cond_9

    .line 417
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    .line 419
    invoke-interface {v4, v10}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 421
    iget-object v11, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v11}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 422
    return-void

    .line 424
    :cond_9
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 425
    invoke-interface {v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 427
    iget-object v11, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v11}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 428
    return-void

    .line 433
    .end local v10    # "ex":Ljava/lang/Throwable;
    :cond_a
    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_b

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v12, v6, v10

    if-eqz v12, :cond_b

    .line 434
    iget-object v10, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v11, v8

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 437
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->get()I

    move-result v10

    .line 438
    .local v10, "w":I
    if-ne v10, v1, :cond_c

    .line 439
    iput v2, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->consumed:I

    .line 440
    neg-int v11, v1

    invoke-virtual {v0, v11}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->addAndGet(I)I

    move-result v1

    .line 441
    if-nez v1, :cond_d

    .line 442
    nop

    .line 448
    .end local v6    # "r":J
    .end local v8    # "e":J
    .end local v10    # "w":I
    return-void

    .line 445
    .restart local v6    # "r":J
    .restart local v8    # "e":J
    .restart local v10    # "w":I
    :cond_c
    move v1, v10

    .line 447
    .end local v6    # "r":J
    .end local v8    # "e":J
    .end local v10    # "w":I
    :cond_d
    goto/16 :goto_0
.end method
