.class final Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;
.super Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.source "UnicastProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/UnicastProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UnicastQueueSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x43f4c9bf08ec328eL


# instance fields
.field final synthetic this$0:Lio/reactivex/processors/UnicastProcessor;


# direct methods
.method constructor <init>(Lio/reactivex/processors/UnicastProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lio/reactivex/processors/UnicastProcessor;

    .line 404
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;, "Lio/reactivex/processors/UnicastProcessor<TT;>.UnicastQueueSubscription;"
    iput-object p1, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/processors/UnicastProcessor;

    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 444
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;, "Lio/reactivex/processors/UnicastProcessor<TT;>.UnicastQueueSubscription;"
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/processors/UnicastProcessor;

    iget-boolean v0, v0, Lio/reactivex/processors/UnicastProcessor;->cancelled:Z

    if-eqz v0, :cond_0

    .line 445
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/processors/UnicastProcessor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/processors/UnicastProcessor;->cancelled:Z

    .line 449
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/processors/UnicastProcessor;

    invoke-virtual {v0}, Lio/reactivex/processors/UnicastProcessor;->doTerminate()V

    .line 451
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/processors/UnicastProcessor;

    iget-boolean v0, v0, Lio/reactivex/processors/UnicastProcessor;->enableOperatorFusion:Z

    if-nez v0, :cond_1

    .line 452
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/processors/UnicastProcessor;

    iget-object v0, v0, Lio/reactivex/processors/UnicastProcessor;->wip:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    invoke-virtual {v0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 453
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/processors/UnicastProcessor;

    iget-object v0, v0, Lio/reactivex/processors/UnicastProcessor;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 454
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/processors/UnicastProcessor;

    iget-object v0, v0, Lio/reactivex/processors/UnicastProcessor;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 457
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 422
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;, "Lio/reactivex/processors/UnicastProcessor<TT;>.UnicastQueueSubscription;"
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/processors/UnicastProcessor;

    iget-object v0, v0, Lio/reactivex/processors/UnicastProcessor;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 423
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 417
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;, "Lio/reactivex/processors/UnicastProcessor<TT;>.UnicastQueueSubscription;"
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/processors/UnicastProcessor;

    iget-object v0, v0, Lio/reactivex/processors/UnicastProcessor;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 412
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;, "Lio/reactivex/processors/UnicastProcessor<TT;>.UnicastQueueSubscription;"
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/processors/UnicastProcessor;

    iget-object v0, v0, Lio/reactivex/processors/UnicastProcessor;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 436
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;, "Lio/reactivex/processors/UnicastProcessor<TT;>.UnicastQueueSubscription;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/processors/UnicastProcessor;

    iget-object v0, v0, Lio/reactivex/processors/UnicastProcessor;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 438
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/processors/UnicastProcessor;

    invoke-virtual {v0}, Lio/reactivex/processors/UnicastProcessor;->drain()V

    .line 440
    :cond_0
    return-void
.end method

.method public requestFusion(I)I
    .locals 2
    .param p1, "requestedMode"    # I

    .line 427
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;, "Lio/reactivex/processors/UnicastProcessor<TT;>.UnicastQueueSubscription;"
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/processors/UnicastProcessor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/processors/UnicastProcessor;->enableOperatorFusion:Z

    .line 429
    const/4 v0, 0x2

    return v0

    .line 431
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
