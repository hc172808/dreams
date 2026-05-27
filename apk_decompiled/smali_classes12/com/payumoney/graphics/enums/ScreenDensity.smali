.class public final enum Lcom/payumoney/graphics/enums/ScreenDensity;
.super Ljava/lang/Enum;
.source "ScreenDensity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/payumoney/graphics/enums/ScreenDensity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/payumoney/graphics/enums/ScreenDensity;

.field public static final enum HDPI:Lcom/payumoney/graphics/enums/ScreenDensity;

.field public static final enum XHDPI:Lcom/payumoney/graphics/enums/ScreenDensity;

.field public static final enum XXHDPI:Lcom/payumoney/graphics/enums/ScreenDensity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/payumoney/graphics/enums/ScreenDensity;

    const-string v1, "HDPI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/payumoney/graphics/enums/ScreenDensity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/payumoney/graphics/enums/ScreenDensity;->HDPI:Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 8
    new-instance v1, Lcom/payumoney/graphics/enums/ScreenDensity;

    const-string v3, "XHDPI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/payumoney/graphics/enums/ScreenDensity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/payumoney/graphics/enums/ScreenDensity;->XHDPI:Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 9
    new-instance v3, Lcom/payumoney/graphics/enums/ScreenDensity;

    const-string v5, "XXHDPI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/payumoney/graphics/enums/ScreenDensity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/payumoney/graphics/enums/ScreenDensity;->XXHDPI:Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 6
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/payumoney/graphics/enums/ScreenDensity;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/payumoney/graphics/enums/ScreenDensity;->$VALUES:[Lcom/payumoney/graphics/enums/ScreenDensity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/payumoney/graphics/enums/ScreenDensity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/payumoney/graphics/enums/ScreenDensity;

    return-object v0
.end method

.method public static values()[Lcom/payumoney/graphics/enums/ScreenDensity;
    .locals 1

    .line 6
    sget-object v0, Lcom/payumoney/graphics/enums/ScreenDensity;->$VALUES:[Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-virtual {v0}, [Lcom/payumoney/graphics/enums/ScreenDensity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/payumoney/graphics/enums/ScreenDensity;

    return-object v0
.end method
