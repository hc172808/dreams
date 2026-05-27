.class Lio/grpc/internal/GrpcUtil$2;
.super Ljava/lang/Object;
.source "GrpcUtil.java"

# interfaces
.implements Lio/grpc/internal/SharedResourceHolder$Resource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/GrpcUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/internal/SharedResourceHolder$Resource<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "grpc-default-executor"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0

    .line 522
    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1}, Lio/grpc/internal/GrpcUtil$2;->close(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public close(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "instance"    # Ljava/util/concurrent/Executor;

    .line 531
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 532
    return-void
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 522
    invoke-virtual {p0}, Lio/grpc/internal/GrpcUtil$2;->create()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public create()Ljava/util/concurrent/Executor;
    .locals 2

    .line 526
    const-string v0, "grpc-default-executor-%d"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/internal/GrpcUtil;->getThreadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 536
    const-string v0, "grpc-default-executor"

    return-object v0
.end method
