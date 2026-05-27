.class public final enum Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;
.super Ljava/lang/Enum;
.source "CircularImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikhaellopez/circularimageview/CircularImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShadowGravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

.field public static final enum BOTTOM:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

.field public static final enum CENTER:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

.field public static final enum END:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

.field public static final enum START:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

.field public static final enum TOP:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 356
    new-instance v0, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->CENTER:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    .line 357
    new-instance v1, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->TOP:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    .line 358
    new-instance v3, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    const-string v5, "BOTTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->BOTTOM:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    .line 359
    new-instance v5, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    const-string v7, "START"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->START:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    .line 360
    new-instance v7, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    const-string v9, "END"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->END:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    .line 355
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->$VALUES:[Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 355
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromValue(I)Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;
    .locals 3
    .param p0, "value"    # I

    .line 379
    packed-switch p0, :pswitch_data_0

    .line 391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This value is not supported for ShadowGravity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :pswitch_0
    sget-object v0, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->END:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    return-object v0

    .line 387
    :pswitch_1
    sget-object v0, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->START:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    return-object v0

    .line 385
    :pswitch_2
    sget-object v0, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->BOTTOM:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    return-object v0

    .line 383
    :pswitch_3
    sget-object v0, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->TOP:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    return-object v0

    .line 381
    :pswitch_4
    sget-object v0, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->CENTER:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 355
    const-class v0, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    return-object v0
.end method

.method public static values()[Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;
    .locals 1

    .line 355
    sget-object v0, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->$VALUES:[Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    invoke-virtual {v0}, [Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 3

    .line 363
    sget-object v0, Lcom/mikhaellopez/circularimageview/CircularImageView$1;->$SwitchMap$com$mikhaellopez$circularimageview$CircularImageView$ShadowGravity:[I

    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 375
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not value available for this ShadowGravity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 371
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 369
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 367
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 365
    :pswitch_4
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
