.class final Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ParallelJoin.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JoinInnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x74b67204a49678c3L


# instance fields
.field final limit:I

.field final parent:Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase<",
            "TT;>;"
        }
    .end annotation
.end field

.field final prefetch:I

.field produced:J

.field volatile queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;I)V
    .locals 1
    .param p2, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase<",
            "TT;>;I)V"
        }
    .end annotation

    .line 511
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    .local p1, "parent":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 512
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->parent:Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;

    .line 513
    iput p2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->prefetch:I

    .line 514
    shr-int/lit8 v0, p2, 0x2

    sub-int v0, p2, v0

    iput v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->limit:I

    .line 515
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .line 558
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    return v0
.end method

.method getQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;"
        }
    .end annotation

    .line 562
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 563
    .local v0, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    if-nez v0, :cond_0

    .line 564
    new-instance v1, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->prefetch:I

    invoke-direct {v1, v2}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    move-object v0, v1

    .line 565
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 567
    :cond_0
    return-object v0
.end method

.method public onComplete()V
    .locals 1

    .line 534
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->parent:Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->onComplete()V

    .line 535
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 529
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->parent:Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->onError(Ljava/lang/Throwable;)V

    .line 530
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 524
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->parent:Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->onNext(Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;Ljava/lang/Object;)V

    .line 525
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 519
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->prefetch:I

    int-to-long v0, v0

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z

    .line 520
    return-void
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .line 548
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->produced:J

    add-long/2addr v0, p1

    .line 549
    .local v0, "p":J
    iget v2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->limit:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 550
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->produced:J

    .line 551
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/reactivestreams/Subscription;

    invoke-interface {v2, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 553
    :cond_0
    iput-wide v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->produced:J

    .line 555
    :goto_0
    return-void
.end method

.method public requestOne()V
    .locals 5

    .line 538
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 539
    .local v0, "p":J
    iget v2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->limit:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 540
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->produced:J

    .line 541
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/reactivestreams/Subscription;

    invoke-interface {v2, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 543
    :cond_0
    iput-wide v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->produced:J

    .line 545
    :goto_0
    return-void
.end method
