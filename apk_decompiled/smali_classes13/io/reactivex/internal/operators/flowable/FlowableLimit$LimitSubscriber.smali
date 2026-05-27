.class final Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "FlowableLimit.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LimitSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1fc17b9fa19967edL


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field remaining:J

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;J)V
    .locals 0
    .param p2, "remaining"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;J)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 59
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 60
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->remaining:J

    .line 61
    invoke-virtual {p0, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->lazySet(J)V

    .line 62
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 133
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 134
    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 102
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber<TT;>;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 103
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->remaining:J

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 106
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 92
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber<TT;>;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 93
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->remaining:J

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 98
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->remaining:J

    .line 80
    .local v0, "r":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 81
    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    move-wide v0, v4

    iput-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->remaining:J

    .line 82
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v4, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 83
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 84
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 85
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 88
    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 5
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 66
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 68
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    goto :goto_0

    .line 71
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 75
    :cond_1
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .line 110
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber<TT;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->get()J

    move-result-wide v0

    .line 113
    .local v0, "r":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 114
    goto :goto_2

    .line 117
    :cond_0
    cmp-long v2, v0, p1

    if-gtz v2, :cond_1

    .line 118
    move-wide v2, v0

    .local v2, "toRequest":J
    goto :goto_1

    .line 120
    .end local v2    # "toRequest":J
    :cond_1
    move-wide v2, p1

    .line 122
    .restart local v2    # "toRequest":J
    :goto_1
    sub-long v4, v0, v2

    .line 123
    .local v4, "u":J
    invoke-virtual {p0, v0, v1, v4, v5}, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 124
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v6, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 125
    goto :goto_2

    .line 127
    .end local v0    # "r":J
    .end local v2    # "toRequest":J
    .end local v4    # "u":J
    :cond_2
    goto :goto_0

    .line 129
    :cond_3
    :goto_2
    return-void
.end method
