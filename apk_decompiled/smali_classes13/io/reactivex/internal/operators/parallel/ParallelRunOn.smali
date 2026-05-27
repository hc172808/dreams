.class public final Lio/reactivex/internal/operators/parallel/ParallelRunOn;
.super Lio/reactivex/parallel/ParallelFlowable;
.source "ParallelRunOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;,
        Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;,
        Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;,
        Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/ParallelFlowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final prefetch:I

.field final scheduler:Lio/reactivex/Scheduler;

.field final source:Lio/reactivex/parallel/ParallelFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/ParallelFlowable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/Scheduler;I)V
    .locals 0
    .param p2, "scheduler"    # Lio/reactivex/Scheduler;
    .param p3, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/ParallelFlowable<",
            "+TT;>;",
            "Lio/reactivex/Scheduler;",
            "I)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelRunOn;, "Lio/reactivex/internal/operators/parallel/ParallelRunOn<TT;>;"
    .local p1, "parent":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<+TT;>;"
    invoke-direct {p0}, Lio/reactivex/parallel/ParallelFlowable;-><init>()V

    .line 46
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->source:Lio/reactivex/parallel/ParallelFlowable;

    .line 47
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->scheduler:Lio/reactivex/Scheduler;

    .line 48
    iput p3, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->prefetch:I

    .line 49
    return-void
.end method


# virtual methods
.method createSubscriber(I[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;Lio/reactivex/Scheduler$Worker;)V
    .locals 5
    .param p1, "i"    # I
    .param p4, "worker"    # Lio/reactivex/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;[",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelRunOn;, "Lio/reactivex/internal/operators/parallel/ParallelRunOn<TT;>;"
    .local p2, "subscribers":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p3, "parents":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<TT;>;"
    aget-object v0, p2, p1

    .line 78
    .local v0, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v1, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v2, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->prefetch:I

    invoke-direct {v1, v2}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    .line 80
    .local v1, "q":Lio/reactivex/internal/queue/SpscArrayQueue;, "Lio/reactivex/internal/queue/SpscArrayQueue<TT;>;"
    instance-of v2, v0, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v2, :cond_0

    .line 81
    new-instance v2, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;

    move-object v3, v0

    check-cast v3, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    iget v4, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->prefetch:I

    invoke-direct {v2, v3, v4, v1, p4}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V

    aput-object v2, p3, p1

    goto :goto_0

    .line 83
    :cond_0
    new-instance v2, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;

    iget v3, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->prefetch:I

    invoke-direct {v2, v0, v3, v1, p4}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;-><init>(Lorg/reactivestreams/Subscriber;ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V

    aput-object v2, p3, p1

    .line 85
    :goto_0
    return-void
.end method

.method public parallelism()I
    .locals 1

    .line 107
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelRunOn;, "Lio/reactivex/internal/operators/parallel/ParallelRunOn<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {v0}, Lio/reactivex/parallel/ParallelFlowable;->parallelism()I

    move-result v0

    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelRunOn;, "Lio/reactivex/internal/operators/parallel/ParallelRunOn<TT;>;"
    .local p1, "subscribers":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->validate([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    return-void

    .line 57
    :cond_0
    array-length v0, p1

    .line 60
    .local v0, "n":I
    new-array v1, v0, [Lorg/reactivestreams/Subscriber;

    .line 62
    .local v1, "parents":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<TT;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->scheduler:Lio/reactivex/Scheduler;

    instance-of v3, v2, Lio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport;

    if-eqz v3, :cond_1

    .line 63
    check-cast v2, Lio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport;

    .line 64
    .local v2, "multiworker":Lio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport;
    new-instance v3, Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;

    invoke-direct {v3, p0, p1, v1}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;-><init>(Lio/reactivex/internal/operators/parallel/ParallelRunOn;[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;)V

    invoke-interface {v2, v0, v3}, Lio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport;->createWorkers(ILio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;)V

    .line 65
    .end local v2    # "multiworker":Lio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport;
    goto :goto_1

    .line 66
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 67
    iget-object v3, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v3}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v3

    invoke-virtual {p0, v2, p1, v1, v3}, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->createSubscriber(I[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;Lio/reactivex/Scheduler$Worker;)V

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "i":I
    :cond_2
    :goto_1
    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {v2, v1}, Lio/reactivex/parallel/ParallelFlowable;->subscribe([Lorg/reactivestreams/Subscriber;)V

    .line 71
    return-void
.end method
