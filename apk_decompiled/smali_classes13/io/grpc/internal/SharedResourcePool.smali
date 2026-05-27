.class public final Lio/grpc/internal/SharedResourcePool;
.super Ljava/lang/Object;
.source "SharedResourcePool.java"

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
.field private final resource:Lio/grpc/internal/SharedResourceHolder$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/grpc/internal/SharedResourceHolder$Resource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "TT;>;)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lio/grpc/internal/SharedResourcePool;, "Lio/grpc/internal/SharedResourcePool<TT;>;"
    .local p1, "resource":Lio/grpc/internal/SharedResourceHolder$Resource;, "Lio/grpc/internal/SharedResourceHolder$Resource<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lio/grpc/internal/SharedResourcePool;->resource:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 27
    return-void
.end method

.method public static forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "TT;>;)",
            "Lio/grpc/internal/SharedResourcePool<",
            "TT;>;"
        }
    .end annotation

    .line 30
    .local p0, "resource":Lio/grpc/internal/SharedResourceHolder$Resource;, "Lio/grpc/internal/SharedResourceHolder$Resource<TT;>;"
    new-instance v0, Lio/grpc/internal/SharedResourcePool;

    invoke-direct {v0, p0}, Lio/grpc/internal/SharedResourcePool;-><init>(Lio/grpc/internal/SharedResourceHolder$Resource;)V

    return-object v0
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 35
    .local p0, "this":Lio/grpc/internal/SharedResourcePool;, "Lio/grpc/internal/SharedResourcePool<TT;>;"
    iget-object v0, p0, Lio/grpc/internal/SharedResourcePool;->resource:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {v0}, Lio/grpc/internal/SharedResourceHolder;->get(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public returnObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lio/grpc/internal/SharedResourcePool;, "Lio/grpc/internal/SharedResourcePool<TT;>;"
    iget-object v0, p0, Lio/grpc/internal/SharedResourcePool;->resource:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {v0, p1}, Lio/grpc/internal/SharedResourceHolder;->release(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method
