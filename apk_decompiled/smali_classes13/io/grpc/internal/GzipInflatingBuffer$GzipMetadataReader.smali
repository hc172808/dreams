.class Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;
.super Ljava/lang/Object;
.source "GzipInflatingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/GzipInflatingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GzipMetadataReader"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/GzipInflatingBuffer;


# direct methods
.method private constructor <init>(Lio/grpc/internal/GzipInflatingBuffer;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/GzipInflatingBuffer;Lio/grpc/internal/GzipInflatingBuffer$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/GzipInflatingBuffer;
    .param p2, "x1"    # Lio/grpc/internal/GzipInflatingBuffer$1;

    .line 58
    invoke-direct {p0, p1}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;-><init>(Lio/grpc/internal/GzipInflatingBuffer;)V

    return-void
.end method

.method static synthetic access$1000(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;I)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->skipBytes(I)V

    return-void
.end method

.method static synthetic access$1100(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    .line 58
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readBytesUntilZero()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    .line 58
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    .line 58
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readableBytes()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    .line 58
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;

    .line 58
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method private readBytesUntilZero()Z
    .locals 1

    .line 118
    :cond_0
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readableBytes()I

    move-result v0

    if-lez v0, :cond_1

    .line 119
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x1

    return v0

    .line 123
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private readUnsignedByte()I
    .locals 4

    .line 67
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer;->access$000(Lio/grpc/internal/GzipInflatingBuffer;)I

    move-result v0

    iget-object v1, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v1}, Lio/grpc/internal/GzipInflatingBuffer;->access$100(Lio/grpc/internal/GzipInflatingBuffer;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 69
    .local v0, "bytesRemainingInInflaterInput":I
    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 70
    iget-object v2, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v2}, Lio/grpc/internal/GzipInflatingBuffer;->access$200(Lio/grpc/internal/GzipInflatingBuffer;)[B

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v3}, Lio/grpc/internal/GzipInflatingBuffer;->access$100(Lio/grpc/internal/GzipInflatingBuffer;)I

    move-result v3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 71
    .local v2, "b":I
    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v3, v1}, Lio/grpc/internal/GzipInflatingBuffer;->access$112(Lio/grpc/internal/GzipInflatingBuffer;I)I

    goto :goto_0

    .line 73
    .end local v2    # "b":I
    :cond_0
    iget-object v2, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v2}, Lio/grpc/internal/GzipInflatingBuffer;->access$300(Lio/grpc/internal/GzipInflatingBuffer;)Lio/grpc/internal/CompositeReadableBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/CompositeReadableBuffer;->readUnsignedByte()I

    move-result v2

    .line 75
    .restart local v2    # "b":I
    :goto_0
    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v3}, Lio/grpc/internal/GzipInflatingBuffer;->access$400(Lio/grpc/internal/GzipInflatingBuffer;)Ljava/util/zip/CRC32;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update(I)V

    .line 76
    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v3, v1}, Lio/grpc/internal/GzipInflatingBuffer;->access$512(Lio/grpc/internal/GzipInflatingBuffer;I)I

    .line 77
    return v2
.end method

.method private readUnsignedInt()J
    .locals 5

    .line 133
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readUnsignedShort()I

    move-result v0

    int-to-long v0, v0

    .line 134
    .local v0, "s":J
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readUnsignedShort()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v2, v0

    return-wide v2
.end method

.method private readUnsignedShort()I
    .locals 2

    .line 128
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readUnsignedByte()I

    move-result v0

    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private readableBytes()I
    .locals 2

    .line 113
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer;->access$000(Lio/grpc/internal/GzipInflatingBuffer;)I

    move-result v0

    iget-object v1, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v1}, Lio/grpc/internal/GzipInflatingBuffer;->access$100(Lio/grpc/internal/GzipInflatingBuffer;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v1}, Lio/grpc/internal/GzipInflatingBuffer;->access$300(Lio/grpc/internal/GzipInflatingBuffer;)Lio/grpc/internal/CompositeReadableBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private skipBytes(I)V
    .locals 7
    .param p1, "length"    # I

    .line 88
    move v0, p1

    .line 89
    .local v0, "bytesToSkip":I
    iget-object v1, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v1}, Lio/grpc/internal/GzipInflatingBuffer;->access$000(Lio/grpc/internal/GzipInflatingBuffer;)I

    move-result v1

    iget-object v2, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v2}, Lio/grpc/internal/GzipInflatingBuffer;->access$100(Lio/grpc/internal/GzipInflatingBuffer;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 91
    .local v1, "bytesRemainingInInflaterInput":I
    if-lez v1, :cond_0

    .line 92
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 93
    .local v2, "bytesToGetFromInflaterInput":I
    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v3}, Lio/grpc/internal/GzipInflatingBuffer;->access$400(Lio/grpc/internal/GzipInflatingBuffer;)Ljava/util/zip/CRC32;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v4}, Lio/grpc/internal/GzipInflatingBuffer;->access$200(Lio/grpc/internal/GzipInflatingBuffer;)[B

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v5}, Lio/grpc/internal/GzipInflatingBuffer;->access$100(Lio/grpc/internal/GzipInflatingBuffer;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 94
    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v3, v2}, Lio/grpc/internal/GzipInflatingBuffer;->access$112(Lio/grpc/internal/GzipInflatingBuffer;I)I

    .line 95
    sub-int/2addr v0, v2

    .line 98
    .end local v2    # "bytesToGetFromInflaterInput":I
    :cond_0
    if-lez v0, :cond_1

    .line 99
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 100
    .local v2, "buf":[B
    const/4 v3, 0x0

    .line 101
    .local v3, "total":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 102
    sub-int v4, v0, v3

    array-length v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 103
    .local v4, "toRead":I
    iget-object v5, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v5}, Lio/grpc/internal/GzipInflatingBuffer;->access$300(Lio/grpc/internal/GzipInflatingBuffer;)Lio/grpc/internal/CompositeReadableBuffer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v4}, Lio/grpc/internal/CompositeReadableBuffer;->readBytes([BII)V

    .line 104
    iget-object v5, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v5}, Lio/grpc/internal/GzipInflatingBuffer;->access$400(Lio/grpc/internal/GzipInflatingBuffer;)Ljava/util/zip/CRC32;

    move-result-object v5

    invoke-virtual {v5, v2, v6, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 105
    add-int/2addr v3, v4

    .line 106
    .end local v4    # "toRead":I
    goto :goto_0

    .line 109
    .end local v2    # "buf":[B
    .end local v3    # "total":I
    :cond_1
    iget-object v2, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v2, p1}, Lio/grpc/internal/GzipInflatingBuffer;->access$512(Lio/grpc/internal/GzipInflatingBuffer;I)I

    .line 110
    return-void
.end method
