.class final Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "MulticastProcessor.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/MulticastProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MulticastSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x50aa39e0005767dL


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field emitted:J

.field final parent:Lio/reactivex/processors/MulticastProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/MulticastProcessor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/MulticastProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/processors/MulticastProcessor<",
            "TT;>;)V"
        }
    .end annotation

    .line 589
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "parent":Lio/reactivex/processors/MulticastProcessor;, "Lio/reactivex/processors/MulticastProcessor<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 590
    iput-object p1, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 591
    iput-object p2, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->parent:Lio/reactivex/processors/MulticastProcessor;

    .line 592
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .line 616
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->getAndSet(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 617
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->parent:Lio/reactivex/processors/MulticastProcessor;

    invoke-virtual {v0, p0}, Lio/reactivex/processors/MulticastProcessor;->remove(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)V

    .line 619
    :cond_0
    return-void
.end method

.method onComplete()V
    .locals 5

    .line 635
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 636
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 638
    :cond_0
    return-void
.end method

.method onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 629
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 630
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 632
    :cond_0
    return-void
.end method

.method onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 622
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 623
    iget-wide v0, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->emitted:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->emitted:J

    .line 624
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 626
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .line 596
    .local p0, "this":Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;, "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<TT;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 598
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->get()J

    move-result-wide v0

    .line 599
    .local v0, "r":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 600
    goto :goto_1

    .line 602
    :cond_0
    add-long v2, v0, p1

    .line 603
    .local v2, "u":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 604
    const-wide v2, 0x7fffffffffffffffL

    .line 606
    :cond_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 607
    iget-object v4, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->parent:Lio/reactivex/processors/MulticastProcessor;

    invoke-virtual {v4}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    .line 608
    goto :goto_1

    .line 610
    .end local v0    # "r":J
    .end local v2    # "u":J
    :cond_2
    goto :goto_0

    .line 612
    :cond_3
    :goto_1
    return-void
.end method
