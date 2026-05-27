.class public final Lio/grpc/stub/StreamObservers;
.super Ljava/lang/Object;
.source "StreamObservers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyWithFlowControl(Ljava/lang/Iterable;Lio/grpc/stub/CallStreamObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TV;>;",
            "Lio/grpc/stub/CallStreamObserver<",
            "TV;>;)V"
        }
    .end annotation

    .line 83
    .local p0, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TV;>;"
    .local p1, "target":Lio/grpc/stub/CallStreamObserver;, "Lio/grpc/stub/CallStreamObserver<TV;>;"
    const-string v0, "source"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/stub/StreamObservers;->copyWithFlowControl(Ljava/util/Iterator;Lio/grpc/stub/CallStreamObserver;)V

    .line 85
    return-void
.end method

.method public static copyWithFlowControl(Ljava/util/Iterator;Lio/grpc/stub/CallStreamObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TV;>;",
            "Lio/grpc/stub/CallStreamObserver<",
            "TV;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "source":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    .local p1, "target":Lio/grpc/stub/CallStreamObserver;, "Lio/grpc/stub/CallStreamObserver<TV;>;"
    const-string v0, "source"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lio/grpc/stub/StreamObservers$1FlowControllingOnReadyHandler;

    invoke-direct {v0, p1, p0}, Lio/grpc/stub/StreamObservers$1FlowControllingOnReadyHandler;-><init>(Lio/grpc/stub/CallStreamObserver;Ljava/util/Iterator;)V

    invoke-virtual {p1, v0}, Lio/grpc/stub/CallStreamObserver;->setOnReadyHandler(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method
