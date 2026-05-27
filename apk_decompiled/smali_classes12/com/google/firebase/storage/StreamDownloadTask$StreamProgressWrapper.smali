.class Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;
.super Ljava/io/InputStream;
.source "StreamDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StreamDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StreamProgressWrapper"
.end annotation


# instance fields
.field private mDownloadedBytes:J

.field private mInputStreamCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mLastExceptionPosition:J

.field private mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

.field private mStreamClosed:Z

.field private mTemporaryException:Ljava/io/IOException;

.field private mWrappedStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/firebase/storage/StreamDownloadTask;)V
    .locals 0
    .param p2, "parentTask"    # Lcom/google/firebase/storage/StreamDownloadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/firebase/storage/StreamDownloadTask;",
            ")V"
        }
    .end annotation

    .line 273
    .local p1, "inputStreamCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/io/InputStream;>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 274
    iput-object p2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    .line 275
    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mInputStreamCallable:Ljava/util/concurrent/Callable;

    .line 276
    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v0

    return v0
.end method

.method private checkCancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->getInternalState()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    new-instance v0, Lcom/google/firebase/storage/CancelException;

    invoke-direct {v0}, Lcom/google/firebase/storage/CancelException;-><init>()V

    throw v0

    .line 282
    :cond_1
    :goto_0
    return-void
.end method

.method private ensureStream()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->checkCancel()V

    .line 294
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :cond_0
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 303
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    .line 305
    iget-wide v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mLastExceptionPosition:J

    iget-wide v3, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    const-string v5, "StreamDownloadTask"

    cmp-long v6, v1, v3

    if-nez v6, :cond_1

    .line 306
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    const-string v1, "Encountered exception during stream operation. Aborting."

    invoke-static {v5, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    const/4 v0, 0x0

    return v0

    .line 310
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered exception during stream operation. Retrying at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    invoke-static {v5, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    iget-wide v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    iput-wide v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mLastExceptionPosition:J

    .line 315
    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    .line 319
    :cond_2
    iget-boolean v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mStreamClosed:Z

    if-nez v0, :cond_5

    .line 323
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    if-nez v0, :cond_4

    .line 325
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mInputStreamCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 332
    goto :goto_1

    .line 326
    :catch_1
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_3

    .line 328
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 330
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to open stream"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 335
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 320
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t perform operation on closed stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private recordDownloadedBytes(J)V
    .locals 2
    .param p1, "delta"    # J

    .line 285
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/storage/StreamDownloadTask;->recordDownloadedBytes(J)V

    .line 288
    :cond_0
    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    .line 289
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    .line 362
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 373
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mStreamClosed:Z

    .line 374
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->access$200(Lcom/google/firebase/storage/StreamDownloadTask;)Lcom/google/firebase/storage/network/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-static {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->access$200(Lcom/google/firebase/storage/StreamDownloadTask;)Lcom/google/firebase/storage/network/NetworkRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequestEnd()V

    .line 376
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StreamDownloadTask;->access$202(Lcom/google/firebase/storage/StreamDownloadTask;Lcom/google/firebase/storage/network/NetworkRequest;)Lcom/google/firebase/storage/network/NetworkRequest;

    .line 379
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->checkCancel()V

    .line 380
    return-void
.end method

.method public mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    .line 383
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 343
    .local v0, "returnValue":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 344
    const-wide/16 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :cond_0
    return v0

    .line 347
    .end local v0    # "returnValue":I
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    .line 349
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    throw v0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "bytesRead":I
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 395
    :goto_1
    int-to-long v1, p3

    const-wide/32 v3, 0x40000

    const/4 v5, -0x1

    cmp-long v6, v1, v3

    if-lez v6, :cond_2

    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    const/high16 v2, 0x40000

    .line 397
    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 398
    .local v1, "deltaBytesRead":I
    if-ne v1, v5, :cond_1

    .line 399
    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    move v5, v0

    :goto_2
    return v5

    .line 401
    :cond_1
    add-int/2addr v0, v1

    .line 402
    add-int/2addr p2, v1

    .line 403
    sub-int/2addr p3, v1

    .line 404
    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V

    .line 405
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->checkCancel()V

    .line 406
    .end local v1    # "deltaBytesRead":I
    goto :goto_1

    .line 420
    :catch_0
    move-exception v1

    goto :goto_4

    .line 407
    :cond_2
    if-lez p3, :cond_5

    .line 408
    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 409
    .restart local v1    # "deltaBytesRead":I
    if-ne v1, v5, :cond_4

    .line 410
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v5, v0

    :goto_3
    return v5

    .line 412
    :cond_4
    add-int/2addr p2, v1

    .line 413
    add-int/2addr v0, v1

    .line 414
    sub-int/2addr p3, v1

    .line 415
    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 421
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    iput-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 417
    :cond_5
    :goto_5
    if-nez p3, :cond_6

    .line 418
    return v0

    .line 422
    :cond_6
    :goto_6
    goto :goto_0

    .line 425
    :cond_7
    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    throw v1
.end method

.method public skip(J)J
    .locals 9
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    const-wide/16 v0, 0x0

    .line 432
    .local v0, "bytesSkipped":J
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 434
    :goto_1
    const-wide/16 v2, -0x1

    const-wide/32 v4, 0x40000

    const-wide/16 v6, 0x0

    cmp-long v8, p1, v4

    if-lez v8, :cond_2

    .line 435
    :try_start_0
    iget-object v8, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v8, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 436
    .local v4, "deltaBytesSkipped":J
    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    .line 437
    cmp-long v8, v0, v6

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    move-wide v2, v0

    :goto_2
    return-wide v2

    .line 439
    :cond_1
    add-long/2addr v0, v4

    .line 440
    sub-long/2addr p1, v4

    .line 441
    invoke-direct {p0, v4, v5}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V

    .line 442
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->checkCancel()V

    .line 443
    .end local v4    # "deltaBytesSkipped":J
    goto :goto_1

    .line 456
    :catch_0
    move-exception v2

    goto :goto_4

    .line 444
    :cond_2
    cmp-long v4, p1, v6

    if-lez v4, :cond_5

    .line 445
    iget-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 446
    .restart local v4    # "deltaBytesSkipped":J
    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    .line 447
    cmp-long v8, v0, v6

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    move-wide v2, v0

    :goto_3
    return-wide v2

    .line 449
    :cond_4
    add-long/2addr v0, v4

    .line 450
    sub-long/2addr p1, v4

    .line 451
    invoke-direct {p0, v4, v5}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 457
    .end local v4    # "deltaBytesSkipped":J
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    iput-object v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 453
    :cond_5
    :goto_5
    cmp-long v2, p1, v6

    if-nez v2, :cond_6

    .line 454
    return-wide v0

    .line 458
    :cond_6
    :goto_6
    goto :goto_0

    .line 461
    :cond_7
    iget-object v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    throw v2
.end method
