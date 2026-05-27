.class public final enum Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;
.super Ljava/lang/Enum;
.source "FiamAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

.field public static final enum BOTTOM:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

.field public static final enum LEFT:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

.field public static final enum RIGHT:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

.field public static final enum TOP:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 86
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->LEFT:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    .line 87
    new-instance v1, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->RIGHT:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    .line 88
    new-instance v3, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    const-string v5, "TOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->TOP:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    .line 89
    new-instance v5, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    const-string v7, "BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->BOTTOM:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    .line 85
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->$VALUES:[Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;Landroid/view/View;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;
    .param p1, "x1"    # Landroid/view/View;

    .line 85
    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->getPoint(Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private static getPoint(Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;Landroid/view/View;)Landroid/graphics/Point;
    .locals 3
    .param p0, "d"    # Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;
    .param p1, "view"    # Landroid/view/View;

    .line 92
    const/4 v0, -0x2

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 94
    sget-object v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$3;->$SwitchMap$com$google$firebase$inappmessaging$display$internal$FiamAnimator$Position:[I

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 104
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 102
    :pswitch_0
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 100
    :pswitch_1
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 98
    :pswitch_2
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 96
    :pswitch_3
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 85
    const-class v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;
    .locals 1

    .line 85
    sget-object v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->$VALUES:[Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    return-object v0
.end method
