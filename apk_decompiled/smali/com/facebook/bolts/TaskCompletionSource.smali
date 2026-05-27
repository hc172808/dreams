.class public Lcom/facebook/bolts/TaskCompletionSource;
.super Ljava/lang/Object;
.source "TaskCompletionSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final task:Lcom/facebook/bolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    .local p0, "this":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<TTResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/facebook/bolts/Task;

    invoke-direct {v0}, Lcom/facebook/bolts/Task;-><init>()V

    iput-object v0, p0, Lcom/facebook/bolts/TaskCompletionSource;->task:Lcom/facebook/bolts/Task;

    .line 39
    return-void
.end method


# virtual methods
.method public getTask()Lcom/facebook/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/bolts/TaskCompletionSource;->task:Lcom/facebook/bolts/Task;

    return-object v0
.end method

.method public setCancelled()V
    .locals 2

    .line 63
    .local p0, "this":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<TTResult;>;"
    invoke-virtual {p0}, Lcom/facebook/bolts/TaskCompletionSource;->trySetCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Exception;

    .line 77
    .local p0, "this":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<TTResult;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/bolts/TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the error on a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<TTResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    invoke-virtual {p0, p1}, Lcom/facebook/bolts/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the result of a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public trySetCancelled()Z
    .locals 1

    .line 48
    .local p0, "this":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/bolts/TaskCompletionSource;->task:Lcom/facebook/bolts/Task;

    invoke-virtual {v0}, Lcom/facebook/bolts/Task;->trySetCancelled()Z

    move-result v0

    return v0
.end method

.method public trySetError(Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "error"    # Ljava/lang/Exception;

    .line 58
    .local p0, "this":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/bolts/TaskCompletionSource;->task:Lcom/facebook/bolts/Task;

    invoke-virtual {v0, p1}, Lcom/facebook/bolts/Task;->trySetError(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public trySetResult(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<TTResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    iget-object v0, p0, Lcom/facebook/bolts/TaskCompletionSource;->task:Lcom/facebook/bolts/Task;

    invoke-virtual {v0, p1}, Lcom/facebook/bolts/Task;->trySetResult(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
