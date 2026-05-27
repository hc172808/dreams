.class abstract Lcom/google/common/util/concurrent/CollectionFuture;
.super Lcom/google/common/util/concurrent/AggregateFuture;
.source "CollectionFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;,
        Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AggregateFuture<",
        "TV;TC;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    .local p0, "this":Lcom/google/common/util/concurrent/CollectionFuture;, "Lcom/google/common/util/concurrent/CollectionFuture<TV;TC;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AggregateFuture;-><init>()V

    return-void
.end method
