.class public final Lcom/facebook/RequestProgress;
.super Ljava/lang/Object;
.source "RequestProgress.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0008J\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0008J\u0006\u0010\u0014\u001a\u00020\u0011R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\r\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/RequestProgress;",
        "",
        "callbackHandler",
        "Landroid/os/Handler;",
        "request",
        "Lcom/facebook/GraphRequest;",
        "(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V",
        "lastReportedProgress",
        "",
        "<set-?>",
        "maxProgress",
        "getMaxProgress",
        "()J",
        "progress",
        "getProgress",
        "threshold",
        "addProgress",
        "",
        "size",
        "addToMax",
        "reportProgress",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final callbackHandler:Landroid/os/Handler;

.field private lastReportedProgress:J

.field private maxProgress:J

.field private progress:J

.field private final request:Lcom/facebook/GraphRequest;

.field private final threshold:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V
    .locals 2
    .param p1, "callbackHandler"    # Landroid/os/Handler;
    .param p2, "request"    # Lcom/facebook/GraphRequest;

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/facebook/RequestProgress;->request:Lcom/facebook/GraphRequest;

    .line 27
    invoke-static {}, Lcom/facebook/FacebookSdk;->getOnProgressThreshold()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->threshold:J

    return-void
.end method


# virtual methods
.method public final addProgress(J)V
    .locals 6
    .param p1, "size"    # J

    .line 35
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    .line 36
    iget-wide v2, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    iget-wide v4, p0, Lcom/facebook/RequestProgress;->threshold:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v2, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/RequestProgress;->reportProgress()V

    .line 39
    :cond_1
    return-void
.end method

.method public final addToMax(J)V
    .locals 2
    .param p1, "size"    # J

    .line 42
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    .line 43
    return-void
.end method

.method public final getMaxProgress()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    return-wide v0
.end method

.method public final getProgress()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    return-wide v0
.end method

.method public final reportProgress()V
    .locals 13

    .line 46
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    iget-wide v2, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 47
    iget-object v0, p0, Lcom/facebook/RequestProgress;->request:Lcom/facebook/GraphRequest;

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object v0

    .line 48
    .local v0, "callback":Lcom/facebook/GraphRequest$Callback;
    iget-wide v1, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    instance-of v1, v0, Lcom/facebook/GraphRequest$OnProgressCallback;

    if-eqz v1, :cond_1

    .line 50
    iget-wide v7, p0, Lcom/facebook/RequestProgress;->progress:J

    .line 51
    .local v7, "progressCopy":J
    iget-wide v9, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    .line 52
    .local v9, "maxProgressCopy":J
    iget-object v11, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    if-eqz v11, :cond_0

    new-instance v12, Lcom/facebook/RequestProgress$reportProgress$1;

    move-object v1, v12

    move-object v2, v0

    move-wide v3, v7

    move-wide v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/facebook/RequestProgress$reportProgress$1;-><init>(Lcom/facebook/GraphRequest$Callback;JJ)V

    check-cast v12, Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 53
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/facebook/GraphRequest$OnProgressCallback;

    invoke-interface {v1, v7, v8, v9, v10}, Lcom/facebook/GraphRequest$OnProgressCallback;->onProgress(JJ)V

    .line 54
    :goto_0
    iget-wide v1, p0, Lcom/facebook/RequestProgress;->progress:J

    iput-wide v1, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    .line 57
    .end local v0    # "callback":Lcom/facebook/GraphRequest$Callback;
    .end local v7    # "progressCopy":J
    .end local v9    # "maxProgressCopy":J
    :cond_1
    return-void
.end method
