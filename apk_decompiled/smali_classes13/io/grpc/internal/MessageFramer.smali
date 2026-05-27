.class public Lio/grpc/internal/MessageFramer;
.super Ljava/lang/Object;
.source "MessageFramer.java"

# interfaces
.implements Lio/grpc/internal/Framer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/MessageFramer$BufferChainOutputStream;,
        Lio/grpc/internal/MessageFramer$OutputStreamAdapter;,
        Lio/grpc/internal/MessageFramer$Sink;
    }
.end annotation


# static fields
.field private static final COMPRESSED:B = 0x1t

.field private static final HEADER_LENGTH:I = 0x5

.field private static final NO_MAX_OUTBOUND_MESSAGE_SIZE:I = -0x1

.field private static final UNCOMPRESSED:B


# instance fields
.field private buffer:Lio/grpc/internal/WritableBuffer;

.field private final bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

.field private closed:Z

.field private compressor:Lio/grpc/Compressor;

.field private currentMessageSeqNo:I

.field private currentMessageWireSize:J

.field private final headerScratch:[B

.field private maxOutboundMessageSize:I

.field private messageCompression:Z

.field private messagesBuffered:I

.field private final outputStreamAdapter:Lio/grpc/internal/MessageFramer$OutputStreamAdapter;

.field private final sink:Lio/grpc/internal/MessageFramer$Sink;

.field private final statsTraceCtx:Lio/grpc/internal/StatsTraceContext;


# direct methods
.method public constructor <init>(Lio/grpc/internal/MessageFramer$Sink;Lio/grpc/internal/WritableBufferAllocator;Lio/grpc/internal/StatsTraceContext;)V
    .locals 3
    .param p1, "sink"    # Lio/grpc/internal/MessageFramer$Sink;
    .param p2, "bufferAllocator"    # Lio/grpc/internal/WritableBufferAllocator;
    .param p3, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    .line 76
    sget-object v1, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    iput-object v1, p0, Lio/grpc/internal/MessageFramer;->compressor:Lio/grpc/Compressor;

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/internal/MessageFramer;->messageCompression:Z

    .line 78
    new-instance v1, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;-><init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageFramer$1;)V

    iput-object v1, p0, Lio/grpc/internal/MessageFramer;->outputStreamAdapter:Lio/grpc/internal/MessageFramer$OutputStreamAdapter;

    .line 79
    const/4 v1, 0x5

    new-array v1, v1, [B

    iput-object v1, p0, Lio/grpc/internal/MessageFramer;->headerScratch:[B

    .line 87
    iput v0, p0, Lio/grpc/internal/MessageFramer;->currentMessageSeqNo:I

    .line 98
    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/MessageFramer$Sink;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->sink:Lio/grpc/internal/MessageFramer$Sink;

    .line 99
    const-string v0, "bufferAllocator"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/WritableBufferAllocator;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    .line 100
    const-string v0, "statsTraceCtx"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/StatsTraceContext;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    .line 101
    return-void
.end method

.method static synthetic access$400(Lio/grpc/internal/MessageFramer;[BII)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/MessageFramer;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/MessageFramer;->writeRaw([BII)V

    return-void
.end method

.method static synthetic access$500(Lio/grpc/internal/MessageFramer;)Lio/grpc/internal/WritableBufferAllocator;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/MessageFramer;

    .line 43
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    return-object v0
.end method

.method private commitToSink(ZZ)V
    .locals 3
    .param p1, "endOfStream"    # Z
    .param p2, "flush"    # Z

    .line 350
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 351
    .local v0, "buf":Lio/grpc/internal/WritableBuffer;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 352
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->sink:Lio/grpc/internal/MessageFramer$Sink;

    iget v2, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    invoke-interface {v1, v0, p1, p2, v2}, Lio/grpc/internal/MessageFramer$Sink;->deliverFrame(Lio/grpc/internal/WritableBuffer;ZZI)V

    .line 353
    const/4 v1, 0x0

    iput v1, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    .line 354
    return-void
.end method

.method private getKnownLength(Ljava/io/InputStream;)I
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    instance-of v0, p1, Lio/grpc/KnownLength;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 205
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method private releaseBuffer()V
    .locals 1

    .line 343
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-eqz v0, :cond_0

    .line 344
    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->release()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 347
    :cond_0
    return-void
.end method

.method private verifyNotClosed()V
    .locals 2

    .line 357
    invoke-virtual {p0}, Lio/grpc/internal/MessageFramer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    return-void

    .line 358
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Framer already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeBufferChain(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;Z)V
    .locals 9
    .param p1, "bufferChain"    # Lio/grpc/internal/MessageFramer$BufferChainOutputStream;
    .param p2, "compressed"    # Z

    .line 237
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->headerScratch:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 238
    .local v0, "header":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 239
    invoke-static {p1}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->access$200(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;)I

    move-result v1

    .line 240
    .local v1, "messageLength":I
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 241
    iget-object v2, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lio/grpc/internal/WritableBufferAllocator;->allocate(I)Lio/grpc/internal/WritableBuffer;

    move-result-object v2

    .line 242
    .local v2, "writeableHeader":Lio/grpc/internal/WritableBuffer;
    iget-object v3, p0, Lio/grpc/internal/MessageFramer;->headerScratch:[B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, Lio/grpc/internal/WritableBuffer;->write([BII)V

    .line 243
    if-nez v1, :cond_0

    .line 245
    iput-object v2, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 246
    return-void

    .line 253
    :cond_0
    iget-object v3, p0, Lio/grpc/internal/MessageFramer;->sink:Lio/grpc/internal/MessageFramer$Sink;

    iget v4, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v3, v2, v5, v5, v4}, Lio/grpc/internal/MessageFramer$Sink;->deliverFrame(Lio/grpc/internal/WritableBuffer;ZZI)V

    .line 254
    iput v6, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    .line 256
    invoke-static {p1}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->access$300(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;)Ljava/util/List;

    move-result-object v3

    .line 257
    .local v3, "bufferList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/WritableBuffer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    if-ge v4, v7, :cond_1

    .line 258
    iget-object v7, p0, Lio/grpc/internal/MessageFramer;->sink:Lio/grpc/internal/MessageFramer$Sink;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/grpc/internal/WritableBuffer;

    invoke-interface {v7, v8, v5, v5, v5}, Lio/grpc/internal/MessageFramer$Sink;->deliverFrame(Lio/grpc/internal/WritableBuffer;ZZI)V

    .line 257
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    .end local v4    # "i":I
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/internal/WritableBuffer;

    iput-object v4, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 263
    int-to-long v4, v1

    iput-wide v4, p0, Lio/grpc/internal/MessageFramer;->currentMessageWireSize:J

    .line 264
    return-void
.end method

.method private writeCompressed(Ljava/io/InputStream;I)I
    .locals 8
    .param p1, "message"    # Ljava/io/InputStream;
    .param p2, "unusedMessageLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;-><init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageFramer$1;)V

    .line 185
    .local v0, "bufferChain":Lio/grpc/internal/MessageFramer$BufferChainOutputStream;
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->compressor:Lio/grpc/Compressor;

    invoke-interface {v1, v0}, Lio/grpc/Compressor;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    .line 188
    .local v1, "compressingStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p1, v1}, Lio/grpc/internal/MessageFramer;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .local v2, "written":I
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 191
    nop

    .line 192
    iget v3, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    const/4 v4, 0x1

    if-ltz v3, :cond_1

    if-gt v2, v3, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    sget-object v3, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 195
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    iget v6, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v4, "message too large %d > %d"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-virtual {v3, v4}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    .line 196
    invoke-virtual {v3}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v3

    throw v3

    .line 199
    :cond_1
    :goto_0
    invoke-direct {p0, v0, v4}, Lio/grpc/internal/MessageFramer;->writeBufferChain(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;Z)V

    .line 200
    return v2

    .line 190
    .end local v2    # "written":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v2
.end method

.method private writeKnownLengthUncompressed(Ljava/io/InputStream;I)I
    .locals 4
    .param p1, "message"    # Ljava/io/InputStream;
    .param p2, "messageLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget v0, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    if-gt p2, v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    sget-object v0, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 218
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget v3, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "message too large %d > %d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 221
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->headerScratch:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 222
    .local v0, "header":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 223
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 226
    iget-object v2, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-nez v2, :cond_2

    .line 227
    iget-object v2, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, p2

    invoke-interface {v2, v3}, Lio/grpc/internal/WritableBufferAllocator;->allocate(I)Lio/grpc/internal/WritableBuffer;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 229
    :cond_2
    iget-object v2, p0, Lio/grpc/internal/MessageFramer;->headerScratch:[B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lio/grpc/internal/MessageFramer;->writeRaw([BII)V

    .line 230
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->outputStreamAdapter:Lio/grpc/internal/MessageFramer$OutputStreamAdapter;

    invoke-static {p1, v1}, Lio/grpc/internal/MessageFramer;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v1

    return v1
.end method

.method private writeRaw([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 281
    :goto_0
    if-lez p3, :cond_2

    .line 282
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->writableBytes()I

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lio/grpc/internal/MessageFramer;->commitToSink(ZZ)V

    .line 285
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    invoke-interface {v0, p3}, Lio/grpc/internal/WritableBufferAllocator;->allocate(I)Lio/grpc/internal/WritableBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 289
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->writableBytes()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 290
    .local v0, "toWrite":I
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v1, p1, p2, v0}, Lio/grpc/internal/WritableBuffer;->write([BII)V

    .line 291
    add-int/2addr p2, v0

    .line 292
    sub-int/2addr p3, v0

    .line 293
    .end local v0    # "toWrite":I
    goto :goto_0

    .line 294
    :cond_2
    return-void
.end method

.method private static writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5
    .param p0, "message"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    instance-of v0, p0, Lio/grpc/Drainable;

    if-eqz v0, :cond_0

    .line 269
    move-object v0, p0

    check-cast v0, Lio/grpc/Drainable;

    invoke-interface {v0, p1}, Lio/grpc/Drainable;->drainTo(Ljava/io/OutputStream;)I

    move-result v0

    return v0

    .line 274
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 275
    .local v0, "written":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Message size overflow: %s"

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 276
    long-to-int v2, v0

    return v2
.end method

.method private writeUncompressed(Ljava/io/InputStream;I)I
    .locals 6
    .param p1, "message"    # Ljava/io/InputStream;
    .param p2, "messageLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 167
    int-to-long v0, p2

    iput-wide v0, p0, Lio/grpc/internal/MessageFramer;->currentMessageWireSize:J

    .line 168
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/MessageFramer;->writeKnownLengthUncompressed(Ljava/io/InputStream;I)I

    move-result v0

    return v0

    .line 170
    :cond_0
    new-instance v0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;-><init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageFramer$1;)V

    .line 171
    .local v0, "bufferChain":Lio/grpc/internal/MessageFramer$BufferChainOutputStream;
    invoke-static {p1, v0}, Lio/grpc/internal/MessageFramer;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v1

    .line 172
    .local v1, "written":I
    iget v2, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    const/4 v3, 0x0

    if-ltz v2, :cond_2

    if-gt v1, v2, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    sget-object v2, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    iget v5, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "message too large %d > %d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v2

    throw v2

    .line 178
    :cond_2
    :goto_0
    invoke-direct {p0, v0, v3}, Lio/grpc/internal/MessageFramer;->writeBufferChain(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;Z)V

    .line 179
    return v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 321
    invoke-virtual {p0}, Lio/grpc/internal/MessageFramer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/MessageFramer;->closed:Z

    .line 325
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/grpc/internal/WritableBuffer;->readableBytes()I

    move-result v1

    if-nez v1, :cond_0

    .line 326
    invoke-direct {p0}, Lio/grpc/internal/MessageFramer;->releaseBuffer()V

    .line 328
    :cond_0
    invoke-direct {p0, v0, v0}, Lio/grpc/internal/MessageFramer;->commitToSink(ZZ)V

    .line 330
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/MessageFramer;->closed:Z

    .line 339
    invoke-direct {p0}, Lio/grpc/internal/MessageFramer;->releaseBuffer()V

    .line 340
    return-void
.end method

.method public flush()V
    .locals 2

    .line 301
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->readableBytes()I

    move-result v0

    if-lez v0, :cond_0

    .line 302
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/grpc/internal/MessageFramer;->commitToSink(ZZ)V

    .line 304
    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lio/grpc/internal/MessageFramer;->closed:Z

    return v0
.end method

.method public bridge synthetic setCompressor(Lio/grpc/Compressor;)Lio/grpc/internal/Framer;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/grpc/internal/MessageFramer;->setCompressor(Lio/grpc/Compressor;)Lio/grpc/internal/MessageFramer;

    move-result-object p1

    return-object p1
.end method

.method public setCompressor(Lio/grpc/Compressor;)Lio/grpc/internal/MessageFramer;
    .locals 1
    .param p1, "compressor"    # Lio/grpc/Compressor;

    .line 105
    const-string v0, "Can\'t pass an empty compressor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Compressor;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->compressor:Lio/grpc/Compressor;

    .line 106
    return-object p0
.end method

.method public setMaxOutboundMessageSize(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .line 117
    iget v0, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "max size already set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 118
    iput p1, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    .line 119
    return-void
.end method

.method public bridge synthetic setMessageCompression(Z)Lio/grpc/internal/Framer;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/grpc/internal/MessageFramer;->setMessageCompression(Z)Lio/grpc/internal/MessageFramer;

    move-result-object p1

    return-object p1
.end method

.method public setMessageCompression(Z)Lio/grpc/internal/MessageFramer;
    .locals 0
    .param p1, "enable"    # Z

    .line 111
    iput-boolean p1, p0, Lio/grpc/internal/MessageFramer;->messageCompression:Z

    .line 112
    return-object p0
.end method

.method public writePayload(Ljava/io/InputStream;)V
    .locals 12
    .param p1, "message"    # Ljava/io/InputStream;

    .line 128
    const-string v0, "Failed to frame message"

    invoke-direct {p0}, Lio/grpc/internal/MessageFramer;->verifyNotClosed()V

    .line 129
    iget v1, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    .line 130
    iget v1, p0, Lio/grpc/internal/MessageFramer;->currentMessageSeqNo:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/grpc/internal/MessageFramer;->currentMessageSeqNo:I

    .line 131
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lio/grpc/internal/MessageFramer;->currentMessageWireSize:J

    .line 132
    iget-object v3, p0, Lio/grpc/internal/MessageFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v3, v1}, Lio/grpc/internal/StatsTraceContext;->outboundMessage(I)V

    .line 133
    iget-boolean v1, p0, Lio/grpc/internal/MessageFramer;->messageCompression:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->compressor:Lio/grpc/Compressor;

    sget-object v4, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    if-eq v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 134
    .local v1, "compressed":Z
    :goto_0
    const/4 v4, -0x1

    .line 135
    .local v4, "written":I
    const/4 v5, -0x2

    .line 137
    .local v5, "messageLength":I
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/internal/MessageFramer;->getKnownLength(Ljava/io/InputStream;)I

    move-result v6

    move v5, v6

    .line 138
    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 139
    invoke-direct {p0, p1, v5}, Lio/grpc/internal/MessageFramer;->writeCompressed(Ljava/io/InputStream;I)I

    move-result v0

    .end local v4    # "written":I
    .local v0, "written":I
    goto :goto_1

    .line 141
    .end local v0    # "written":I
    .restart local v4    # "written":I
    :cond_1
    invoke-direct {p0, p1, v5}, Lio/grpc/internal/MessageFramer;->writeUncompressed(Ljava/io/InputStream;I)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v4    # "written":I
    .restart local v0    # "written":I
    :goto_1
    nop

    .line 156
    const/4 v4, -0x1

    if-eq v5, v4, :cond_3

    if-ne v0, v5, :cond_2

    goto :goto_2

    .line 157
    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v2, "Message length inaccurate %s != %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "err":Ljava/lang/String;
    sget-object v3, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    invoke-virtual {v3, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v3

    throw v3

    .line 160
    .end local v2    # "err":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v2, p0, Lio/grpc/internal/MessageFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lio/grpc/internal/StatsTraceContext;->outboundUncompressedSize(J)V

    .line 161
    iget-object v2, p0, Lio/grpc/internal/MessageFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget-wide v3, p0, Lio/grpc/internal/MessageFramer;->currentMessageWireSize:J

    invoke-virtual {v2, v3, v4}, Lio/grpc/internal/StatsTraceContext;->outboundWireSize(J)V

    .line 162
    iget-object v6, p0, Lio/grpc/internal/MessageFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v7, p0, Lio/grpc/internal/MessageFramer;->currentMessageSeqNo:I

    iget-wide v8, p0, Lio/grpc/internal/MessageFramer;->currentMessageWireSize:J

    int-to-long v10, v0

    invoke-virtual/range {v6 .. v11}, Lio/grpc/internal/StatsTraceContext;->outboundMessageSent(IJJ)V

    .line 163
    return-void

    .line 149
    .end local v0    # "written":I
    .restart local v4    # "written":I
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 151
    invoke-virtual {v3, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 143
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 145
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 146
    invoke-virtual {v3, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 147
    invoke-virtual {v0, v2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0
.end method
