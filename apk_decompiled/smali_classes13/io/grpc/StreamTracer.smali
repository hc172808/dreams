.class public abstract Lio/grpc/StreamTracer;
.super Ljava/lang/Object;
.source "StreamTracer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inboundMessage(I)V
    .locals 0
    .param p1, "seqNo"    # I

    .line 55
    return-void
.end method

.method public inboundMessageRead(IJJ)V
    .locals 0
    .param p1, "seqNo"    # I
    .param p2, "optionalWireSize"    # J
    .param p4, "optionalUncompressedSize"    # J

    .line 77
    return-void
.end method

.method public inboundUncompressedSize(J)V
    .locals 0
    .param p1, "bytes"    # J

    .line 108
    return-void
.end method

.method public inboundWireSize(J)V
    .locals 0
    .param p1, "bytes"    # J

    .line 100
    return-void
.end method

.method public outboundMessage(I)V
    .locals 0
    .param p1, "seqNo"    # I

    .line 44
    return-void
.end method

.method public outboundMessageSent(IJJ)V
    .locals 0
    .param p1, "seqNo"    # I
    .param p2, "optionalWireSize"    # J
    .param p4, "optionalUncompressedSize"    # J

    .line 66
    return-void
.end method

.method public outboundUncompressedSize(J)V
    .locals 0
    .param p1, "bytes"    # J

    .line 92
    return-void
.end method

.method public outboundWireSize(J)V
    .locals 0
    .param p1, "bytes"    # J

    .line 84
    return-void
.end method

.method public streamClosed(Lio/grpc/Status;)V
    .locals 0
    .param p1, "status"    # Lio/grpc/Status;

    .line 33
    return-void
.end method
