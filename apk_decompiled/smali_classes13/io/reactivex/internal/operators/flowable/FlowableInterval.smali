.class public final Lio/reactivex/internal/operators/flowable/FlowableInterval;
.super Lio/reactivex/Flowable;
.source "FlowableInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Flowable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final initialDelay:J

.field final period:J

.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p1, "initialDelay"    # J
    .param p3, "period"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lio/reactivex/Scheduler;

    .line 36
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 37
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->initialDelay:J

    .line 38
    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->period:J

    .line 39
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->unit:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->scheduler:Lio/reactivex/Scheduler;

    .line 41
    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Ljava/lang/Long;>;"
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 46
    .local v0, "is":Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 48
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->scheduler:Lio/reactivex/Scheduler;

    .line 50
    .local v8, "sch":Lio/reactivex/Scheduler;
    instance-of v1, v8, Lio/reactivex/internal/schedulers/TrampolineScheduler;

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v8}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v9

    .line 52
    .local v9, "worker":Lio/reactivex/Scheduler$Worker;
    invoke-virtual {v0, v9}, Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;->setResource(Lio/reactivex/disposables/Disposable;)V

    .line 53
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->initialDelay:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->period:J

    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v1, v9

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 54
    .end local v9    # "worker":Lio/reactivex/Scheduler$Worker;
    goto :goto_0

    .line 55
    :cond_0
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->initialDelay:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->period:J

    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v1, v8

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lio/reactivex/Scheduler;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 56
    .local v1, "d":Lio/reactivex/disposables/Disposable;
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;->setResource(Lio/reactivex/disposables/Disposable;)V

    .line 58
    .end local v1    # "d":Lio/reactivex/disposables/Disposable;
    :goto_0
    return-void
.end method
