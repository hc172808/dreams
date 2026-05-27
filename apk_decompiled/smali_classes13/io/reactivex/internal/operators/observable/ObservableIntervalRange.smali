.class public final Lio/reactivex/internal/operators/observable/ObservableIntervalRange;
.super Lio/reactivex/Observable;
.source "ObservableIntervalRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final end:J

.field final initialDelay:J

.field final period:J

.field final scheduler:Lio/reactivex/Scheduler;

.field final start:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "initialDelay"    # J
    .param p7, "period"    # J
    .param p9, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p10, "scheduler"    # Lio/reactivex/Scheduler;

    .line 33
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 34
    iput-wide p5, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->initialDelay:J

    .line 35
    iput-wide p7, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->period:J

    .line 36
    iput-object p9, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->unit:Ljava/util/concurrent/TimeUnit;

    .line 37
    iput-object p10, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->scheduler:Lio/reactivex/Scheduler;

    .line 38
    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->start:J

    .line 39
    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->end:J

    .line 40
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "s":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Ljava/lang/Long;>;"
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->start:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->end:J

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;-><init>(Lio/reactivex/Observer;JJ)V

    .line 45
    .local v0, "is":Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 47
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->scheduler:Lio/reactivex/Scheduler;

    .line 49
    .local v1, "sch":Lio/reactivex/Scheduler;
    instance-of v2, v1, Lio/reactivex/internal/schedulers/TrampolineScheduler;

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v1}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v2

    .line 51
    .local v2, "worker":Lio/reactivex/Scheduler$Worker;
    invoke-virtual {v0, v2}, Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;->setResource(Lio/reactivex/disposables/Disposable;)V

    .line 52
    iget-wide v9, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->initialDelay:J

    iget-wide v11, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->period:J

    iget-object v13, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v7, v2

    move-object v8, v0

    invoke-virtual/range {v7 .. v13}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 53
    .end local v2    # "worker":Lio/reactivex/Scheduler$Worker;
    goto :goto_0

    .line 54
    :cond_0
    iget-wide v9, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->initialDelay:J

    iget-wide v11, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->period:J

    iget-object v13, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v7, v1

    move-object v8, v0

    invoke-virtual/range {v7 .. v13}, Lio/reactivex/Scheduler;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 55
    .local v2, "d":Lio/reactivex/disposables/Disposable;
    invoke-virtual {v0, v2}, Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;->setResource(Lio/reactivex/disposables/Disposable;)V

    .line 57
    .end local v2    # "d":Lio/reactivex/disposables/Disposable;
    :goto_0
    return-void
.end method
