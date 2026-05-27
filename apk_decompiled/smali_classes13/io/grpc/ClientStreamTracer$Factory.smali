.class public abstract Lio/grpc/ClientStreamTracer$Factory;
.super Ljava/lang/Object;
.source "ClientStreamTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ClientStreamTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newClientStreamTracer(Lio/grpc/CallOptions;Lio/grpc/Metadata;)Lio/grpc/ClientStreamTracer;
    .locals 2
    .param p1, "callOptions"    # Lio/grpc/CallOptions;
    .param p2, "headers"    # Lio/grpc/Metadata;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newClientStreamTracer(Lio/grpc/ClientStreamTracer$StreamInfo;Lio/grpc/Metadata;)Lio/grpc/ClientStreamTracer;
    .locals 1
    .param p1, "info"    # Lio/grpc/ClientStreamTracer$StreamInfo;
    .param p2, "headers"    # Lio/grpc/Metadata;

    .line 85
    invoke-virtual {p1}, Lio/grpc/ClientStreamTracer$StreamInfo;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/grpc/ClientStreamTracer$Factory;->newClientStreamTracer(Lio/grpc/CallOptions;Lio/grpc/Metadata;)Lio/grpc/ClientStreamTracer;

    move-result-object v0

    return-object v0
.end method
