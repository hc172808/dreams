.class final Lcom/google/zxing/qrcode/decoder/FormatInformation;
.super Ljava/lang/Object;
.source "FormatInformation.java"


# static fields
.field private static final FORMAT_INFO_DECODE_LOOKUP:[[I

.field private static final FORMAT_INFO_MASK_QR:I = 0x5412


# instance fields
.field private final dataMask:B

.field private final errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    const/16 v0, 0x20

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_14

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_15

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_16

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_17

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_18

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_19

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1a

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1b

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1c

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1d

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1e

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_1f

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5412
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x5125
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x5e7c
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x5b4b
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x45f9
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x40ce
        0x5
    .end array-data

    :array_6
    .array-data 4
        0x4f97
        0x6
    .end array-data

    :array_7
    .array-data 4
        0x4aa0
        0x7
    .end array-data

    :array_8
    .array-data 4
        0x77c4
        0x8
    .end array-data

    :array_9
    .array-data 4
        0x72f3
        0x9
    .end array-data

    :array_a
    .array-data 4
        0x7daa
        0xa
    .end array-data

    :array_b
    .array-data 4
        0x789d
        0xb
    .end array-data

    :array_c
    .array-data 4
        0x662f
        0xc
    .end array-data

    :array_d
    .array-data 4
        0x6318
        0xd
    .end array-data

    :array_e
    .array-data 4
        0x6c41
        0xe
    .end array-data

    :array_f
    .array-data 4
        0x6976
        0xf
    .end array-data

    :array_10
    .array-data 4
        0x1689
        0x10
    .end array-data

    :array_11
    .array-data 4
        0x13be
        0x11
    .end array-data

    :array_12
    .array-data 4
        0x1ce7
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x19d0
        0x13
    .end array-data

    :array_14
    .array-data 4
        0x762
        0x14
    .end array-data

    :array_15
    .array-data 4
        0x255
        0x15
    .end array-data

    :array_16
    .array-data 4
        0xd0c
        0x16
    .end array-data

    :array_17
    .array-data 4
        0x83b
        0x17
    .end array-data

    :array_18
    .array-data 4
        0x355f
        0x18
    .end array-data

    :array_19
    .array-data 4
        0x3068
        0x19
    .end array-data

    :array_1a
    .array-data 4
        0x3f31
        0x1a
    .end array-data

    :array_1b
    .array-data 4
        0x3a06
        0x1b
    .end array-data

    :array_1c
    .array-data 4
        0x24b4
        0x1c
    .end array-data

    :array_1d
    .array-data 4
        0x2183
        0x1d
    .end array-data

    :array_1e
    .array-data 4
        0x2eda
        0x1e
    .end array-data

    :array_1f
    .array-data 4
        0x2bed
        0x1f
    .end array-data
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "formatInfo"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    shr-int/lit8 v0, p1, 0x3

    and-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->forBits(I)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 76
    and-int/lit8 v0, p1, 0x7

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    .line 77
    return-void
.end method

.method static decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 3
    .param p0, "maskedFormatInfo1"    # I
    .param p1, "maskedFormatInfo2"    # I

    .line 91
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    .local v1, "formatInfo":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 93
    return-object v1

    .line 98
    :cond_0
    xor-int/lit16 v0, p0, 0x5412

    xor-int/lit16 v2, p1, 0x5412

    invoke-static {v0, v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    return-object v0
.end method

.method private static doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 12
    .param p0, "maskedFormatInfo1"    # I
    .param p1, "maskedFormatInfo2"    # I

    .line 104
    const v0, 0x7fffffff

    .line 105
    .local v0, "bestDifference":I
    const/4 v1, 0x0

    .line 106
    .local v1, "bestFormatInfo":I
    sget-object v2, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v6, v3, :cond_4

    aget-object v10, v2, v6

    .line 107
    .local v7, "decodeInfo":[I
    move-object v7, v10

    aget v10, v10, v5

    .line 108
    .local v8, "targetInfo":I
    move v8, v10

    const/4 v11, 0x1

    if-eq v10, p0, :cond_3

    if-ne v8, p1, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    invoke-static {p0, v8}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v10

    .line 113
    .local v9, "bitsDifference":I
    move v9, v10

    if-ge v10, v0, :cond_1

    .line 114
    aget v1, v7, v11

    .line 115
    move v0, v9

    .line 117
    :cond_1
    if-eq p0, p1, :cond_2

    .line 119
    invoke-static {p1, v8}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v10

    .line 120
    move v9, v10

    if-ge v10, v0, :cond_2

    .line 121
    aget v1, v7, v11

    .line 122
    move v0, v9

    .line 106
    .end local v7    # "decodeInfo":[I
    .end local v8    # "targetInfo":I
    .end local v9    # "bitsDifference":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 110
    :cond_3
    :goto_1
    new-instance v2, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    aget v3, v7, v11

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    return-object v2

    .line 128
    :cond_4
    const/4 v2, 0x3

    if-gt v0, v2, :cond_5

    .line 129
    new-instance v2, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    invoke-direct {v2, v1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    return-object v2

    .line 131
    :cond_5
    return-object v4
.end method

.method static numBitsDiffering(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 80
    xor-int v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 149
    instance-of v0, p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 150
    return v1

    .line 152
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 153
    .local v0, "other":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    iget-object v3, v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-ne v2, v3, :cond_1

    iget-byte v2, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    iget-byte v3, v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method getDataMask()B
    .locals 1

    .line 139
    iget-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    return v0
.end method

.method getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget-byte v1, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    or-int/2addr v0, v1

    return v0
.end method
