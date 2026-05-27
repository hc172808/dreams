.class public final Lcom/facebook/appevents/ml/MTensor$Companion;
.super Ljava/lang/Object;
.source "MTensor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/ml/MTensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMTensor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MTensor.kt\ncom/facebook/appevents/ml/MTensor$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,46:1\n18330#2,7:47\n*E\n*S KotlinDebug\n*F\n+ 1 MTensor.kt\ncom/facebook/appevents/ml/MTensor$Companion\n*L\n43#1,7:47\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0015\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/appevents/ml/MTensor$Companion;",
        "",
        "()V",
        "getCapacity",
        "",
        "shape",
        "",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 42
    invoke-direct {p0}, Lcom/facebook/appevents/ml/MTensor$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCapacity(Lcom/facebook/appevents/ml/MTensor$Companion;[I)I
    .locals 1
    .param p0, "$this"    # Lcom/facebook/appevents/ml/MTensor$Companion;
    .param p1, "shape"    # [I

    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/appevents/ml/MTensor$Companion;->getCapacity([I)I

    move-result v0

    return v0
.end method

.method private final getCapacity([I)I
    .locals 8
    .param p1, "shape"    # [I

    .line 43
    move-object v0, p1

    .local v0, "$this$reduce$iv":[I
    const/4 v1, 0x0

    .line 47
    .local v1, "$i$f$reduce":I
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 49
    aget v2, v0, v3

    .line 50
    .local v2, "accumulator$iv":I
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v3

    if-gt v4, v3, :cond_1

    .line 51
    .local v4, "index$iv":I
    :goto_1
    aget v5, v0, v4

    .local v5, "i":I
    move v6, v2

    .local v6, "acc":I
    const/4 v7, 0x0

    .line 43
    .local v7, "$i$a$-reduce-MTensor$Companion$getCapacity$1":I
    mul-int v2, v6, v5

    .line 50
    .end local v5    # "i":I
    .end local v6    # "acc":I
    .end local v7    # "$i$a$-reduce-MTensor$Companion$getCapacity$1":I
    if-eq v4, v3, :cond_1

    .end local v4    # "index$iv":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 53
    :cond_1
    nop

    .line 43
    .end local v0    # "$this$reduce$iv":[I
    .end local v1    # "$i$f$reduce":I
    .end local v2    # "accumulator$iv":I
    return v2

    .line 48
    .restart local v0    # "$this$reduce$iv":[I
    .restart local v1    # "$i$f$reduce":I
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Empty array can\'t be reduced."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method
