.class public final Lio/grpc/internal/FixedObjectPool;
.super Ljava/lang/Object;
.source "FixedObjectPool.java"

# interfaces
.implements Lio/grpc/internal/ObjectPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/internal/ObjectPool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 27
    .local p0, "this":Lio/grpc/internal/FixedObjectPool;, "Lio/grpc/internal/FixedObjectPool<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "object"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/FixedObjectPool;->object:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 33
    .local p0, "this":Lio/grpc/internal/FixedObjectPool;, "Lio/grpc/internal/FixedObjectPool<TT;>;"
    iget-object v0, p0, Lio/grpc/internal/FixedObjectPool;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public returnObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "returned"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lio/grpc/internal/FixedObjectPool;, "Lio/grpc/internal/FixedObjectPool<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
