.class public final Lcom/facebook/appevents/ml/Operator;
.super Ljava/lang/Object;
.source "Operator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u001b\u0010\u0008\u001a\u00020\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nH\u0007\u00a2\u0006\u0002\u0010\u000bJ\u0018\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0007J \u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J+\u0010\u000f\u001a\u00020\u00062\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0010\u0014J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0013H\u0007J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0013H\u0007J\u0018\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0007J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/appevents/ml/Operator;",
        "",
        "()V",
        "addmv",
        "",
        "x",
        "Lcom/facebook/appevents/ml/MTensor;",
        "b",
        "concatenate",
        "tensors",
        "",
        "([Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;",
        "conv1D",
        "w",
        "dense",
        "embedding",
        "texts",
        "",
        "seqLength",
        "",
        "([Ljava/lang/String;ILcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;",
        "flatten",
        "startDim",
        "maxPool1D",
        "poolSize",
        "mul",
        "relu",
        "softmax",
        "transpose2D",
        "transpose3D",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/appevents/ml/Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/facebook/appevents/ml/Operator;

    invoke-direct {v0}, Lcom/facebook/appevents/ml/Operator;-><init>()V

    sput-object v0, Lcom/facebook/appevents/ml/Operator;->INSTANCE:Lcom/facebook/appevents/ml/Operator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addmv(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)V
    .locals 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .local p0, "x":Lcom/facebook/appevents/ml/MTensor;
    .local p1, "b":Lcom/facebook/appevents/ml/MTensor;
    :cond_0
    :try_start_0
    const-string/jumbo v1, "x"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "b"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v2

    .line 33
    .local v2, "exampleSize":I
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    .line 34
    .local v3, "seqLength":I
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v4

    .line 35
    .local v4, "inputSize":I
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v5

    .line 36
    .local v5, "xData":[F
    invoke-virtual {p1}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v6

    .line 37
    .local v6, "bData":[F
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_3

    .line 38
    .local v7, "i":I
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_2

    .line 39
    .local v8, "j":I
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v4, :cond_1

    .line 40
    .local v9, "k":I
    mul-int v10, v7, v3

    mul-int v10, v10, v4

    mul-int v11, v8, v4

    add-int/2addr v10, v11

    add-int/2addr v10, v9

    aget v11, v5, v10

    aget v12, v6, v9

    add-float/2addr v11, v12

    aput v11, v5, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    nop

    .end local v9    # "k":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 38
    :cond_1
    nop

    .end local v8    # "j":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 37
    :cond_2
    nop

    .end local v7    # "i":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 44
    :cond_3
    return-void

    .end local v2    # "exampleSize":I
    .end local v3    # "seqLength":I
    .end local v4    # "inputSize":I
    .end local v5    # "xData":[F
    .end local v6    # "bData":[F
    .end local p0    # "x":Lcom/facebook/appevents/ml/MTensor;
    .end local p1    # "b":Lcom/facebook/appevents/ml/MTensor;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final concatenate([Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .locals 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "tensors":[Lcom/facebook/appevents/ml/MTensor;
    :cond_0
    :try_start_0
    const-string/jumbo v1, "tensors"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    const/4 v1, 0x0

    aget-object v3, p0, v1

    invoke-virtual {v3, v1}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    .line 96
    .local v3, "exampleSize":I
    const/4 v4, 0x0

    .line 97
    .local v4, "outputSize":I
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v5, :cond_1

    .line 98
    .local v6, "i":I
    aget-object v8, p0, v6

    invoke-virtual {v8, v7}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v7

    add-int/2addr v4, v7

    .line 97
    nop

    .end local v6    # "i":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 100
    :cond_1
    new-instance v5, Lcom/facebook/appevents/ml/MTensor;

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v3, v6, v1

    aput v4, v6, v7

    invoke-direct {v5, v6}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 101
    .local v5, "y":Lcom/facebook/appevents/ml/MTensor;
    invoke-virtual {v5}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v6

    .line 102
    .local v6, "yData":[F
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_3

    .line 103
    .local v8, "n":I
    mul-int v9, v8, v4

    .line 104
    .local v9, "desPos":I
    array-length v10, p0

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_2

    .line 105
    .local v11, "i":I
    aget-object v12, p0, v11

    invoke-virtual {v12}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v12

    .line 106
    .local v12, "xData":[F
    aget-object v13, p0, v11

    invoke-virtual {v13, v7}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v13

    .line 107
    .local v13, "inputSize":I
    mul-int v14, v8, v13

    invoke-static {v12, v14, v6, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    add-int/2addr v9, v13

    .line 104
    .end local v12    # "xData":[F
    .end local v13    # "inputSize":I
    nop

    .end local v11    # "i":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 102
    .end local v9    # "desPos":I
    :cond_2
    nop

    .end local v8    # "n":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 111
    :cond_3
    return-object v5

    .end local v3    # "exampleSize":I
    .end local v4    # "outputSize":I
    .end local v5    # "y":Lcom/facebook/appevents/ml/MTensor;
    .end local v6    # "yData":[F
    .end local p0    # "tensors":[Lcom/facebook/appevents/ml/MTensor;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final conv1D(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .locals 20
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v1, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v0, p0

    .local v0, "x":Lcom/facebook/appevents/ml/MTensor;
    move-object/from16 v3, p1

    .local v3, "w":Lcom/facebook/appevents/ml/MTensor;
    :try_start_0
    const-string/jumbo v4, "x"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "w"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    .line 211
    .local v5, "exampleSize":I
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v7

    .line 212
    .local v7, "inputSeqLength":I
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v9

    .line 213
    .local v9, "inputSize":I
    invoke-virtual {v3, v4}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v10

    .line 214
    .local v10, "kernelSize":I
    sub-int v11, v7, v10

    add-int/2addr v11, v6

    .line 215
    .local v11, "outputSeqLength":I
    invoke-virtual {v3, v8}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v12

    .line 216
    .local v12, "outputSize":I
    new-instance v13, Lcom/facebook/appevents/ml/MTensor;

    const/4 v14, 0x3

    new-array v14, v14, [I

    aput v5, v14, v4

    aput v11, v14, v6

    aput v12, v14, v8

    invoke-direct {v13, v14}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    move-object v6, v13

    .line 217
    .local v6, "y":Lcom/facebook/appevents/ml/MTensor;
    invoke-virtual {v0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v8

    .line 218
    .local v8, "xData":[F
    invoke-virtual {v6}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v13

    .line 219
    .local v13, "yData":[F
    invoke-virtual {v3}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v14

    .line 220
    .local v14, "wData":[F
    const/4 v15, 0x0

    :goto_0
    if-ge v15, v5, :cond_5

    .line 221
    .local v15, "n":I
    nop

    :goto_1
    if-ge v4, v12, :cond_4

    .line 222
    .local v4, "o":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v11, :cond_3

    .line 223
    .local v2, "i":I
    const/16 v16, 0x0

    .line 224
    .local v16, "sum":F
    move-object/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "x":Lcom/facebook/appevents/ml/MTensor;
    .local v17, "x":Lcom/facebook/appevents/ml/MTensor;
    :goto_3
    if-ge v0, v10, :cond_2

    .line 225
    .local v0, "m":I
    move-object/from16 p1, v3

    const/4 v3, 0x0

    .end local v3    # "w":Lcom/facebook/appevents/ml/MTensor;
    .local p1, "w":Lcom/facebook/appevents/ml/MTensor;
    :goto_4
    if-ge v3, v9, :cond_1

    .line 226
    .local v3, "k":I
    nop

    .line 227
    mul-int v18, v7, v9

    mul-int v18, v18, v15

    add-int v19, v0, v2

    mul-int v19, v19, v9

    add-int v18, v18, v19

    add-int v18, v18, v3

    aget v18, v8, v18

    .line 228
    mul-int v19, v0, v9

    add-int v19, v19, v3

    mul-int v19, v19, v12

    add-int v19, v19, v4

    aget v19, v14, v19

    .line 227
    mul-float v18, v18, v19

    .line 226
    add-float v16, v16, v18

    .line 225
    nop

    .end local v3    # "k":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 224
    :cond_1
    nop

    .end local v0    # "m":I
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p1

    goto :goto_3

    .line 231
    .end local p1    # "w":Lcom/facebook/appevents/ml/MTensor;
    .local v3, "w":Lcom/facebook/appevents/ml/MTensor;
    :cond_2
    move-object/from16 p1, v3

    .end local v3    # "w":Lcom/facebook/appevents/ml/MTensor;
    .restart local p1    # "w":Lcom/facebook/appevents/ml/MTensor;
    mul-int v0, v11, v12

    mul-int v0, v0, v15

    mul-int v3, v2, v12

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    aput v16, v13, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .end local v16    # "sum":F
    nop

    .end local v2    # "i":I
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, p1

    move-object/from16 v0, v17

    goto :goto_2

    .line 221
    .end local v17    # "x":Lcom/facebook/appevents/ml/MTensor;
    .end local p1    # "w":Lcom/facebook/appevents/ml/MTensor;
    .local v0, "x":Lcom/facebook/appevents/ml/MTensor;
    .restart local v3    # "w":Lcom/facebook/appevents/ml/MTensor;
    :cond_3
    move-object/from16 v17, v0

    move-object/from16 p1, v3

    .end local v0    # "x":Lcom/facebook/appevents/ml/MTensor;
    .end local v3    # "w":Lcom/facebook/appevents/ml/MTensor;
    .end local v4    # "o":I
    .restart local v17    # "x":Lcom/facebook/appevents/ml/MTensor;
    .restart local p1    # "w":Lcom/facebook/appevents/ml/MTensor;
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto :goto_1

    .line 220
    .end local v17    # "x":Lcom/facebook/appevents/ml/MTensor;
    .end local p1    # "w":Lcom/facebook/appevents/ml/MTensor;
    .restart local v0    # "x":Lcom/facebook/appevents/ml/MTensor;
    .restart local v3    # "w":Lcom/facebook/appevents/ml/MTensor;
    :cond_4
    move-object/from16 v17, v0

    move-object/from16 p1, v3

    .end local v0    # "x":Lcom/facebook/appevents/ml/MTensor;
    .end local v3    # "w":Lcom/facebook/appevents/ml/MTensor;
    .end local v15    # "n":I
    .restart local v17    # "x":Lcom/facebook/appevents/ml/MTensor;
    .restart local p1    # "w":Lcom/facebook/appevents/ml/MTensor;
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_0

    .line 235
    .end local v17    # "x":Lcom/facebook/appevents/ml/MTensor;
    .end local p1    # "w":Lcom/facebook/appevents/ml/MTensor;
    .restart local v0    # "x":Lcom/facebook/appevents/ml/MTensor;
    .restart local v3    # "w":Lcom/facebook/appevents/ml/MTensor;
    :cond_5
    return-object v6

    .end local v0    # "x":Lcom/facebook/appevents/ml/MTensor;
    .end local v3    # "w":Lcom/facebook/appevents/ml/MTensor;
    .end local v5    # "exampleSize":I
    .end local v6    # "y":Lcom/facebook/appevents/ml/MTensor;
    .end local v7    # "inputSeqLength":I
    .end local v8    # "xData":[F
    .end local v9    # "inputSize":I
    .end local v10    # "kernelSize":I
    .end local v11    # "outputSeqLength":I
    .end local v12    # "outputSize":I
    .end local v13    # "yData":[F
    .end local v14    # "wData":[F
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static final dense(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .locals 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "x":Lcom/facebook/appevents/ml/MTensor;
    .local p1, "w":Lcom/facebook/appevents/ml/MTensor;
    .local p2, "b":Lcom/facebook/appevents/ml/MTensor;
    :cond_0
    :try_start_0
    const-string/jumbo v1, "x"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "w"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "b"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    .line 142
    .local v3, "exampleSize":I
    invoke-virtual {p2, v1}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v4

    .line 143
    .local v4, "outputSize":I
    invoke-static {p0, p1}, Lcom/facebook/appevents/ml/Operator;->mul(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v5

    .line 144
    .local v5, "y":Lcom/facebook/appevents/ml/MTensor;
    invoke-virtual {p2}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v6

    .line 145
    .local v6, "bData":[F
    invoke-virtual {v5}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v7

    .line 146
    .local v7, "yData":[F
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_2

    .line 147
    .local v8, "i":I
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v4, :cond_1

    .line 148
    .local v9, "j":I
    mul-int v10, v8, v4

    add-int/2addr v10, v9

    aget v11, v7, v10

    aget v12, v6, v9

    add-float/2addr v11, v12

    aput v11, v7, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    nop

    .end local v9    # "j":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 146
    :cond_1
    nop

    .end local v8    # "i":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 151
    :cond_2
    return-object v5

    .end local v3    # "exampleSize":I
    .end local v4    # "outputSize":I
    .end local v5    # "y":Lcom/facebook/appevents/ml/MTensor;
    .end local v6    # "bData":[F
    .end local v7    # "yData":[F
    .end local p0    # "x":Lcom/facebook/appevents/ml/MTensor;
    .end local p1    # "w":Lcom/facebook/appevents/ml/MTensor;
    .end local p2    # "b":Lcom/facebook/appevents/ml/MTensor;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final embedding([Ljava/lang/String;ILcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .locals 17
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v1, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v0, p0

    .local v0, "texts":[Ljava/lang/String;
    move-object/from16 v3, p2

    .local v3, "w":Lcom/facebook/appevents/ml/MTensor;
    move/from16 v4, p1

    .local v4, "seqLength":I
    :try_start_0
    const-string/jumbo v5, "texts"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "w"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    array-length v5, v0

    .line 157
    .local v5, "exampleSize":I
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v7

    .line 158
    .local v7, "embeddingSize":I
    new-instance v8, Lcom/facebook/appevents/ml/MTensor;

    const/4 v9, 0x3

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v5, v9, v10

    aput v4, v9, v6

    const/4 v6, 0x2

    aput v7, v9, v6

    invoke-direct {v8, v9}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    move-object v6, v8

    .line 159
    .local v6, "y":Lcom/facebook/appevents/ml/MTensor;
    invoke-virtual {v6}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v8

    .line 160
    .local v8, "yData":[F
    invoke-virtual {v3}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v9

    .line 161
    .local v9, "wData":[F
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v5, :cond_2

    .line 162
    .local v11, "i":I
    sget-object v12, Lcom/facebook/appevents/ml/Utils;->INSTANCE:Lcom/facebook/appevents/ml/Utils;

    aget-object v13, v0, v11

    invoke-virtual {v12, v13, v4}, Lcom/facebook/appevents/ml/Utils;->vectorize(Ljava/lang/String;I)[I

    move-result-object v12

    .line 163
    .local v12, "vectorizedText":[I
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v4, :cond_1

    .line 164
    .local v13, "j":I
    nop

    .line 165
    nop

    .line 166
    aget v14, v12, v13

    mul-int v14, v14, v7

    .line 167
    nop

    .line 168
    mul-int v15, v7, v4

    mul-int v15, v15, v11

    mul-int v16, v7, v13

    add-int v15, v15, v16

    .line 169
    nop

    .line 164
    invoke-static {v9, v14, v8, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    nop

    .end local v13    # "j":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 161
    .end local v12    # "vectorizedText":[I
    :cond_1
    nop

    .end local v11    # "i":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 172
    :cond_2
    return-object v6

    .end local v0    # "texts":[Ljava/lang/String;
    .end local v3    # "w":Lcom/facebook/appevents/ml/MTensor;
    .end local v4    # "seqLength":I
    .end local v5    # "exampleSize":I
    .end local v6    # "y":Lcom/facebook/appevents/ml/MTensor;
    .end local v7    # "embeddingSize":I
    .end local v8    # "yData":[F
    .end local v9    # "wData":[F
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final flatten(Lcom/facebook/appevents/ml/MTensor;I)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .local p0, "x":Lcom/facebook/appevents/ml/MTensor;
    .local p1, "startDim":I
    :cond_0
    :try_start_0
    const-string/jumbo v1, "x"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getShapeSize()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 79
    return-void

    .line 81
    :cond_1
    const/4 v1, 0x1

    .line 82
    .local v1, "outputSize":I
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getShapeSize()I

    move-result v2

    move v3, p1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 83
    .local v3, "i":I
    invoke-virtual {p0, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v4

    mul-int v1, v1, v4

    .line 82
    nop

    .end local v3    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_2
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [I

    .line 86
    .local v2, "newShape":[I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_3

    .line 87
    .restart local v3    # "i":I
    invoke-virtual {p0, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v4

    aput v4, v2, v3

    .line 86
    nop

    .end local v3    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89
    :cond_3
    aput v1, v2, p1

    .line 90
    invoke-virtual {p0, v2}, Lcom/facebook/appevents/ml/MTensor;->reshape([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    return-void

    .end local v1    # "outputSize":I
    .end local v2    # "newShape":[I
    .end local p0    # "x":Lcom/facebook/appevents/ml/MTensor;
    .end local p1    # "startDim":I
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final maxPool1D(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;
    .locals 20
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v1, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v0, p0

    .local v0, "x":Lcom/facebook/appevents/ml/MTensor;
    move/from16 v3, p1

    .local v3, "poolSize":I
    :try_start_0
    const-string/jumbo v4, "x"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    .line 241
    .local v5, "exampleSize":I
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v7

    .line 242
    .local v7, "inputSeqLength":I
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v9

    .line 243
    .local v9, "inputSize":I
    sub-int v10, v7, v3

    add-int/2addr v10, v6

    .line 244
    .local v10, "outputSeqLength":I
    new-instance v11, Lcom/facebook/appevents/ml/MTensor;

    const/4 v12, 0x3

    new-array v12, v12, [I

    aput v5, v12, v4

    aput v10, v12, v6

    aput v9, v12, v8

    invoke-direct {v11, v12}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    move-object v6, v11

    .line 245
    .local v6, "y":Lcom/facebook/appevents/ml/MTensor;
    invoke-virtual {v0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v8

    .line 246
    .local v8, "xData":[F
    invoke-virtual {v6}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v11

    .line 247
    .local v11, "yData":[F
    const/4 v12, 0x0

    :goto_0
    if-ge v12, v5, :cond_4

    .line 248
    .local v12, "n":I
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v9, :cond_3

    .line 249
    .local v13, "c":I
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v10, :cond_2

    .line 250
    .local v14, "i":I
    mul-int v15, v12, v10

    mul-int v15, v15, v9

    mul-int v16, v14, v9

    add-int v15, v15, v16

    add-int/2addr v15, v13

    .line 251
    .local v15, "yIndex":I
    mul-int v16, v12, v7

    mul-int v16, v16, v9

    mul-int v17, v14, v9

    add-int v16, v16, v17

    add-int v16, v16, v13

    .line 252
    .local v16, "xIndex":I
    const/16 v17, 0x1

    aput v17, v11, v15

    .line 253
    nop

    :goto_3
    if-ge v4, v3, :cond_1

    .line 254
    .local v4, "r":I
    aget v2, v11, v15

    mul-int v18, v4, v9

    add-int v18, v16, v18

    move-object/from16 v19, v0

    .end local v0    # "x":Lcom/facebook/appevents/ml/MTensor;
    .local v19, "x":Lcom/facebook/appevents/ml/MTensor;
    aget v0, v8, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v11, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    nop

    .end local v4    # "r":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v19

    const/4 v2, 0x0

    goto :goto_3

    .end local v19    # "x":Lcom/facebook/appevents/ml/MTensor;
    .restart local v0    # "x":Lcom/facebook/appevents/ml/MTensor;
    :cond_1
    move-object/from16 v19, v0

    .line 249
    .end local v0    # "x":Lcom/facebook/appevents/ml/MTensor;
    .end local v15    # "yIndex":I
    .end local v16    # "xIndex":I
    .restart local v19    # "x":Lcom/facebook/appevents/ml/MTensor;
    nop

    .end local v14    # "i":I
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_2

    .line 248
    .end local v19    # "x":Lcom/facebook/appevents/ml/MTensor;
    .restart local v0    # "x":Lcom/facebook/appevents/ml/MTensor;
    :cond_2
    move-object/from16 v19, v0

    .end local v0    # "x":Lcom/facebook/appevents/ml/MTensor;
    .end local v13    # "c":I
    .restart local v19    # "x":Lcom/facebook/appevents/ml/MTensor;
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_1

    .line 247
    .end local v19    # "x":Lcom/facebook/appevents/ml/MTensor;
    .restart local v0    # "x":Lcom/facebook/appevents/ml/MTensor;
    :cond_3
    move-object/from16 v19, v0

    .end local v0    # "x":Lcom/facebook/appevents/ml/MTensor;
    .end local v12    # "n":I
    .restart local v19    # "x":Lcom/facebook/appevents/ml/MTensor;
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_0

    .line 259
    .end local v19    # "x":Lcom/facebook/appevents/ml/MTensor;
    .restart local v0    # "x":Lcom/facebook/appevents/ml/MTensor;
    :cond_4
    return-object v6

    .end local v0    # "x":Lcom/facebook/appevents/ml/MTensor;
    .end local v3    # "poolSize":I
    .end local v5    # "exampleSize":I
    .end local v6    # "y":Lcom/facebook/appevents/ml/MTensor;
    .end local v7    # "inputSeqLength":I
    .end local v8    # "xData":[F
    .end local v9    # "inputSize":I
    .end local v10    # "outputSeqLength":I
    .end local v11    # "yData":[F
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static final mul(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .locals 19
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v1, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v0, p0

    .local v0, "x":Lcom/facebook/appevents/ml/MTensor;
    move-object/from16 v3, p1

    .local v3, "w":Lcom/facebook/appevents/ml/MTensor;
    :try_start_0
    const-string/jumbo v4, "x"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "w"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    .line 49
    .local v5, "exampleSize":I
    invoke-virtual {v3, v4}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v6

    .line 50
    .local v6, "inputSize":I
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v8

    .line 51
    .local v8, "outputSize":I
    new-instance v9, Lcom/facebook/appevents/ml/MTensor;

    const/4 v10, 0x2

    new-array v10, v10, [I

    aput v5, v10, v4

    aput v8, v10, v7

    invoke-direct {v9, v10}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    move-object v7, v9

    .line 52
    .local v7, "y":Lcom/facebook/appevents/ml/MTensor;
    invoke-virtual {v0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v9

    .line 53
    .local v9, "xData":[F
    invoke-virtual {v3}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v10

    .line 54
    .local v10, "wData":[F
    invoke-virtual {v7}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v11

    .line 55
    .local v11, "yData":[F
    const/4 v12, 0x0

    :goto_0
    if-ge v12, v5, :cond_3

    .line 56
    .local v12, "i":I
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v8, :cond_2

    .line 57
    .local v13, "j":I
    mul-int v14, v12, v8

    add-int/2addr v14, v13

    const/4 v15, 0x0

    aput v15, v11, v14

    .line 58
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v6, :cond_1

    .line 59
    .local v14, "k":I
    mul-int v15, v12, v8

    add-int/2addr v15, v13

    aget v16, v11, v15

    mul-int v17, v12, v6

    add-int v17, v17, v14

    aget v17, v9, v17

    mul-int v18, v14, v8

    add-int v18, v18, v13

    aget v18, v10, v18

    mul-float v17, v17, v18

    add-float v16, v16, v17

    aput v16, v11, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    nop

    .end local v14    # "k":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 56
    :cond_1
    nop

    .end local v13    # "j":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 55
    :cond_2
    nop

    .end local v12    # "i":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 63
    :cond_3
    return-object v7

    .end local v0    # "x":Lcom/facebook/appevents/ml/MTensor;
    .end local v3    # "w":Lcom/facebook/appevents/ml/MTensor;
    .end local v5    # "exampleSize":I
    .end local v6    # "inputSize":I
    .end local v7    # "y":Lcom/facebook/appevents/ml/MTensor;
    .end local v8    # "outputSize":I
    .end local v9    # "xData":[F
    .end local v10    # "wData":[F
    .end local v11    # "yData":[F
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final relu(Lcom/facebook/appevents/ml/MTensor;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .local p0, "x":Lcom/facebook/appevents/ml/MTensor;
    :cond_0
    :try_start_0
    const-string/jumbo v1, "x"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v1

    .line 69
    .local v1, "xData":[F
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 70
    .local v4, "i":I
    aget v5, v1, v4

    int-to-float v6, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 71
    const/4 v5, 0x0

    aput v5, v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    nop

    .end local v4    # "i":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    :cond_2
    return-void

    .end local v1    # "xData":[F
    .end local p0    # "x":Lcom/facebook/appevents/ml/MTensor;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final softmax(Lcom/facebook/appevents/ml/MTensor;)V
    .locals 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .local p0, "x":Lcom/facebook/appevents/ml/MTensor;
    :cond_0
    :try_start_0
    const-string/jumbo v1, "x"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v2

    .line 117
    .local v2, "exampleSize":I
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    .line 118
    .local v3, "inputSize":I
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v4

    .line 119
    .local v4, "xData":[F
    nop

    :goto_0
    if-ge v1, v2, :cond_5

    .line 120
    .local v1, "n":I
    mul-int v5, v1, v3

    .line 121
    .local v5, "startIndex":I
    add-int v6, v5, v3

    .line 122
    .local v6, "endIndex":I
    const/4 v7, 0x1

    .line 123
    .local v7, "max":F
    const/4 v8, 0x0

    .line 124
    .local v8, "sum":F
    move v9, v5

    :goto_1
    if-ge v9, v6, :cond_2

    .line 125
    .local v9, "i":I
    aget v10, v4, v9

    cmpl-float v10, v10, v7

    if-lez v10, :cond_1

    .line 126
    aget v10, v4, v9

    move v7, v10

    .line 124
    :cond_1
    nop

    .end local v9    # "i":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 129
    :cond_2
    move v9, v5

    :goto_2
    if-ge v9, v6, :cond_3

    .line 130
    .restart local v9    # "i":I
    aget v10, v4, v9

    sub-float/2addr v10, v7

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v4, v9

    .line 131
    aget v10, v4, v9

    add-float/2addr v8, v10

    .line 129
    nop

    .end local v9    # "i":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 133
    :cond_3
    move v9, v5

    :goto_3
    if-ge v9, v6, :cond_4

    .line 134
    .restart local v9    # "i":I
    aget v10, v4, v9

    div-float/2addr v10, v8

    aput v10, v4, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    nop

    .end local v9    # "i":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 119
    .end local v5    # "startIndex":I
    .end local v6    # "endIndex":I
    .end local v7    # "max":F
    .end local v8    # "sum":F
    :cond_4
    nop

    .end local v1    # "n":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_5
    return-void

    .end local v2    # "exampleSize":I
    .end local v3    # "inputSize":I
    .end local v4    # "xData":[F
    .end local p0    # "x":Lcom/facebook/appevents/ml/MTensor;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final transpose2D(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .locals 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "x":Lcom/facebook/appevents/ml/MTensor;
    :cond_0
    :try_start_0
    const-string/jumbo v1, "x"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    .line 178
    .local v3, "m":I
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    .line 179
    .local v5, "n":I
    new-instance v6, Lcom/facebook/appevents/ml/MTensor;

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v5, v7, v1

    aput v3, v7, v4

    invoke-direct {v6, v7}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    move-object v4, v6

    .line 180
    .local v4, "y":Lcom/facebook/appevents/ml/MTensor;
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v6

    .line 181
    .local v6, "xData":[F
    invoke-virtual {v4}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v7

    .line 182
    .local v7, "yData":[F
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_2

    .line 183
    .local v8, "i":I
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v5, :cond_1

    .line 184
    .local v9, "j":I
    mul-int v10, v9, v3

    add-int/2addr v10, v8

    mul-int v11, v8, v5

    add-int/2addr v11, v9

    aget v11, v6, v11

    aput v11, v7, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    nop

    .end local v9    # "j":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 182
    :cond_1
    nop

    .end local v8    # "i":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 187
    :cond_2
    return-object v4

    .end local v3    # "m":I
    .end local v4    # "y":Lcom/facebook/appevents/ml/MTensor;
    .end local v5    # "n":I
    .end local v6    # "xData":[F
    .end local v7    # "yData":[F
    .end local p0    # "x":Lcom/facebook/appevents/ml/MTensor;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final transpose3D(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .locals 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "x":Lcom/facebook/appevents/ml/MTensor;
    :cond_0
    :try_start_0
    const-string/jumbo v1, "x"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    .line 193
    .local v3, "m":I
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    .line 194
    .local v5, "n":I
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v7

    .line 195
    .local v7, "p":I
    new-instance v8, Lcom/facebook/appevents/ml/MTensor;

    const/4 v9, 0x3

    new-array v9, v9, [I

    aput v7, v9, v1

    aput v5, v9, v4

    aput v3, v9, v6

    invoke-direct {v8, v9}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    move-object v4, v8

    .line 196
    .local v4, "y":Lcom/facebook/appevents/ml/MTensor;
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v6

    .line 197
    .local v6, "xData":[F
    invoke-virtual {v4}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v8

    .line 198
    .local v8, "yData":[F
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v3, :cond_3

    .line 199
    .local v9, "i":I
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_2

    .line 200
    .local v10, "j":I
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v7, :cond_1

    .line 201
    .local v11, "k":I
    mul-int v12, v11, v3

    mul-int v12, v12, v5

    mul-int v13, v10, v3

    add-int/2addr v12, v13

    add-int/2addr v12, v9

    mul-int v13, v9, v5

    mul-int v13, v13, v7

    mul-int v14, v10, v7

    add-int/2addr v13, v14

    add-int/2addr v13, v11

    aget v13, v6, v13

    aput v13, v8, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    nop

    .end local v11    # "k":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 199
    :cond_1
    nop

    .end local v10    # "j":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 198
    :cond_2
    nop

    .end local v9    # "i":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 205
    :cond_3
    return-object v4

    .end local v3    # "m":I
    .end local v4    # "y":Lcom/facebook/appevents/ml/MTensor;
    .end local v5    # "n":I
    .end local v6    # "xData":[F
    .end local v7    # "p":I
    .end local v8    # "yData":[F
    .end local p0    # "x":Lcom/facebook/appevents/ml/MTensor;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method
