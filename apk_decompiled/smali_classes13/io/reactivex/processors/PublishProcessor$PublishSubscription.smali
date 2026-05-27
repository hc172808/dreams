.class final Lio/reactivex/processors/PublishProcessor$PublishSubscription;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "PublishProcessor.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/PublishProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSubscription"
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
.field private static final serialVersionUID:J = 0x3171d4005ebf93feL


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final parent:Lio/reactivex/processors/PublishProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/PublishProcessor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/PublishProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/processors/PublishProcessor<",
            "TT;>;)V"
        }
    .end annotation

    .line 299
    .local p0, "this":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "parent":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 300
    iput-object p1, p0, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 301
    iput-object p2, p0, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->parent:Lio/reactivex/processors/PublishProcessor;

    .line 302
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .line 341
    .local p0, "this":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->getAndSet(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 342
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->parent:Lio/reactivex/processors/PublishProcessor;

    invoke-virtual {v0, p0}, Lio/reactivex/processors/PublishProcessor;->remove(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)V

    .line 344
    :cond_0
    return-void
.end method

.method public isCancelled()Z
    .locals 5

    .line 347
    .local p0, "this":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFull()Z
    .locals 5

    .line 351
    .local p0, "this":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 5

    .line 327
    .local p0, "this":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 328
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 330
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 319
    .local p0, "this":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 320
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 324
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 305
    .local p0, "this":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->get()J

    move-result-wide v0

    .line 306
    .local v0, "r":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 307
    return-void

    .line 309
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 310
    iget-object v2, p0, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 311
    const-wide/16 v2, 0x1

    invoke-static {p0, v2, v3}, Lio/reactivex/internal/util/BackpressureHelper;->producedCancel(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_0

    .line 313
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->cancel()V

    .line 314
    iget-object v2, p0, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->actual:Lorg/reactivestreams/Subscriber;

    new-instance v3, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v4, "Could not emit value due to lack of requests"

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 316
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 334
    .local p0, "this":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->addCancel(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 337
    :cond_0
    return-void
.end method
