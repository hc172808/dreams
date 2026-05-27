.class final Lio/grpc/okhttp/internal/framed/Http2$Writer;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lio/grpc/okhttp/internal/framed/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lokio/Buffer;

.field private final hpackWriter:Lio/grpc/okhttp/internal/framed/Hpack$Writer;

.field private maxFrameSize:I

.field private final sink:Lokio/BufferedSink;


# direct methods
.method constructor <init>(Lokio/BufferedSink;Z)V
    .locals 2
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "client"    # Z

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    .line 384
    iput-boolean p2, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->client:Z

    .line 385
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    .line 386
    new-instance v1, Lio/grpc/okhttp/internal/framed/Hpack$Writer;

    invoke-direct {v1, v0}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;-><init>(Lokio/Buffer;)V

    iput-object v1, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lio/grpc/okhttp/internal/framed/Hpack$Writer;

    .line 387
    const/16 v0, 0x4000

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    .line 388
    return-void
.end method

.method private writeContinuationFrames(IJ)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 469
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 470
    .local v3, "length":I
    int-to-long v4, v3

    sub-long/2addr p2, v4

    .line 471
    const/16 v2, 0x9

    cmp-long v4, p2, v0

    if-nez v4, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1, v3, v2, v0}, Lio/grpc/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 472
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v4, v3

    invoke-interface {v0, v1, v4, v5}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 473
    .end local v3    # "length":I
    goto :goto_0

    .line 474
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized ackSettings(Lio/grpc/okhttp/internal/framed/Settings;)V
    .locals 5
    .param p1, "peerSettings"    # Lio/grpc/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 396
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_0

    .line 397
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    invoke-virtual {p1, v0}, Lio/grpc/okhttp/internal/framed/Settings;->getMaxFrameSize(I)I

    move-result v0

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "length":I
    const/4 v1, 0x4

    .line 400
    .local v1, "type":B
    const/4 v2, 0x1

    .line 401
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 402
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 403
    iget-object v4, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    .line 396
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    .end local p0    # "this":Lio/grpc/okhttp/internal/framed/Http2$Writer;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    .end local p1    # "peerSettings":Lio/grpc/okhttp/internal/framed/Settings;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 573
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->closed:Z

    .line 574
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    monitor-exit p0

    return-void

    .line 572
    .end local p0    # "this":Lio/grpc/okhttp/internal/framed/Http2$Writer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 407
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_2

    .line 408
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->client:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 409
    :cond_0
    :try_start_1
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lio/grpc/okhttp/internal/framed/Http2;->access$000()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 412
    .end local p0    # "this":Lio/grpc/okhttp/internal/framed/Http2$Writer;
    :cond_1
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-static {}, Lio/grpc/okhttp/internal/framed/Http2;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 413
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 407
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized data(ZILokio/Buffer;I)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 495
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_1

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, "flags":B
    if-eqz p1, :cond_0

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 498
    :cond_0
    invoke-virtual {p0, p2, v0, p3, p4}, Lio/grpc/okhttp/internal/framed/Http2$Writer;->dataFrame(IBLokio/Buffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit p0

    return-void

    .line 495
    .end local v0    # "flags":B
    .end local p0    # "this":Lio/grpc/okhttp/internal/framed/Http2$Writer;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "source":Lokio/Buffer;
    .end local p4    # "byteCount":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method dataFrame(IBLokio/Buffer;I)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "flags"    # B
    .param p3, "buffer"    # Lokio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "type":B
    invoke-virtual {p0, p1, p4, v0, p2}, Lio/grpc/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 504
    if-lez p4, :cond_0

    .line 505
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v1, p3, v2, v3}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 507
    :cond_0
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 391
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    .line 391
    .end local p0    # "this":Lio/grpc/okhttp/internal/framed/Http2$Writer;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method frameHeader(IIBB)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/grpc/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v1, p1, p2, p3, p4}, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 579
    :cond_0
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    const/4 v2, 0x1

    if-gt p2, v0, :cond_2

    .line 582
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 583
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-static {v0, p2}, Lio/grpc/okhttp/internal/framed/Http2;->access$600(Lokio/BufferedSink;I)V

    .line 584
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 585
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 586
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 587
    return-void

    .line 582
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "reserved bit set: %s"

    invoke-static {v1, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 580
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {v0, v3}, Lio/grpc/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p3, "debugData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 542
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_2

    .line 543
    iget v0, p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 544
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    .line 545
    .local v0, "length":I
    const/4 v1, 0x7

    .line 546
    .local v1, "type":B
    const/4 v2, 0x0

    .line 547
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 548
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 549
    iget-object v4, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 550
    iget-object v4, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    iget v5, p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 551
    array-length v4, p3

    if-lez v4, :cond_0

    .line 552
    iget-object v4, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p3}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 554
    .end local p0    # "this":Lio/grpc/okhttp/internal/framed/Http2$Writer;
    :cond_0
    iget-object v4, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    monitor-exit p0

    return-void

    .line 543
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    :cond_1
    :try_start_1
    const-string v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 542
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    .end local p1    # "lastGoodStreamId":I
    .end local p2    # "errorCode":Lio/grpc/okhttp/internal/framed/ErrorCode;
    .end local p3    # "debugData":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 2
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 432
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_0

    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lio/grpc/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 432
    .end local p0    # "this":Lio/grpc/okhttp/internal/framed/Http2$Writer;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    .end local p1    # "streamId":I
    .end local p2    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method headers(ZILjava/util/List;)V
    .locals 9
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_3

    .line 454
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lio/grpc/okhttp/internal/framed/Hpack$Writer;

    invoke-virtual {v0, p3}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 456
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 457
    .local v0, "byteCount":J
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 458
    .local v3, "length":I
    const/4 v2, 0x1

    .line 459
    .local v2, "type":B
    int-to-long v4, v3

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 460
    .local v4, "flags":B
    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 v5, v4, 0x1

    int-to-byte v4, v5

    .line 461
    :cond_1
    invoke-virtual {p0, p2, v3, v2, v4}, Lio/grpc/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 462
    iget-object v5, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    iget-object v6, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v7, v3

    invoke-interface {v5, v6, v7, v8}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 464
    int-to-long v5, v3

    cmp-long v7, v0, v5

    if-lez v7, :cond_2

    int-to-long v5, v3

    sub-long v5, v0, v5

    invoke-direct {p0, p2, v5, v6}, Lio/grpc/okhttp/internal/framed/Http2$Writer;->writeContinuationFrames(IJ)V

    .line 465
    :cond_2
    return-void

    .line 453
    .end local v0    # "byteCount":J
    .end local v2    # "type":B
    .end local v3    # "length":I
    .end local v4    # "flags":B
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxDataLength()I
    .locals 1

    .line 490
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 5
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 529
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_1

    .line 530
    const/16 v0, 0x8

    .line 531
    .local v0, "length":I
    const/4 v1, 0x6

    .line 532
    .local v1, "type":B
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 533
    .local v2, "flags":B
    :goto_0
    const/4 v3, 0x0

    .line 534
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 535
    iget-object v4, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 536
    iget-object v4, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 537
    iget-object v4, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    monitor-exit p0

    return-void

    .line 529
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    .end local p0    # "this":Lio/grpc/okhttp/internal/framed/Http2$Writer;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    .end local p1    # "ack":Z
    .end local p2    # "payload1":I
    .end local p3    # "payload2":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .locals 9
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 438
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_2

    .line 439
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lio/grpc/okhttp/internal/framed/Hpack$Writer;

    invoke-virtual {v0, p3}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 441
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 442
    .local v0, "byteCount":J
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    int-to-long v4, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 443
    .local v2, "length":I
    const/4 v4, 0x5

    .line 444
    .local v4, "type":B
    int-to-long v5, v2

    cmp-long v7, v0, v5

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 445
    .local v3, "flags":B
    :goto_0
    add-int/lit8 v5, v2, 0x4

    invoke-virtual {p0, p1, v5, v4, v3}, Lio/grpc/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 446
    iget-object v5, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    const v6, 0x7fffffff

    and-int/2addr v6, p2

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 447
    iget-object v5, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    iget-object v6, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v7, v2

    invoke-interface {v5, v6, v7, v8}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 449
    int-to-long v5, v2

    cmp-long v7, v0, v5

    if-lez v7, :cond_1

    int-to-long v5, v2

    sub-long v5, v0, v5

    invoke-direct {p0, p1, v5, v6}, Lio/grpc/okhttp/internal/framed/Http2$Writer;->writeContinuationFrames(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    .end local p0    # "this":Lio/grpc/okhttp/internal/framed/Http2$Writer;
    :cond_1
    monitor-exit p0

    return-void

    .line 438
    .end local v0    # "byteCount":J
    .end local v2    # "length":I
    .end local v3    # "flags":B
    .end local v4    # "type":B
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    .end local p1    # "streamId":I
    .end local p2    # "promisedStreamId":I
    .end local p3    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 478
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_1

    .line 479
    iget v0, p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 481
    const/4 v0, 0x4

    .line 482
    .local v0, "length":I
    const/4 v1, 0x3

    .line 483
    .local v1, "type":B
    const/4 v2, 0x0

    .line 484
    .local v2, "flags":B
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 485
    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    iget v4, p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 486
    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    monitor-exit p0

    return-void

    .line 479
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local p0    # "this":Lio/grpc/okhttp/internal/framed/Http2$Writer;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 478
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    .end local p1    # "streamId":I
    .end local p2    # "errorCode":Lio/grpc/okhttp/internal/framed/ErrorCode;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized settings(Lio/grpc/okhttp/internal/framed/Settings;)V
    .locals 8
    .param p1, "settings"    # Lio/grpc/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 510
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_4

    .line 511
    invoke-virtual {p1}, Lio/grpc/okhttp/internal/framed/Settings;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    .line 512
    .local v0, "length":I
    const/4 v1, 0x4

    .line 513
    .local v1, "type":B
    const/4 v2, 0x0

    .line 514
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 515
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 516
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v4, v5, :cond_3

    .line 517
    invoke-virtual {p1, v4}, Lio/grpc/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 518
    :cond_0
    move v5, v4

    .line 519
    .local v5, "id":I
    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    .line 520
    :cond_1
    const/4 v6, 0x7

    if-ne v5, v6, :cond_2

    const/4 v5, 0x4

    .line 521
    :cond_2
    :goto_1
    iget-object v6, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v6, v5}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    .line 522
    iget-object v6, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v4}, Lio/grpc/okhttp/internal/framed/Settings;->get(I)I

    move-result v7

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 516
    .end local v5    # "id":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 524
    .end local v4    # "i":I
    .end local p0    # "this":Lio/grpc/okhttp/internal/framed/Http2$Writer;
    :cond_3
    iget-object v4, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    .line 510
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    :cond_4
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    .end local p1    # "settings":Lio/grpc/okhttp/internal/framed/Settings;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 426
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_0

    .line 427
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    monitor-exit p0

    return-void

    .line 426
    .end local p0    # "this":Lio/grpc/okhttp/internal/framed/Http2$Writer;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 419
    if-nez p2, :cond_1

    .line 420
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_0

    .line 421
    invoke-virtual {p0, p1, p3, p5}, Lio/grpc/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit p0

    return-void

    .line 420
    .end local p0    # "this":Lio/grpc/okhttp/internal/framed/Http2$Writer;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    .end local p1    # "outFinished":Z
    .end local p2    # "inFinished":Z
    .end local p3    # "streamId":I
    .end local p4    # "associatedStreamId":I
    .end local p5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 419
    .restart local p1    # "outFinished":Z
    .restart local p2    # "inFinished":Z
    .restart local p3    # "streamId":I
    .restart local p4    # "associatedStreamId":I
    .restart local p5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    .end local p1    # "outFinished":Z
    .end local p2    # "inFinished":Z
    .end local p3    # "streamId":I
    .end local p4    # "associatedStreamId":I
    .end local p5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 559
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_1

    .line 560
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 564
    const/4 v0, 0x4

    .line 565
    .local v0, "length":I
    const/16 v1, 0x8

    .line 566
    .local v1, "type":B
    const/4 v2, 0x0

    .line 567
    .local v2, "flags":B
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 568
    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 569
    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    monitor-exit p0

    return-void

    .line 561
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local p0    # "this":Lio/grpc/okhttp/internal/framed/Http2$Writer;
    :cond_0
    :try_start_1
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 562
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 561
    invoke-static {v0, v1}, Lio/grpc/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 559
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    .end local p1    # "streamId":I
    .end local p2    # "windowSizeIncrement":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
