.class Lio/grpc/internal/GzipInflatingBuffer;
.super Ljava/lang/Object;
.source "GzipInflatingBuffer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/GzipInflatingBuffer$State;,
        Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;
    }
.end annotation


# static fields
.field private static final GZIP_HEADER_MIN_SIZE:I = 0xa

.field private static final GZIP_MAGIC:I = 0x8b1f

.field private static final GZIP_TRAILER_SIZE:I = 0x8

.field private static final HEADER_COMMENT_FLAG:I = 0x10

.field private static final HEADER_CRC_FLAG:I = 0x2

.field private static final HEADER_EXTRA_FLAG:I = 0x4

.field private static final HEADER_NAME_FLAG:I = 0x8

.field private static final INFLATE_BUFFER_SIZE:I = 0x200

.field private static final UNSIGNED_SHORT_SIZE:I = 0x2


# instance fields
.field private bytesConsumed:I

.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private deflatedBytesConsumed:I

.field private expectedGzipTrailerIsize:J

.field private gzipHeaderFlag:I

.field private final gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

.field private final gzippedData:Lio/grpc/internal/CompositeReadableBuffer;

.field private headerExtraToRead:I

.field private inflater:Ljava/util/zip/Inflater;

.field private final inflaterInput:[B

.field private inflaterInputEnd:I

.field private inflaterInputStart:I

.field private isStalled:Z

.field private state:Lio/grpc/internal/GzipInflatingBuffer$State;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer;

    invoke-direct {v0}, Lio/grpc/internal/CompositeReadableBuffer;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzippedData:Lio/grpc/internal/CompositeReadableBuffer;

    .line 158
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->crc:Ljava/util/zip/CRC32;

    .line 160
    new-instance v0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;-><init>(Lio/grpc/internal/GzipInflatingBuffer;Lio/grpc/internal/GzipInflatingBuffer$1;)V

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    .line 161
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInput:[B

    .line 165
    sget-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->closed:Z

    .line 179
    iput v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->bytesConsumed:I

    .line 182
    iput v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->deflatedBytesConsumed:I

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->isStalled:Z

    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/GzipInflatingBuffer;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/GzipInflatingBuffer;

    .line 38
    iget v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInputEnd:I

    return v0
.end method

.method static synthetic access$100(Lio/grpc/internal/GzipInflatingBuffer;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/GzipInflatingBuffer;

    .line 38
    iget v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInputStart:I

    return v0
.end method

.method static synthetic access$112(Lio/grpc/internal/GzipInflatingBuffer;I)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/GzipInflatingBuffer;
    .param p1, "x1"    # I

    .line 38
    iget v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInputStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInputStart:I

    return v0
.end method

.method static synthetic access$200(Lio/grpc/internal/GzipInflatingBuffer;)[B
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/GzipInflatingBuffer;

    .line 38
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInput:[B

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/internal/GzipInflatingBuffer;)Lio/grpc/internal/CompositeReadableBuffer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/GzipInflatingBuffer;

    .line 38
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzippedData:Lio/grpc/internal/CompositeReadableBuffer;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/internal/GzipInflatingBuffer;)Ljava/util/zip/CRC32;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/GzipInflatingBuffer;

    .line 38
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->crc:Ljava/util/zip/CRC32;

    return-object v0
.end method

.method static synthetic access$512(Lio/grpc/internal/GzipInflatingBuffer;I)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/GzipInflatingBuffer;
    .param p1, "x1"    # I

    .line 38
    iget v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->bytesConsumed:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->bytesConsumed:I

    return v0
.end method

.method private fill()Z
    .locals 5

    .line 442
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "inflater is null"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 443
    iget v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInputStart:I

    iget v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInputEnd:I

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "inflaterInput has unconsumed bytes"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 444
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzippedData:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v0}, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes()I

    move-result v0

    const/16 v3, 0x200

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 445
    .local v0, "bytesToAdd":I
    if-nez v0, :cond_2

    .line 446
    return v2

    .line 448
    :cond_2
    iput v2, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInputStart:I

    .line 449
    iput v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInputEnd:I

    .line 450
    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzippedData:Lio/grpc/internal/CompositeReadableBuffer;

    iget-object v4, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInput:[B

    invoke-virtual {v3, v4, v2, v0}, Lio/grpc/internal/CompositeReadableBuffer;->readBytes([BII)V

    .line 451
    iget-object v2, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInput:[B

    iget v4, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInputStart:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 452
    sget-object v2, Lio/grpc/internal/GzipInflatingBuffer$State;->INFLATING:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v2, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 453
    return v1
.end method

.method private inflate([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "inflater is null"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 417
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getTotalIn()I

    move-result v0

    .line 418
    .local v0, "inflaterTotalIn":I
    iget-object v1, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    .line 419
    .local v1, "n":I
    iget-object v2, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getTotalIn()I

    move-result v2

    sub-int/2addr v2, v0

    .line 420
    .local v2, "bytesConsumedDelta":I
    iget v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->bytesConsumed:I

    add-int/2addr v3, v2

    iput v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->bytesConsumed:I

    .line 421
    iget v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->deflatedBytesConsumed:I

    add-int/2addr v3, v2

    iput v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->deflatedBytesConsumed:I

    .line 422
    iget v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInputStart:I

    add-int/2addr v3, v2

    iput v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInputStart:I

    .line 423
    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3, p1, p2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 425
    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    iput-wide v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->expectedGzipTrailerIsize:J

    .line 429
    sget-object v3, Lio/grpc/internal/GzipInflatingBuffer$State;->TRAILER:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    goto :goto_1

    .line 430
    :cond_1
    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 431
    sget-object v3, Lio/grpc/internal/GzipInflatingBuffer$State;->INFLATER_NEEDS_INPUT:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :cond_2
    :goto_1
    return v1

    .line 435
    .end local v0    # "inflaterTotalIn":I
    .end local v1    # "n":I
    .end local v2    # "bytesConsumedDelta":I
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/util/zip/DataFormatException;
    new-instance v1, Ljava/util/zip/DataFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inflater data format exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initializeInflater()Z
    .locals 5

    .line 397
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 402
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 403
    iget v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInputEnd:I

    iget v2, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInputStart:I

    sub-int/2addr v0, v2

    .line 404
    .local v0, "bytesRemainingInInflaterInput":I
    if-lez v0, :cond_1

    .line 405
    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    iget-object v4, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflaterInput:[B

    invoke-virtual {v3, v4, v2, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 406
    sget-object v2, Lio/grpc/internal/GzipInflatingBuffer$State;->INFLATING:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v2, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    goto :goto_1

    .line 408
    :cond_1
    sget-object v2, Lio/grpc/internal/GzipInflatingBuffer$State;->INFLATER_NEEDS_INPUT:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v2, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 410
    :goto_1
    return v1
.end method

.method private processHeader()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$700(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 320
    const/4 v0, 0x0

    return v0

    .line 322
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$800(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I

    move-result v0

    const v1, 0x8b1f

    if-ne v0, v1, :cond_2

    .line 325
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$900(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 328
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$900(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I

    move-result v0

    iput v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipHeaderFlag:I

    .line 329
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$1000(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;I)V

    .line 330
    sget-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_EXTRA_LEN:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 331
    const/4 v0, 0x1

    return v0

    .line 326
    :cond_1
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "Unsupported compression method"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_2
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "Not in GZIP format"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processHeaderComment()Z
    .locals 3

    .line 369
    iget v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipHeaderFlag:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 370
    sget-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_CRC:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 371
    return v2

    .line 373
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$1100(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    const/4 v0, 0x0

    return v0

    .line 376
    :cond_1
    sget-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_CRC:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 377
    return v2
.end method

.method private processHeaderCrc()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 381
    iget v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipHeaderFlag:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 382
    sget-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->INITIALIZE_INFLATER:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 383
    return v2

    .line 385
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$700(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 386
    const/4 v0, 0x0

    return v0

    .line 388
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    const v0, 0xffff

    and-int/2addr v0, v1

    .line 389
    .local v0, "desiredCrc16":I
    iget-object v1, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    invoke-static {v1}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$800(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 392
    sget-object v1, Lio/grpc/internal/GzipInflatingBuffer$State;->INITIALIZE_INFLATER:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v1, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 393
    return v2

    .line 390
    :cond_2
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Corrupt GZIP header"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private processHeaderExtra()Z
    .locals 2

    .line 348
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$700(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I

    move-result v0

    iget v1, p0, Lio/grpc/internal/GzipInflatingBuffer;->headerExtraToRead:I

    if-ge v0, v1, :cond_0

    .line 349
    const/4 v0, 0x0

    return v0

    .line 351
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    invoke-static {v0, v1}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$1000(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;I)V

    .line 352
    sget-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_NAME:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method private processHeaderExtraLen()Z
    .locals 3

    .line 335
    iget v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipHeaderFlag:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 336
    sget-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_NAME:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 337
    return v2

    .line 339
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$700(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 340
    const/4 v0, 0x0

    return v0

    .line 342
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$800(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I

    move-result v0

    iput v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->headerExtraToRead:I

    .line 343
    sget-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_EXTRA:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 344
    return v2
.end method

.method private processHeaderName()Z
    .locals 3

    .line 357
    iget v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipHeaderFlag:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 358
    sget-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_COMMENT:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 359
    return v2

    .line 361
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$1100(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    const/4 v0, 0x0

    return v0

    .line 364
    :cond_1
    sget-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_COMMENT:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 365
    return v2
.end method

.method private processTrailer()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    .line 458
    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$700(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I

    move-result v0

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    .line 460
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    .line 463
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$700(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 464
    const/4 v0, 0x0

    return v0

    .line 466
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    iget-object v2, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    invoke-static {v2}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$1200(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-wide v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->expectedGzipTrailerIsize:J

    iget-object v2, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    .line 467
    invoke-static {v2}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$1200(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 470
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 471
    sget-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER:Lio/grpc/internal/GzipInflatingBuffer$State;

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 472
    const/4 v0, 0x1

    return v0

    .line 468
    :cond_2
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "Corrupt GZIP trailer"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method addGzippedBytes(Lio/grpc/internal/ReadableBuffer;)V
    .locals 2
    .param p1, "buffer"    # Lio/grpc/internal/ReadableBuffer;

    .line 210
    iget-boolean v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "GzipInflatingBuffer is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzippedData:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/CompositeReadableBuffer;->addBuffer(Lio/grpc/internal/ReadableBuffer;)V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->isStalled:Z

    .line 213
    return-void
.end method

.method public close()V
    .locals 1

    .line 217
    iget-boolean v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->closed:Z

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->closed:Z

    .line 219
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzippedData:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v0}, Lio/grpc/internal/CompositeReadableBuffer;->close()V

    .line 220
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->inflater:Ljava/util/zip/Inflater;

    .line 225
    :cond_0
    return-void
.end method

.method getAndResetBytesConsumed()I
    .locals 2

    .line 232
    iget v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->bytesConsumed:I

    .line 233
    .local v0, "savedBytesConsumed":I
    const/4 v1, 0x0

    iput v1, p0, Lio/grpc/internal/GzipInflatingBuffer;->bytesConsumed:I

    .line 234
    return v0
.end method

.method getAndResetDeflatedBytesConsumed()I
    .locals 2

    .line 242
    iget v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->deflatedBytesConsumed:I

    .line 243
    .local v0, "savedDeflatedBytesConsumed":I
    const/4 v1, 0x0

    iput v1, p0, Lio/grpc/internal/GzipInflatingBuffer;->deflatedBytesConsumed:I

    .line 244
    return v0
.end method

.method hasPartialData()Z
    .locals 3

    .line 201
    iget-boolean v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->closed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "GzipInflatingBuffer is closed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$700(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    sget-object v2, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER:Lio/grpc/internal/GzipInflatingBuffer$State;

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method inflateBytes([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 261
    iget-boolean v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->closed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "GzipInflatingBuffer is closed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, "bytesRead":I
    const/4 v2, 0x1

    .line 266
    .local v2, "madeProgress":Z
    :goto_0
    if-eqz v2, :cond_1

    sub-int v3, p3, v0

    move v4, v3

    .local v4, "missingBytes":I
    if-lez v3, :cond_1

    .line 267
    sget-object v3, Lio/grpc/internal/GzipInflatingBuffer$1;->$SwitchMap$io$grpc$internal$GzipInflatingBuffer$State:[I

    iget-object v5, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    invoke-virtual {v5}, Lio/grpc/internal/GzipInflatingBuffer$State;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 307
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 304
    :pswitch_0
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer;->processTrailer()Z

    move-result v2

    .line 305
    goto :goto_0

    .line 301
    :pswitch_1
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer;->fill()Z

    move-result v2

    .line 302
    goto :goto_0

    .line 290
    :pswitch_2
    add-int v3, p2, v0

    invoke-direct {p0, p1, v3, v4}, Lio/grpc/internal/GzipInflatingBuffer;->inflate([BII)I

    move-result v3

    add-int/2addr v0, v3

    .line 291
    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    sget-object v5, Lio/grpc/internal/GzipInflatingBuffer$State;->TRAILER:Lio/grpc/internal/GzipInflatingBuffer$State;

    if-ne v3, v5, :cond_0

    .line 293
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer;->processTrailer()Z

    move-result v2

    goto :goto_0

    .line 297
    :cond_0
    const/4 v2, 0x1

    .line 299
    goto :goto_0

    .line 287
    :pswitch_3
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer;->initializeInflater()Z

    move-result v2

    .line 288
    goto :goto_0

    .line 284
    :pswitch_4
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer;->processHeaderCrc()Z

    move-result v2

    .line 285
    goto :goto_0

    .line 281
    :pswitch_5
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer;->processHeaderComment()Z

    move-result v2

    .line 282
    goto :goto_0

    .line 278
    :pswitch_6
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer;->processHeaderName()Z

    move-result v2

    .line 279
    goto :goto_0

    .line 275
    :pswitch_7
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer;->processHeaderExtra()Z

    move-result v2

    .line 276
    goto :goto_0

    .line 272
    :pswitch_8
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer;->processHeaderExtraLen()Z

    move-result v2

    .line 273
    goto :goto_0

    .line 269
    :pswitch_9
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer;->processHeader()Z

    move-result v2

    .line 270
    goto :goto_0

    .line 311
    .end local v4    # "missingBytes":I
    :cond_1
    if-eqz v2, :cond_3

    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->state:Lio/grpc/internal/GzipInflatingBuffer$State;

    sget-object v4, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER:Lio/grpc/internal/GzipInflatingBuffer$State;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer;->gzipMetadataReader:Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    .line 313
    invoke-static {v3}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->access$700(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    nop

    :goto_2
    iput-boolean v1, p0, Lio/grpc/internal/GzipInflatingBuffer;->isStalled:Z

    .line 315
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method isStalled()Z
    .locals 2

    .line 191
    iget-boolean v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "GzipInflatingBuffer is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 192
    iget-boolean v0, p0, Lio/grpc/internal/GzipInflatingBuffer;->isStalled:Z

    return v0
.end method
