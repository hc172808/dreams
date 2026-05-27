.class final Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
.super Ljava/lang/Object;
.source "AlignmentPatternFinder.java"


# instance fields
.field private final crossCheckStateCount:[I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final moduleSize:F

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/detector/AlignmentPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;

.field private final startX:I

.field private final startY:I

.field private final width:I


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V
    .locals 2
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "moduleSize"    # F
    .param p7, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    .line 71
    iput p2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startX:I

    .line 72
    iput p3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startY:I

    .line 73
    iput p4, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->width:I

    .line 74
    iput p5, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->height:I

    .line 75
    iput p6, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->moduleSize:F

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckStateCount:[I

    .line 77
    iput-object p7, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 78
    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 3
    .param p0, "stateCount"    # [I
    .param p1, "end"    # I

    .line 161
    const/4 v0, 0x2

    aget v0, p0, v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckVertical(IIII)F
    .locals 9
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .line 193
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    move-object v2, v1

    .line 195
    .local v2, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 196
    .local v0, "maxI":I
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckStateCount:[I

    .line 197
    .local v1, "stateCount":[I
    move-object v1, v3

    const/4 v4, 0x0

    aput v4, v3, v4

    .line 198
    const/4 v3, 0x1

    aput v4, v1, v3

    .line 199
    const/4 v5, 0x2

    aput v4, v1, v5

    .line 202
    move v6, p1

    .line 203
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    invoke-virtual {v2, p2, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_0

    aget v7, v1, v3

    if-gt v7, p3, :cond_0

    .line 204
    aget v7, v1, v3

    add-int/2addr v7, v3

    aput v7, v1, v3

    .line 205
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 208
    :cond_0
    const/high16 v7, 0x7fc00000    # Float.NaN

    if-ltz v6, :cond_b

    aget v8, v1, v3

    if-le v8, p3, :cond_1

    goto/16 :goto_5

    .line 211
    :cond_1
    :goto_1
    if-ltz v6, :cond_2

    invoke-virtual {v2, p2, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-nez v8, :cond_2

    aget v8, v1, v4

    if-gt v8, p3, :cond_2

    .line 212
    aget v8, v1, v4

    add-int/2addr v8, v3

    aput v8, v1, v4

    .line 213
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 215
    :cond_2
    aget v8, v1, v4

    if-le v8, p3, :cond_3

    .line 216
    return v7

    .line 220
    :cond_3
    add-int/lit8 v6, p1, 0x1

    .line 221
    :goto_2
    if-ge v6, v0, :cond_4

    invoke-virtual {v2, p2, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_4

    aget v8, v1, v3

    if-gt v8, p3, :cond_4

    .line 222
    aget v8, v1, v3

    add-int/2addr v8, v3

    aput v8, v1, v3

    .line 223
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 225
    :cond_4
    if-eq v6, v0, :cond_a

    aget v8, v1, v3

    if-le v8, p3, :cond_5

    goto :goto_4

    .line 228
    :cond_5
    :goto_3
    if-ge v6, v0, :cond_6

    invoke-virtual {v2, p2, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-nez v8, :cond_6

    aget v8, v1, v5

    if-gt v8, p3, :cond_6

    .line 229
    aget v8, v1, v5

    add-int/2addr v8, v3

    aput v8, v1, v5

    .line 230
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 232
    :cond_6
    aget v8, v1, v5

    if-le v8, p3, :cond_7

    .line 233
    return v7

    .line 236
    :cond_7
    aget v4, v1, v4

    aget v3, v1, v3

    add-int/2addr v4, v3

    aget v3, v1, v5

    add-int/2addr v4, v3

    .line 237
    .local v4, "stateCountTotal":I
    sub-int v3, v4, p4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    mul-int/lit8 v5, p4, 0x2

    if-lt v3, v5, :cond_8

    .line 238
    return v7

    .line 241
    :cond_8
    invoke-direct {p0, v1}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v1, v6}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->centerFromEnd([II)F

    move-result v3

    return v3

    :cond_9
    return v7

    .line 226
    .end local v4    # "stateCountTotal":I
    :cond_a
    :goto_4
    return v7

    .line 209
    :cond_b
    :goto_5
    return v7
.end method

.method private foundPatternCross([I)Z
    .locals 4
    .param p1, "stateCount"    # [I

    .line 170
    iget v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->moduleSize:F

    const/4 v1, 0x0

    .line 171
    .local v1, "moduleSize":F
    move v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 172
    .local v0, "maxVariance":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 173
    aget v3, p1, v2

    int-to-float v3, v3

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v0

    if-ltz v3, :cond_0

    .line 174
    const/4 v3, 0x0

    return v3

    .line 172
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 8
    .param p1, "stateCount"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I

    .line 256
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    add-int/2addr v1, v4

    .line 257
    .local v1, "stateCountTotal":I
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->centerFromEnd([II)F

    move-result v4

    .line 258
    .local v4, "centerJ":F
    float-to-int v5, v4

    aget v6, p1, v2

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {p0, p2, v5, v6, v1}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckVertical(IIII)F

    move-result v5

    const/4 v6, 0x0

    .line 259
    .local v6, "centerI":F
    move v6, v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_2

    .line 260
    aget v0, p1, v0

    aget v2, p1, v2

    add-int/2addr v0, v2

    aget v2, p1, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    .line 261
    .local v0, "estimatedModuleSize":F
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v7

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    .line 263
    .local v3, "center":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    move-object v3, v5

    invoke-virtual {v5, v0, v6, v4}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->aboutEquals(FFF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 264
    invoke-virtual {v3, v6, v4, v0}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v2

    return-object v2

    .line 266
    .end local v3    # "center":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_0
    goto :goto_0

    .line 268
    :cond_1
    new-instance v2, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    invoke-direct {v2, v4, v6, v0}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;-><init>(FFF)V

    .line 269
    .local v2, "point":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v3, :cond_2

    .line 271
    invoke-interface {v3, v2}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 274
    .end local v0    # "estimatedModuleSize":F
    .end local v2    # "point":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_2
    return-object v7
.end method


# virtual methods
.method find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 88
    iget v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startX:I

    .line 89
    .local v0, "startX":I
    iget v1, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->height:I

    .line 90
    .local v1, "height":I
    iget v2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->width:I

    add-int/2addr v2, v0

    .line 91
    .local v2, "maxJ":I
    iget v3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startY:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    .line 94
    .local v3, "middleI":I
    const/4 v4, 0x3

    new-array v4, v4, [I

    .line 95
    .local v4, "stateCount":[I
    const/4 v5, 0x0

    .local v5, "iGen":I
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    if-ge v5, v1, :cond_9

    .line 97
    and-int/lit8 v8, v5, 0x1

    const/4 v9, 0x2

    if-nez v8, :cond_0

    add-int/lit8 v8, v5, 0x1

    div-int/2addr v8, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v5, 0x1

    div-int/2addr v8, v9

    neg-int v8, v8

    :goto_1
    add-int/2addr v8, v3

    .line 98
    .local v8, "i":I
    aput v7, v4, v7

    .line 99
    const/4 v10, 0x1

    aput v7, v4, v10

    .line 100
    aput v7, v4, v9

    .line 101
    move v11, v0

    .line 105
    .local v11, "j":I
    :goto_2
    if-ge v11, v2, :cond_1

    iget-object v12, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v12, v11, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-nez v12, :cond_1

    .line 106
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 108
    :cond_1
    const/4 v12, 0x0

    .line 109
    .local v12, "currentState":I
    :goto_3
    if-ge v11, v2, :cond_7

    .line 110
    iget-object v13, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v13, v11, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 112
    if-ne v12, v10, :cond_2

    .line 113
    aget v13, v4, v10

    add-int/2addr v13, v10

    aput v13, v4, v10

    goto :goto_4

    .line 115
    :cond_2
    if-ne v12, v9, :cond_4

    .line 116
    invoke-direct {p0, v4}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 117
    invoke-direct {p0, v4, v8, v11}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v13

    .line 118
    .local v6, "confirmed":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    move-object v6, v13

    if-eqz v13, :cond_3

    .line 119
    return-object v6

    .line 122
    .end local v6    # "confirmed":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_3
    aget v13, v4, v9

    aput v13, v4, v7

    .line 123
    aput v10, v4, v10

    .line 124
    aput v7, v4, v9

    .line 125
    const/4 v12, 0x1

    goto :goto_4

    .line 127
    :cond_4
    add-int/lit8 v12, v12, 0x1

    aget v13, v4, v12

    add-int/2addr v13, v10

    aput v13, v4, v12

    goto :goto_4

    .line 131
    :cond_5
    if-ne v12, v10, :cond_6

    .line 132
    add-int/lit8 v12, v12, 0x1

    .line 134
    :cond_6
    aget v13, v4, v12

    add-int/2addr v13, v10

    aput v13, v4, v12

    .line 136
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 138
    :cond_7
    invoke-direct {p0, v4}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 139
    invoke-direct {p0, v4, v8, v2}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v7

    .line 140
    .restart local v6    # "confirmed":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    move-object v6, v7

    if-eqz v7, :cond_8

    .line 141
    return-object v6

    .line 95
    .end local v6    # "confirmed":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .end local v8    # "i":I
    .end local v11    # "j":I
    .end local v12    # "currentState":I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 149
    .end local v5    # "iGen":I
    :cond_9
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 150
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    return-object v5

    .line 153
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5
.end method
