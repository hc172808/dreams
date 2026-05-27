.class final Lcom/facebook/bolts/Task$14;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/bolts/Task;->completeImmediately(Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V
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

    .line 878
    iput-object p1, p0, Lcom/facebook/bolts/Task$14;->val$ct:Lcom/facebook/bolts/CancellationToken;

    iput-object p2, p0, Lcom/facebook/bolts/Task$14;->val$tcs:Lcom/facebook/bolts/TaskCompletionSource;

    iput-object p3, p0, Lcom/facebook/bolts/Task$14;->val$continuation:Lcom/facebook/bolts/Continuation;

    iput-object p4, p0, Lcom/facebook/bolts/Task$14;->val$task:Lcom/facebook/bolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 881
    .local v0, "this":Lcom/facebook/bolts/Task$14;
    :try_start_0
    iget-object v1, v0, Lcom/facebook/bolts/Task$14;->val$ct:Lcom/facebook/bolts/CancellationToken;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/bolts/CancellationToken;->isCancellationRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 882
    iget-object v1, v0, Lcom/facebook/bolts/Task$14;->val$tcs:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {v1}, Lcom/facebook/bolts/TaskCompletionSource;->setCancelled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    return-void

    .line 887
    .end local v0    # "this":Lcom/facebook/bolts/Task$14;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/facebook/bolts/Task$14;->val$continuation:Lcom/facebook/bolts/Continuation;

    iget-object v2, v0, Lcom/facebook/bolts/Task$14;->val$task:Lcom/facebook/bolts/Task;

    invoke-interface {v1, v2}, Lcom/facebook/bolts/Continuation;->then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;

    move-result-object v1

    .line 888
    .local v1, "result":Ljava/lang/Object;, "TTContinuationResult;"
    iget-object v2, v0, Lcom/facebook/bolts/Task$14;->val$tcs:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {v2, v1}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "result":Ljava/lang/Object;, "TTContinuationResult;"
    goto :goto_0

    .line 891
    :catch_0
    move-exception v1

    .line 892
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, v0, Lcom/facebook/bolts/Task$14;->val$tcs:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {v2, v1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 889
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 890
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    iget-object v2, v0, Lcom/facebook/bolts/Task$14;->val$tcs:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {v2}, Lcom/facebook/bolts/TaskCompletionSource;->setCancelled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 893
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :goto_0
    nop

    .line 894
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
