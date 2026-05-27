.class public final Lokhttp3/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;
.source "Http2Stream.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FramingSource"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp2Stream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSource\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,690:1\n580#2,4:691\n580#2,4:695\n528#2:699\n528#2:700\n*E\n*S KotlinDebug\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSource\n*L\n411#1,4:691\n422#1,4:695\n456#1:699\n479#1:700\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0003H\u0016J\u001d\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0008\"J\u0008\u0010#\u001a\u00020$H\u0016J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0003H\u0002R\u001a\u0010\u0007\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Stream$FramingSource;",
        "Lokio/Source;",
        "maxByteCount",
        "",
        "finished",
        "",
        "(Lokhttp3/internal/http2/Http2Stream;JZ)V",
        "closed",
        "getClosed$okhttp",
        "()Z",
        "setClosed$okhttp",
        "(Z)V",
        "getFinished$okhttp",
        "setFinished$okhttp",
        "readBuffer",
        "Lokio/Buffer;",
        "getReadBuffer",
        "()Lokio/Buffer;",
        "receiveBuffer",
        "getReceiveBuffer",
        "trailers",
        "Lokhttp3/Headers;",
        "getTrailers",
        "()Lokhttp3/Headers;",
        "setTrailers",
        "(Lokhttp3/Headers;)V",
        "close",
        "",
        "read",
        "sink",
        "byteCount",
        "receive",
        "source",
        "Lokio/BufferedSource;",
        "receive$okhttp",
        "timeout",
        "Lokio/Timeout;",
        "updateConnectionFlowControl",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private closed:Z

.field private finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lokio/Buffer;

.field private final receiveBuffer:Lokio/Buffer;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Stream;

.field private trailers:Lokhttp3/Headers;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Stream;JZ)V
    .locals 1
    .param p1, "$outer"    # Lokhttp3/internal/http2/Http2Stream;
    .param p2, "maxByteCount"    # J
    .param p4, "finished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)V"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    iput-boolean p4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 328
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    .line 331
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    return-void
.end method

.method private final updateConnectionFlowControl(J)V
    .locals 6
    .param p1, "read"    # J

    .line 411
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .local v0, "$this$assertThreadDoesntHoldLock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 691
    .local v1, "$i$f$assertThreadDoesntHoldLock":I
    sget-boolean v2, Lokhttp3/internal/Util;->assertionsEnabled:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v5, "Thread.currentThread()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " MUST NOT hold lock on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 694
    :cond_1
    :goto_0
    nop

    .line 413
    .end local v0    # "$this$assertThreadDoesntHoldLock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$assertThreadDoesntHoldLock":I
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl$okhttp(J)V

    .line 414
    return-void
.end method


# virtual methods
.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    const-wide/16 v0, 0x0

    .line 479
    .local v0, "bytesDiscarded":J
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    const/4 v3, 0x0

    .line 480
    .local v3, "$i$a$-synchronized-Http2Stream$FramingSource$close$1":I
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    .line 481
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    move-wide v0, v4

    .line 482
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->clear()V

    .line 483
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .local v4, "$this$notifyAll$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 700
    .local v5, "$i$f$notifyAll":I
    if-eqz v4, :cond_1

    move-object v6, v4

    check-cast v6, Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 484
    .end local v4    # "$this$notifyAll$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$notifyAll":I
    nop

    .end local v3    # "$i$a$-synchronized-Http2Stream$FramingSource$close$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    monitor-exit v2

    .line 485
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 486
    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 488
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary$okhttp()V

    .line 489
    return-void

    .line 700
    .restart local v3    # "$i$a$-synchronized-Http2Stream$FramingSource$close$1":I
    .restart local v4    # "$this$notifyAll$iv":Ljava/lang/Object;
    .restart local v5    # "$i$f$notifyAll":I
    :cond_1
    :try_start_1
    new-instance v6, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesDiscarded":J
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    .end local v3    # "$i$a$-synchronized-Http2Stream$FramingSource$close$1":I
    .end local v4    # "$this$notifyAll$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$notifyAll":I
    .restart local v0    # "bytesDiscarded":J
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public final getClosed$okhttp()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    return v0
.end method

.method public final getFinished$okhttp()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    return v0
.end method

.method public final getReadBuffer()Lokio/Buffer;
    .locals 1

    .line 331
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    return-object v0
.end method

.method public final getReceiveBuffer()Lokio/Buffer;
    .locals 1

    .line 328
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    return-object v0
.end method

.method public final getTrailers()Lokhttp3/Headers;
    .locals 1

    .line 337
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lokhttp3/Headers;

    return-object v0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 17
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    const-string v0, "sink"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_b

    .line 346
    :goto_1
    nop

    .line 347
    const/4 v7, 0x0

    .line 348
    .local v7, "tryAgain":Z
    const-wide/16 v8, -0x1

    .line 349
    .local v8, "readBytesDelivered":J
    const/4 v0, 0x0

    move-object v10, v0

    check-cast v10, Ljava/io/IOException;

    .line 353
    .local v10, "errorExceptionToDeliver":Ljava/lang/Object;
    iget-object v11, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v11

    const/4 v12, 0x0

    .line 354
    .local v12, "$i$a$-synchronized-Http2Stream$FramingSource$read$2":I
    :try_start_0
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getReadTimeout$okhttp()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 355
    nop

    .line 356
    :try_start_1
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getErrorCode$okhttp()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 358
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getErrorException$okhttp()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_2
    goto :goto_3

    :cond_1
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v13, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v13}, Lokhttp3/internal/http2/Http2Stream;->getErrorCode$okhttp()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v13

    if-nez v13, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-direct {v0, v13}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    check-cast v0, Ljava/io/IOException;

    goto :goto_2

    :goto_3
    move-object v10, v0

    .line 361
    :cond_3
    iget-boolean v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-nez v0, :cond_a

    .line 363
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v13

    cmp-long v0, v13, v5

    if-lez v0, :cond_4

    .line 365
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v13

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    invoke-virtual {v0, v2, v13, v14}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v13

    move-wide v8, v13

    .line 366
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getReadBytesTotal()J

    move-result-wide v13

    add-long/2addr v13, v8

    invoke-virtual {v0, v13, v14}, Lokhttp3/internal/http2/Http2Stream;->setReadBytesTotal$okhttp(J)V

    .line 368
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getReadBytesTotal()J

    move-result-wide v13

    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getReadBytesAcknowledged()J

    move-result-wide v15

    sub-long/2addr v13, v15

    .line 369
    .local v13, "unacknowledgedBytesRead":J
    nop

    .line 370
    if-nez v10, :cond_5

    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->getOkHttpSettings()Lokhttp3/internal/http2/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v5, v0

    cmp-long v0, v13, v5

    if-ltz v0, :cond_5

    .line 373
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    iget-object v5, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v5

    invoke-virtual {v0, v5, v13, v14}, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater$okhttp(IJ)V

    .line 374
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getReadBytesTotal()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lokhttp3/internal/http2/Http2Stream;->setReadBytesAcknowledged$okhttp(J)V

    .end local v13    # "unacknowledgedBytesRead":J
    goto :goto_4

    .line 376
    :cond_4
    iget-boolean v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v0, :cond_5

    if-nez v10, :cond_5

    .line 378
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->waitForIo$okhttp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    const/4 v0, 0x1

    move v7, v0

    .line 380
    :cond_5
    :goto_4
    nop

    .line 382
    :try_start_2
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getReadTimeout$okhttp()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 383
    nop

    .line 384
    .end local v12    # "$i$a$-synchronized-Http2Stream$FramingSource$read$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 353
    monitor-exit v11

    .line 388
    if-eqz v7, :cond_6

    .line 389
    const-wide/16 v5, 0x0

    goto/16 :goto_1

    .line 392
    :cond_6
    const-wide/16 v5, -0x1

    cmp-long v0, v8, v5

    if-eqz v0, :cond_7

    .line 394
    invoke-direct {v1, v8, v9}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 395
    return-wide v8

    .line 398
    :cond_7
    if-eqz v10, :cond_9

    .line 403
    if-nez v10, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    move-object v0, v10

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 406
    :cond_9
    return-wide v5

    .line 362
    .restart local v12    # "$i$a$-synchronized-Http2Stream$FramingSource$read$2":I
    :cond_a
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v5, "stream closed"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .end local v7    # "tryAgain":Z
    .end local v8    # "readBytesDelivered":J
    .end local v10    # "errorExceptionToDeliver":Ljava/lang/Object;
    .end local v12    # "$i$a$-synchronized-Http2Stream$FramingSource$read$2":I
    .end local p1    # "sink":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 383
    .restart local v7    # "tryAgain":Z
    .restart local v8    # "readBytesDelivered":J
    .restart local v10    # "errorExceptionToDeliver":Ljava/lang/Object;
    .restart local v12    # "$i$a$-synchronized-Http2Stream$FramingSource$read$2":I
    .restart local p1    # "sink":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_0
    move-exception v0

    .line 382
    :try_start_4
    iget-object v5, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Stream;->getReadTimeout$okhttp()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .end local v7    # "tryAgain":Z
    .end local v8    # "readBytesDelivered":J
    .end local v10    # "errorExceptionToDeliver":Ljava/lang/Object;
    .end local p1    # "sink":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 353
    .end local v12    # "$i$a$-synchronized-Http2Stream$FramingSource$read$2":I
    .restart local v7    # "tryAgain":Z
    .restart local v8    # "readBytesDelivered":J
    .restart local v10    # "errorExceptionToDeliver":Ljava/lang/Object;
    .restart local p1    # "sink":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_1
    move-exception v0

    monitor-exit v11

    throw v0

    .line 344
    .end local v7    # "tryAgain":Z
    .end local v8    # "readBytesDelivered":J
    .end local v10    # "errorExceptionToDeliver":Ljava/lang/Object;
    :cond_b
    const/4 v0, 0x0

    .local v0, "$i$a$-require-Http2Stream$FramingSource$read$1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteCount < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Http2Stream$FramingSource$read$1":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5
.end method

.method public final receive$okhttp(Lokio/BufferedSource;J)V
    .locals 19
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "source"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .local v0, "$this$assertThreadDoesntHoldLock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 695
    .local v3, "$i$f$assertThreadDoesntHoldLock":I
    sget-boolean v4, Lokhttp3/internal/Util;->assertionsEnabled:Z

    if-eqz v4, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    const-string v7, "Thread.currentThread()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " MUST NOT hold lock on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 698
    :cond_1
    :goto_0
    nop

    .line 424
    .end local v0    # "$this$assertThreadDoesntHoldLock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$assertThreadDoesntHoldLock":I
    move-wide/from16 v3, p2

    .line 426
    .local v3, "byteCount":J
    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_b

    .line 427
    const/4 v7, 0x0

    .line 428
    .local v7, "finished":Z
    const/4 v8, 0x0

    .line 429
    .local v8, "flowControlError":Z
    iget-object v9, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v9

    const/4 v0, 0x0

    .line 430
    .local v0, "$i$a$-synchronized-Http2Stream$FramingSource$receive$1":I
    :try_start_0
    iget-boolean v10, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    move v7, v10

    .line 431
    iget-object v10, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v10}, Lokio/Buffer;->size()J

    move-result-wide v10

    add-long/2addr v10, v3

    iget-wide v12, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    const/4 v15, 0x0

    cmp-long v16, v10, v12

    if-lez v16, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    move v8, v10

    .line 432
    .end local v0    # "$i$a$-synchronized-Http2Stream$FramingSource$receive$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 429
    monitor-exit v9

    .line 435
    if-eqz v8, :cond_3

    .line 436
    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 437
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    sget-object v5, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v5}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    .line 438
    return-void

    .line 442
    :cond_3
    if-eqz v7, :cond_4

    .line 443
    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 444
    return-void

    .line 448
    :cond_4
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-interface {v2, v0, v3, v4}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v9

    .line 449
    .local v9, "read":J
    const-wide/16 v11, -0x1

    cmp-long v0, v9, v11

    if-eqz v0, :cond_a

    .line 450
    sub-long/2addr v3, v9

    .line 455
    const-wide/16 v11, 0x0

    .line 456
    .local v11, "bytesDiscarded":J
    iget-object v13, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v13

    const/4 v0, 0x0

    .line 457
    .local v0, "$i$a$-synchronized-Http2Stream$FramingSource$receive$2":I
    :try_start_1
    iget-boolean v14, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v14, :cond_5

    .line 458
    iget-object v14, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v14}, Lokio/Buffer;->size()J

    move-result-wide v14

    move-wide v11, v14

    .line 459
    iget-object v14, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v14}, Lokio/Buffer;->clear()V

    move/from16 v18, v0

    goto :goto_4

    .line 461
    :cond_5
    iget-object v14, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v14}, Lokio/Buffer;->size()J

    move-result-wide v17

    cmp-long v14, v17, v5

    if-nez v14, :cond_6

    const/4 v14, 0x1

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    .line 462
    .local v14, "wasEmpty":Z
    :goto_3
    iget-object v15, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    iget-object v5, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    check-cast v5, Lokio/Source;

    invoke-virtual {v15, v5}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 463
    if-eqz v14, :cond_8

    .line 464
    iget-object v5, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .local v5, "$this$notifyAll$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 699
    .local v6, "$i$f$notifyAll":I
    if-eqz v5, :cond_7

    move-object v15, v5

    check-cast v15, Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    move/from16 v18, v0

    goto :goto_4

    :cond_7
    new-instance v15, Lkotlin/TypeCastException;

    move/from16 v18, v0

    .end local v0    # "$i$a$-synchronized-Http2Stream$FramingSource$receive$2":I
    .local v18, "$i$a$-synchronized-Http2Stream$FramingSource$receive$2":I
    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v15, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .end local v3    # "byteCount":J
    .end local v7    # "finished":Z
    .end local v8    # "flowControlError":Z
    .end local v9    # "read":J
    .end local v11    # "bytesDiscarded":J
    .end local p1    # "source":Lokio/BufferedSource;
    .end local p2    # "byteCount":J
    throw v15

    .line 463
    .end local v5    # "$this$notifyAll$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$notifyAll":I
    .end local v18    # "$i$a$-synchronized-Http2Stream$FramingSource$receive$2":I
    .restart local v0    # "$i$a$-synchronized-Http2Stream$FramingSource$receive$2":I
    .restart local v3    # "byteCount":J
    .restart local v7    # "finished":Z
    .restart local v8    # "flowControlError":Z
    .restart local v9    # "read":J
    .restart local v11    # "bytesDiscarded":J
    .restart local p1    # "source":Lokio/BufferedSource;
    .restart local p2    # "byteCount":J
    :cond_8
    move/from16 v18, v0

    .line 466
    .end local v0    # "$i$a$-synchronized-Http2Stream$FramingSource$receive$2":I
    .end local v14    # "wasEmpty":Z
    .restart local v18    # "$i$a$-synchronized-Http2Stream$FramingSource$receive$2":I
    :goto_4
    nop

    .line 467
    nop

    .end local v18    # "$i$a$-synchronized-Http2Stream$FramingSource$receive$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    monitor-exit v13

    .line 468
    const-wide/16 v5, 0x0

    cmp-long v0, v11, v5

    if-lez v0, :cond_9

    .line 469
    invoke-direct {v1, v11, v12}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 426
    .end local v7    # "finished":Z
    .end local v8    # "flowControlError":Z
    .end local v9    # "read":J
    .end local v11    # "bytesDiscarded":J
    :cond_9
    goto/16 :goto_1

    .line 456
    .restart local v7    # "finished":Z
    .restart local v8    # "flowControlError":Z
    .restart local v9    # "read":J
    .restart local v11    # "bytesDiscarded":J
    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0

    .line 449
    .end local v11    # "bytesDiscarded":J
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 429
    .end local v9    # "read":J
    :catchall_1
    move-exception v0

    monitor-exit v9

    throw v0

    .line 472
    .end local v7    # "finished":Z
    .end local v8    # "flowControlError":Z
    :cond_b
    return-void
.end method

.method public final setClosed$okhttp(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 340
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    return-void
.end method

.method public final setFinished$okhttp(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 325
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    return-void
.end method

.method public final setTrailers(Lokhttp3/Headers;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/Headers;

    .line 337
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lokhttp3/Headers;

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 474
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getReadTimeout$okhttp()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v0

    check-cast v0, Lokio/Timeout;

    return-object v0
.end method
