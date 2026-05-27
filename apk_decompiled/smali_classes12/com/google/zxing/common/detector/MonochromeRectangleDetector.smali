.class public final Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
.super Ljava/lang/Object;
.source "MonochromeRectangleDetector.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_MODULES:I = 0x20


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 40
    return-void
.end method

.method private blackWhiteRange(IIIIZ)[I
    .locals 8
    .param p1, "fixedDimension"    # I
    .param p2, "maxWhiteRun"    # I
    .param p3, "minDim"    # I
    .param p4, "maxDim"    # I
    .param p5, "horizontal"    # Z

    .line 172
    add-int v0, p3, p4

    const/4 v1, 0x2

    div-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    .line 175
    .local v3, "center":I
    move v3, v0

    .line 176
    .local v0, "start":I
    :goto_0
    if-lt v0, p3, :cond_7

    .line 177
    iget-object v4, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_0

    invoke-virtual {v4, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v4, p1, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 180
    :cond_1
    move v4, v0

    .line 182
    .local v4, "whiteRunStart":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 183
    if-lt v0, p3, :cond_4

    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_3

    invoke-virtual {v5, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 184
    :cond_3
    invoke-virtual {v5, p1, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 185
    :cond_4
    :goto_2
    sub-int v5, v4, v0

    .line 186
    .local v5, "whiteRunSize":I
    if-lt v0, p3, :cond_6

    if-le v5, p2, :cond_5

    goto :goto_3

    .line 190
    .end local v4    # "whiteRunStart":I
    .end local v5    # "whiteRunSize":I
    :cond_5
    goto :goto_0

    .line 187
    .restart local v4    # "whiteRunStart":I
    .restart local v5    # "whiteRunSize":I
    :cond_6
    :goto_3
    move v0, v4

    .line 192
    .end local v4    # "whiteRunStart":I
    .end local v5    # "whiteRunSize":I
    :cond_7
    const/4 v4, 0x1

    add-int/2addr v0, v4

    .line 195
    move v5, v3

    .line 196
    .local v5, "end":I
    :goto_4
    if-ge v5, p4, :cond_f

    .line 197
    iget-object v6, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_8

    invoke-virtual {v6, v5, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_5

    :cond_8
    invoke-virtual {v6, p1, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 198
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 200
    :cond_9
    move v6, v5

    .line 202
    .local v6, "whiteRunStart":I
    :cond_a
    add-int/2addr v5, v4

    .line 203
    if-ge v5, p4, :cond_c

    iget-object v7, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_b

    invoke-virtual {v7, v5, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_6

    .line 204
    :cond_b
    invoke-virtual {v7, p1, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 205
    :cond_c
    :goto_6
    sub-int v7, v5, v6

    .line 206
    .local v7, "whiteRunSize":I
    if-ge v5, p4, :cond_e

    if-le v7, p2, :cond_d

    goto :goto_7

    .line 210
    .end local v6    # "whiteRunStart":I
    .end local v7    # "whiteRunSize":I
    :cond_d
    goto :goto_4

    .line 207
    .restart local v6    # "whiteRunStart":I
    .restart local v7    # "whiteRunSize":I
    :cond_e
    :goto_7
    move v5, v6

    .line 212
    .end local v6    # "whiteRunStart":I
    .end local v7    # "whiteRunSize":I
    :cond_f
    add-int/lit8 v5, v5, -0x1

    .line 214
    if-le v5, v0, :cond_10

    new-array v1, v1, [I

    aput v0, v1, v2

    aput v5, v1, v4

    return-object v1

    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method private findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;
    .locals 15
    .param p1, "centerX"    # I
    .param p2, "deltaX"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "centerY"    # I
    .param p6, "deltaY"    # I
    .param p7, "top"    # I
    .param p8, "bottom"    # I
    .param p9, "maxWhiteRun"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 111
    move/from16 v0, p1

    move/from16 v1, p5

    const/4 v2, 0x0

    .line 112
    .local v2, "lastRange":[I
    move/from16 v3, p5

    .local v3, "y":I
    move/from16 v4, p1

    move v9, v3

    move v10, v4

    .line 113
    .end local v3    # "y":I
    .local v9, "y":I
    .local v10, "x":I
    :goto_0
    move/from16 v11, p8

    if-ge v9, v11, :cond_c

    move/from16 v12, p7

    if-lt v9, v12, :cond_b

    move/from16 v13, p4

    if-ge v10, v13, :cond_a

    move/from16 v14, p3

    if-lt v10, v14, :cond_d

    .line 116
    if-nez p2, :cond_0

    .line 118
    const/4 v8, 0x1

    move-object v3, p0

    move v4, v9

    move/from16 v5, p9

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v3

    .local v3, "range":[I
    goto :goto_1

    .line 121
    .end local v3    # "range":[I
    :cond_0
    const/4 v8, 0x0

    move-object v3, p0

    move v4, v10

    move/from16 v5, p9

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v3

    .line 123
    .restart local v3    # "range":[I
    :goto_1
    if-nez v3, :cond_9

    .line 124
    if-eqz v2, :cond_8

    .line 128
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_4

    .line 129
    sub-int v6, v9, p6

    .line 130
    .local v6, "lastY":I
    aget v7, v2, v5

    if-ge v7, v0, :cond_3

    .line 131
    aget v7, v2, v4

    if-le v7, v0, :cond_2

    .line 133
    new-instance v7, Lcom/google/zxing/ResultPoint;

    if-lez p6, :cond_1

    const/4 v4, 0x0

    :cond_1
    aget v4, v2, v4

    int-to-float v4, v4

    int-to-float v5, v6

    invoke-direct {v7, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v7

    .line 135
    :cond_2
    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v2, v5

    int-to-float v5, v5

    int-to-float v7, v6

    invoke-direct {v4, v5, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v4

    .line 137
    :cond_3
    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget v4, v2, v4

    int-to-float v4, v4

    int-to-float v7, v6

    invoke-direct {v5, v4, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v5

    .line 140
    .end local v6    # "lastY":I
    :cond_4
    sub-int v6, v10, p2

    .line 141
    .local v6, "lastX":I
    aget v7, v2, v5

    if-ge v7, v1, :cond_7

    .line 142
    aget v7, v2, v4

    if-le v7, v1, :cond_6

    .line 143
    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, v6

    if-gez p2, :cond_5

    const/4 v4, 0x0

    :cond_5
    aget v4, v2, v4

    int-to-float v4, v4

    invoke-direct {v7, v8, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v7

    .line 145
    :cond_6
    new-instance v4, Lcom/google/zxing/ResultPoint;

    int-to-float v7, v6

    aget v5, v2, v5

    int-to-float v5, v5

    invoke-direct {v4, v7, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v4

    .line 147
    :cond_7
    new-instance v5, Lcom/google/zxing/ResultPoint;

    int-to-float v7, v6

    aget v4, v2, v4

    int-to-float v4, v4

    invoke-direct {v5, v7, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v5

    .line 125
    .end local v6    # "lastX":I
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 151
    :cond_9
    move-object v2, v3

    .line 114
    .end local v3    # "range":[I
    add-int v9, v9, p6

    add-int v10, v10, p2

    goto/16 :goto_0

    .line 113
    :cond_a
    move/from16 v14, p3

    goto :goto_2

    :cond_b
    move/from16 v14, p3

    move/from16 v13, p4

    goto :goto_2

    :cond_c
    move/from16 v14, p3

    move/from16 v13, p4

    move/from16 v12, p7

    .line 153
    .end local v9    # "y":I
    .end local v10    # "x":I
    :cond_d
    :goto_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 53
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v11

    .line 54
    .local v11, "height":I
    iget-object v0, v10, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v12

    .line 55
    .local v12, "width":I
    div-int/lit8 v13, v11, 0x2

    .line 56
    .local v13, "halfHeight":I
    div-int/lit8 v14, v12, 0x2

    .line 57
    .local v14, "halfWidth":I
    div-int/lit16 v0, v11, 0x100

    const/4 v15, 0x1

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 58
    .local v9, "deltaY":I
    div-int/lit16 v0, v12, 0x100

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .local v8, "deltaX":I
    const/16 v16, 0x0

    move/from16 v17, v16

    .local v17, "bottom":I
    move/from16 v18, v16

    .local v18, "left":I
    move/from16 v19, v16

    .local v19, "right":I
    move/from16 v20, v16

    .line 64
    .local v20, "top":I
    neg-int v6, v9

    div-int/lit8 v21, v14, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move v4, v12

    move v5, v13

    move/from16 v22, v8

    .end local v8    # "deltaX":I
    .local v22, "deltaX":I
    move v8, v11

    move/from16 v23, v9

    .end local v9    # "deltaY":I
    .local v23, "deltaY":I
    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    const/16 v21, 0x0

    move-object/from16 v24, v21

    .line 66
    .local v24, "pointA":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v20, v0, -0x1

    .line 67
    move/from16 v9, v22

    .end local v22    # "deltaX":I
    .local v9, "deltaX":I
    neg-int v2, v9

    div-int/lit8 v22, v13, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v7, v20

    move/from16 v25, v9

    .end local v9    # "deltaX":I
    .local v25, "deltaX":I
    move/from16 v9, v22

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object/from16 v1, v21

    .line 69
    .local v1, "pointB":Lcom/google/zxing/ResultPoint;
    move-object/from16 v22, v0

    .end local v1    # "pointB":Lcom/google/zxing/ResultPoint;
    .local v22, "pointB":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v18, v0, -0x1

    .line 70
    div-int/lit8 v9, v13, 0x2

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v25

    move/from16 v3, v18

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object/from16 v1, v21

    .line 72
    .local v1, "pointC":Lcom/google/zxing/ResultPoint;
    move-object/from16 v26, v0

    .end local v1    # "pointC":Lcom/google/zxing/ResultPoint;
    .local v26, "pointC":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v19, v0, 0x1

    .line 73
    div-int/lit8 v9, v14, 0x2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v4, v19

    move/from16 v6, v23

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object/from16 v1, v21

    .line 75
    .local v1, "pointD":Lcom/google/zxing/ResultPoint;
    move-object/from16 v21, v0

    .end local v1    # "pointD":Lcom/google/zxing/ResultPoint;
    .local v21, "pointD":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v17, v0, 0x1

    .line 78
    move/from16 v9, v23

    .end local v23    # "deltaY":I
    .local v9, "deltaY":I
    neg-int v6, v9

    div-int/lit8 v23, v14, 0x4

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v8, v17

    move/from16 v27, v9

    .end local v9    # "deltaY":I
    .local v27, "deltaY":I
    move/from16 v9, v23

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 81
    .end local v24    # "pointA":Lcom/google/zxing/ResultPoint;
    .local v0, "pointA":Lcom/google/zxing/ResultPoint;
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/zxing/ResultPoint;

    aput-object v0, v1, v16

    aput-object v22, v1, v15

    const/4 v2, 0x2

    aput-object v26, v1, v2

    const/4 v2, 0x3

    aput-object v21, v1, v2

    return-object v1
.end method
