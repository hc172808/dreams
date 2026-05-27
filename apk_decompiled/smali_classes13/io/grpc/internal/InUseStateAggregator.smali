.class public abstract Lio/grpc/internal/InUseStateAggregator;
.super Ljava/lang/Object;
.source "InUseStateAggregator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final inUseObjects:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    .local p0, "this":Lio/grpc/internal/InUseStateAggregator;, "Lio/grpc/internal/InUseStateAggregator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/InUseStateAggregator;->inUseObjects:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method protected abstract handleInUse()V
.end method

.method protected abstract handleNotInUse()V
.end method

.method public final isInUse()Z
    .locals 1

    .line 51
    .local p0, "this":Lio/grpc/internal/InUseStateAggregator;, "Lio/grpc/internal/InUseStateAggregator<TT;>;"
    iget-object v0, p0, Lio/grpc/internal/InUseStateAggregator;->inUseObjects:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final updateObjectInUse(Ljava/lang/Object;Z)V
    .locals 3
    .param p2, "inUse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lio/grpc/internal/InUseStateAggregator;, "Lio/grpc/internal/InUseStateAggregator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/grpc/internal/InUseStateAggregator;->inUseObjects:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 37
    .local v0, "origSize":I
    if-eqz p2, :cond_0

    .line 38
    iget-object v1, p0, Lio/grpc/internal/InUseStateAggregator;->inUseObjects:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    if-nez v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lio/grpc/internal/InUseStateAggregator;->handleInUse()V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/InUseStateAggregator;->inUseObjects:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 44
    .local v1, "removed":Z
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 45
    invoke-virtual {p0}, Lio/grpc/internal/InUseStateAggregator;->handleNotInUse()V

    .line 48
    .end local v1    # "removed":Z
    :cond_1
    :goto_0
    return-void
.end method
