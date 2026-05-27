.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayPublisher;
.super Ljava/lang/Object;
.source "FlowableReplay.java"

# interfaces
.implements Lorg/reactivestreams/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayPublisher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/reactivestreams/Publisher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final bufferFactory:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final curr:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber<",
            "TT;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1198
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayPublisher;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayPublisher<TT;>;"
    .local p1, "curr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber<TT;>;>;"
    .local p2, "bufferFactory":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1199
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayPublisher;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1200
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayPublisher;->bufferFactory:Ljava/util/concurrent/Callable;

    .line 1201
    return-void
.end method


# virtual methods
.method public subscribe(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1209
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayPublisher;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayPublisher<TT;>;"
    .local p1, "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayPublisher;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;

    .line 1211
    .local v0, "r":Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber<TT;>;"
    if-nez v0, :cond_1

    .line 1215
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayPublisher;->bufferFactory:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1220
    .local v1, "buf":Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer<TT;>;"
    nop

    .line 1222
    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;

    invoke-direct {v2, v1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;)V

    .line 1224
    .local v2, "u":Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber<TT;>;"
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayPublisher;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1227
    goto :goto_0

    .line 1230
    :cond_0
    move-object v0, v2

    goto :goto_1

    .line 1216
    .end local v1    # "buf":Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer<TT;>;"
    .end local v2    # "u":Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber<TT;>;"
    :catchall_0
    move-exception v1

    .line 1217
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1218
    invoke-static {v1, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    .line 1219
    return-void

    .line 1234
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;-><init>(Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;Lorg/reactivestreams/Subscriber;)V

    .line 1239
    .local v1, "inner":Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription<TT;>;"
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 1243
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->add(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)Z

    .line 1245
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1246
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->remove(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)V

    .line 1247
    return-void

    .line 1250
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->manageRequests()V

    .line 1253
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->buffer:Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;

    invoke-interface {v2, v1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;->replay(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)V

    .line 1255
    nop

    .line 1257
    .end local v0    # "r":Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber<TT;>;"
    .end local v1    # "inner":Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription<TT;>;"
    return-void
.end method
