.class public abstract Lio/grpc/ServerStreamTracer;
.super Lio/grpc/StreamTracer;
.source "ServerStreamTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ServerStreamTracer$ReadOnlyServerCall;,
        Lio/grpc/ServerStreamTracer$ServerCallInfo;,
        Lio/grpc/ServerStreamTracer$Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lio/grpc/StreamTracer;-><init>()V

    return-void
.end method


# virtual methods
.method public filterContext(Lio/grpc/Context;)Lio/grpc/Context;
    .locals 0
    .param p1, "context"    # Lio/grpc/Context;

    .line 33
    return-object p1
.end method

.method public serverCallStarted(Lio/grpc/ServerCall;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerCall<",
            "**>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    .local p1, "call":Lio/grpc/ServerCall;, "Lio/grpc/ServerCall<**>;"
    return-void
.end method

.method public serverCallStarted(Lio/grpc/ServerStreamTracer$ServerCallInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerStreamTracer$ServerCallInfo<",
            "**>;)V"
        }
    .end annotation

    .line 43
    .local p1, "callInfo":Lio/grpc/ServerStreamTracer$ServerCallInfo;, "Lio/grpc/ServerStreamTracer$ServerCallInfo<**>;"
    invoke-static {p1}, Lio/grpc/ServerStreamTracer$ReadOnlyServerCall;->access$000(Lio/grpc/ServerStreamTracer$ServerCallInfo;)Lio/grpc/ServerStreamTracer$ReadOnlyServerCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/ServerStreamTracer;->serverCallStarted(Lio/grpc/ServerCall;)V

    .line 44
    return-void
.end method
