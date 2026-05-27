.class final Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableMergeWithSingle.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeWithObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver$OtherObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final OTHER_STATE_CONSUMED_OR_EMPTY:I = 0x2

.field static final OTHER_STATE_HAS_VALUE:I = 0x1

.field private static final serialVersionUID:J = -0x3fbd8a98db8e76f7L


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field consumed:I

.field emitted:J

.field final error:Lio/reactivex/internal/util/AtomicThrowable;

.field final limit:I

.field volatile mainDone:Z

.field final mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field final otherObserver:Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver$OtherObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver$OtherObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile otherState:I

.field final prefetch:I

.field volatile queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field singleItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 91
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->actual:Lorg/reactivestreams/Subscriber;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver$OtherObserver;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver$OtherObserver;-><init>(Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->otherObserver:Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver$OtherObserver;

    .line 94
    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 96
    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result v0

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->prefetch:I

    .line 97
    shr-int/lit8 v1, v0, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->limit:I

    .line 98
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 167
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->cancelled:Z

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->otherObserver:Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver$OtherObserver;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 170
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 172
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 174
    :cond_0
    return-void
.end method

.method drain()V
    .locals 1

    .line 220
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->drainLoop()V

    .line 223
    :cond_0
    return-void
.end method

.method drainLoop()V
    .locals 20

    .line 226
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->actual:Lorg/reactivestreams/Subscriber;

    .line 227
    .local v1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    const/4 v2, 0x1

    .line 228
    .local v2, "missed":I
    iget-wide v3, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->emitted:J

    .line 229
    .local v3, "e":J
    iget v5, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->consumed:I

    .line 230
    .local v5, "c":I
    iget v6, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->limit:I

    .line 233
    .local v6, "lim":I
    :goto_0
    iget-object v7, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    .line 235
    .local v7, "r":J
    :goto_1
    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    cmp-long v13, v3, v7

    if-eqz v13, :cond_8

    .line 236
    iget-boolean v13, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->cancelled:Z

    if-eqz v13, :cond_0

    .line 237
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 238
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 239
    return-void

    .line 242
    :cond_0
    iget-object v13, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v13}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 243
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 244
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 245
    iget-object v9, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v9}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 246
    return-void

    .line 249
    :cond_1
    iget v13, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->otherState:I

    .line 250
    .local v13, "os":I
    const-wide/16 v14, 0x1

    if-ne v13, v11, :cond_2

    .line 251
    iget-object v9, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 252
    .local v9, "v":Ljava/lang/Object;, "TT;"
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 253
    iput v10, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->otherState:I

    .line 254
    const/4 v10, 0x2

    .line 255
    .end local v13    # "os":I
    .local v10, "os":I
    invoke-interface {v1, v9}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 257
    add-long/2addr v3, v14

    .line 258
    goto :goto_1

    .line 261
    .end local v9    # "v":Ljava/lang/Object;, "TT;"
    .end local v10    # "os":I
    .restart local v13    # "os":I
    :cond_2
    iget-boolean v9, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainDone:Z

    .line 262
    .local v9, "d":Z
    iget-object v11, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 263
    .local v11, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    if-eqz v11, :cond_3

    invoke-interface {v11}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v18

    goto :goto_2

    :cond_3
    move-object/from16 v18, v12

    :goto_2
    move-object/from16 v19, v18

    .line 264
    .local v19, "v":Ljava/lang/Object;, "TT;"
    move-object/from16 v14, v19

    .end local v19    # "v":Ljava/lang/Object;, "TT;"
    .local v14, "v":Ljava/lang/Object;, "TT;"
    if-nez v14, :cond_4

    const/4 v15, 0x1

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    .line 266
    .local v15, "empty":Z
    :goto_3
    if-eqz v9, :cond_5

    if-eqz v15, :cond_5

    if-ne v13, v10, :cond_5

    .line 267
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 268
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 269
    return-void

    .line 272
    :cond_5
    if-eqz v15, :cond_6

    .line 273
    goto :goto_5

    .line 276
    :cond_6
    invoke-interface {v1, v14}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 278
    const-wide/16 v16, 0x1

    add-long v3, v3, v16

    .line 280
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v6, :cond_7

    .line 281
    const/4 v5, 0x0

    .line 282
    iget-object v10, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/reactivestreams/Subscription;

    move-wide/from16 v16, v3

    .end local v3    # "e":J
    .local v16, "e":J
    int-to-long v3, v6

    invoke-interface {v10, v3, v4}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_4

    .line 280
    .end local v16    # "e":J
    .restart local v3    # "e":J
    :cond_7
    move-wide/from16 v16, v3

    .line 284
    .end local v3    # "e":J
    .end local v9    # "d":Z
    .end local v11    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    .end local v13    # "os":I
    .end local v14    # "v":Ljava/lang/Object;, "TT;"
    .end local v15    # "empty":Z
    .restart local v16    # "e":J
    :goto_4
    move-wide/from16 v3, v16

    goto :goto_1

    .line 286
    .end local v16    # "e":J
    .restart local v3    # "e":J
    :cond_8
    :goto_5
    cmp-long v9, v3, v7

    if-nez v9, :cond_d

    .line 287
    iget-boolean v9, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->cancelled:Z

    if-eqz v9, :cond_9

    .line 288
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 289
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 290
    return-void

    .line 293
    :cond_9
    iget-object v9, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v9}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 294
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 295
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 296
    iget-object v9, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v9}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 297
    return-void

    .line 300
    :cond_a
    iget-boolean v9, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainDone:Z

    .line 301
    .restart local v9    # "d":Z
    iget-object v11, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 302
    .restart local v11    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    if-eqz v11, :cond_c

    invoke-interface {v11}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_6

    :cond_b
    const/16 v16, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/16 v16, 0x1

    :goto_7
    move/from16 v13, v16

    .line 304
    .local v13, "empty":Z
    if-eqz v9, :cond_d

    if-eqz v13, :cond_d

    iget v14, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->otherState:I

    if-ne v14, v10, :cond_d

    .line 305
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 306
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 307
    return-void

    .line 311
    .end local v9    # "d":Z
    .end local v11    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    .end local v13    # "empty":Z
    :cond_d
    iput-wide v3, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->emitted:J

    .line 312
    iput v5, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->consumed:I

    .line 313
    neg-int v9, v2

    invoke-virtual {v0, v9}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->addAndGet(I)I

    move-result v2

    .line 314
    if-nez v2, :cond_e

    .line 315
    nop

    .line 318
    .end local v7    # "r":J
    return-void

    .line 317
    :cond_e
    goto/16 :goto_0
.end method

.method getOrCreateQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 212
    .local v0, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    if-nez v0, :cond_0

    .line 213
    new-instance v1, Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result v2

    invoke-direct {v1, v2}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    move-object v0, v1

    .line 214
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 216
    :cond_0
    return-object v0
.end method

.method public onComplete()V
    .locals 1

    .line 155
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainDone:Z

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->drain()V

    .line 157
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 145
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 147
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->drain()V

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 151
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 108
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->emitted:J

    .line 109
    .local v2, "e":J
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    .line 110
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 111
    .local v4, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {v4, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_2

    .line 113
    :cond_1
    :goto_0
    const-wide/16 v5, 0x1

    add-long/2addr v5, v2

    iput-wide v5, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->emitted:J

    .line 114
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v5, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 116
    iget v5, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->consumed:I

    add-int/2addr v5, v1

    .line 117
    .local v5, "c":I
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->limit:I

    if-ne v5, v1, :cond_2

    .line 118
    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->consumed:I

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    int-to-long v6, v5

    invoke-interface {v0, v6, v7}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_1

    .line 121
    :cond_2
    iput v5, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->consumed:I

    .line 123
    .end local v5    # "c":I
    :goto_1
    nop

    .line 126
    .end local v4    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    :goto_2
    goto :goto_3

    .line 127
    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->getOrCreateQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object v0

    .line 128
    .local v0, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 130
    .end local v0    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    :goto_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    .line 131
    return-void

    .line 133
    .end local v2    # "e":J
    :cond_4
    goto :goto_4

    .line 134
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->getOrCreateQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object v0

    .line 135
    .restart local v0    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_6

    .line 137
    return-void

    .line 140
    .end local v0    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->drainLoop()V

    .line 141
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 102
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->prefetch:I

    int-to-long v1, v1

    invoke-static {v0, p1, v1, v2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z

    .line 103
    return-void
.end method

.method otherError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 202
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 204
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->drain()V

    goto :goto_0

    .line 206
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 208
    :goto_0
    return-void
.end method

.method otherSuccess(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 177
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->emitted:J

    .line 179
    .local v2, "e":J
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    .line 181
    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->emitted:J

    .line 182
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 183
    const/4 v0, 0x2

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->otherState:I

    goto :goto_0

    .line 185
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 186
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->otherState:I

    .line 187
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 188
    return-void

    .line 191
    .end local v2    # "e":J
    :cond_1
    :goto_0
    goto :goto_1

    .line 192
    :cond_2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 193
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->otherState:I

    .line 194
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    return-void

    .line 198
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->drainLoop()V

    .line 199
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 161
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 162
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->drain()V

    .line 163
    return-void
.end method
