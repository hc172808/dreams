.class public final Lcom/google/zxing/datamatrix/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 39
    return-void
.end method

.method private correctErrors([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 107
    array-length v0, p1

    .line 109
    new-array v1, v0, [I

    .line 110
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 111
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    nop

    .line 120
    nop

    :goto_1
    if-ge v2, p2, :cond_1

    .line 121
    aget v0, v1, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    :cond_1
    return-void

    .line 115
    :catch_0
    move-exception p1

    .line 116
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 13
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;

    invoke-direct {v0, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 67
    .local v2, "parser":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->getVersion()Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v0

    .line 70
    .local v0, "version":Lcom/google/zxing/datamatrix/decoder/Version;
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v3

    .line 72
    invoke-static {v3, v0}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-result-object v3

    .line 75
    .local v3, "dataBlocks":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    const/4 v4, 0x0

    .line 76
    .local v4, "totalBytes":I
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v1, v3, v6

    .line 77
    .local v1, "db":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v7

    add-int/2addr v4, v7

    .line 76
    .end local v1    # "db":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 79
    :cond_0
    new-array v5, v4, [B

    .line 81
    .local v5, "resultBytes":[B
    array-length v6, v3

    .line 83
    .local v6, "dataBlocksCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_2

    .line 84
    aget-object v8, v3, v7

    .line 85
    .local v1, "dataBlock":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    move-object v1, v8

    invoke-virtual {v8}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getCodewords()[B

    move-result-object v8

    .line 86
    .local v8, "codewordBytes":[B
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v9

    .line 87
    .local v9, "numDataCodewords":I
    invoke-direct {p0, v8, v9}, Lcom/google/zxing/datamatrix/decoder/Decoder;->correctErrors([BI)V

    .line 88
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v9, :cond_1

    .line 90
    mul-int v11, v10, v6

    add-int/2addr v11, v7

    aget-byte v12, v8, v10

    aput-byte v12, v5, v11

    .line 88
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 83
    .end local v1    # "dataBlock":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .end local v8    # "codewordBytes":[B
    .end local v9    # "numDataCodewords":I
    .end local v10    # "i":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 95
    .end local v7    # "j":I
    :cond_2
    invoke-static {v5}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decode([B)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    return-object v1
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .param p1, "image"    # [[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/google/zxing/common/BitMatrix;->parse([[Z)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method
