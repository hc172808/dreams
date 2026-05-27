.class public abstract Lio/grpc/util/ForwardingClientStreamTracer;
.super Lio/grpc/ClientStreamTracer;
.source "ForwardingClientStreamTracer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lio/grpc/ClientStreamTracer;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract delegate()Lio/grpc/ClientStreamTracer;
.end method

.method public inboundHeaders()V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ClientStreamTracer;->inboundHeaders()V

    .line 38
    return-void
.end method

.method public inboundMessage(I)V
    .locals 1
    .param p1, "seqNo"    # I

    .line 57
    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ClientStreamTracer;->inboundMessage(I)V

    .line 58
    return-void
.end method

.method public inboundMessageRead(IJJ)V
    .locals 6
    .param p1, "seqNo"    # I
    .param p2, "optionalWireSize"    # J
    .param p4, "optionalUncompressedSize"    # J

    .line 67
    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/grpc/ClientStreamTracer;->inboundMessageRead(IJJ)V

    .line 68
    return-void
.end method

.method public inboundTrailers(Lio/grpc/Metadata;)V
    .locals 1
    .param p1, "trailers"    # Lio/grpc/Metadata;

    .line 42
    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ClientStreamTracer;->inboundTrailers(Lio/grpc/Metadata;)V

    .line 43
    return-void
.end method

.method public inboundUncompressedSize(J)V
    .locals 1
    .param p1, "bytes"    # J

    .line 87
    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientStreamTracer;->inboundUncompressedSize(J)V

    .line 88
    return-void
.end method

.method public inboundWireSize(J)V
    .locals 1
    .param p1, "bytes"    # J

    .line 82
    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientStreamTracer;->inboundWireSize(J)V

    .line 83
    return-void
.end method

.method public outboundHeaders()V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ClientStreamTracer;->outboundHeaders()V

    .line 33
    return-void
.end method

.method public outboundMessage(I)V
    .locals 1
    .param p1, "seqNo"    # I

    .line 52
    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ClientStreamTracer;->outboundMessage(I)V

    .line 53
    return-void
.end method

.method public outboundMessageSent(IJJ)V
    .locals 6
    .param p1, "seqNo"    # I
    .param p2, "optionalWireSize"    # J
    .param p4, "optionalUncompressedSize"    # J

    .line 62
    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/grpc/ClientStreamTracer;->outboundMessageSent(IJJ)V

    .line 63
    return-void
.end method

.method public outboundUncompressedSize(J)V
    .locals 1
    .param p1, "bytes"    # J

    .line 77
    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientStreamTracer;->outboundUncompressedSize(J)V

    .line 78
    return-void
.end method

.method public outboundWireSize(J)V
    .locals 1
    .param p1, "bytes"    # J

    .line 72
    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientStreamTracer;->outboundWireSize(J)V

    .line 73
    return-void
.end method

.method public streamClosed(Lio/grpc/Status;)V
    .locals 1
    .param p1, "status"    # Lio/grpc/Status;

    .line 47
    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ClientStreamTracer;->streamClosed(Lio/grpc/Status;)V

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
