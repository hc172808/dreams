.class final Lcom/facebook/GraphRequest$Companion$runCallbacks$runnable$1;
.super Ljava/lang/Object;
.source "GraphRequest.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphRequest$Companion;->runCallbacks$facebook_core_release(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $callbacks:Ljava/util/ArrayList;

.field final synthetic $requests:Lcom/facebook/GraphRequestBatch;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/facebook/GraphRequestBatch;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/GraphRequest$Companion$runCallbacks$runnable$1;->$callbacks:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/facebook/GraphRequest$Companion$runCallbacks$runnable$1;->$requests:Lcom/facebook/GraphRequestBatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_1

    return-void

    :cond_1
    move-object v0, p0

    .line 1022
    .local v0, "this":Lcom/facebook/GraphRequest$Companion$runCallbacks$runnable$1;
    :try_start_1
    iget-object v1, v0, Lcom/facebook/GraphRequest$Companion$runCallbacks$runnable$1;->$callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1023
    .local v2, "pair":Landroid/util/Pair;
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/GraphRequest$Callback;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v5, "pair.second"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/facebook/GraphResponse;

    invoke-interface {v3, v4}, Lcom/facebook/GraphRequest$Callback;->onCompleted(Lcom/facebook/GraphResponse;)V

    .end local v2    # "pair":Landroid/util/Pair;
    goto :goto_0

    .line 1025
    .end local v0    # "this":Lcom/facebook/GraphRequest$Companion$runCallbacks$runnable$1;
    :cond_2
    iget-object v1, v0, Lcom/facebook/GraphRequest$Companion$runCallbacks$runnable$1;->$requests:Lcom/facebook/GraphRequestBatch;

    invoke-virtual {v1}, Lcom/facebook/GraphRequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v1

    .line 1026
    .local v1, "batchCallbacks":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/GraphRequestBatch$Callback;

    .line 1027
    .local v3, "batchCallback":Lcom/facebook/GraphRequestBatch$Callback;
    iget-object v4, v0, Lcom/facebook/GraphRequest$Companion$runCallbacks$runnable$1;->$requests:Lcom/facebook/GraphRequestBatch;

    invoke-interface {v3, v4}, Lcom/facebook/GraphRequestBatch$Callback;->onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "batchCallback":Lcom/facebook/GraphRequestBatch$Callback;
    goto :goto_1

    .line 1029
    .end local v1    # "batchCallbacks":Ljava/util/List;
    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v0, p0

    :goto_2
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
