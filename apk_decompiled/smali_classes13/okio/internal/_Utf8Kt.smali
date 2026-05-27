.class public final Lokio/internal/_Utf8Kt;
.super Ljava/lang/Object;
.source "-Utf8.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n-Utf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n+ 2 Utf8.kt\nokio/Utf8\n+ 3 -Util.kt\nokio/-Util\n*L\n1#1,60:1\n256#2,16:61\n273#2:78\n393#2,9:79\n127#2:88\n402#2,18:90\n275#2:108\n277#2:110\n434#2,4:111\n127#2:115\n440#2,10:117\n127#2:127\n450#2,5:129\n127#2:134\n455#2,22:136\n279#2:158\n281#2:160\n492#2,3:161\n282#2,12:164\n495#2:176\n127#2:177\n498#2,2:179\n127#2:181\n502#2,10:183\n127#2:193\n512#2,5:195\n127#2:200\n517#2,5:202\n127#2:207\n522#2,26:209\n298#2,6:235\n138#2,64:241\n60#3:77\n66#3:89\n60#3:109\n66#3:116\n66#3:128\n66#3:135\n60#3:159\n66#3:178\n66#3:182\n66#3:194\n66#3:201\n66#3:208\n*E\n*S KotlinDebug\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n*L\n34#1,16:61\n34#1:78\n34#1,9:79\n34#1:88\n34#1,18:90\n34#1:108\n34#1:110\n34#1,4:111\n34#1:115\n34#1,10:117\n34#1:127\n34#1,5:129\n34#1:134\n34#1,22:136\n34#1:158\n34#1:160\n34#1,3:161\n34#1,12:164\n34#1:176\n34#1:177\n34#1,2:179\n34#1:181\n34#1,10:183\n34#1:193\n34#1,5:195\n34#1:200\n34#1,5:202\n34#1:207\n34#1,26:209\n34#1,6:235\n50#1,64:241\n34#1:77\n34#1:89\n34#1:109\n34#1:116\n34#1:128\n34#1:135\n34#1:159\n34#1:178\n34#1:182\n34#1:194\n34#1:201\n34#1:208\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u001e\u0010\u0003\u001a\u00020\u0002*\u00020\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "commonAsUtf8ToByteArray",
        "",
        "",
        "commonToUtf8String",
        "beginIndex",
        "",
        "endIndex",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final commonAsUtf8ToByteArray(Ljava/lang/String;)[B
    .locals 15
    .param p0, "$this$commonAsUtf8ToByteArray"    # Ljava/lang/String;

    const-string v0, "$this$commonAsUtf8ToByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 46
    .local v0, "bytes":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const-string v3, "java.util.Arrays.copyOf(this, newSize)"

    if-ge v2, v1, :cond_9

    .line 47
    .local v2, "index":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 48
    .local v4, "b0":C
    const/16 v5, 0x80

    if-lt v4, v5, :cond_8

    .line 49
    move v1, v2

    .line 50
    .local v1, "size":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "endIndex$iv":I
    move-object v7, p0

    .local v7, "$this$processUtf8Bytes$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 241
    .local v8, "$i$f$processUtf8Bytes":I
    move v9, v2

    .line 242
    .local v9, "index$iv":I
    :goto_1
    if-ge v9, v6, :cond_7

    .line 243
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 245
    .local v10, "c$iv":C
    nop

    .line 246
    if-ge v10, v5, :cond_1

    .line 248
    int-to-byte v11, v10

    .local v11, "c":B
    const/4 v12, 0x0

    .line 51
    .local v12, "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    add-int/lit8 v13, v1, 0x1

    .end local v1    # "size":I
    .local v13, "size":I
    aput-byte v11, v0, v1

    .line 52
    .end local v11    # "c":B
    .end local v12    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    nop

    .line 249
    add-int/lit8 v9, v9, 0x1

    .line 252
    :goto_2
    if-ge v9, v6, :cond_0

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ge v1, v5, :cond_0

    .line 253
    add-int/lit8 v1, v9, 0x1

    .end local v9    # "index$iv":I
    .local v1, "index$iv":I
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    .local v9, "c":B
    const/4 v11, 0x0

    .line 51
    .local v11, "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "size":I
    .local v12, "size":I
    aput-byte v9, v0, v13

    .line 52
    .end local v9    # "c":B
    .end local v11    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    nop

    .line 252
    move v9, v1

    move v13, v12

    goto :goto_2

    .line 300
    .end local v1    # "index$iv":I
    .end local v10    # "c$iv":C
    .end local v12    # "size":I
    .local v9, "index$iv":I
    .restart local v13    # "size":I
    :cond_0
    move v1, v13

    goto/16 :goto_5

    .line 257
    .end local v13    # "size":I
    .local v1, "size":I
    .restart local v10    # "c$iv":C
    :cond_1
    const/16 v11, 0x800

    if-ge v10, v11, :cond_2

    .line 260
    shr-int/lit8 v11, v10, 0x6

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    .local v11, "c":B
    const/4 v12, 0x0

    .line 51
    .local v12, "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    add-int/lit8 v13, v1, 0x1

    .end local v1    # "size":I
    .restart local v13    # "size":I
    aput-byte v11, v0, v1

    .line 52
    .end local v11    # "c":B
    .end local v12    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    nop

    .line 261
    and-int/lit8 v1, v10, 0x3f

    or-int/2addr v1, v5

    int-to-byte v1, v1

    .local v1, "c":B
    const/4 v11, 0x0

    .line 51
    .local v11, "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "size":I
    .local v12, "size":I
    aput-byte v1, v0, v13

    .line 52
    .end local v1    # "c":B
    .end local v11    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    nop

    .line 263
    add-int/lit8 v9, v9, 0x1

    move v1, v12

    goto/16 :goto_5

    .line 266
    .end local v12    # "size":I
    .local v1, "size":I
    :cond_2
    const v11, 0xd800

    if-gt v11, v10, :cond_6

    const v11, 0xdfff

    if-ge v11, v10, :cond_3

    goto :goto_4

    .line 280
    :cond_3
    nop

    .line 281
    nop

    .line 282
    const v12, 0xdbff

    if-gt v10, v12, :cond_5

    .line 281
    add-int/lit8 v12, v9, 0x1

    if-le v6, v12, :cond_5

    const v12, 0xdc00

    .line 282
    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-gt v12, v13, :cond_5

    if-ge v11, v13, :cond_4

    goto :goto_3

    .line 289
    :cond_4
    shl-int/lit8 v11, v10, 0xa

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/2addr v11, v12

    .line 290
    const v12, -0x35fdc00

    .line 289
    add-int/2addr v11, v12

    .line 294
    .local v11, "codePoint$iv":I
    shr-int/lit8 v12, v11, 0x12

    or-int/lit16 v12, v12, 0xf0

    int-to-byte v12, v12

    .local v12, "c":B
    const/4 v13, 0x0

    .line 51
    .local v13, "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    add-int/lit8 v14, v1, 0x1

    .end local v1    # "size":I
    .local v14, "size":I
    aput-byte v12, v0, v1

    .line 52
    .end local v12    # "c":B
    .end local v13    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    nop

    .line 295
    shr-int/lit8 v1, v11, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v5

    int-to-byte v1, v1

    .local v1, "c":B
    const/4 v12, 0x0

    .line 51
    .local v12, "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "size":I
    .local v13, "size":I
    aput-byte v1, v0, v14

    .line 52
    .end local v1    # "c":B
    .end local v12    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    nop

    .line 296
    shr-int/lit8 v1, v11, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v5

    int-to-byte v1, v1

    .restart local v1    # "c":B
    const/4 v12, 0x0

    .line 51
    .restart local v12    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "size":I
    .restart local v14    # "size":I
    aput-byte v1, v0, v13

    .line 52
    .end local v1    # "c":B
    .end local v12    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    nop

    .line 297
    and-int/lit8 v1, v11, 0x3f

    or-int/2addr v1, v5

    int-to-byte v1, v1

    .restart local v1    # "c":B
    const/4 v12, 0x0

    .line 51
    .restart local v12    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "size":I
    .restart local v13    # "size":I
    aput-byte v1, v0, v14

    .line 52
    .end local v1    # "c":B
    .end local v12    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    nop

    .line 299
    add-int/lit8 v9, v9, 0x2

    move v1, v13

    goto :goto_5

    .line 283
    .end local v11    # "codePoint$iv":I
    .end local v13    # "size":I
    .local v1, "size":I
    :cond_5
    :goto_3
    const/16 v11, 0x3f

    .local v11, "c":B
    const/4 v12, 0x0

    .line 51
    .restart local v12    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    add-int/lit8 v13, v1, 0x1

    .end local v1    # "size":I
    .restart local v13    # "size":I
    aput-byte v11, v0, v1

    .line 52
    .end local v11    # "c":B
    .end local v12    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    nop

    .line 284
    add-int/lit8 v9, v9, 0x1

    move v1, v13

    goto :goto_5

    .line 269
    .end local v13    # "size":I
    .restart local v1    # "size":I
    :cond_6
    :goto_4
    shr-int/lit8 v11, v10, 0xc

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    .restart local v11    # "c":B
    const/4 v12, 0x0

    .line 51
    .restart local v12    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    add-int/lit8 v13, v1, 0x1

    .end local v1    # "size":I
    .restart local v13    # "size":I
    aput-byte v11, v0, v1

    .line 52
    .end local v11    # "c":B
    .end local v12    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    nop

    .line 270
    shr-int/lit8 v1, v10, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v5

    int-to-byte v1, v1

    .local v1, "c":B
    const/4 v11, 0x0

    .line 51
    .local v11, "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "size":I
    .local v12, "size":I
    aput-byte v1, v0, v13

    .line 52
    .end local v1    # "c":B
    .end local v11    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    nop

    .line 271
    and-int/lit8 v1, v10, 0x3f

    or-int/2addr v1, v5

    int-to-byte v1, v1

    .restart local v1    # "c":B
    const/4 v11, 0x0

    .line 51
    .restart local v11    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "size":I
    .restart local v13    # "size":I
    aput-byte v1, v0, v12

    .line 52
    .end local v1    # "c":B
    .end local v11    # "$i$a$-processUtf8Bytes-_Utf8Kt$commonAsUtf8ToByteArray$1":I
    nop

    .line 273
    add-int/lit8 v9, v9, 0x1

    move v1, v13

    .line 300
    .end local v10    # "c$iv":C
    .end local v13    # "size":I
    .local v1, "size":I
    :goto_5
    nop

    .line 302
    nop

    .line 242
    goto/16 :goto_1

    .line 304
    :cond_7
    nop

    .line 53
    .end local v6    # "endIndex$iv":I
    .end local v7    # "$this$processUtf8Bytes$iv":Ljava/lang/String;
    .end local v8    # "$i$f$processUtf8Bytes":I
    .end local v9    # "index$iv":I
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v5

    .line 55
    .end local v1    # "size":I
    :cond_8
    int-to-byte v3, v4

    aput-byte v3, v0, v2

    .line 46
    .end local v4    # "b0":C
    nop

    .end local v2    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 58
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final commonToUtf8String([BII)Ljava/lang/String;
    .locals 25
    .param p0, "$this$commonToUtf8String"    # [B
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "$this$commonToUtf8String"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    if-ltz v1, :cond_2e

    array-length v3, v0

    if-gt v2, v3, :cond_2e

    if-gt v1, v2, :cond_2e

    .line 31
    sub-int v3, v2, v1

    new-array v3, v3, [C

    .line 33
    .local v3, "chars":[C
    const/4 v4, 0x0

    .line 34
    .local v4, "length":I
    move-object/from16 v5, p0

    .local v5, "$this$processUtf16Chars$iv":[B
    const/4 v6, 0x0

    .line 61
    .local v6, "$i$f$processUtf16Chars":I
    move/from16 v7, p1

    .line 62
    .local v7, "index$iv":I
    :goto_0
    if-ge v7, v2, :cond_2d

    .line 63
    aget-byte v9, v5, v7

    .line 64
    .local v9, "b0$iv":B
    nop

    .line 65
    if-ltz v9, :cond_1

    .line 67
    int-to-char v8, v9

    .local v8, "c":C
    const/4 v10, 0x0

    .line 35
    .local v10, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "length":I
    .local v11, "length":I
    aput-char v8, v3, v4

    .line 36
    .end local v8    # "c":C
    .end local v10    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 68
    add-int/lit8 v7, v7, 0x1

    .line 72
    :goto_1
    if-ge v7, v2, :cond_0

    aget-byte v4, v5, v7

    if-ltz v4, :cond_0

    .line 73
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "index$iv":I
    .local v4, "index$iv":I
    aget-byte v7, v5, v7

    int-to-char v7, v7

    .local v7, "c":C
    const/4 v8, 0x0

    .line 35
    .local v8, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "length":I
    .local v10, "length":I
    aput-char v7, v3, v11

    .line 36
    .end local v7    # "c":C
    .end local v8    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 72
    move v7, v4

    move v11, v10

    goto :goto_1

    .line 238
    .end local v4    # "index$iv":I
    .end local v9    # "b0$iv":B
    .end local v10    # "length":I
    .local v7, "index$iv":I
    .restart local v11    # "length":I
    :cond_0
    move/from16 v16, v6

    move v4, v11

    goto/16 :goto_1e

    .line 76
    .end local v11    # "length":I
    .local v4, "length":I
    .restart local v9    # "b0$iv":B
    :cond_1
    const/4 v10, 0x5

    .local v10, "other$iv$iv":I
    move v11, v9

    .local v11, "$this$shr$iv$iv":B
    const/4 v12, 0x0

    .line 77
    .local v12, "$i$f$shr":I
    shr-int v10, v11, v10

    .end local v10    # "other$iv$iv":I
    .end local v11    # "$this$shr$iv$iv":B
    .end local v12    # "$i$f$shr":I
    const/4 v11, -0x2

    const/16 v12, 0x80

    if-ne v10, v11, :cond_6

    .line 78
    move-object v10, v5

    .local v10, "$this$process2Utf8Bytes$iv$iv":[B
    const/4 v11, 0x0

    .line 79
    .local v11, "$i$f$process2Utf8Bytes":I
    add-int/lit8 v15, v7, 0x1

    if-gt v2, v15, :cond_2

    .line 80
    const v8, 0xfffd

    .local v8, "it$iv":I
    const/4 v12, 0x0

    .line 78
    .local v12, "$i$a$-process2Utf8Bytes-Utf8$processUtf16Chars$1$iv":I
    int-to-char v13, v8

    .local v13, "c":C
    const/4 v15, 0x0

    .line 35
    .local v15, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v16, v4, 0x1

    .end local v4    # "length":I
    .local v16, "length":I
    aput-char v13, v3, v4

    .line 36
    .end local v13    # "c":C
    .end local v15    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 82
    .end local v8    # "it$iv":I
    .end local v12    # "$i$a$-process2Utf8Bytes-Utf8$processUtf16Chars$1$iv":I
    move/from16 v17, v16

    const/4 v13, 0x1

    move/from16 v16, v6

    goto :goto_4

    .line 85
    .end local v16    # "length":I
    .restart local v4    # "length":I
    :cond_2
    aget-byte v15, v10, v7

    .line 86
    .local v15, "b0$iv$iv":B
    add-int/lit8 v16, v7, 0x1

    aget-byte v13, v10, v16

    .line 87
    .local v13, "b1$iv$iv":B
    const/16 v16, 0x0

    .line 88
    .local v16, "$i$f$isUtf8Continuation":I
    const/16 v18, 0xc0

    .local v18, "other$iv$iv$iv$iv":I
    move/from16 v19, v13

    .local v19, "$this$and$iv$iv$iv$iv":B
    const/16 v20, 0x0

    .line 89
    .local v20, "$i$f$and":I
    and-int v14, v19, v18

    .end local v18    # "other$iv$iv$iv$iv":I
    .end local v19    # "$this$and$iv$iv$iv$iv":B
    .end local v20    # "$i$f$and":I
    if-ne v14, v12, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .end local v16    # "$i$f$isUtf8Continuation":I
    :goto_2
    if-nez v8, :cond_4

    .line 90
    const v8, 0xfffd

    .restart local v8    # "it$iv":I
    const/4 v12, 0x0

    .line 78
    .restart local v12    # "$i$a$-process2Utf8Bytes-Utf8$processUtf16Chars$1$iv":I
    int-to-char v14, v8

    .local v14, "c":C
    const/16 v16, 0x0

    .line 35
    .local v16, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v17, v4, 0x1

    .end local v4    # "length":I
    .local v17, "length":I
    aput-char v14, v3, v4

    .line 36
    .end local v14    # "c":C
    .end local v16    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 91
    .end local v8    # "it$iv":I
    .end local v12    # "$i$a$-process2Utf8Bytes-Utf8$processUtf16Chars$1$iv":I
    move/from16 v16, v6

    const/4 v13, 0x1

    goto :goto_4

    .line 94
    .end local v17    # "length":I
    .restart local v4    # "length":I
    :cond_4
    nop

    .line 95
    nop

    .line 96
    xor-int/lit16 v8, v13, 0xf80

    .line 97
    shl-int/lit8 v14, v15, 0x6

    xor-int/2addr v8, v14

    .line 94
    nop

    .line 99
    .local v8, "codePoint$iv$iv":I
    nop

    .line 100
    if-ge v8, v12, :cond_5

    .line 101
    const v12, 0xfffd

    .local v12, "it$iv":I
    const/4 v14, 0x0

    .line 78
    .local v14, "$i$a$-process2Utf8Bytes-Utf8$processUtf16Chars$1$iv":I
    move/from16 v16, v6

    .end local v6    # "$i$f$processUtf16Chars":I
    .local v16, "$i$f$processUtf16Chars":I
    int-to-char v6, v12

    .local v6, "c":C
    const/16 v18, 0x0

    .line 35
    .local v18, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v19, v4, 0x1

    .end local v4    # "length":I
    .local v19, "length":I
    aput-char v6, v3, v4

    .line 36
    .end local v6    # "c":C
    .end local v18    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .end local v12    # "it$iv":I
    .end local v14    # "$i$a$-process2Utf8Bytes-Utf8$processUtf16Chars$1$iv":I
    goto :goto_3

    .line 104
    .end local v16    # "$i$f$processUtf16Chars":I
    .end local v19    # "length":I
    .restart local v4    # "length":I
    .local v6, "$i$f$processUtf16Chars":I
    :cond_5
    move/from16 v16, v6

    .end local v6    # "$i$f$processUtf16Chars":I
    .restart local v16    # "$i$f$processUtf16Chars":I
    move v6, v8

    .local v6, "it$iv":I
    const/4 v12, 0x0

    .line 78
    .local v12, "$i$a$-process2Utf8Bytes-Utf8$processUtf16Chars$1$iv":I
    int-to-char v14, v6

    .local v14, "c":C
    const/16 v18, 0x0

    .line 35
    .restart local v18    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v19, v4, 0x1

    .end local v4    # "length":I
    .restart local v19    # "length":I
    aput-char v14, v3, v4

    .line 36
    .end local v14    # "c":C
    .end local v18    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 106
    .end local v6    # "it$iv":I
    .end local v12    # "$i$a$-process2Utf8Bytes-Utf8$processUtf16Chars$1$iv":I
    :goto_3
    nop

    .line 107
    move/from16 v17, v19

    const/4 v13, 0x2

    .line 78
    .end local v8    # "codePoint$iv$iv":I
    .end local v10    # "$this$process2Utf8Bytes$iv$iv":[B
    .end local v11    # "$i$f$process2Utf8Bytes":I
    .end local v13    # "b1$iv$iv":B
    .end local v15    # "b0$iv$iv":B
    .end local v19    # "length":I
    .restart local v17    # "length":I
    :goto_4
    add-int/2addr v7, v13

    move/from16 v4, v17

    goto/16 :goto_1e

    .line 108
    .end local v16    # "$i$f$processUtf16Chars":I
    .end local v17    # "length":I
    .restart local v4    # "length":I
    .local v6, "$i$f$processUtf16Chars":I
    :cond_6
    move/from16 v16, v6

    .end local v6    # "$i$f$processUtf16Chars":I
    .restart local v16    # "$i$f$processUtf16Chars":I
    const/4 v6, 0x4

    .local v6, "other$iv$iv":I
    move v10, v9

    .local v10, "$this$shr$iv$iv":B
    const/4 v13, 0x0

    .line 109
    .local v13, "$i$f$shr":I
    shr-int v6, v10, v6

    .end local v6    # "other$iv$iv":I
    .end local v10    # "$this$shr$iv$iv":B
    .end local v13    # "$i$f$shr":I
    const v10, 0xd800

    const v13, 0xdfff

    if-ne v6, v11, :cond_12

    .line 110
    move-object v6, v5

    .local v6, "$this$process3Utf8Bytes$iv$iv":[B
    const/4 v11, 0x0

    .line 111
    .local v11, "$i$f$process3Utf8Bytes":I
    add-int/lit8 v15, v7, 0x2

    if-gt v2, v15, :cond_a

    .line 113
    const v10, 0xfffd

    .local v10, "it$iv":I
    const/4 v13, 0x0

    .line 110
    .local v13, "$i$a$-process3Utf8Bytes-Utf8$processUtf16Chars$2$iv":I
    int-to-char v14, v10

    .restart local v14    # "c":C
    const/4 v15, 0x0

    .line 35
    .local v15, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v18, v4, 0x1

    .end local v4    # "length":I
    .local v18, "length":I
    aput-char v14, v3, v4

    .line 36
    .end local v14    # "c":C
    .end local v15    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 114
    .end local v10    # "it$iv":I
    .end local v13    # "$i$a$-process3Utf8Bytes-Utf8$processUtf16Chars$2$iv":I
    add-int/lit8 v4, v7, 0x1

    if-le v2, v4, :cond_9

    add-int/lit8 v4, v7, 0x1

    aget-byte v4, v6, v4

    .local v4, "byte$iv$iv$iv":B
    const/4 v10, 0x0

    .line 115
    .local v10, "$i$f$isUtf8Continuation":I
    const/16 v13, 0xc0

    .local v13, "other$iv$iv$iv$iv":I
    move v14, v4

    .local v14, "$this$and$iv$iv$iv$iv":B
    const/4 v15, 0x0

    .line 116
    .local v15, "$i$f$and":I
    and-int/2addr v13, v14

    .end local v13    # "other$iv$iv$iv$iv":I
    .end local v14    # "$this$and$iv$iv$iv$iv":B
    .end local v15    # "$i$f$and":I
    if-ne v13, v12, :cond_7

    const/4 v8, 0x1

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    .end local v4    # "byte$iv$iv$iv":B
    .end local v10    # "$i$f$isUtf8Continuation":I
    :goto_5
    if-nez v8, :cond_8

    goto :goto_6

    .line 120
    :cond_8
    const/4 v13, 0x2

    goto/16 :goto_c

    .line 117
    :cond_9
    :goto_6
    const/4 v13, 0x1

    goto/16 :goto_c

    .line 124
    .end local v18    # "length":I
    .local v4, "length":I
    :cond_a
    aget-byte v15, v6, v7

    .line 125
    .local v15, "b0$iv$iv":B
    add-int/lit8 v18, v7, 0x1

    aget-byte v18, v6, v18

    .line 126
    .local v18, "b1$iv$iv":B
    const/16 v19, 0x0

    .line 127
    .local v19, "$i$f$isUtf8Continuation":I
    const/16 v20, 0xc0

    .local v20, "other$iv$iv$iv$iv":I
    move/from16 v22, v18

    .local v22, "$this$and$iv$iv$iv$iv":B
    const/16 v23, 0x0

    .line 128
    .local v23, "$i$f$and":I
    and-int v14, v22, v20

    .end local v20    # "other$iv$iv$iv$iv":I
    .end local v22    # "$this$and$iv$iv$iv$iv":B
    .end local v23    # "$i$f$and":I
    if-ne v14, v12, :cond_b

    const/4 v14, 0x1

    goto :goto_7

    :cond_b
    const/4 v14, 0x0

    .end local v19    # "$i$f$isUtf8Continuation":I
    :goto_7
    if-nez v14, :cond_c

    .line 129
    const v8, 0xfffd

    .local v8, "it$iv":I
    const/4 v10, 0x0

    .line 110
    .local v10, "$i$a$-process3Utf8Bytes-Utf8$processUtf16Chars$2$iv":I
    int-to-char v12, v8

    .local v12, "c":C
    const/4 v13, 0x0

    .line 35
    .local v13, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v14, v4, 0x1

    .end local v4    # "length":I
    .local v14, "length":I
    aput-char v12, v3, v4

    .line 36
    .end local v12    # "c":C
    .end local v13    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 130
    .end local v8    # "it$iv":I
    .end local v10    # "$i$a$-process3Utf8Bytes-Utf8$processUtf16Chars$2$iv":I
    move/from16 v18, v14

    const/4 v13, 0x1

    goto :goto_c

    .line 132
    .end local v14    # "length":I
    .restart local v4    # "length":I
    :cond_c
    add-int/lit8 v14, v7, 0x2

    aget-byte v14, v6, v14

    .line 133
    .local v14, "b2$iv$iv":B
    const/16 v19, 0x0

    .line 134
    .restart local v19    # "$i$f$isUtf8Continuation":I
    const/16 v20, 0xc0

    .restart local v20    # "other$iv$iv$iv$iv":I
    move/from16 v22, v14

    .restart local v22    # "$this$and$iv$iv$iv$iv":B
    const/16 v23, 0x0

    .line 135
    .restart local v23    # "$i$f$and":I
    and-int v8, v22, v20

    .end local v20    # "other$iv$iv$iv$iv":I
    .end local v22    # "$this$and$iv$iv$iv$iv":B
    .end local v23    # "$i$f$and":I
    if-ne v8, v12, :cond_d

    const/4 v8, 0x1

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    .end local v19    # "$i$f$isUtf8Continuation":I
    :goto_8
    if-nez v8, :cond_e

    .line 136
    const v8, 0xfffd

    .restart local v8    # "it$iv":I
    const/4 v10, 0x0

    .line 110
    .restart local v10    # "$i$a$-process3Utf8Bytes-Utf8$processUtf16Chars$2$iv":I
    int-to-char v12, v8

    .restart local v12    # "c":C
    const/4 v13, 0x0

    .line 35
    .restart local v13    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v19, v4, 0x1

    .end local v4    # "length":I
    .local v19, "length":I
    aput-char v12, v3, v4

    .line 36
    .end local v12    # "c":C
    .end local v13    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 137
    .end local v8    # "it$iv":I
    .end local v10    # "$i$a$-process3Utf8Bytes-Utf8$processUtf16Chars$2$iv":I
    move/from16 v18, v19

    const/4 v13, 0x2

    goto :goto_c

    .line 140
    .end local v19    # "length":I
    .restart local v4    # "length":I
    :cond_e
    nop

    .line 141
    const v8, -0x1e080

    .line 142
    xor-int/2addr v8, v14

    .line 143
    shl-int/lit8 v12, v18, 0x6

    xor-int/2addr v8, v12

    .line 144
    shl-int/lit8 v12, v15, 0xc

    xor-int/2addr v8, v12

    .line 140
    nop

    .line 146
    .local v8, "codePoint$iv$iv":I
    nop

    .line 147
    const/16 v12, 0x800

    if-ge v8, v12, :cond_f

    .line 148
    const v10, 0xfffd

    .local v10, "it$iv":I
    const/4 v12, 0x0

    .line 110
    .local v12, "$i$a$-process3Utf8Bytes-Utf8$processUtf16Chars$2$iv":I
    int-to-char v13, v10

    .local v13, "c":C
    const/16 v17, 0x0

    .line 35
    .local v17, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v19, v4, 0x1

    .end local v4    # "length":I
    .restart local v19    # "length":I
    aput-char v13, v3, v4

    .line 36
    .end local v13    # "c":C
    .end local v17    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    :goto_9
    nop

    .end local v10    # "it$iv":I
    .end local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf16Chars$2$iv":I
    goto :goto_b

    .line 150
    .end local v19    # "length":I
    .restart local v4    # "length":I
    :cond_f
    if-le v10, v8, :cond_10

    goto :goto_a

    :cond_10
    if-lt v13, v8, :cond_11

    .line 151
    const v10, 0xfffd

    .restart local v10    # "it$iv":I
    const/4 v12, 0x0

    .line 110
    .restart local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf16Chars$2$iv":I
    int-to-char v13, v10

    .restart local v13    # "c":C
    const/16 v17, 0x0

    .line 35
    .restart local v17    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v19, v4, 0x1

    .end local v4    # "length":I
    .restart local v19    # "length":I
    aput-char v13, v3, v4

    goto :goto_9

    .line 154
    .end local v10    # "it$iv":I
    .end local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf16Chars$2$iv":I
    .end local v13    # "c":C
    .end local v17    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    .end local v19    # "length":I
    .restart local v4    # "length":I
    :cond_11
    :goto_a
    move v10, v8

    .restart local v10    # "it$iv":I
    const/4 v12, 0x0

    .line 110
    .restart local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf16Chars$2$iv":I
    int-to-char v13, v10

    .restart local v13    # "c":C
    const/16 v17, 0x0

    .line 35
    .restart local v17    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v19, v4, 0x1

    .end local v4    # "length":I
    .restart local v19    # "length":I
    aput-char v13, v3, v4

    goto :goto_9

    .line 156
    .end local v10    # "it$iv":I
    .end local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf16Chars$2$iv":I
    .end local v13    # "c":C
    .end local v17    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    :goto_b
    nop

    .line 157
    move/from16 v18, v19

    const/4 v13, 0x3

    .line 110
    .end local v6    # "$this$process3Utf8Bytes$iv$iv":[B
    .end local v8    # "codePoint$iv$iv":I
    .end local v11    # "$i$f$process3Utf8Bytes":I
    .end local v14    # "b2$iv$iv":B
    .end local v15    # "b0$iv$iv":B
    .end local v19    # "length":I
    .local v18, "length":I
    :goto_c
    add-int/2addr v7, v13

    move/from16 v4, v18

    goto/16 :goto_1e

    .line 158
    .end local v18    # "length":I
    .restart local v4    # "length":I
    :cond_12
    const/4 v6, 0x3

    .local v6, "other$iv$iv":I
    move v8, v9

    .local v8, "$this$shr$iv$iv":B
    const/4 v14, 0x0

    .line 159
    .local v14, "$i$f$shr":I
    shr-int v6, v8, v6

    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$shr$iv$iv":B
    .end local v14    # "$i$f$shr":I
    if-ne v6, v11, :cond_2c

    .line 160
    move-object v6, v5

    .local v6, "$this$process4Utf8Bytes$iv$iv":[B
    const/4 v8, 0x0

    .line 161
    .local v8, "$i$f$process4Utf8Bytes":I
    add-int/lit8 v11, v7, 0x3

    const v14, 0xdc00

    const v15, 0xd7c0

    const v13, 0xfffd

    if-gt v2, v11, :cond_1a

    .line 163
    const v10, 0xfffd

    .local v10, "codePoint$iv":I
    const/4 v11, 0x0

    .line 164
    .local v11, "$i$a$-process4Utf8Bytes-Utf8$processUtf16Chars$3$iv":I
    if-eq v10, v13, :cond_13

    .line 169
    ushr-int/lit8 v13, v10, 0xa

    add-int/2addr v13, v15

    int-to-char v13, v13

    .restart local v13    # "c":C
    const/4 v15, 0x0

    .line 35
    .local v15, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v18, v4, 0x1

    .end local v4    # "length":I
    .restart local v18    # "length":I
    aput-char v13, v3, v4

    .line 36
    .end local v13    # "c":C
    .end local v15    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 171
    and-int/lit16 v4, v10, 0x3ff

    add-int/2addr v4, v14

    int-to-char v4, v4

    .local v4, "c":C
    const/4 v13, 0x0

    .line 35
    .local v13, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v14, v18, 0x1

    .end local v18    # "length":I
    .local v14, "length":I
    aput-char v4, v3, v18

    .line 36
    .end local v4    # "c":C
    .end local v13    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    goto :goto_d

    .line 173
    .end local v14    # "length":I
    .local v4, "length":I
    :cond_13
    const v13, 0xfffd

    .local v13, "c":C
    const/4 v14, 0x0

    .line 35
    .local v14, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v15, v4, 0x1

    .end local v4    # "length":I
    .local v15, "length":I
    aput-char v13, v3, v4

    .line 36
    .end local v13    # "c":C
    .end local v14    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    move v14, v15

    .line 174
    .end local v10    # "codePoint$iv":I
    .end local v11    # "$i$a$-process4Utf8Bytes-Utf8$processUtf16Chars$3$iv":I
    .end local v15    # "length":I
    .local v14, "length":I
    :goto_d
    nop

    .line 175
    nop

    .line 176
    add-int/lit8 v4, v7, 0x1

    if-le v2, v4, :cond_19

    add-int/lit8 v4, v7, 0x1

    aget-byte v4, v6, v4

    .local v4, "byte$iv$iv$iv":B
    const/4 v10, 0x0

    .line 177
    .local v10, "$i$f$isUtf8Continuation":I
    const/16 v11, 0xc0

    .local v11, "other$iv$iv$iv$iv":I
    move v13, v4

    .local v13, "$this$and$iv$iv$iv$iv":B
    const/4 v15, 0x0

    .line 178
    .local v15, "$i$f$and":I
    and-int/2addr v11, v13

    .end local v11    # "other$iv$iv$iv$iv":I
    .end local v13    # "$this$and$iv$iv$iv$iv":B
    .end local v15    # "$i$f$and":I
    if-ne v11, v12, :cond_14

    const/4 v4, 0x1

    goto :goto_e

    :cond_14
    const/4 v4, 0x0

    .end local v4    # "byte$iv$iv$iv":B
    .end local v10    # "$i$f$isUtf8Continuation":I
    :goto_e
    if-nez v4, :cond_15

    goto :goto_11

    .line 180
    :cond_15
    add-int/lit8 v4, v7, 0x2

    if-le v2, v4, :cond_18

    add-int/lit8 v4, v7, 0x2

    aget-byte v4, v6, v4

    .restart local v4    # "byte$iv$iv$iv":B
    const/4 v10, 0x0

    .line 181
    .restart local v10    # "$i$f$isUtf8Continuation":I
    const/16 v11, 0xc0

    .restart local v11    # "other$iv$iv$iv$iv":I
    move v13, v4

    .restart local v13    # "$this$and$iv$iv$iv$iv":B
    const/4 v15, 0x0

    .line 182
    .restart local v15    # "$i$f$and":I
    and-int/2addr v11, v13

    .end local v11    # "other$iv$iv$iv$iv":I
    .end local v13    # "$this$and$iv$iv$iv$iv":B
    .end local v15    # "$i$f$and":I
    if-ne v11, v12, :cond_16

    const/16 v21, 0x1

    goto :goto_f

    :cond_16
    const/16 v21, 0x0

    .end local v4    # "byte$iv$iv$iv":B
    .end local v10    # "$i$f$isUtf8Continuation":I
    :goto_f
    if-nez v21, :cond_17

    goto :goto_10

    .line 186
    :cond_17
    const/4 v13, 0x3

    goto/16 :goto_1d

    .line 183
    :cond_18
    :goto_10
    const/4 v13, 0x2

    goto/16 :goto_1d

    .line 179
    :cond_19
    :goto_11
    const/4 v13, 0x1

    goto/16 :goto_1d

    .line 190
    .end local v14    # "length":I
    .local v4, "length":I
    :cond_1a
    aget-byte v11, v6, v7

    .line 191
    .local v11, "b0$iv$iv":B
    add-int/lit8 v19, v7, 0x1

    aget-byte v19, v6, v19

    .line 192
    .local v19, "b1$iv$iv":B
    const/16 v20, 0x0

    .line 193
    .local v20, "$i$f$isUtf8Continuation":I
    const/16 v22, 0xc0

    .local v22, "other$iv$iv$iv$iv":I
    move/from16 v23, v19

    .local v23, "$this$and$iv$iv$iv$iv":B
    const/16 v24, 0x0

    .line 194
    .local v24, "$i$f$and":I
    and-int v10, v23, v22

    .end local v22    # "other$iv$iv$iv$iv":I
    .end local v23    # "$this$and$iv$iv$iv$iv":B
    .end local v24    # "$i$f$and":I
    if-ne v10, v12, :cond_1b

    const/4 v10, 0x1

    goto :goto_12

    :cond_1b
    const/4 v10, 0x0

    .end local v20    # "$i$f$isUtf8Continuation":I
    :goto_12
    if-nez v10, :cond_1d

    .line 195
    const v10, 0xfffd

    .local v10, "codePoint$iv":I
    const/4 v12, 0x0

    .line 164
    .local v12, "$i$a$-process4Utf8Bytes-Utf8$processUtf16Chars$3$iv":I
    if-eq v10, v13, :cond_1c

    .line 169
    ushr-int/lit8 v13, v10, 0xa

    add-int/2addr v13, v15

    int-to-char v13, v13

    .local v13, "c":C
    const/4 v15, 0x0

    .line 35
    .local v15, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v17, v4, 0x1

    .end local v4    # "length":I
    .local v17, "length":I
    aput-char v13, v3, v4

    .line 36
    .end local v13    # "c":C
    .end local v15    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 171
    and-int/lit16 v4, v10, 0x3ff

    add-int/2addr v4, v14

    int-to-char v4, v4

    .local v4, "c":C
    const/4 v13, 0x0

    .line 35
    .local v13, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v14, v17, 0x1

    .end local v17    # "length":I
    .restart local v14    # "length":I
    aput-char v4, v3, v17

    .line 36
    .end local v4    # "c":C
    .end local v13    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    goto :goto_13

    .line 173
    .end local v14    # "length":I
    .local v4, "length":I
    :cond_1c
    const v13, 0xfffd

    .local v13, "c":C
    const/4 v14, 0x0

    .line 35
    .local v14, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v15, v4, 0x1

    .end local v4    # "length":I
    .local v15, "length":I
    aput-char v13, v3, v4

    .line 36
    .end local v13    # "c":C
    .end local v14    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    move v14, v15

    .line 174
    .end local v10    # "codePoint$iv":I
    .end local v12    # "$i$a$-process4Utf8Bytes-Utf8$processUtf16Chars$3$iv":I
    .end local v15    # "length":I
    .local v14, "length":I
    :goto_13
    nop

    .line 175
    nop

    .line 196
    const/4 v13, 0x1

    goto/16 :goto_1d

    .line 198
    .end local v14    # "length":I
    .restart local v4    # "length":I
    :cond_1d
    add-int/lit8 v10, v7, 0x2

    aget-byte v10, v6, v10

    .line 199
    .local v10, "b2$iv$iv":B
    const/16 v20, 0x0

    .line 200
    .restart local v20    # "$i$f$isUtf8Continuation":I
    const/16 v22, 0xc0

    .restart local v22    # "other$iv$iv$iv$iv":I
    move/from16 v23, v10

    .restart local v23    # "$this$and$iv$iv$iv$iv":B
    const/16 v24, 0x0

    .line 201
    .restart local v24    # "$i$f$and":I
    and-int v14, v23, v22

    .end local v22    # "other$iv$iv$iv$iv":I
    .end local v23    # "$this$and$iv$iv$iv$iv":B
    .end local v24    # "$i$f$and":I
    if-ne v14, v12, :cond_1e

    const/4 v14, 0x1

    goto :goto_14

    :cond_1e
    const/4 v14, 0x0

    .end local v20    # "$i$f$isUtf8Continuation":I
    :goto_14
    if-nez v14, :cond_20

    .line 202
    const v12, 0xfffd

    .local v12, "codePoint$iv":I
    const/4 v14, 0x0

    .line 164
    .local v14, "$i$a$-process4Utf8Bytes-Utf8$processUtf16Chars$3$iv":I
    if-eq v12, v13, :cond_1f

    .line 169
    ushr-int/lit8 v13, v12, 0xa

    add-int/2addr v13, v15

    int-to-char v13, v13

    .restart local v13    # "c":C
    const/4 v15, 0x0

    .line 35
    .local v15, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v18, v4, 0x1

    .end local v4    # "length":I
    .restart local v18    # "length":I
    aput-char v13, v3, v4

    .line 36
    .end local v13    # "c":C
    .end local v15    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 171
    and-int/lit16 v4, v12, 0x3ff

    const v13, 0xdc00

    add-int/2addr v4, v13

    int-to-char v4, v4

    .local v4, "c":C
    const/4 v13, 0x0

    .line 35
    .local v13, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v15, v18, 0x1

    .end local v18    # "length":I
    .local v15, "length":I
    aput-char v4, v3, v18

    .line 36
    .end local v4    # "c":C
    .end local v13    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    move v14, v15

    goto :goto_15

    .line 173
    .end local v15    # "length":I
    .local v4, "length":I
    :cond_1f
    const v13, 0xfffd

    .local v13, "c":C
    const/4 v15, 0x0

    .line 35
    .local v15, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v18, v4, 0x1

    .end local v4    # "length":I
    .restart local v18    # "length":I
    aput-char v13, v3, v4

    .line 36
    .end local v13    # "c":C
    .end local v15    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    move/from16 v14, v18

    .line 174
    .end local v12    # "codePoint$iv":I
    .end local v18    # "length":I
    .local v14, "length":I
    :goto_15
    nop

    .line 175
    nop

    .line 203
    const/4 v13, 0x2

    goto/16 :goto_1d

    .line 205
    .end local v14    # "length":I
    .restart local v4    # "length":I
    :cond_20
    add-int/lit8 v14, v7, 0x3

    aget-byte v14, v6, v14

    .line 206
    .local v14, "b3$iv$iv":B
    const/16 v17, 0x0

    .line 207
    .local v17, "$i$f$isUtf8Continuation":I
    const/16 v20, 0xc0

    .local v20, "other$iv$iv$iv$iv":I
    move/from16 v22, v14

    .local v22, "$this$and$iv$iv$iv$iv":B
    const/16 v23, 0x0

    .line 208
    .local v23, "$i$f$and":I
    and-int v15, v22, v20

    .end local v20    # "other$iv$iv$iv$iv":I
    .end local v22    # "$this$and$iv$iv$iv$iv":B
    .end local v23    # "$i$f$and":I
    if-ne v15, v12, :cond_21

    const/16 v21, 0x1

    goto :goto_16

    :cond_21
    const/16 v21, 0x0

    .end local v17    # "$i$f$isUtf8Continuation":I
    :goto_16
    if-nez v21, :cond_23

    .line 209
    const v12, 0xfffd

    .restart local v12    # "codePoint$iv":I
    const/4 v15, 0x0

    .line 164
    .local v15, "$i$a$-process4Utf8Bytes-Utf8$processUtf16Chars$3$iv":I
    if-eq v12, v13, :cond_22

    .line 169
    ushr-int/lit8 v13, v12, 0xa

    const v17, 0xd7c0

    add-int v13, v13, v17

    int-to-char v13, v13

    .restart local v13    # "c":C
    const/16 v17, 0x0

    .line 35
    .local v17, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v18, v4, 0x1

    .end local v4    # "length":I
    .restart local v18    # "length":I
    aput-char v13, v3, v4

    .line 36
    .end local v13    # "c":C
    .end local v17    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 171
    and-int/lit16 v4, v12, 0x3ff

    const v13, 0xdc00

    add-int/2addr v4, v13

    int-to-char v4, v4

    .local v4, "c":C
    const/4 v13, 0x0

    .line 35
    .local v13, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .local v17, "length":I
    aput-char v4, v3, v18

    .line 36
    .end local v4    # "c":C
    .end local v13    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    goto :goto_17

    .line 173
    .end local v17    # "length":I
    .local v4, "length":I
    :cond_22
    const v13, 0xfffd

    .local v13, "c":C
    const/16 v17, 0x0

    .line 35
    .local v17, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v18, v4, 0x1

    .end local v4    # "length":I
    .restart local v18    # "length":I
    aput-char v13, v3, v4

    .line 36
    .end local v13    # "c":C
    .end local v17    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    move/from16 v17, v18

    .line 174
    .end local v12    # "codePoint$iv":I
    .end local v15    # "$i$a$-process4Utf8Bytes-Utf8$processUtf16Chars$3$iv":I
    .end local v18    # "length":I
    .local v17, "length":I
    :goto_17
    nop

    .line 175
    nop

    .line 210
    move/from16 v14, v17

    const/4 v13, 0x3

    goto/16 :goto_1d

    .line 213
    .end local v17    # "length":I
    .restart local v4    # "length":I
    :cond_23
    nop

    .line 214
    const v12, 0x381f80

    .line 215
    xor-int/2addr v12, v14

    .line 216
    shl-int/lit8 v15, v10, 0x6

    xor-int/2addr v12, v15

    .line 217
    shl-int/lit8 v15, v19, 0xc

    xor-int/2addr v12, v15

    .line 218
    shl-int/lit8 v15, v11, 0x12

    xor-int/2addr v12, v15

    .line 213
    nop

    .line 220
    .local v12, "codePoint$iv$iv":I
    nop

    .line 221
    const v15, 0x10ffff

    if-le v12, v15, :cond_25

    .line 222
    const v15, 0xfffd

    .local v15, "codePoint$iv":I
    const/16 v17, 0x0

    .line 164
    .local v17, "$i$a$-process4Utf8Bytes-Utf8$processUtf16Chars$3$iv":I
    if-eq v15, v13, :cond_24

    .line 169
    ushr-int/lit8 v13, v15, 0xa

    const v18, 0xd7c0

    add-int v13, v13, v18

    int-to-char v13, v13

    .restart local v13    # "c":C
    const/16 v18, 0x0

    .line 35
    .local v18, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v20, v4, 0x1

    .end local v4    # "length":I
    .local v20, "length":I
    aput-char v13, v3, v4

    .line 36
    .end local v13    # "c":C
    .end local v18    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 171
    and-int/lit16 v4, v15, 0x3ff

    const v13, 0xdc00

    add-int/2addr v4, v13

    int-to-char v4, v4

    .local v4, "c":C
    const/4 v13, 0x0

    .line 35
    .local v13, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v18, v20, 0x1

    .end local v20    # "length":I
    .local v18, "length":I
    aput-char v4, v3, v20

    .line 36
    .end local v4    # "c":C
    .end local v13    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    :goto_18
    goto :goto_1a

    .line 173
    .end local v18    # "length":I
    .local v4, "length":I
    :cond_24
    const v13, 0xfffd

    .local v13, "c":C
    const/16 v18, 0x0

    .line 35
    .local v18, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v20, v4, 0x1

    .end local v4    # "length":I
    .restart local v20    # "length":I
    aput-char v13, v3, v4

    .line 36
    .end local v13    # "c":C
    .end local v18    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    :goto_19
    move/from16 v18, v20

    .line 174
    .end local v15    # "codePoint$iv":I
    .end local v17    # "$i$a$-process4Utf8Bytes-Utf8$processUtf16Chars$3$iv":I
    .end local v20    # "length":I
    .local v18, "length":I
    :goto_1a
    nop

    .line 175
    goto/16 :goto_1c

    .line 224
    .end local v18    # "length":I
    .restart local v4    # "length":I
    :cond_25
    const v15, 0xd800

    if-le v15, v12, :cond_26

    goto :goto_1b

    :cond_26
    const v15, 0xdfff

    if-lt v15, v12, :cond_28

    .line 225
    const v15, 0xfffd

    .restart local v15    # "codePoint$iv":I
    const/16 v17, 0x0

    .line 164
    .restart local v17    # "$i$a$-process4Utf8Bytes-Utf8$processUtf16Chars$3$iv":I
    if-eq v15, v13, :cond_27

    .line 169
    ushr-int/lit8 v13, v15, 0xa

    const v18, 0xd7c0

    add-int v13, v13, v18

    int-to-char v13, v13

    .restart local v13    # "c":C
    const/16 v18, 0x0

    .line 35
    .local v18, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v20, v4, 0x1

    .end local v4    # "length":I
    .restart local v20    # "length":I
    aput-char v13, v3, v4

    .line 36
    .end local v13    # "c":C
    .end local v18    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 171
    and-int/lit16 v4, v15, 0x3ff

    const v13, 0xdc00

    add-int/2addr v4, v13

    int-to-char v4, v4

    .local v4, "c":C
    const/4 v13, 0x0

    .line 35
    .local v13, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v18, v20, 0x1

    .end local v20    # "length":I
    .local v18, "length":I
    aput-char v4, v3, v20

    goto :goto_18

    .line 173
    .end local v13    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    .end local v18    # "length":I
    .local v4, "length":I
    :cond_27
    const v13, 0xfffd

    .local v13, "c":C
    const/16 v18, 0x0

    .line 35
    .local v18, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v20, v4, 0x1

    .end local v4    # "length":I
    .restart local v20    # "length":I
    aput-char v13, v3, v4

    goto :goto_19

    .line 227
    .end local v13    # "c":C
    .end local v15    # "codePoint$iv":I
    .end local v17    # "$i$a$-process4Utf8Bytes-Utf8$processUtf16Chars$3$iv":I
    .end local v18    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    .end local v20    # "length":I
    .restart local v4    # "length":I
    :cond_28
    :goto_1b
    const/high16 v15, 0x10000

    if-ge v12, v15, :cond_2a

    .line 228
    const v15, 0xfffd

    .restart local v15    # "codePoint$iv":I
    const/16 v17, 0x0

    .line 164
    .restart local v17    # "$i$a$-process4Utf8Bytes-Utf8$processUtf16Chars$3$iv":I
    if-eq v15, v13, :cond_29

    .line 169
    ushr-int/lit8 v13, v15, 0xa

    const v18, 0xd7c0

    add-int v13, v13, v18

    int-to-char v13, v13

    .restart local v13    # "c":C
    const/16 v18, 0x0

    .line 35
    .restart local v18    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v20, v4, 0x1

    .end local v4    # "length":I
    .restart local v20    # "length":I
    aput-char v13, v3, v4

    .line 36
    .end local v13    # "c":C
    .end local v18    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 171
    and-int/lit16 v4, v15, 0x3ff

    const v13, 0xdc00

    add-int/2addr v4, v13

    int-to-char v4, v4

    .local v4, "c":C
    const/4 v13, 0x0

    .line 35
    .local v13, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v18, v20, 0x1

    .end local v20    # "length":I
    .local v18, "length":I
    aput-char v4, v3, v20

    goto :goto_18

    .line 173
    .end local v13    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    .end local v18    # "length":I
    .local v4, "length":I
    :cond_29
    const v13, 0xfffd

    .local v13, "c":C
    const/16 v18, 0x0

    .line 35
    .local v18, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v20, v4, 0x1

    .end local v4    # "length":I
    .restart local v20    # "length":I
    aput-char v13, v3, v4

    goto :goto_19

    .line 231
    .end local v13    # "c":C
    .end local v15    # "codePoint$iv":I
    .end local v17    # "$i$a$-process4Utf8Bytes-Utf8$processUtf16Chars$3$iv":I
    .end local v18    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    .end local v20    # "length":I
    .restart local v4    # "length":I
    :cond_2a
    move v15, v12

    .restart local v15    # "codePoint$iv":I
    const/16 v17, 0x0

    .line 164
    .restart local v17    # "$i$a$-process4Utf8Bytes-Utf8$processUtf16Chars$3$iv":I
    if-eq v15, v13, :cond_2b

    .line 169
    ushr-int/lit8 v13, v15, 0xa

    const v18, 0xd7c0

    add-int v13, v13, v18

    int-to-char v13, v13

    .restart local v13    # "c":C
    const/16 v18, 0x0

    .line 35
    .restart local v18    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v20, v4, 0x1

    .end local v4    # "length":I
    .restart local v20    # "length":I
    aput-char v13, v3, v4

    .line 36
    .end local v13    # "c":C
    .end local v18    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 171
    and-int/lit16 v4, v15, 0x3ff

    const v13, 0xdc00

    add-int/2addr v4, v13

    int-to-char v4, v4

    .local v4, "c":C
    const/4 v13, 0x0

    .line 35
    .local v13, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v18, v20, 0x1

    .end local v20    # "length":I
    .local v18, "length":I
    aput-char v4, v3, v20

    goto/16 :goto_18

    .line 173
    .end local v13    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    .end local v18    # "length":I
    .local v4, "length":I
    :cond_2b
    const v13, 0xfffd

    .local v13, "c":C
    const/16 v18, 0x0

    .line 35
    .local v18, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v20, v4, 0x1

    .end local v4    # "length":I
    .restart local v20    # "length":I
    aput-char v13, v3, v4

    goto/16 :goto_19

    .line 233
    .end local v13    # "c":C
    .end local v15    # "codePoint$iv":I
    .end local v17    # "$i$a$-process4Utf8Bytes-Utf8$processUtf16Chars$3$iv":I
    .end local v20    # "length":I
    .local v18, "length":I
    :goto_1c
    nop

    .line 234
    const/4 v13, 0x4

    move/from16 v14, v18

    .line 160
    .end local v6    # "$this$process4Utf8Bytes$iv$iv":[B
    .end local v8    # "$i$f$process4Utf8Bytes":I
    .end local v10    # "b2$iv$iv":B
    .end local v11    # "b0$iv$iv":B
    .end local v12    # "codePoint$iv$iv":I
    .end local v18    # "length":I
    .end local v19    # "b1$iv$iv":B
    .local v14, "length":I
    :goto_1d
    add-int/2addr v7, v13

    move v4, v14

    goto :goto_1e

    .line 235
    .end local v14    # "length":I
    .restart local v4    # "length":I
    :cond_2c
    const v6, 0xfffd

    .local v6, "c":C
    const/4 v8, 0x0

    .line 35
    .local v8, "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "length":I
    .local v10, "length":I
    aput-char v6, v3, v4

    .line 36
    .end local v6    # "c":C
    .end local v8    # "$i$a$-processUtf16Chars-_Utf8Kt$commonToUtf8String$1":I
    nop

    .line 236
    add-int/lit8 v7, v7, 0x1

    move v4, v10

    .line 238
    .end local v9    # "b0$iv":B
    .end local v10    # "length":I
    .restart local v4    # "length":I
    :goto_1e
    nop

    .line 62
    move/from16 v6, v16

    goto/16 :goto_0

    .line 240
    .end local v16    # "$i$f$processUtf16Chars":I
    .local v6, "$i$f$processUtf16Chars":I
    :cond_2d
    move/from16 v16, v6

    .line 38
    .end local v5    # "$this$processUtf16Chars$iv":[B
    .end local v6    # "$i$f$processUtf16Chars":I
    .end local v7    # "index$iv":I
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 29
    .end local v3    # "chars":[C
    .end local v4    # "length":I
    :cond_2e
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " beginIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " endIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public static synthetic commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 27
    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    array-length p2, p0

    :cond_1
    invoke-static {p0, p1, p2}, Lokio/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
