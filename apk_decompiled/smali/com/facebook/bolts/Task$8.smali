.class final Lcom/facebook/bolts/Task$8;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/bolts/Task;->whenAll(Ljava/util/Collection;)Lcom/facebook/bolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/bolts/Continuation<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$allFinished:Lcom/facebook/bolts/TaskCompletionSource;

.field final synthetic val$causes:Ljava/util/ArrayList;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$errorLock:Ljava/lang/Object;

.field final synthetic val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/facebook/bolts/TaskCompletionSource;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/facebook/bolts/Task$8;->val$errorLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/facebook/bolts/Task$8;->val$causes:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/bolts/Task$8;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/facebook/bolts/Task$8;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/facebook/bolts/Task$8;->val$allFinished:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 535
    invoke-virtual {p0, p1}, Lcom/facebook/bolts/Task$8;->then(Lcom/facebook/bolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lcom/facebook/bolts/Task;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 538
    .local p1, "task":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/facebook/bolts/Task$8;->val$errorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/facebook/bolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 544
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->isCancelled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/facebook/bolts/Task$8;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/facebook/bolts/Task$8;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 549
    iget-object v0, p0, Lcom/facebook/bolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 550
    iget-object v0, p0, Lcom/facebook/bolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 551
    iget-object v0, p0, Lcom/facebook/bolts/Task$8;->val$allFinished:Lcom/facebook/bolts/TaskCompletionSource;

    iget-object v1, p0, Lcom/facebook/bolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 553
    :cond_2
    new-instance v0, Lcom/facebook/bolts/AggregateException;

    const-string v4, "There were %d exceptions."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/bolts/Task$8;->val$causes:Ljava/util/ArrayList;

    .line 555
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/bolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v3}, Lcom/facebook/bolts/AggregateException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 556
    .local v0, "error":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/facebook/bolts/Task$8;->val$allFinished:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 557
    .end local v0    # "error":Ljava/lang/Exception;
    goto :goto_1

    .line 558
    :cond_3
    iget-object v0, p0, Lcom/facebook/bolts/Task$8;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 559
    iget-object v0, p0, Lcom/facebook/bolts/Task$8;->val$allFinished:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->setCancelled()V

    goto :goto_1

    .line 561
    :cond_4
    iget-object v0, p0, Lcom/facebook/bolts/Task$8;->val$allFinished:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {v0, v2}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 564
    :cond_5
    :goto_1
    return-object v2
.end method
