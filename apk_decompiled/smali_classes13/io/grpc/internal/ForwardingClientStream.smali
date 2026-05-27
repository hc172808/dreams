.class abstract Lio/grpc/internal/ForwardingClientStream;
.super Ljava/lang/Object;
.source "ForwardingClientStream.java"

# interfaces
.implements Lio/grpc/internal/ClientStream;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V
    .locals 1
    .param p1, "insight"    # Lio/grpc/internal/InsightBuilder;

    .line 117
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V

    .line 118
    return-void
.end method

.method public cancel(Lio/grpc/Status;)V
    .locals 1
    .param p1, "reason"    # Lio/grpc/Status;

    .line 62
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 63
    return-void
.end method

.method protected abstract delegate()Lio/grpc/internal/ClientStream;
.end method

.method public flush()V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->flush()V

    .line 43
    return-void
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public halfClose()V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->halfClose()V

    .line 68
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->isReady()Z

    move-result v0

    return v0
.end method

.method public request(I)V
    .locals 1
    .param p1, "numMessages"    # I

    .line 32
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->request(I)V

    .line 33
    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setAuthority(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public setCompressor(Lio/grpc/Compressor;)V
    .locals 1
    .param p1, "compressor"    # Lio/grpc/Compressor;

    .line 52
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setCompressor(Lio/grpc/Compressor;)V

    .line 53
    return-void
.end method

.method public setDeadline(Lio/grpc/Deadline;)V
    .locals 1
    .param p1, "deadline"    # Lio/grpc/Deadline;

    .line 102
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setDeadline(Lio/grpc/Deadline;)V

    .line 103
    return-void
.end method

.method public setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V
    .locals 1
    .param p1, "decompressorRegistry"    # Lio/grpc/DecompressorRegistry;

    .line 82
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V

    .line 83
    return-void
.end method

.method public setFullStreamDecompression(Z)V
    .locals 1
    .param p1, "fullStreamDecompression"    # Z

    .line 77
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setFullStreamDecompression(Z)V

    .line 78
    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 92
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setMaxInboundMessageSize(I)V

    .line 93
    return-void
.end method

.method public setMaxOutboundMessageSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 97
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setMaxOutboundMessageSize(I)V

    .line 98
    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 57
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setMessageCompression(Z)V

    .line 58
    return-void
.end method

.method public start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 1
    .param p1, "listener"    # Lio/grpc/internal/ClientStreamListener;

    .line 87
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->start(Lio/grpc/internal/ClientStreamListener;)V

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 112
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeMessage(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "message"    # Ljava/io/InputStream;

    .line 37
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->writeMessage(Ljava/io/InputStream;)V

    .line 38
    return-void
.end method
