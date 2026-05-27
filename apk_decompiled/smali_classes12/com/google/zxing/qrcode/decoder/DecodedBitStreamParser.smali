.class final Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ALPHANUMERIC_CHARS:[C

.field private static final GB2312_SUBSET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    nop

    .line 46
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 16
    .param p0, "bytes"    # [B
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/zxing/qrcode/decoder/Version;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 56
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v1, p1

    new-instance v0, Lcom/google/zxing/common/BitSource;

    move-object/from16 v9, p0

    invoke-direct {v0, v9}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    move-object v8, v0

    .line 57
    .local v8, "bits":Lcom/google/zxing/common/BitSource;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v0

    .line 58
    .local v7, "result":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v14, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v2, -0x1

    .line 60
    .local v2, "symbolSequence":I
    const/4 v3, -0x1

    .line 63
    .local v3, "parityData":I
    const/4 v4, 0x0

    .line 64
    .local v4, "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    const/4 v5, 0x0

    .line 68
    .local v5, "fc1InEffect":Z
    :goto_0
    :try_start_0
    invoke-virtual {v8}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v10, 0x4

    if-ge v6, v10, :cond_0

    .line 70
    :try_start_1
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .local v6, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    goto :goto_1

    .line 72
    .end local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .end local v6    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_0
    :try_start_2
    invoke-virtual {v8, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Mode;->forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v6

    .line 74
    .restart local v6    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :goto_1
    sget-object v11, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 111
    invoke-virtual {v6, v1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v10
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 102
    :pswitch_0
    :try_start_3
    invoke-virtual {v8, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    .line 103
    .local v10, "subset":I
    invoke-virtual {v6, v1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    .line 104
    .local v11, "countHanzi":I
    if-ne v10, v0, :cond_3

    .line 105
    invoke-static {v8, v7, v11}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto/16 :goto_3

    .line 93
    .end local v10    # "subset":I
    .end local v11    # "countHanzi":I
    :pswitch_1
    invoke-static {v8}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/google/zxing/common/BitSource;)I

    move-result v10

    .line 94
    invoke-static {v10}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v10

    .line 95
    move-object v4, v10

    .restart local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v10, :cond_1

    move v10, v2

    move v11, v3

    goto/16 :goto_4

    .line 96
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    .end local v2    # "symbolSequence":I
    .end local v3    # "parityData":I
    .end local v7    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .end local v14    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local p0    # "bytes":[B
    .end local p1    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .end local p2    # "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .end local p3    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    throw v0

    .line 83
    .end local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .restart local v2    # "symbolSequence":I
    .restart local v3    # "parityData":I
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v14    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local p0    # "bytes":[B
    .restart local p1    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .restart local p2    # "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .restart local p3    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :pswitch_2
    invoke-virtual {v8}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v10

    const/16 v11, 0x10

    if-lt v10, v11, :cond_2

    .line 88
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    move v2, v11

    .line 89
    invoke-virtual {v8, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    move v3, v10

    .line 90
    move v10, v2

    move v11, v3

    goto :goto_4

    .line 131
    .end local v5    # "fc1InEffect":Z
    .end local v6    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :catch_0
    move-exception v0

    move-object v12, v7

    move-object v13, v8

    goto/16 :goto_8

    .line 84
    .restart local v5    # "fc1InEffect":Z
    .restart local v6    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    .end local v2    # "symbolSequence":I
    .end local v3    # "parityData":I
    .end local v7    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .end local v14    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local p0    # "bytes":[B
    .end local p1    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .end local p2    # "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .end local p3    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 80
    .restart local v2    # "symbolSequence":I
    .restart local v3    # "parityData":I
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v14    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local p0    # "bytes":[B
    .restart local p1    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .restart local p2    # "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .restart local p3    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :pswitch_3
    const/4 v5, 0x1

    .line 81
    move v10, v2

    move v11, v3

    goto :goto_4

    .line 76
    :pswitch_4
    goto :goto_3

    .line 111
    :goto_2
    :try_start_4
    invoke-virtual {v8, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    move v15, v10

    .line 112
    .local v15, "count":I
    sget-object v10, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v11

    aget v10, v10, v11
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    packed-switch v10, :pswitch_data_1

    .line 126
    move-object v12, v7

    move-object v13, v8

    move v0, v15

    .end local v7    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .end local v15    # "count":I
    .local v0, "count":I
    .local v12, "result":Ljava/lang/StringBuilder;
    .local v13, "bits":Lcom/google/zxing/common/BitSource;
    :try_start_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_7

    .line 123
    .end local v0    # "count":I
    .end local v12    # "result":Ljava/lang/StringBuilder;
    .end local v13    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v15    # "count":I
    :pswitch_5
    :try_start_6
    invoke-static {v8, v7, v15}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    .line 124
    goto :goto_3

    .line 120
    :pswitch_6
    move-object v10, v8

    move-object v11, v7

    move v12, v15

    move-object v13, v4

    move v0, v15

    .end local v15    # "count":I
    .restart local v0    # "count":I
    move-object/from16 v15, p3

    invoke-static/range {v10 .. v15}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V

    .line 121
    goto :goto_3

    .line 117
    .end local v0    # "count":I
    .restart local v15    # "count":I
    :pswitch_7
    move v0, v15

    .end local v15    # "count":I
    .restart local v0    # "count":I
    invoke-static {v8, v7, v0, v5}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    .line 118
    goto :goto_3

    .line 114
    .end local v0    # "count":I
    .restart local v15    # "count":I
    :pswitch_8
    move v0, v15

    .end local v15    # "count":I
    .restart local v0    # "count":I
    :try_start_7
    invoke-static {v8, v7, v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3

    .line 115
    nop

    .line 130
    .end local v0    # "count":I
    :cond_3
    :goto_3
    move v10, v2

    move v11, v3

    .end local v2    # "symbolSequence":I
    .end local v3    # "parityData":I
    .restart local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .local v10, "symbolSequence":I
    .local v11, "parityData":I
    :goto_4
    :try_start_8
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1

    if-ne v6, v0, :cond_6

    .line 134
    .end local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .end local v5    # "fc1InEffect":Z
    .end local v6    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    nop

    .line 136
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    .line 137
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    move-object v5, v3

    goto :goto_5

    :cond_4
    move-object v5, v14

    :goto_5
    if-nez p2, :cond_5

    move-object v6, v3

    goto :goto_6

    .line 139
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    :goto_6
    move-object v2, v0

    move-object/from16 v3, p0

    move-object v12, v7

    .end local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v12    # "result":Ljava/lang/StringBuilder;
    move v7, v10

    move-object v13, v8

    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v13    # "bits":Lcom/google/zxing/common/BitSource;
    move v8, v11

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    .line 136
    return-object v0

    .line 130
    .end local v12    # "result":Ljava/lang/StringBuilder;
    .end local v13    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .restart local v5    # "fc1InEffect":Z
    .restart local v6    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "bits":Lcom/google/zxing/common/BitSource;
    :cond_6
    move-object v12, v7

    move-object v13, v8

    .end local v7    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v12    # "result":Ljava/lang/StringBuilder;
    .restart local v13    # "bits":Lcom/google/zxing/common/BitSource;
    move v2, v10

    move v3, v11

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 131
    .end local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .end local v5    # "fc1InEffect":Z
    .end local v6    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v12    # "result":Ljava/lang/StringBuilder;
    .end local v13    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "bits":Lcom/google/zxing/common/BitSource;
    :catch_1
    move-exception v0

    move-object v12, v7

    move-object v13, v8

    move v2, v10

    move v3, v11

    .end local v7    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v12    # "result":Ljava/lang/StringBuilder;
    .restart local v13    # "bits":Lcom/google/zxing/common/BitSource;
    goto :goto_8

    .line 126
    .end local v10    # "symbolSequence":I
    .end local v11    # "parityData":I
    .end local v12    # "result":Ljava/lang/StringBuilder;
    .end local v13    # "bits":Lcom/google/zxing/common/BitSource;
    .end local v14    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local p0    # "bytes":[B
    .end local p1    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .end local p2    # "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .end local p3    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .restart local v0    # "count":I
    .restart local v5    # "fc1InEffect":Z
    .restart local v6    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :goto_7
    :try_start_9
    throw v7
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2

    .line 131
    .end local v0    # "count":I
    .end local v5    # "fc1InEffect":Z
    .end local v6    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v2    # "symbolSequence":I
    .restart local v3    # "parityData":I
    .restart local v12    # "result":Ljava/lang/StringBuilder;
    .restart local v13    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v14    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local p0    # "bytes":[B
    .restart local p1    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .restart local p2    # "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .restart local p3    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :catch_2
    move-exception v0

    goto :goto_8

    .end local v12    # "result":Ljava/lang/StringBuilder;
    .end local v13    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "bits":Lcom/google/zxing/common/BitSource;
    :catch_3
    move-exception v0

    move-object v12, v7

    move-object v13, v8

    .end local v7    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v12    # "result":Ljava/lang/StringBuilder;
    .restart local v13    # "bits":Lcom/google/zxing/common/BitSource;
    :goto_8
    move-object v0, v4

    .line 133
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private static decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .param p3, "fc1InEffect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 266
    .local v0, "start":I
    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 270
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 271
    .local v1, "nextTwoCharsBits":I
    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    rem-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    nop

    .end local v1    # "nextTwoCharsBits":I
    add-int/lit8 p2, p2, -0x2

    .line 274
    goto :goto_0

    .line 268
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 275
    :cond_1
    if-ne p2, v1, :cond_3

    .line 277
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_2

    .line 280
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 278
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 283
    :cond_3
    :goto_1
    if-eqz p3, :cond_6

    .line 285
    move v2, v0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 286
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_5

    .line 287
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_4

    .line 289
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 292
    :cond_4
    const/16 v3, 0x1d

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 285
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 297
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method private static decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .param p3, "currentCharacterSetECI"    # Lcom/google/zxing/common/CharacterSetECI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/google/zxing/common/CharacterSetECI;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 226
    .local p4, "byteSegments":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    shl-int/lit8 v0, p2, 0x3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 230
    new-array v0, p2, [B

    .line 231
    .local v0, "readBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 232
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "i":I
    :cond_0
    if-nez p3, :cond_1

    .line 241
    invoke-static {v0, p5}, Lcom/google/zxing/common/StringUtils;->guessEncoding([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .local v1, "encoding":Ljava/lang/String;
    goto :goto_1

    .line 243
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v1

    .line 246
    .restart local v1    # "encoding":Ljava/lang/String;
    :goto_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    nop

    .line 250
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 251
    return-void

    .line 247
    :catch_0
    move-exception v2

    .line 248
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2

    .line 227
    .end local v0    # "readBytes":[B
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 151
    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 157
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    .line 158
    const/4 v1, 0x0

    .line 159
    :goto_0
    if-lez p2, :cond_1

    .line 161
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 162
    div-int/lit8 v3, v2, 0x60

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit8 v2, v2, 0x60

    or-int/2addr v2, v3

    .line 163
    const/16 v3, 0x3bf

    if-ge v2, v3, :cond_0

    .line 165
    const v3, 0xa1a1

    add-int/2addr v2, v3

    goto :goto_1

    .line 168
    :cond_0
    const v3, 0xa6a1

    add-int/2addr v2, v3

    .line 170
    :goto_1
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 171
    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 172
    add-int/lit8 v1, v1, 0x2

    .line 173
    add-int/lit8 p2, p2, -0x1

    .line 174
    goto :goto_0

    .line 177
    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p2, "GB2312"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    return-void

    .line 178
    :catch_0
    move-exception p0

    .line 179
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 152
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 187
    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 193
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    .line 194
    const/4 v1, 0x0

    .line 195
    :goto_0
    if-lez p2, :cond_1

    .line 197
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 198
    div-int/lit16 v3, v2, 0xc0

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit16 v2, v2, 0xc0

    or-int/2addr v2, v3

    .line 199
    const/16 v3, 0x1f00

    if-ge v2, v3, :cond_0

    .line 201
    const v3, 0x8140

    add-int/2addr v2, v3

    goto :goto_1

    .line 204
    :cond_0
    const v3, 0xc140

    add-int/2addr v2, v3

    .line 206
    :goto_1
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 207
    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 208
    add-int/lit8 v1, v1, 0x2

    .line 209
    add-int/lit8 p2, p2, -0x1

    .line 210
    goto :goto_0

    .line 213
    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p2, "SJIS"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    return-void

    .line 214
    :catch_0
    move-exception p0

    .line 215
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 188
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 303
    :goto_0
    const/4 v1, 0x3

    const/16 v2, 0xa

    if-lt p2, v1, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-lt v1, v2, :cond_1

    .line 308
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 309
    .local v0, "threeDigitsBits":I
    move v0, v1

    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_0

    .line 312
    div-int/lit8 v1, v0, 0x64

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    div-int/lit8 v1, v0, 0xa

    rem-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    rem-int/lit8 v1, v0, 0xa

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    nop

    .end local v0    # "threeDigitsBits":I
    add-int/lit8 p2, p2, -0x3

    .line 316
    goto :goto_0

    .line 310
    .restart local v0    # "threeDigitsBits":I
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 306
    .end local v0    # "threeDigitsBits":I
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 317
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    .line 319
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_4

    .line 322
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 323
    .local v0, "twoDigitsBits":I
    move v0, v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_3

    .line 326
    div-int/lit8 v1, v0, 0xa

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    rem-int/lit8 v1, v0, 0xa

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    .end local v0    # "twoDigitsBits":I
    return-void

    .line 324
    .restart local v0    # "twoDigitsBits":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 320
    .end local v0    # "twoDigitsBits":I
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 328
    :cond_5
    const/4 v1, 0x1

    if-ne p2, v1, :cond_8

    .line 330
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_7

    .line 333
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 334
    .local v0, "digitBits":I
    move v0, v1

    if-ge v1, v2, :cond_6

    .line 337
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 335
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 331
    .end local v0    # "digitBits":I
    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 339
    :cond_8
    :goto_1
    return-void
.end method

.method private static parseECIValue(Lcom/google/zxing/common/BitSource;)I
    .locals 4
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 342
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    const/4 v2, 0x0

    .line 343
    .local v2, "firstByte":I
    move v2, v1

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-nez v1, :cond_0

    .line 345
    and-int/lit8 v0, v2, 0x7f

    return v0

    .line 347
    :cond_0
    and-int/lit16 v1, v2, 0xc0

    if-ne v1, v3, :cond_1

    .line 349
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 350
    .local v1, "secondByte":I
    and-int/lit8 v3, v2, 0x3f

    shl-int/lit8 v0, v3, 0x8

    or-int/2addr v0, v1

    return v0

    .line 352
    .end local v1    # "secondByte":I
    :cond_1
    and-int/lit16 v0, v2, 0xe0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_2

    .line 354
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 355
    .local v1, "secondThirdBytes":I
    and-int/lit8 v3, v2, 0x1f

    shl-int/lit8 v0, v3, 0x10

    or-int/2addr v0, v1

    return v0

    .line 357
    .end local v1    # "secondThirdBytes":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static toAlphaNumericChar(I)C
    .locals 2
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 257
    aget-char v0, v0, p0

    return v0

    .line 255
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
