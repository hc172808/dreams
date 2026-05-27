.class final Lcom/facebook/bolts/Task$7;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/bolts/Task;->whenAllResult(Ljava/util/Collection;)Lcom/facebook/bolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/bolts/Continuation<",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "TTResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$tasks:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/facebook/bolts/Task$7;->val$tasks:Ljava/util/Collection;

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

    .line 483
    invoke-virtual {p0, p1}, Lcom/facebook/bolts/Task$7;->then(Lcom/facebook/bolts/Task;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public then(Lcom/facebook/bolts/Task;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/List<",
            "TTResult;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 486
    .local p1, "task":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/facebook/bolts/Task$7;->val$tasks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 487
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 490
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<TTResult;>;"
    iget-object v1, p0, Lcom/facebook/bolts/Task$7;->val$tasks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/bolts/Task;

    .line 492
    .local v2, "individualTask":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    invoke-virtual {v2}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    .end local v2    # "individualTask":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    goto :goto_0

    .line 494
    :cond_1
    return-object v0
.end method
