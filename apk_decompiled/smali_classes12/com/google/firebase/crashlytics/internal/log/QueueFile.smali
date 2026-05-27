.class Lcom/google/firebase/crashlytics/internal/log/QueueFile;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;,
        Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;,
        Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementInputStream;
    }
.end annotation


# static fields
.field static final HEADER_LENGTH:I = 0x10

.field private static final INITIAL_LENGTH:I = 0x1000

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final buffer:[B

.field private elementCount:I

.field fileLength:I

.field private first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

.field private last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

.field private final raf:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    .line 116
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->initialize(Ljava/io/File;)V

    .line 119
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->open(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 120
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readHeader()V

    .line 121
    return-void
.end method

.method constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    .line 125
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 126
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readHeader()V

    .line 127
    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/crashlytics/internal/log/QueueFile;I)I
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/crashlytics/internal/log/QueueFile;
    .param p1, "x1"    # I

    .line 60
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->wrapPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;

    .line 60
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/firebase/crashlytics/internal/log/QueueFile;I[BII)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/crashlytics/internal/log/QueueFile;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->ringRead(I[BII)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/crashlytics/internal/log/QueueFile;)Ljava/io/RandomAccessFile;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    .line 60
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method private expandIfNecessary(I)V
    .locals 13
    .param p1, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    add-int/lit8 v0, p1, 0x4

    .line 366
    .local v0, "elementLength":I
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->remainingBytes()I

    move-result v1

    .line 367
    .local v1, "remainingBytes":I
    if-lt v1, v0, :cond_0

    .line 368
    return-void

    .line 372
    :cond_0
    iget v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 376
    .local v2, "previousLength":I
    :goto_0
    add-int/2addr v1, v2

    .line 377
    shl-int/lit8 v3, v2, 0x1

    .line 378
    .local v3, "newLength":I
    move v2, v3

    .line 379
    if-lt v1, v0, :cond_4

    .line 381
    invoke-direct {p0, v3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->setLength(I)V

    .line 384
    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v4, v4, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    add-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v5, v5, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->wrapPosition(I)I

    move-result v4

    .line 387
    .local v4, "endOfLastElement":I
    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v5, v5, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    if-ge v4, v5, :cond_2

    .line 388
    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 389
    .local v5, "channel":Ljava/nio/channels/FileChannel;
    iget v6, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 390
    add-int/lit8 v12, v4, -0x4

    .line 391
    .local v12, "count":I
    const-wide/16 v7, 0x10

    int-to-long v9, v12

    move-object v6, v5

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v6

    int-to-long v8, v12

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    goto :goto_1

    .line 392
    :cond_1
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Copied insufficient number of bytes!"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 397
    .end local v5    # "channel":Ljava/nio/channels/FileChannel;
    .end local v12    # "count":I
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v5, v5, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    iget-object v6, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v6, v6, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    if-ge v5, v6, :cond_3

    .line 398
    iget v5, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    iget-object v6, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v6, v6, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x10

    .line 399
    .local v5, "newLastPosition":I
    iget v6, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    iget-object v7, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v7, v7, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    invoke-direct {p0, v3, v6, v7, v5}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeHeader(IIII)V

    .line 400
    new-instance v6, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget-object v7, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v7, v7, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    invoke-direct {v6, v5, v7}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;-><init>(II)V

    iput-object v6, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 401
    .end local v5    # "newLastPosition":I
    goto :goto_2

    .line 402
    :cond_3
    iget v5, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    iget-object v6, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v6, v6, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    iget-object v7, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v7, v7, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeHeader(IIII)V

    .line 405
    :goto_2
    iput v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 406
    return-void

    .line 379
    .end local v4    # "endOfLastElement":I
    :cond_4
    goto :goto_0
.end method

.method private static initialize(Ljava/io/File;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "tempFile":Ljava/io/File;
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->open(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v1

    .line 204
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const-wide/16 v2, 0x1000

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 205
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 206
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 207
    .local v2, "headerBuffer":[B
    const/4 v3, 0x4

    new-array v3, v3, [I

    const/16 v4, 0x1000

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v5, v3, v4

    const/4 v4, 0x2

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeInts([B[I)V

    .line 208
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v2    # "headerBuffer":[B
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 211
    nop

    .line 214
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    return-void

    .line 215
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Rename failed!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 211
    throw v2
.end method

.method private static nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 452
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 455
    return-object p0

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static open(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private readElement(I)Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    if-nez p1, :cond_0

    .line 192
    sget-object v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->NULL:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    return-object v0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 195
    new-instance v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;-><init>(II)V

    return-object v0
.end method

.method private readHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 163
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 164
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 165
    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    .line 170
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readInt([BI)I

    move-result v0

    .line 171
    .local v0, "firstOffset":I
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readInt([BI)I

    move-result v1

    .line 172
    .local v1, "lastOffset":I
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readElement(I)Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 173
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readElement(I)Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 174
    return-void

    .line 166
    .end local v0    # "firstOffset":I
    .end local v1    # "lastOffset":I
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File is truncated. Expected length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Actual length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 167
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readInt([BI)I
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I

    .line 154
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private remainingBytes()I
    .locals 2

    .line 351
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->usedBytes()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private ringRead(I[BII)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->wrapPosition(I)I

    move-result p1

    .line 262
    add-int v0, p1, p4

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    if-gt v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 264
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    goto :goto_0

    .line 268
    :cond_0
    sub-int/2addr v1, p1

    .line 269
    .local v1, "beforeEof":I
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 270
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 271
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 272
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    add-int v2, p3, v1

    sub-int v3, p4, v1

    invoke-virtual {v0, p2, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 274
    .end local v1    # "beforeEof":I
    :goto_0
    return-void
.end method

.method private ringWrite(I[BII)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->wrapPosition(I)I

    move-result p1

    .line 239
    add-int v0, p1, p4

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    if-gt v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 241
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    .line 245
    :cond_0
    sub-int/2addr v1, p1

    .line 246
    .local v1, "beforeEof":I
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 247
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 248
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 249
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    add-int v2, p3, v1

    sub-int v3, p4, v1

    invoke-virtual {v0, p2, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 251
    .end local v1    # "beforeEof":I
    :goto_0
    return-void
.end method

.method private setLength(I)V
    .locals 3
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 412
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 413
    return-void
.end method

.method private wrapPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .line 226
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    if-ge p1, v0, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x10

    sub-int/2addr v1, v0

    :goto_0
    return v1
.end method

.method private writeHeader(IIII)V
    .locals 3
    .param p1, "fileLength"    # I
    .param p2, "elementCount"    # I
    .param p3, "firstPosition"    # I
    .param p4, "lastPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeInts([B[I)V

    .line 185
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 186
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 187
    return-void
.end method

.method private static writeInt([BII)V
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 134
    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 135
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 136
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 137
    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 138
    return-void
.end method

.method private static varargs writeInts([B[I)V
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "values"    # [I

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "offset":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 147
    .local v3, "value":I
    invoke-static {p0, v0, v3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeInt([BII)V

    .line 148
    nop

    .end local v3    # "value":I
    add-int/lit8 v0, v0, 0x4

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public add([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->add([BII)V

    .line 283
    return-void
.end method

.method public declared-synchronized add([BII)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 295
    :try_start_0
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    or-int v0, p2, p3

    if-ltz v0, :cond_3

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_3

    .line 300
    invoke-direct {p0, p3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->expandIfNecessary(I)V

    .line 303
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->isEmpty()Z

    move-result v0

    .line 305
    .local v0, "wasEmpty":Z
    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 306
    const/16 v2, 0x10

    goto :goto_0

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v2, v2, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v3, v3, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->wrapPosition(I)I

    move-result v2

    :goto_0
    nop

    .line 308
    .local v2, "position":I
    new-instance v3, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    invoke-direct {v3, v2, p3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;-><init>(II)V

    .line 311
    .local v3, "newLast":Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;
    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, p3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeInt([BII)V

    .line 312
    iget v4, v3, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    iget-object v6, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    invoke-direct {p0, v4, v6, v5, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->ringWrite(I[BII)V

    .line 315
    iget v4, v3, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->ringWrite(I[BII)V

    .line 318
    if-eqz v0, :cond_1

    iget v1, v3, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    goto :goto_1

    .end local p0    # "this":Lcom/google/firebase/crashlytics/internal/log/QueueFile;
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v1, v1, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    .line 319
    .local v1, "firstPosition":I
    :goto_1
    iget v4, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    iget v5, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    add-int/lit8 v5, v5, 0x1

    iget v6, v3, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    invoke-direct {p0, v4, v5, v1, v6}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeHeader(IIII)V

    .line 320
    iput-object v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 321
    iget v4, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    .line 322
    if-eqz v0, :cond_2

    .line 323
    iput-object v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :cond_2
    monitor-exit p0

    return-void

    .line 297
    .end local v0    # "wasEmpty":Z
    .end local v1    # "firstPosition":I
    .end local v2    # "position":I
    .end local v3    # "newLast":Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    .end local p1    # "data":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 529
    const/4 v0, 0x0

    const/16 v1, 0x1000

    :try_start_0
    invoke-direct {p0, v1, v0, v0, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeHeader(IIII)V

    .line 530
    iput v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    .line 531
    sget-object v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->NULL:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 532
    sget-object v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->NULL:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 533
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    if-le v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->setLength(I)V

    .line 534
    .end local p0    # "this":Lcom/google/firebase/crashlytics/internal/log/QueueFile;
    :cond_0
    iput v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    monitor-exit p0

    return-void

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    monitor-exit p0

    return-void

    .line 538
    .end local p0    # "this":Lcom/google/firebase/crashlytics/internal/log/QueueFile;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forEach(Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;)V
    .locals 5
    .param p1, "reader"    # Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v0, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    .line 439
    .local v0, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    if-ge v1, v2, :cond_0

    .line 440
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readElement(I)Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    move-result-object v2

    .line 441
    .local v2, "current":Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;
    new-instance v3, Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementInputStream;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementInputStream;-><init>(Lcom/google/firebase/crashlytics/internal/log/QueueFile;Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;)V

    iget v4, v2, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    invoke-interface {p1, v3, v4}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;->read(Ljava/io/InputStream;I)V

    .line 442
    iget v3, v2, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    add-int/lit8 v3, v3, 0x4

    iget v4, v2, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->wrapPosition(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    .line 439
    .end local v2    # "current":Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/google/firebase/crashlytics/internal/log/QueueFile;
    :cond_0
    monitor-exit p0

    return-void

    .line 437
    .end local v0    # "position":I
    .end local p1    # "reader":Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hasSpaceFor(II)Z
    .locals 1
    .param p1, "dataSizeBytes"    # I
    .param p2, "maxSizeBytes"    # I

    .line 547
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->usedBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    if-gt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    .line 356
    :try_start_0
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 356
    .end local p0    # "this":Lcom/google/firebase/crashlytics/internal/log/QueueFile;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized peek(Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;)V
    .locals 3
    .param p1, "reader"    # Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 428
    :try_start_0
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    if-lez v0, :cond_0

    .line 429
    new-instance v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementInputStream;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementInputStream;-><init>(Lcom/google/firebase/crashlytics/internal/log/QueueFile;Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;)V

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v1, v1, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;->read(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    .end local p0    # "this":Lcom/google/firebase/crashlytics/internal/log/QueueFile;
    :cond_0
    monitor-exit p0

    return-void

    .line 427
    .end local p1    # "reader":Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized peek()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 417
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 418
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 420
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v0, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    .line 421
    .local v0, "length":I
    new-array v1, v0, [B

    .line 422
    .local v1, "data":[B
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v2, v2, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    add-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->ringRead(I[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    monitor-exit p0

    return-object v1

    .line 416
    .end local v0    # "length":I
    .end local v1    # "data":[B
    .end local p0    # "this":Lcom/google/firebase/crashlytics/internal/log/QueueFile;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 511
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->clear()V

    goto :goto_0

    .line 518
    .end local p0    # "this":Lcom/google/firebase/crashlytics/internal/log/QueueFile;
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v0, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    const/4 v2, 0x4

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v3, v3, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->wrapPosition(I)I

    move-result v0

    .line 519
    .local v0, "newFirstPosition":I
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->ringRead(I[BII)V

    .line 520
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    invoke-static {v2, v4}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readInt([BI)I

    move-result v2

    .line 521
    .local v2, "length":I
    iget v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    iget v4, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v5, v5, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    invoke-direct {p0, v3, v4, v0, v5}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeHeader(IIII)V

    .line 522
    iget v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    .line 523
    new-instance v1, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;-><init>(II)V

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    .end local v0    # "newFirstPosition":I
    .end local v2    # "length":I
    :goto_0
    monitor-exit p0

    return-void

    .line 512
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 502
    :try_start_0
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 502
    .end local p0    # "this":Lcom/google/firebase/crashlytics/internal/log/QueueFile;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    const-string v1, "fileLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 555
    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    const-string v1, ", first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 557
    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 558
    const-string v1, ", element lengths=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :try_start_0
    new-instance v1, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;-><init>(Lcom/google/firebase/crashlytics/internal/log/QueueFile;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->forEach(Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    goto :goto_0

    .line 574
    :catch_0
    move-exception v1

    .line 575
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "read error"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 577
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public usedBytes()I
    .locals 3

    .line 329
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    const/16 v1, 0x10

    if-nez v0, :cond_0

    .line 330
    return v1

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v0, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v2, v2, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    if-lt v0, v2, :cond_1

    .line 335
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v0, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v2, v2, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v2, v2, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v0, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v1, v1, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v1, v1, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    sub-int/2addr v0, v1

    return v0
.end method
