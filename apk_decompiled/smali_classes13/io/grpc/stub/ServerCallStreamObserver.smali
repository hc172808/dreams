.class public abstract Lio/grpc/stub/ServerCallStreamObserver;
.super Lio/grpc/stub/CallStreamObserver;
.source "ServerCallStreamObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/stub/CallStreamObserver<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    .local p0, "this":Lio/grpc/stub/ServerCallStreamObserver;, "Lio/grpc/stub/ServerCallStreamObserver<TV;>;"
    invoke-direct {p0}, Lio/grpc/stub/CallStreamObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isCancelled()Z
.end method

.method public abstract setCompression(Ljava/lang/String;)V
.end method

.method public abstract setOnCancelHandler(Ljava/lang/Runnable;)V
.end method
