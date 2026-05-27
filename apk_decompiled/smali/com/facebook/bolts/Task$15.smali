.class final Lcom/facebook/bolts/Task$15;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/bolts/Task;->completeAfterTask(Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lcom/facebook/bolts/Continuation;

.field final synthetic val$ct:Lcom/facebook/bolts/CancellationToken;

.field final synthetic val$task:Lcom/facebook/bolts/Task;

.field final synthetic val$tcs:Lcom/facebook/bolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/facebook/bolts/Task$15;->val$ct:Lcom/facebook/bolts/CancellationToken;

    iput-object p2, p0, Lcom/facebook/bolts/Task$15;->val$tcs:Lcom/facebook/bolts/TaskCompletionSource;

    iput-object p3, p0, Lcom/facebook/bolts/Task$15;->val$continuation:Lcom/facebook/bolts/Continuation;

    iput-object p4, p0, Lcom/facebook/bolts/Task$15;->val$task:Lcom/facebook/bolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 924
    .local v0, "this":Lcom/facebook/bolts/Task$15;
    :try_start_0
    iget-object v1, v0, Lcom/facebook/bolts/Task$15;->val$ct:Lcom/facebook/bolts/CancellationToken;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/bolts/CancellationToken;->isCancellationRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    iget-object v1, v0, Lcom/facebook/bolts/Task$15;->val$tcs:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {v1}, Lcom/facebook/bolts/TaskCompletionSource;->setCancelled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    return-void

    .line 930
    .end local v0    # "this":Lcom/facebook/bolts/Task$15;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/facebook/bolts/Task$15;->val$continuation:Lcom/facebook/bolts/Continuation;

    iget-object v2, v0, Lcom/facebook/bolts/Task$15;->val$task:Lcom/facebook/bolts/Task;

    invoke-interface {v1, v2}, Lcom/facebook/bolts/Continuation;->then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/bolts/Task;

    .line 931
    .local v1, "result":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTContinuationResult;>;"
    if-nez v1, :cond_2

    .line 932
    iget-object v2, v0, Lcom/facebook/bolts/Task$15;->val$tcs:Lcom/facebook/bolts/TaskCompletionSource;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 934
    :cond_2
    new-instance v2, Lcom/facebook/bolts/Task$15$1;

    invoke-direct {v2, v0}, Lcom/facebook/bolts/Task$15$1;-><init>(Lcom/facebook/bolts/Task$15;)V

    invoke-virtual {v1, v2}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 956
    .end local v1    # "result":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTContinuationResult;>;"
    :catch_0
    move-exception v1

    .line 957
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, v0, Lcom/facebook/bolts/Task$15;->val$tcs:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {v2, v1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 954
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 955
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    iget-object v2, v0, Lcom/facebook/bolts/Task$15;->val$tcs:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {v2}, Lcom/facebook/bolts/TaskCompletionSource;->setCancelled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 958
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :goto_0
    nop

    .line 959
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
