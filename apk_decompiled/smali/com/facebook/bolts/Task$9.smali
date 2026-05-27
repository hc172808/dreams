.class Lcom/facebook/bolts/Task$9;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/bolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/bolts/Continuation<",
        "Ljava/lang/Void;",
        "Lcom/facebook/bolts/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/bolts/Task;

.field final synthetic val$continuation:Lcom/facebook/bolts/Continuation;

.field final synthetic val$ct:Lcom/facebook/bolts/CancellationToken;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$predicate:Ljava/util/concurrent/Callable;

.field final synthetic val$predicateContinuation:Lcom/facebook/bolts/Capture;


# direct methods
.method constructor <init>(Lcom/facebook/bolts/Task;Lcom/facebook/bolts/CancellationToken;Ljava/util/concurrent/Callable;Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/Capture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/bolts/Task;

    .line 614
    .local p0, "this":Lcom/facebook/bolts/Task$9;, "Lcom/facebook/bolts/Task$9;"
    iput-object p1, p0, Lcom/facebook/bolts/Task$9;->this$0:Lcom/facebook/bolts/Task;

    iput-object p2, p0, Lcom/facebook/bolts/Task$9;->val$ct:Lcom/facebook/bolts/CancellationToken;

    iput-object p3, p0, Lcom/facebook/bolts/Task$9;->val$predicate:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Lcom/facebook/bolts/Task$9;->val$continuation:Lcom/facebook/bolts/Continuation;

    iput-object p5, p0, Lcom/facebook/bolts/Task$9;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/facebook/bolts/Task$9;->val$predicateContinuation:Lcom/facebook/bolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 617
    .local p0, "this":Lcom/facebook/bolts/Task$9;, "Lcom/facebook/bolts/Task$9;"
    .local p1, "task":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/facebook/bolts/Task$9;->val$ct:Lcom/facebook/bolts/CancellationToken;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/bolts/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    invoke-static {}, Lcom/facebook/bolts/Task;->cancelled()Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/facebook/bolts/Task$9;->val$predicate:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 622
    invoke-static {v1}, Lcom/facebook/bolts/Task;->forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bolts/Task$9;->val$continuation:Lcom/facebook/bolts/Continuation;

    iget-object v2, p0, Lcom/facebook/bolts/Task$9;->val$executor:Ljava/util/concurrent/Executor;

    .line 623
    invoke-virtual {v0, v1, v2}, Lcom/facebook/bolts/Task;->onSuccessTask(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bolts/Task$9;->val$predicateContinuation:Lcom/facebook/bolts/Capture;

    .line 624
    invoke-virtual {v1}, Lcom/facebook/bolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/bolts/Continuation;

    iget-object v2, p0, Lcom/facebook/bolts/Task$9;->val$executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/bolts/Task;->onSuccessTask(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;

    move-result-object v0

    .line 622
    return-object v0

    .line 626
    :cond_1
    invoke-static {v1}, Lcom/facebook/bolts/Task;->forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 614
    .local p0, "this":Lcom/facebook/bolts/Task$9;, "Lcom/facebook/bolts/Task$9;"
    invoke-virtual {p0, p1}, Lcom/facebook/bolts/Task$9;->then(Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method
