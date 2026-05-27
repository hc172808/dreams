.class public final Lcom/google/zxing/oned/EAN13Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN13Writer.java"


# static fields
.field private static final CODE_WIDTH:I = 0x5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 46
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    .line 50
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can only encode EAN_13, but got "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 11
    .param p1, "contents"    # Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 56
    .local v2, "length":I
    move v2, v0

    packed-switch v0, :pswitch_data_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Requested contents should be 12 or 13 digits long, but got "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Contents do not pass checksum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "length":I
    .end local p1    # "contents":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .restart local v2    # "length":I
    .restart local p1    # "contents":Ljava/lang/String;
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 73
    .local v0, "ignored":Lcom/google/zxing/FormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal contents"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    .end local v0    # "ignored":Lcom/google/zxing/FormatException;
    :pswitch_1
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    .local v0, "check":I
    nop

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    nop

    .line 82
    .end local v0    # "check":I
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0xa

    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 83
    .local v0, "firstDigit":I
    sget-object v4, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v4, v4, v0

    .line 84
    .local v4, "parities":I
    const/16 v5, 0x5f

    new-array v5, v5, [Z

    .local v5, "result":[Z
    move v6, v1

    .line 87
    .local v6, "pos":I
    sget-object v7, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v8, 0x1

    invoke-static {v5, v1, v7, v8}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v7

    add-int/2addr v7, v1

    .line 90
    .end local v6    # "pos":I
    .local v7, "pos":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    const/4 v9, 0x6

    if-gt v6, v9, :cond_2

    .line 91
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    .line 92
    .local v9, "digit":I
    rsub-int/lit8 v10, v6, 0x6

    shr-int v10, v4, v10

    and-int/2addr v10, v8

    if-ne v10, v8, :cond_1

    .line 93
    add-int/lit8 v9, v9, 0xa

    .line 95
    :cond_1
    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aget-object v10, v10, v9

    invoke-static {v5, v7, v10, v1}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/2addr v7, v10

    .line 90
    .end local v9    # "digit":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 98
    .end local v6    # "i":I
    :cond_2
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {v5, v7, v6, v1}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v1

    add-int/2addr v7, v1

    .line 100
    const/4 v1, 0x7

    .local v1, "i":I
    :goto_2
    const/16 v6, 0xc

    if-gt v1, v6, :cond_3

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 102
    .local v6, "digit":I
    sget-object v9, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v9, v9, v6

    invoke-static {v5, v7, v9, v8}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v7, v9

    .line 100
    .end local v6    # "digit":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 104
    .end local v1    # "i":I
    :cond_3
    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v5, v7, v1, v8}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    .line 106
    return-object v5

    .line 62
    .end local v0    # "firstDigit":I
    .end local v4    # "parities":I
    .end local v5    # "result":[Z
    .end local v7    # "pos":I
    :catch_1
    move-exception v0

    .line 63
    .local v0, "fe":Lcom/google/zxing/FormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
