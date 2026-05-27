.class final Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableBufferBoundary.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferCloseSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x75f145dafa87c3a6L


# instance fields
.field final index:J

.field final parent:Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber<",
            "TT;TC;**>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;J)V
    .locals 0
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber<",
            "TT;TC;**>;J)V"
        }
    .end annotation

    .line 372
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber<TT;TC;>;"
    .local p1, "parent":Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber<TT;TC;**>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 373
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;

    .line 374
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;->index:J

    .line 375
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 412
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber<TT;TC;>;"
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 413
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 417
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber<TT;TC;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 404
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber<TT;TC;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 405
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;->lazySet(Ljava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;->index:J

    invoke-virtual {v0, p0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;->close(Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;J)V

    .line 408
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 394
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber<TT;TC;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 395
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;->lazySet(Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;->boundaryError(Lio/reactivex/disposables/Disposable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 400
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Object;

    .line 384
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber<TT;TC;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 385
    .local v0, "s":Lorg/reactivestreams/Subscription;
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 386
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;->lazySet(Ljava/lang/Object;)V

    .line 387
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 388
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;->index:J

    invoke-virtual {v1, p0, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;->close(Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;J)V

    .line 390
    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 379
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber<TT;TC;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z

    .line 380
    return-void
.end method
