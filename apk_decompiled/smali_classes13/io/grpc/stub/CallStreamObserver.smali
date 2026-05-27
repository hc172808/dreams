.class public abstract Lio/grpc/stub/CallStreamObserver;
.super Ljava/lang/Object;
.source "CallStreamObserver.java"

# interfaces
.implements Lio/grpc/stub/StreamObserver;


# annotations
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
.method public constructor <init>()V
    .locals 0

    .line 54
    .local p0, "this":Lio/grpc/stub/CallStreamObserver;, "Lio/grpc/stub/CallStreamObserver<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract disableAutoInboundFlowControl()V
.end method

.method public abstract isReady()Z
.end method

.method public abstract request(I)V
.end method

.method public abstract setMessageCompression(Z)V
.end method

.method public abstract setOnReadyHandler(Ljava/lang/Runnable;)V
.end method
