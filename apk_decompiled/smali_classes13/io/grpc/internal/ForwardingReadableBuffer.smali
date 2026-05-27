.class public abstract Lio/grpc/internal/ForwardingReadableBuffer;
.super Ljava/lang/Object;
.source "ForwardingReadableBuffer.java"

# interfaces
.implements Lio/grpc/internal/ReadableBuffer;


# instance fields
.field private final buf:Lio/grpc/internal/ReadableBuffer;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ReadableBuffer;)V
    .locals 1
    .param p1, "buf"    # Lio/grpc/internal/ReadableBuffer;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "buf"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    iput-object v0, p0, Lio/grpc/internal/ForwardingReadableBuffer;->buf:Lio/grpc/internal/ReadableBuffer;

    .line 42
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 91
    iget-object v0, p0, Lio/grpc/internal/ForwardingReadableBuffer;->buf:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 96
    iget-object v0, p0, Lio/grpc/internal/ForwardingReadableBuffer;->buf:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 101
    iget-object v0, p0, Lio/grpc/internal/ForwardingReadableBuffer;->buf:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    .line 102
    return-void
.end method

.method public hasArray()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lio/grpc/internal/ForwardingReadableBuffer;->buf:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public readBytes(I)Lio/grpc/internal/ReadableBuffer;
    .locals 1
    .param p1, "length"    # I

    .line 81
    iget-object v0, p0, Lio/grpc/internal/ForwardingReadableBuffer;->buf:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0, p1}, Lio/grpc/internal/ReadableBuffer;->readBytes(I)Lio/grpc/internal/ReadableBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "dest"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lio/grpc/internal/ForwardingReadableBuffer;->buf:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0, p1, p2}, Lio/grpc/internal/ReadableBuffer;->readBytes(Ljava/io/OutputStream;I)V

    .line 77
    return-void
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "dest"    # Ljava/nio/ByteBuffer;

    .line 71
    iget-object v0, p0, Lio/grpc/internal/ForwardingReadableBuffer;->buf:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0, p1}, Lio/grpc/internal/ReadableBuffer;->readBytes(Ljava/nio/ByteBuffer;)V

    .line 72
    return-void
.end method

.method public readBytes([BII)V
    .locals 1
    .param p1, "dest"    # [B
    .param p2, "destOffset"    # I
    .param p3, "length"    # I

    .line 66
    iget-object v0, p0, Lio/grpc/internal/ForwardingReadableBuffer;->buf:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/internal/ReadableBuffer;->readBytes([BII)V

    .line 67
    return-void
.end method

.method public readInt()I
    .locals 1

    .line 56
    iget-object v0, p0, Lio/grpc/internal/ForwardingReadableBuffer;->buf:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readUnsignedByte()I
    .locals 1

    .line 51
    iget-object v0, p0, Lio/grpc/internal/ForwardingReadableBuffer;->buf:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readableBytes()I
    .locals 1

    .line 46
    iget-object v0, p0, Lio/grpc/internal/ForwardingReadableBuffer;->buf:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    return v0
.end method

.method public skipBytes(I)V
    .locals 1
    .param p1, "length"    # I

    .line 61
    iget-object v0, p0, Lio/grpc/internal/ForwardingReadableBuffer;->buf:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0, p1}, Lio/grpc/internal/ReadableBuffer;->skipBytes(I)V

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 106
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ForwardingReadableBuffer;->buf:Lio/grpc/internal/ReadableBuffer;

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
