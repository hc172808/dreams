.class Lio/grpc/stub/ServerCalls$NoopStreamObserver;
.super Ljava/lang/Object;
.source "ServerCalls.java"

# interfaces
.implements Lio/grpc/stub/StreamObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ServerCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoopStreamObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/stub/StreamObserver<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 448
    .local p0, "this":Lio/grpc/stub/ServerCalls$NoopStreamObserver;, "Lio/grpc/stub/ServerCalls$NoopStreamObserver<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .line 459
    .local p0, "this":Lio/grpc/stub/ServerCalls$NoopStreamObserver;, "Lio/grpc/stub/ServerCalls$NoopStreamObserver<TV;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 455
    .local p0, "this":Lio/grpc/stub/ServerCalls$NoopStreamObserver;, "Lio/grpc/stub/ServerCalls$NoopStreamObserver<TV;>;"
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 451
    .local p0, "this":Lio/grpc/stub/ServerCalls$NoopStreamObserver;, "Lio/grpc/stub/ServerCalls$NoopStreamObserver<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    return-void
.end method
