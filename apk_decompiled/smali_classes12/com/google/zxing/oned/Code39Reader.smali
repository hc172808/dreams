.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code39Reader.java"


# static fields
.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

.field static final ASTERISK_ENCODING:I = 0x94

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;

.field private final extendedMode:Z

.field private final usingCheckDigit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/16 v0, 0x2b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    return-void

    :array_0
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "usingCheckDigit"    # Z

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(ZZ)V

    .line 78
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2
    .param p1, "usingCheckDigit"    # Z
    .param p2, "extendedMode"    # Z

    .line 90
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 91
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 92
    iput-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 94
    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    .line 95
    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 9
    .param p0, "encoded"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 270
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 271
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 272
    .local v1, "decoded":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_f

    .line 273
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 274
    .local v3, "c":C
    move v3, v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1

    const/16 v4, 0x24

    if-eq v3, v4, :cond_1

    const/16 v4, 0x25

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 275
    :cond_1
    :goto_1
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 276
    .local v4, "next":C
    const/4 v5, 0x0

    .line 277
    .local v5, "decodedChar":C
    const/16 v6, 0x4f

    const/16 v7, 0x5a

    const/16 v8, 0x41

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_3

    .line 318
    :sswitch_0
    if-lt v4, v8, :cond_2

    if-gt v4, v6, :cond_2

    .line 319
    add-int/lit8 v6, v4, -0x20

    int-to-char v5, v6

    goto/16 :goto_3

    .line 320
    :cond_2
    if-ne v4, v7, :cond_3

    .line 321
    const/16 v5, 0x3a

    goto/16 :goto_3

    .line 323
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 280
    :sswitch_1
    if-lt v4, v8, :cond_4

    if-gt v4, v7, :cond_4

    .line 281
    add-int/lit8 v6, v4, 0x20

    int-to-char v5, v6

    goto/16 :goto_3

    .line 283
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 296
    :sswitch_2
    if-lt v4, v8, :cond_5

    const/16 v8, 0x45

    if-gt v4, v8, :cond_5

    .line 297
    add-int/lit8 v6, v4, -0x26

    int-to-char v5, v6

    goto :goto_3

    .line 298
    :cond_5
    const/16 v8, 0x46

    if-lt v4, v8, :cond_6

    const/16 v8, 0x4a

    if-gt v4, v8, :cond_6

    .line 299
    add-int/lit8 v6, v4, -0xb

    int-to-char v5, v6

    goto :goto_3

    .line 300
    :cond_6
    const/16 v8, 0x4b

    if-lt v4, v8, :cond_7

    if-gt v4, v6, :cond_7

    .line 301
    add-int/lit8 v6, v4, 0x10

    int-to-char v5, v6

    goto :goto_3

    .line 302
    :cond_7
    const/16 v6, 0x50

    if-lt v4, v6, :cond_8

    const/16 v6, 0x54

    if-gt v4, v6, :cond_8

    .line 303
    add-int/lit8 v6, v4, 0x2b

    int-to-char v5, v6

    goto :goto_3

    .line 304
    :cond_8
    const/16 v6, 0x55

    if-ne v4, v6, :cond_9

    .line 305
    const/4 v5, 0x0

    goto :goto_3

    .line 306
    :cond_9
    const/16 v6, 0x56

    if-ne v4, v6, :cond_a

    .line 307
    const/16 v5, 0x40

    goto :goto_3

    .line 308
    :cond_a
    const/16 v6, 0x57

    if-ne v4, v6, :cond_b

    .line 309
    const/16 v5, 0x60

    goto :goto_3

    .line 310
    :cond_b
    const/16 v6, 0x58

    if-eq v4, v6, :cond_d

    const/16 v6, 0x59

    if-eq v4, v6, :cond_d

    if-ne v4, v7, :cond_c

    goto :goto_2

    .line 313
    :cond_c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 311
    :cond_d
    :goto_2
    const/16 v5, 0x7f

    goto :goto_3

    .line 288
    :sswitch_3
    if-lt v4, v8, :cond_e

    if-gt v4, v7, :cond_e

    .line 289
    add-int/lit8 v6, v4, -0x40

    int-to-char v5, v6

    goto :goto_3

    .line 291
    :cond_e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 327
    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    nop

    .end local v4    # "next":C
    .end local v5    # "decodedChar":C
    add-int/lit8 v2, v2, 0x1

    .line 330
    nop

    .line 272
    .end local v3    # "c":C
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 334
    .end local v2    # "i":I
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_3
        0x25 -> :sswitch_2
        0x2b -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I
    .locals 12
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    .line 180
    .local v0, "width":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v2

    .line 182
    .local v2, "rowOffset":I
    const/4 v3, 0x0

    .line 183
    .local v3, "counterPosition":I
    move v4, v2

    .line 184
    .local v4, "patternStart":I
    const/4 v5, 0x0

    .line 185
    .local v5, "isWhite":Z
    array-length v6, p1

    .line 187
    .local v6, "patternLength":I
    move v7, v2

    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_4

    .line 188
    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v5, :cond_0

    .line 189
    aget v8, p1, v3

    add-int/2addr v8, v9

    aput v8, p1, v3

    goto :goto_3

    .line 191
    :cond_0
    add-int/lit8 v8, v6, -0x1

    if-ne v3, v8, :cond_2

    .line 193
    invoke-static {p1}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v8

    const/16 v10, 0x94

    const/4 v11, 0x2

    if-ne v8, v10, :cond_1

    sub-int v8, v7, v4

    div-int/2addr v8, v11

    sub-int v8, v4, v8

    .line 194
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0, v8, v4, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 195
    new-array v8, v11, [I

    aput v4, v8, v1

    aput v7, v8, v9

    return-object v8

    .line 197
    :cond_1
    aget v8, p1, v1

    aget v10, p1, v9

    add-int/2addr v8, v10

    add-int/2addr v4, v8

    .line 198
    add-int/lit8 v8, v3, -0x1

    invoke-static {p1, v11, p1, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    add-int/lit8 v8, v3, -0x1

    aput v1, p1, v8

    .line 200
    aput v1, p1, v3

    .line 201
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 203
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 205
    :goto_1
    aput v9, p1, v3

    .line 206
    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    move v5, v9

    .line 187
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 209
    .end local v7    # "i":I
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static patternToChar(I)C
    .locals 3
    .param p0, "pattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 259
    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 260
    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1

    .line 258
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x94

    if-ne p0, v0, :cond_2

    .line 264
    const/16 v0, 0x2a

    return v0

    .line 266
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static toNarrowWidePattern([I)I
    .locals 11
    .param p0, "counters"    # [I

    .line 215
    array-length v0, p0

    .line 216
    .local v0, "numCounters":I
    const/4 v1, 0x0

    .local v1, "maxNarrowCounter":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 219
    :goto_0
    const v4, 0x7fffffff

    .line 220
    .local v4, "minCounter":I
    array-length v5, p0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget v7, p0, v6

    .line 221
    .local v3, "counter":I
    move v3, v7

    if-ge v7, v4, :cond_0

    if-le v3, v1, :cond_0

    .line 222
    move v4, v3

    .line 220
    .end local v3    # "counter":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 225
    :cond_1
    move v1, v4

    .line 226
    const/4 v5, 0x0

    .line 227
    .local v5, "wideCounters":I
    const/4 v6, 0x0

    .line 228
    .local v6, "totalWideCountersWidth":I
    const/4 v7, 0x0

    .line 229
    .local v7, "pattern":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v0, :cond_3

    .line 230
    aget v9, p0, v8

    .line 231
    .restart local v3    # "counter":I
    move v3, v9

    if-le v9, v1, :cond_2

    .line 232
    add-int/lit8 v9, v0, -0x1

    sub-int/2addr v9, v8

    const/4 v10, 0x1

    shl-int v9, v10, v9

    or-int/2addr v7, v9

    .line 233
    add-int/lit8 v5, v5, 0x1

    .line 234
    add-int/2addr v6, v3

    .line 229
    .end local v3    # "counter":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 237
    .end local v8    # "i":I
    :cond_3
    const/4 v8, 0x3

    const/4 v9, -0x1

    if-ne v5, v8, :cond_6

    .line 241
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v0, :cond_5

    if-lez v5, :cond_5

    .line 242
    aget v8, p0, v2

    .line 243
    .restart local v3    # "counter":I
    move v3, v8

    if-le v8, v1, :cond_4

    .line 244
    add-int/lit8 v5, v5, -0x1

    .line 246
    shl-int/lit8 v8, v3, 0x1

    if-lt v8, v6, :cond_4

    .line 247
    return v9

    .line 241
    .end local v3    # "counter":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 251
    .end local v2    # "i":I
    :cond_5
    return v7

    .line 253
    .end local v4    # "minCounter":I
    .end local v6    # "totalWideCountersWidth":I
    .end local v7    # "pattern":I
    :cond_6
    if-gt v5, v8, :cond_7

    .line 254
    return v9

    .line 253
    :cond_7
    goto :goto_0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 19
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 101
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    const/4 v4, 0x0

    move-object v5, v4

    .line 102
    .local v5, "theCounters":[I
    move-object v5, v3

    const/4 v6, 0x0

    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([II)V

    .line 103
    iget-object v3, v0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object v7, v4

    .line 104
    .local v7, "result":Ljava/lang/StringBuilder;
    move-object v7, v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 106
    invoke-static {v2, v5}, Lcom/google/zxing/oned/Code39Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I

    move-result-object v3

    .line 108
    .local v3, "start":[I
    const/4 v8, 0x1

    aget v9, v3, v8

    invoke-virtual {v2, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v9

    .line 109
    .local v9, "nextStart":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    const/4 v11, 0x0

    .line 114
    .local v10, "end":I
    :goto_0
    invoke-static {v2, v9, v5}, Lcom/google/zxing/oned/Code39Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 115
    invoke-static {v5}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v12

    .line 116
    .local v11, "pattern":I
    move v11, v12

    if-ltz v12, :cond_a

    .line 119
    invoke-static {v11}, Lcom/google/zxing/oned/Code39Reader;->patternToChar(I)C

    move-result v12

    .line 120
    .local v12, "decodedChar":C
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    move v13, v9

    .line 122
    .local v13, "lastStart":I
    array-length v14, v5

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_0

    aget v16, v5, v15

    .line 123
    .local v16, "counter":I
    add-int v9, v9, v16

    .line 122
    .end local v16    # "counter":I
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 126
    :cond_0
    invoke-virtual {v2, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v9

    .line 127
    .end local v11    # "pattern":I
    const/16 v14, 0x2a

    if-ne v12, v14, :cond_9

    .line 128
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 131
    const/4 v11, 0x0

    .line 132
    .local v11, "lastPatternSize":I
    array-length v14, v5

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_1

    aget v16, v5, v15

    .line 133
    .restart local v16    # "counter":I
    add-int v11, v11, v16

    .line 132
    .end local v16    # "counter":I
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 135
    :cond_1
    sub-int v14, v9, v13

    sub-int/2addr v14, v11

    .line 138
    .local v14, "whiteSpaceAfterEnd":I
    if-eq v9, v10, :cond_3

    shl-int/lit8 v15, v14, 0x1

    if-lt v15, v11, :cond_2

    goto :goto_3

    .line 139
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 142
    :cond_3
    :goto_3
    iget-boolean v15, v0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    if-eqz v15, :cond_6

    .line 143
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    sub-int/2addr v15, v8

    .line 144
    .local v15, "max":I
    const/16 v16, 0x0

    .line 145
    .local v16, "total":I
    const/16 v17, 0x0

    move/from16 v4, v17

    .local v4, "i":I
    :goto_4
    const-string v6, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    if-ge v4, v15, :cond_4

    .line 146
    iget-object v8, v0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int v16, v16, v6

    .line 145
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_4

    .line 148
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    rem-int/lit8 v8, v16, 0x2b

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v4, v6, :cond_5

    .line 151
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_5

    .line 149
    :cond_5
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    .line 154
    .end local v15    # "max":I
    .end local v16    # "total":I
    :cond_6
    :goto_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 160
    iget-boolean v4, v0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    if-eqz v4, :cond_7

    .line 161
    invoke-static {v7}, Lcom/google/zxing/oned/Code39Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .local v4, "resultString":Ljava/lang/String;
    goto :goto_6

    .line 163
    .end local v4    # "resultString":Ljava/lang/String;
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    .restart local v4    # "resultString":Ljava/lang/String;
    :goto_6
    const/4 v6, 0x1

    aget v8, v3, v6

    const/4 v6, 0x0

    aget v15, v3, v6

    add-int/2addr v8, v15

    int-to-float v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    .line 167
    .local v6, "left":F
    int-to-float v15, v13

    int-to-float v0, v11

    div-float/2addr v0, v8

    add-float/2addr v15, v0

    .line 168
    .local v15, "right":F
    new-instance v0, Lcom/google/zxing/Result;

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/google/zxing/ResultPoint;

    new-instance v2, Lcom/google/zxing/ResultPoint;

    move-object/from16 v16, v3

    .end local v3    # "start":[I
    .local v16, "start":[I
    int-to-float v3, v1

    invoke-direct {v2, v6, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v3, 0x0

    aput-object v2, v8, v3

    new-instance v2, Lcom/google/zxing/ResultPoint;

    int-to-float v3, v1

    invoke-direct {v2, v15, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/16 v18, 0x1

    aput-object v2, v8, v18

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    const/4 v3, 0x0

    invoke-direct {v0, v4, v3, v8, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v0

    .line 156
    .end local v4    # "resultString":Ljava/lang/String;
    .end local v6    # "left":F
    .end local v15    # "right":F
    .end local v16    # "start":[I
    .restart local v3    # "start":[I
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 127
    .end local v11    # "lastPatternSize":I
    .end local v14    # "whiteSpaceAfterEnd":I
    :cond_9
    move-object/from16 v16, v3

    move-object v0, v4

    const/4 v3, 0x0

    const/16 v18, 0x1

    .end local v3    # "start":[I
    .restart local v16    # "start":[I
    move-object/from16 v2, p2

    move-object/from16 v3, v16

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 117
    .end local v12    # "decodedChar":C
    .end local v13    # "lastStart":I
    .end local v16    # "start":[I
    .restart local v3    # "start":[I
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
