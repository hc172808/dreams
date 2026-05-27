.class final Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableCache.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final CANCELLED:J = -0x8000000000000000L

.field private static final serialVersionUID:J = -0x237e491daced6e1dL


# instance fields
.field final child:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field currentBuffer:[Ljava/lang/Object;

.field currentIndexInBuffer:I

.field emitted:J

.field index:I

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState<",
            "TT;>;)V"
        }
    .end annotation

    .line 282
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    .local p1, "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "state":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 283
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->child:Lorg/reactivestreams/Subscriber;

    .line 284
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    .line 285
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 286
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .line 297
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->removeChild(Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;)V

    .line 300
    :cond_0
    return-void
.end method

.method public replay()V
    .locals 18

    .line 306
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    return-void

    .line 310
    :cond_0
    const/4 v1, 0x1

    .line 311
    .local v1, "missed":I
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->child:Lorg/reactivestreams/Subscriber;

    .line 312
    .local v2, "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 313
    .local v3, "rq":Ljava/util/concurrent/atomic/AtomicLong;
    iget-wide v4, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->emitted:J

    .line 317
    .local v4, "e":J
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 319
    .local v6, "r":J
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    .line 320
    return-void

    .line 325
    :cond_1
    iget-object v10, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-virtual {v10}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->size()I

    move-result v10

    .line 326
    .local v10, "s":I
    if-eqz v10, :cond_a

    .line 327
    iget-object v11, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->currentBuffer:[Ljava/lang/Object;

    .line 330
    .local v11, "b":[Ljava/lang/Object;
    if-nez v11, :cond_2

    .line 331
    iget-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-virtual {v12}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->head()[Ljava/lang/Object;

    move-result-object v11

    .line 332
    iput-object v11, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->currentBuffer:[Ljava/lang/Object;

    .line 334
    :cond_2
    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    .line 335
    .local v12, "n":I
    iget v13, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->index:I

    .line 336
    .local v13, "j":I
    iget v14, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->currentIndexInBuffer:I

    .line 338
    .local v14, "k":I
    :goto_1
    if-ge v13, v10, :cond_6

    cmp-long v15, v4, v6

    if-eqz v15, :cond_6

    .line 339
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v15

    cmp-long v17, v15, v8

    if-nez v17, :cond_3

    .line 340
    return-void

    .line 342
    :cond_3
    if-ne v14, v12, :cond_4

    .line 343
    aget-object v15, v11, v12

    check-cast v15, [Ljava/lang/Object;

    move-object v11, v15

    check-cast v11, [Ljava/lang/Object;

    .line 344
    const/4 v14, 0x0

    .line 346
    :cond_4
    aget-object v15, v11, v14

    .line 348
    .local v15, "o":Ljava/lang/Object;
    invoke-static {v15, v2}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 349
    return-void

    .line 352
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 353
    add-int/lit8 v13, v13, 0x1

    .line 354
    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    .line 355
    .end local v15    # "o":Ljava/lang/Object;
    goto :goto_1

    .line 357
    :cond_6
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v15

    cmp-long v17, v15, v8

    if-nez v17, :cond_7

    .line 358
    return-void

    .line 361
    :cond_7
    cmp-long v8, v6, v4

    if-nez v8, :cond_9

    .line 362
    aget-object v8, v11, v14

    .line 363
    .local v8, "o":Ljava/lang/Object;
    invoke-static {v8}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 364
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 365
    return-void

    .line 367
    :cond_8
    invoke-static {v8}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 368
    invoke-static {v8}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    invoke-interface {v2, v9}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 369
    return-void

    .line 373
    .end local v8    # "o":Ljava/lang/Object;
    :cond_9
    iput v13, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->index:I

    .line 374
    iput v14, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->currentIndexInBuffer:I

    .line 375
    iput-object v11, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->currentBuffer:[Ljava/lang/Object;

    .line 378
    .end local v11    # "b":[Ljava/lang/Object;
    .end local v12    # "n":I
    .end local v13    # "j":I
    .end local v14    # "k":I
    :cond_a
    iput-wide v4, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->emitted:J

    .line 379
    neg-int v8, v1

    invoke-virtual {v0, v8}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->addAndGet(I)I

    move-result v1

    .line 380
    if-nez v1, :cond_b

    .line 381
    nop

    .line 384
    .end local v6    # "r":J
    .end local v10    # "s":I
    return-void

    .line 383
    :cond_b
    goto/16 :goto_0
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 289
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->addCancel(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 291
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->replay()V

    .line 293
    :cond_0
    return-void
.end method
