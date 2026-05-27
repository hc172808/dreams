.class Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;
.super Lio/grpc/internal/AbstractReadableBuffer;
.source "ReadableBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ReadableBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayWrapper"
.end annotation


# instance fields
.field final bytes:[B

.field final end:I

.field offset:I


# direct methods
.method constructor <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .line 132
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;-><init>([BII)V

    .line 133
    return-void
.end method

.method constructor <init>([BII)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 135
    invoke-direct {p0}, Lio/grpc/internal/AbstractReadableBuffer;-><init>()V

    .line 136
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "offset must be >= 0"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 137
    if-ltz p3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "length must be >= 0"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 138
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v1, "offset + length exceeds array boundary"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 140
    const-string v0, "bytes"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->bytes:[B

    .line 141
    iput p2, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    .line 142
    add-int v0, p2, p3

    iput v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->end:I

    .line 143
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 199
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->bytes:[B

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 204
    iget v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    return v0
.end method

.method public hasArray()Z
    .locals 1

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic readBytes(I)Lio/grpc/internal/ReadableBuffer;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->readBytes(I)Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;

    move-result-object p1

    return-object p1
.end method

.method public readBytes(I)Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;
    .locals 3
    .param p1, "length"    # I

    .line 186
    invoke-virtual {p0, p1}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->checkReadable(I)V

    .line 187
    iget v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    .line 188
    .local v0, "originalOffset":I
    iget v1, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    .line 189
    new-instance v1, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;

    iget-object v2, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->bytes:[B

    invoke-direct {v1, v2, v0, p1}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;-><init>([BII)V

    return-object v1
.end method

.method public readBytes(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "dest"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p2}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->checkReadable(I)V

    .line 180
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->bytes:[B

    iget v1, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 181
    iget v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    add-int/2addr v0, p2

    iput v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    .line 182
    return-void
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "dest"    # Ljava/nio/ByteBuffer;

    .line 170
    const-string v0, "dest"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 172
    .local v0, "length":I
    invoke-virtual {p0, v0}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->checkReadable(I)V

    .line 173
    iget-object v1, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->bytes:[B

    iget v2, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 174
    iget v1, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    .line 175
    return-void
.end method

.method public readBytes([BII)V
    .locals 2
    .param p1, "dest"    # [B
    .param p2, "destIndex"    # I
    .param p3, "length"    # I

    .line 164
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->bytes:[B

    iget v1, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    add-int/2addr v0, p3

    iput v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    .line 166
    return-void
.end method

.method public readUnsignedByte()I
    .locals 3

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->checkReadable(I)V

    .line 159
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->bytes:[B

    iget v1, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readableBytes()I
    .locals 2

    .line 147
    iget v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->end:I

    iget v1, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public skipBytes(I)V
    .locals 1
    .param p1, "length"    # I

    .line 152
    invoke-virtual {p0, p1}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->checkReadable(I)V

    .line 153
    iget v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    .line 154
    return-void
.end method
