.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/Code128Writer$CType;
    }
.end annotation


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final ESCAPE_FNC_1:C = '\u00f1'

.field private static final ESCAPE_FNC_2:C = '\u00f2'

.field private static final ESCAPE_FNC_3:C = '\u00f3'

.field private static final ESCAPE_FNC_4:C = '\u00f4'


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static chooseCode(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "oldCode"    # I

    .line 234
    invoke-static {p0, p1}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v0

    const/4 v1, 0x0

    .line 235
    .local v1, "lookahead":Lcom/google/zxing/oned/Code128Writer$CType;
    move-object v1, v0

    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    const/16 v3, 0x64

    if-ne v0, v2, :cond_0

    .line 236
    return v3

    .line 238
    :cond_0
    sget-object v0, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v0, :cond_3

    .line 239
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 240
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    .line 241
    .local v2, "c":C
    move v2, v0

    const/16 v4, 0x20

    const/16 v5, 0x65

    if-lt v0, v4, :cond_1

    if-ne p2, v5, :cond_2

    const/16 v0, 0x60

    if-ge v2, v0, :cond_2

    .line 243
    :cond_1
    return v5

    .line 246
    .end local v2    # "c":C
    :cond_2
    return v3

    .line 248
    :cond_3
    const/16 v0, 0x63

    if-ne p2, v0, :cond_4

    .line 249
    return v0

    .line 251
    :cond_4
    if-ne p2, v3, :cond_c

    .line 252
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v2, :cond_5

    .line 253
    return v3

    .line 256
    :cond_5
    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v2

    .line 257
    move-object v1, v2

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    if-eq v2, v4, :cond_b

    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v2, :cond_6

    goto :goto_1

    .line 260
    :cond_6
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v2, :cond_8

    .line 261
    add-int/lit8 v2, p1, 0x3

    invoke-static {p0, v2}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v2

    .line 262
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v2, v4, :cond_7

    .line 263
    return v0

    .line 265
    :cond_7
    return v3

    .line 270
    :cond_8
    add-int/lit8 v2, p1, 0x4

    .line 271
    .local v2, "index":I
    :goto_0
    invoke-static {p0, v2}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v4

    move-object v1, v4

    sget-object v5, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v4, v5, :cond_9

    .line 272
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 274
    :cond_9
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v4, :cond_a

    .line 275
    return v3

    .line 277
    :cond_a
    return v0

    .line 258
    .end local v2    # "index":I
    :cond_b
    :goto_1
    return v3

    .line 280
    :cond_c
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v2, :cond_d

    .line 281
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v1

    .line 283
    :cond_d
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v2, :cond_e

    .line 284
    return v0

    .line 286
    :cond_e
    return v3
.end method

.method private static findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;
    .locals 5
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .line 212
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 213
    .local v0, "last":I
    if-lt p1, v0, :cond_0

    .line 214
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1

    .line 216
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    .line 217
    .local v2, "c":C
    move v2, v1

    const/16 v3, 0xf1

    if-ne v1, v3, :cond_1

    .line 218
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1

    .line 220
    :cond_1
    const/16 v1, 0x30

    if-lt v2, v1, :cond_6

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 223
    :cond_2
    add-int/lit8 v4, p1, 0x1

    if-lt v4, v0, :cond_3

    .line 224
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1

    .line 226
    :cond_3
    add-int/lit8 v4, p1, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 227
    move v2, v4

    if-lt v4, v1, :cond_5

    if-le v2, v3, :cond_4

    goto :goto_0

    .line 230
    :cond_4
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1

    .line 228
    :cond_5
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1

    .line 221
    :cond_6
    :goto_1
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1
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

    .line 69
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    .line 72
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can only encode CODE_128, but got "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 16
    .param p1, "contents"    # Ljava/lang/String;

    .line 77
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 79
    .local v3, "length":I
    move v3, v1

    if-lez v1, :cond_b

    const/16 v1, 0x50

    if-gt v3, v1, :cond_b

    .line 84
    const/4 v1, 0x0

    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 86
    .local v4, "c":C
    move v4, v5

    packed-switch v5, :pswitch_data_0

    .line 93
    const/16 v5, 0x7f

    if-gt v4, v5, :cond_0

    goto :goto_1

    .line 91
    :pswitch_0
    nop

    .line 84
    .end local v4    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Bad character in input: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    const/4 v4, 0x0

    .line 102
    .local v4, "checkSum":I
    const/4 v5, 0x1

    .line 103
    .local v5, "checkWeight":I
    const/4 v6, 0x0

    .line 104
    .local v6, "codeSet":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 106
    .local v7, "position":I
    :goto_2
    const/4 v10, 0x1

    if-ge v7, v3, :cond_7

    .line 108
    invoke-static {v0, v7, v6}, Lcom/google/zxing/oned/Code128Writer;->chooseCode(Ljava/lang/CharSequence;II)I

    move-result v11

    .line 112
    .local v8, "newCodeSet":I
    move v8, v11

    if-ne v11, v6, :cond_4

    .line 115
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    packed-switch v11, :pswitch_data_1

    .line 134
    packed-switch v6, :pswitch_data_2

    .line 147
    add-int/lit8 v9, v7, 0x2

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 148
    .local v9, "patternIndex":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 126
    .end local v9    # "patternIndex":I
    :pswitch_1
    const/16 v9, 0x65

    if-ne v6, v9, :cond_2

    .line 127
    const/16 v9, 0x65

    .restart local v9    # "patternIndex":I
    goto :goto_3

    .line 129
    .end local v9    # "patternIndex":I
    :cond_2
    const/16 v9, 0x64

    .line 131
    .restart local v9    # "patternIndex":I
    goto :goto_3

    .line 123
    .end local v9    # "patternIndex":I
    :pswitch_2
    const/16 v9, 0x60

    .line 124
    .restart local v9    # "patternIndex":I
    goto :goto_3

    .line 120
    .end local v9    # "patternIndex":I
    :pswitch_3
    const/16 v9, 0x61

    .line 121
    .restart local v9    # "patternIndex":I
    goto :goto_3

    .line 117
    .end local v9    # "patternIndex":I
    :pswitch_4
    const/16 v9, 0x66

    .line 118
    .restart local v9    # "patternIndex":I
    goto :goto_3

    .line 136
    .end local v9    # "patternIndex":I
    :pswitch_5
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v11, v11, -0x20

    .line 137
    .restart local v9    # "patternIndex":I
    move v9, v11

    if-gez v11, :cond_3

    .line 139
    add-int/lit8 v9, v9, 0x60

    goto :goto_3

    .line 143
    .end local v9    # "patternIndex":I
    :pswitch_6
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x20

    .line 144
    .restart local v9    # "patternIndex":I
    nop

    .line 152
    :cond_3
    :goto_3
    add-int/2addr v7, v10

    goto :goto_5

    .line 156
    .end local v9    # "patternIndex":I
    :cond_4
    if-nez v6, :cond_5

    .line 158
    packed-switch v8, :pswitch_data_3

    .line 166
    const/16 v9, 0x69

    .line 167
    .restart local v9    # "patternIndex":I
    goto :goto_4

    .line 160
    .end local v9    # "patternIndex":I
    :pswitch_7
    const/16 v9, 0x67

    .line 161
    .restart local v9    # "patternIndex":I
    goto :goto_4

    .line 163
    .end local v9    # "patternIndex":I
    :pswitch_8
    const/16 v9, 0x68

    .line 164
    .restart local v9    # "patternIndex":I
    goto :goto_4

    .line 171
    .end local v9    # "patternIndex":I
    :cond_5
    move v9, v8

    .line 173
    .restart local v9    # "patternIndex":I
    :goto_4
    move v6, v8

    .line 177
    :goto_5
    sget-object v10, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v10, v10, v9

    invoke-interface {v1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    mul-int v10, v9, v5

    add-int/2addr v4, v10

    .line 181
    if-eqz v7, :cond_6

    .line 182
    add-int/lit8 v5, v5, 0x1

    .line 184
    .end local v8    # "newCodeSet":I
    .end local v9    # "patternIndex":I
    :cond_6
    goto :goto_2

    .line 187
    :cond_7
    rem-int/lit8 v4, v4, 0x67

    .line 188
    sget-object v8, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v8, v8, v4

    invoke-interface {v1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v8, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v9, 0x6a

    aget-object v8, v8, v9

    invoke-interface {v1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 194
    const/4 v8, 0x0

    .line 195
    .local v8, "codeWidth":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 196
    .local v11, "pattern":[I
    array-length v13, v12

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v13, :cond_8

    aget v15, v12, v14

    .line 197
    .local v15, "width":I
    add-int/2addr v8, v15

    .line 196
    .end local v15    # "width":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 199
    .end local v11    # "pattern":[I
    :cond_8
    goto :goto_6

    .line 202
    :cond_9
    new-array v2, v8, [Z

    .line 203
    .local v2, "result":[Z
    const/4 v9, 0x0

    .line 204
    .local v9, "pos":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 205
    .local v12, "pattern":[I
    invoke-static {v2, v9, v12, v10}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([ZI[IZ)I

    move-result v13

    add-int/2addr v9, v13

    .line 206
    .end local v12    # "pattern":[I
    goto :goto_8

    .line 208
    :cond_a
    return-object v2

    .line 80
    .end local v1    # "patterns":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    .end local v2    # "result":[Z
    .end local v4    # "checkSum":I
    .end local v5    # "checkWeight":I
    .end local v6    # "codeSet":I
    .end local v7    # "position":I
    .end local v8    # "codeWidth":I
    .end local v9    # "pos":I
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Contents length should be between 1 and 80 characters, but got "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x64
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
