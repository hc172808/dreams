.class public final Lcom/google/zxing/oned/rss/RSS14Reader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSS14Reader.java"


# static fields
.field private static final FINDER_PATTERNS:[[I

.field private static final INSIDE_GSUM:[I

.field private static final INSIDE_ODD_TOTAL_SUBSET:[I

.field private static final INSIDE_ODD_WIDEST:[I

.field private static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field private static final OUTSIDE_GSUM:[I

.field private static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field private final possibleLeftPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final possibleRightPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    .line 39
    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    .line 40
    new-array v2, v0, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    .line 41
    new-array v2, v1, [I

    fill-array-data v2, :array_3

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    .line 42
    new-array v2, v0, [I

    fill-array-data v2, :array_4

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    .line 43
    new-array v2, v1, [I

    fill-array-data v2, :array_5

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    .line 45
    const/16 v2, 0x9

    new-array v2, v2, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_8

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_9

    const/4 v4, 0x3

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_a

    aput-object v3, v2, v1

    new-array v3, v1, [I

    fill-array-data v3, :array_b

    aput-object v3, v2, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_c

    const/4 v3, 0x6

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_d

    const/4 v3, 0x7

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_e

    const/16 v1, 0x8

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x22
        0x46
        0x7e
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x14
        0x30
        0x51
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xa1
        0x3c1
        0x7df
        0xa9b
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x150
        0x40c
        0x5ec
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x6
        0x4
        0x3
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x8
        0x2
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x3
        0x7
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x1
        0x9
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x7
        0x4
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x5
        0x6
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x3
        0x8
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x5
        0x7
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x3
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    .line 63
    return-void
.end method

.method private static addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V
    .locals 5
    .param p1, "pair"    # Lcom/google/zxing/oned/rss/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;",
            "Lcom/google/zxing/oned/rss/Pair;",
            ")V"
        }
    .end annotation

    .line 88
    .local p0, "possiblePairs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/rss/Pair;>;"
    if-nez p1, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    .line 92
    .local v0, "found":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/Pair;

    .line 93
    .local v2, "other":Lcom/google/zxing/oned/rss/Pair;
    move-object v2, v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 94
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/Pair;->incrementCount()V

    .line 95
    const/4 v0, 0x1

    .line 96
    goto :goto_1

    .line 98
    .end local v2    # "other":Lcom/google/zxing/oned/rss/Pair;
    :cond_1
    goto :goto_0

    .line 99
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 100
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_3
    return-void
.end method

.method private adjustOddEvenCounts(ZI)V
    .locals 11
    .param p1, "outsideChar"    # Z
    .param p2, "numModules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    .line 354
    .local v0, "oddSum":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v1

    .line 356
    .local v1, "evenSum":I
    const/4 v2, 0x0

    .line 357
    .local v2, "incrementOdd":Z
    const/4 v3, 0x0

    .line 358
    .local v3, "decrementOdd":Z
    const/4 v4, 0x0

    .line 359
    .local v4, "incrementEven":Z
    const/4 v5, 0x0

    .line 361
    .local v5, "decrementEven":Z
    const/4 v6, 0x4

    if-eqz p1, :cond_3

    .line 362
    const/16 v7, 0xc

    if-le v0, v7, :cond_0

    .line 363
    const/4 v3, 0x1

    goto :goto_0

    .line 364
    :cond_0
    if-ge v0, v6, :cond_1

    .line 365
    const/4 v2, 0x1

    .line 367
    :cond_1
    :goto_0
    if-le v1, v7, :cond_2

    .line 368
    const/4 v5, 0x1

    goto :goto_2

    .line 369
    :cond_2
    if-ge v1, v6, :cond_7

    .line 370
    const/4 v4, 0x1

    goto :goto_2

    .line 373
    :cond_3
    const/16 v7, 0xb

    if-le v0, v7, :cond_4

    .line 374
    const/4 v3, 0x1

    goto :goto_1

    .line 375
    :cond_4
    const/4 v7, 0x5

    if-ge v0, v7, :cond_5

    .line 376
    const/4 v2, 0x1

    .line 378
    :cond_5
    :goto_1
    const/16 v7, 0xa

    if-le v1, v7, :cond_6

    .line 379
    const/4 v5, 0x1

    goto :goto_2

    .line 380
    :cond_6
    if-ge v1, v6, :cond_7

    .line 381
    const/4 v4, 0x1

    .line 385
    :cond_7
    :goto_2
    add-int v6, v0, v1

    sub-int/2addr v6, p2

    .line 386
    .local v6, "mismatch":I
    and-int/lit8 v7, v0, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, p1, :cond_8

    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    .line 387
    .local v7, "oddParityBad":Z
    :goto_3
    and-int/lit8 v10, v1, 0x1

    if-ne v10, v9, :cond_9

    const/4 v8, 0x1

    .line 400
    .local v8, "evenParityBad":Z
    :cond_9
    if-ne v6, v9, :cond_d

    .line 401
    if-eqz v7, :cond_b

    .line 402
    if-nez v8, :cond_a

    .line 405
    const/4 v3, 0x1

    goto :goto_4

    .line 403
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 407
    :cond_b
    if-eqz v8, :cond_c

    .line 410
    const/4 v5, 0x1

    goto :goto_4

    .line 408
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 412
    :cond_d
    const/4 v9, -0x1

    if-ne v6, v9, :cond_11

    .line 413
    if-eqz v7, :cond_f

    .line 414
    if-nez v8, :cond_e

    .line 417
    const/4 v2, 0x1

    goto :goto_4

    .line 415
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 419
    :cond_f
    if-eqz v8, :cond_10

    .line 422
    const/4 v4, 0x1

    goto :goto_4

    .line 420
    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 424
    :cond_11
    if-nez v6, :cond_1c

    .line 425
    if-eqz v7, :cond_14

    .line 426
    if-eqz v8, :cond_13

    .line 430
    if-ge v0, v1, :cond_12

    .line 431
    const/4 v2, 0x1

    .line 432
    const/4 v5, 0x1

    goto :goto_4

    .line 434
    :cond_12
    const/4 v3, 0x1

    .line 435
    const/4 v4, 0x1

    goto :goto_4

    .line 427
    :cond_13
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 438
    :cond_14
    if-nez v8, :cond_1b

    .line 447
    :goto_4
    if-eqz v2, :cond_16

    .line 448
    if-nez v3, :cond_15

    .line 451
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    goto :goto_5

    .line 449
    :cond_15
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 453
    :cond_16
    :goto_5
    if-eqz v3, :cond_17

    .line 454
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 456
    :cond_17
    if-eqz v4, :cond_19

    .line 457
    if-nez v5, :cond_18

    .line 460
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    goto :goto_6

    .line 458
    :cond_18
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 462
    :cond_19
    :goto_6
    if-eqz v5, :cond_1a

    .line 463
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 466
    :cond_1a
    return-void

    .line 439
    :cond_1b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 444
    :cond_1c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9
.end method

.method private static checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z
    .locals 5
    .param p0, "leftPair"    # Lcom/google/zxing/oned/rss/Pair;
    .param p1, "rightPair"    # Lcom/google/zxing/oned/rss/Pair;

    .line 146
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4f

    .line 147
    .local v0, "checkValue":I
    nop

    .line 148
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x9

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    .line 149
    .local v3, "targetCheckValue":I
    move v3, v1

    const/16 v4, 0x48

    if-le v1, v4, :cond_0

    .line 150
    add-int/lit8 v3, v3, -0x1

    .line 152
    :cond_0
    const/16 v1, 0x8

    if-le v3, v1, :cond_1

    .line 153
    add-int/lit8 v3, v3, -0x1

    .line 155
    :cond_1
    if-ne v0, v3, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    return v2
.end method

.method private static constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;
    .locals 12
    .param p0, "leftPair"    # Lcom/google/zxing/oned/rss/Pair;
    .param p1, "rightPair"    # Lcom/google/zxing/oned/rss/Pair;

    .line 111
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x453af5

    mul-long v0, v0, v2

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 112
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 115
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    rsub-int/lit8 v2, v2, 0xd

    .local v2, "i":I
    :goto_0
    const/16 v4, 0x30

    if-lez v2, :cond_0

    .line 116
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 118
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, "checkDigit":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_2

    .line 122
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v4

    .line 123
    .local v6, "digit":I
    and-int/lit8 v7, v5, 0x1

    if-nez v7, :cond_1

    mul-int/lit8 v7, v6, 0x3

    goto :goto_2

    :cond_1
    move v7, v6

    :goto_2
    add-int/2addr v2, v7

    .line 121
    .end local v6    # "digit":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 125
    .end local v5    # "i":I
    :cond_2
    rem-int/lit8 v3, v2, 0xa

    const/16 v4, 0xa

    rsub-int/lit8 v3, v3, 0xa

    .line 126
    move v2, v3

    if-ne v3, v4, :cond_3

    .line 127
    const/4 v2, 0x0

    .line 129
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 132
    .local v3, "leftPoints":[Lcom/google/zxing/ResultPoint;
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 133
    .local v4, "rightPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v5, Lcom/google/zxing/Result;

    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    aget-object v10, v3, v9

    aput-object v10, v8, v9

    const/4 v10, 0x1

    aget-object v11, v3, v10

    aput-object v11, v8, v10

    const/4 v11, 0x2

    aget-object v9, v4, v9

    aput-object v9, v8, v11

    aget-object v9, v4, v10

    const/4 v10, 0x3

    aput-object v9, v8, v10

    sget-object v9, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 133
    return-object v5
.end method

.method private decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 23
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p3, "outsideChar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 188
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDataCharacterCounters()[I

    move-result-object v2

    .line 189
    .local v2, "counters":[I
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_0
    array-length v4, v2

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 190
    aput v5, v2, v3

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    .end local v3    # "x":I
    :cond_0
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v4

    aget v4, v4, v5

    invoke-static {v0, v4, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    goto :goto_2

    .line 196
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v4

    aget v4, v4, v3

    add-int/2addr v4, v3

    invoke-static {v0, v4, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 198
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v6, v2

    sub-int/2addr v6, v3

    .local v6, "j":I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 199
    aget v7, v2, v4

    .line 200
    .local v7, "temp":I
    aget v8, v2, v6

    aput v8, v2, v4

    .line 201
    aput v7, v2, v6

    .line 198
    .end local v7    # "temp":I
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 205
    .end local v4    # "i":I
    .end local v6    # "j":I
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    const/16 v4, 0x10

    goto :goto_3

    :cond_3
    const/16 v4, 0xf

    .line 206
    .local v4, "numModules":I
    :goto_3
    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    .line 208
    .local v6, "elementWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v7

    .line 209
    .local v7, "oddCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v8

    .line 210
    .local v8, "evenCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v9

    .line 211
    .local v9, "oddRoundingErrors":[F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v10

    .line 213
    .local v10, "evenRoundingErrors":[F
    const/4 v11, 0x0

    .local v11, "i":I
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    array-length v14, v2

    if-ge v11, v14, :cond_7

    .line 214
    aget v14, v2, v11

    int-to-float v14, v14

    div-float/2addr v14, v6

    .line 215
    .local v12, "value":F
    move v12, v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    .line 216
    .local v13, "count":I
    move v13, v14

    if-gtz v14, :cond_4

    .line 217
    const/4 v13, 0x1

    goto :goto_5

    .line 218
    :cond_4
    const/16 v14, 0x8

    if-le v13, v14, :cond_5

    .line 219
    const/16 v13, 0x8

    .line 221
    :cond_5
    :goto_5
    div-int/lit8 v14, v11, 0x2

    .line 222
    .local v14, "offset":I
    and-int/lit8 v15, v11, 0x1

    if-nez v15, :cond_6

    .line 223
    aput v13, v7, v14

    .line 224
    int-to-float v15, v13

    sub-float v15, v12, v15

    aput v15, v9, v14

    goto :goto_6

    .line 226
    :cond_6
    aput v13, v8, v14

    .line 227
    int-to-float v15, v13

    sub-float v15, v12, v15

    aput v15, v10, v14

    .line 213
    .end local v12    # "value":F
    .end local v13    # "count":I
    .end local v14    # "offset":I
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 231
    .end local v11    # "i":I
    :cond_7
    move-object/from16 v11, p0

    invoke-direct {v11, v1, v4}, Lcom/google/zxing/oned/rss/RSS14Reader;->adjustOddEvenCounts(ZI)V

    .line 233
    const/4 v12, 0x0

    .line 234
    .local v12, "oddSum":I
    const/4 v13, 0x0

    .line 235
    .local v13, "oddChecksumPortion":I
    array-length v14, v7

    sub-int/2addr v14, v3

    .local v14, "i":I
    :goto_7
    if-ltz v14, :cond_8

    .line 236
    mul-int/lit8 v15, v13, 0x9

    .line 237
    aget v16, v7, v14

    add-int v13, v15, v16

    .line 238
    aget v15, v7, v14

    add-int/2addr v12, v15

    .line 235
    add-int/lit8 v14, v14, -0x1

    goto :goto_7

    .line 240
    .end local v14    # "i":I
    :cond_8
    const/4 v14, 0x0

    .line 241
    .local v14, "evenChecksumPortion":I
    const/4 v15, 0x0

    .line 242
    .local v15, "evenSum":I
    array-length v5, v8

    sub-int/2addr v5, v3

    .local v5, "i":I
    :goto_8
    if-ltz v5, :cond_9

    .line 243
    mul-int/lit8 v17, v14, 0x9

    .line 244
    aget v18, v8, v5

    add-int v14, v17, v18

    .line 245
    aget v17, v8, v5

    add-int v15, v15, v17

    .line 242
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 247
    .end local v5    # "i":I
    :cond_9
    mul-int/lit8 v5, v14, 0x3

    add-int/2addr v5, v13

    .line 249
    .local v5, "checksumPortion":I
    if-eqz v1, :cond_b

    .line 250
    and-int/lit8 v18, v12, 0x1

    if-nez v18, :cond_a

    const/16 v3, 0xc

    if-gt v12, v3, :cond_a

    const/4 v3, 0x4

    if-lt v12, v3, :cond_a

    .line 253
    rsub-int/lit8 v3, v12, 0xc

    div-int/lit8 v3, v3, 0x2

    .line 254
    .local v3, "group":I
    sget-object v18, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    aget v0, v18, v3

    .line 255
    .local v0, "oddWidest":I
    rsub-int/lit8 v1, v0, 0x9

    .line 256
    .local v1, "evenWidest":I
    move-object/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "counters":[I
    .local v19, "counters":[I
    invoke-static {v7, v0, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v2

    .line 257
    .local v2, "vOdd":I
    move/from16 v16, v0

    const/4 v0, 0x1

    .end local v0    # "oddWidest":I
    .local v16, "oddWidest":I
    invoke-static {v8, v1, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v0

    .line 258
    .local v0, "vEven":I
    sget-object v17, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    aget v17, v17, v3

    .line 259
    .local v17, "tEven":I
    sget-object v18, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    aget v18, v18, v3

    .line 260
    .local v18, "gSum":I
    move/from16 v20, v1

    .end local v1    # "evenWidest":I
    .local v20, "evenWidest":I
    new-instance v1, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v21, v2, v17

    add-int v21, v21, v0

    move/from16 v22, v0

    .end local v0    # "vEven":I
    .local v22, "vEven":I
    add-int v0, v21, v18

    invoke-direct {v1, v0, v5}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v1

    .line 250
    .end local v3    # "group":I
    .end local v16    # "oddWidest":I
    .end local v17    # "tEven":I
    .end local v18    # "gSum":I
    .end local v19    # "counters":[I
    .end local v20    # "evenWidest":I
    .end local v22    # "vEven":I
    .local v2, "counters":[I
    :cond_a
    move-object/from16 v19, v2

    .line 251
    .end local v2    # "counters":[I
    .restart local v19    # "counters":[I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 262
    .end local v19    # "counters":[I
    .restart local v2    # "counters":[I
    :cond_b
    move-object/from16 v19, v2

    .end local v2    # "counters":[I
    .restart local v19    # "counters":[I
    and-int/lit8 v0, v15, 0x1

    if-nez v0, :cond_c

    const/16 v0, 0xa

    if-gt v15, v0, :cond_c

    const/4 v0, 0x4

    if-lt v15, v0, :cond_c

    .line 265
    rsub-int/lit8 v0, v15, 0xa

    div-int/lit8 v0, v0, 0x2

    .line 266
    .local v0, "group":I
    sget-object v1, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    aget v1, v1, v0

    .line 267
    .local v1, "oddWidest":I
    rsub-int/lit8 v2, v1, 0x9

    .line 268
    .local v2, "evenWidest":I
    const/4 v3, 0x1

    invoke-static {v7, v1, v3}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v3

    .line 269
    .local v3, "vOdd":I
    move/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "oddWidest":I
    .local v17, "oddWidest":I
    invoke-static {v8, v2, v1}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    .line 270
    .local v1, "vEven":I
    sget-object v16, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    aget v16, v16, v0

    .line 271
    .local v16, "tOdd":I
    sget-object v18, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    aget v18, v18, v0

    .line 272
    .restart local v18    # "gSum":I
    move/from16 v20, v0

    .end local v0    # "group":I
    .local v20, "group":I
    new-instance v0, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v21, v1, v16

    add-int v21, v21, v3

    move/from16 v22, v1

    .end local v1    # "vEven":I
    .restart local v22    # "vEven":I
    add-int v1, v21, v18

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v0

    .line 263
    .end local v2    # "evenWidest":I
    .end local v3    # "vOdd":I
    .end local v16    # "tOdd":I
    .end local v17    # "oddWidest":I
    .end local v18    # "gSum":I
    .end local v20    # "group":I
    .end local v22    # "vEven":I
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;
    .locals 10
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "right"    # Z
    .param p3, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "ZI",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/oned/rss/Pair;"
        }
    .end annotation

    .line 160
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/rss/RSS14Reader;->findFinderPattern(Lcom/google/zxing/common/BitArray;Z)[I

    move-result-object v1
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    .local v1, "startEnd":[I
    :try_start_1
    invoke-direct {p0, p1, p3, p2, v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    .line 163
    .local v2, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    if-nez p4, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 164
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/ResultPointCallback;

    :goto_0
    move-object v4, v0

    .line 166
    .local v4, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    .line 167
    aget v3, v1, v5

    aget v7, v1, v6

    add-int/2addr v3, v7

    int-to-float v3, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    .line 168
    .local v3, "center":F
    if-eqz p2, :cond_1

    .line 170
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    sub-int/2addr v7, v6

    int-to-float v7, v7

    sub-float v3, v7, v3

    .line 172
    .end local v1    # "startEnd":[I
    :cond_1
    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, p3

    invoke-direct {v7, v3, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v4, v7}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 175
    .end local v3    # "center":F
    :cond_2
    invoke-direct {p0, p1, v2, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v3

    .line 176
    .local v3, "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    invoke-direct {p0, p1, v2, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    .line 177
    .local v5, "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    new-instance v6, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v7

    mul-int/lit16 v7, v7, 0x63d

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    add-int/2addr v7, v8

    .line 178
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v8

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    invoke-direct {v6, v7, v8, v2}, Lcom/google/zxing/oned/rss/Pair;-><init>(IILcom/google/zxing/oned/rss/FinderPattern;)V
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    return-object v6

    .line 180
    .end local v2    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .end local v3    # "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v4    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .end local v5    # "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v1, v0

    .line 181
    .local v1, "ignored":Lcom/google/zxing/NotFoundException;
    :goto_1
    return-object v0
.end method

.method private findFinderPattern(Lcom/google/zxing/common/BitArray;Z)[I
    .locals 13
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rightFinderPattern"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 281
    .local v1, "counters":[I
    move-object v1, v0

    const/4 v2, 0x0

    aput v2, v0, v2

    .line 282
    const/4 v0, 0x1

    aput v2, v1, v0

    .line 283
    const/4 v3, 0x2

    aput v2, v1, v3

    .line 284
    const/4 v4, 0x3

    aput v2, v1, v4

    .line 286
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 287
    .local v5, "width":I
    const/4 v6, 0x0

    .line 288
    .local v6, "isWhite":Z
    const/4 v7, 0x0

    .line 289
    .local v7, "rowOffset":I
    :goto_0
    if-ge v7, v5, :cond_0

    .line 290
    invoke-virtual {p1, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v0

    move v6, v8

    .line 291
    if-eq p2, v6, :cond_0

    .line 295
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 298
    :cond_0
    const/4 v8, 0x0

    .line 299
    .local v8, "counterPosition":I
    move v9, v7

    .line 300
    .local v9, "patternStart":I
    move v10, v7

    .local v10, "x":I
    :goto_1
    if-ge v10, v5, :cond_5

    .line 301
    invoke-virtual {p1, v10}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v11

    if-eq v11, v6, :cond_1

    .line 302
    aget v11, v1, v8

    add-int/2addr v11, v0

    aput v11, v1, v8

    goto :goto_4

    .line 304
    :cond_1
    if-ne v8, v4, :cond_3

    .line 305
    invoke-static {v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->isFinderPattern([I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 306
    new-array v3, v3, [I

    aput v9, v3, v2

    aput v10, v3, v0

    return-object v3

    .line 308
    :cond_2
    aget v11, v1, v2

    aget v12, v1, v0

    add-int/2addr v11, v12

    add-int/2addr v9, v11

    .line 309
    aget v11, v1, v3

    aput v11, v1, v2

    .line 310
    aget v11, v1, v4

    aput v11, v1, v0

    .line 311
    aput v2, v1, v3

    .line 312
    aput v2, v1, v4

    .line 313
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 315
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 317
    :goto_2
    aput v0, v1, v8

    .line 318
    if-nez v6, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    move v6, v11

    .line 300
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 321
    .end local v10    # "x":I
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 17
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowNumber"    # I
    .param p3, "right"    # Z
    .param p4, "startEnd"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 328
    move-object/from16 v0, p1

    const/4 v1, 0x0

    aget v2, p4, v1

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    .line 329
    .local v2, "firstIsBlack":Z
    aget v3, p4, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 331
    .local v3, "firstElementStart":I
    :goto_0
    if-ltz v3, :cond_0

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eq v2, v5, :cond_0

    .line 332
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 334
    :cond_0
    add-int/2addr v3, v4

    .line 335
    aget v5, p4, v1

    sub-int/2addr v5, v3

    .line 337
    .local v5, "firstCounter":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v6

    const/4 v7, 0x0

    .line 338
    .local v7, "counters":[I
    move-object v7, v6

    array-length v8, v7

    sub-int/2addr v8, v4

    invoke-static {v6, v1, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    aput v5, v7, v1

    .line 340
    sget-object v6, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    invoke-static {v7, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFinderValue([I[[I)I

    move-result v6

    .line 341
    .local v6, "value":I
    move v8, v3

    .line 342
    .local v8, "start":I
    aget v9, p4, v4

    .line 343
    .local v9, "end":I
    if-eqz p3, :cond_1

    .line 345
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    sub-int/2addr v10, v4

    sub-int v8, v10, v8

    .line 346
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    sub-int/2addr v10, v4

    sub-int v9, v10, v9

    move v14, v8

    move v15, v9

    goto :goto_1

    .line 343
    :cond_1
    move v14, v8

    move v15, v9

    .line 348
    .end local v8    # "start":I
    .end local v9    # "end":I
    .local v14, "start":I
    .local v15, "end":I
    :goto_1
    new-instance v16, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v8, 0x2

    new-array v10, v8, [I

    aput v3, v10, v1

    aget v1, p4, v4

    aput v1, v10, v4

    move-object/from16 v8, v16

    move v9, v6

    move v11, v14

    move v12, v15

    move/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v16
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 8
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 69
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v0

    .line 70
    .local v0, "leftPair":Lcom/google/zxing/oned/rss/Pair;
    iget-object v1, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 71
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 72
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v2

    .line 73
    .local v2, "rightPair":Lcom/google/zxing/oned/rss/Pair;
    iget-object v3, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-static {v3, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 74
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 75
    iget-object v3, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/Pair;

    .line 76
    .local v4, "left":Lcom/google/zxing/oned/rss/Pair;
    move-object v4, v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v6

    if-le v6, v1, :cond_1

    .line 77
    iget-object v6, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/Pair;

    .line 78
    .local v5, "right":Lcom/google/zxing/oned/rss/Pair;
    move-object v5, v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v7

    if-le v7, v1, :cond_0

    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 79
    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;

    move-result-object v1

    return-object v1

    .line 81
    .end local v5    # "right":Lcom/google/zxing/oned/rss/Pair;
    :cond_0
    goto :goto_1

    .line 83
    .end local v4    # "left":Lcom/google/zxing/oned/rss/Pair;
    :cond_1
    goto :goto_0

    .line 84
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method public reset()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    return-void
.end method
