.class public final enum Lcom/hbb20/CountryCodePicker$TextGravity;
.super Ljava/lang/Enum;
.source "CountryCodePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/CountryCodePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextGravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hbb20/CountryCodePicker$TextGravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hbb20/CountryCodePicker$TextGravity;

.field public static final enum CENTER:Lcom/hbb20/CountryCodePicker$TextGravity;

.field public static final enum LEFT:Lcom/hbb20/CountryCodePicker$TextGravity;

.field public static final enum RIGHT:Lcom/hbb20/CountryCodePicker$TextGravity;


# instance fields
.field enumIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 2522
    new-instance v0, Lcom/hbb20/CountryCodePicker$TextGravity;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/hbb20/CountryCodePicker$TextGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$TextGravity;->LEFT:Lcom/hbb20/CountryCodePicker$TextGravity;

    new-instance v1, Lcom/hbb20/CountryCodePicker$TextGravity;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/hbb20/CountryCodePicker$TextGravity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/hbb20/CountryCodePicker$TextGravity;->CENTER:Lcom/hbb20/CountryCodePicker$TextGravity;

    new-instance v3, Lcom/hbb20/CountryCodePicker$TextGravity;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/hbb20/CountryCodePicker$TextGravity;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/hbb20/CountryCodePicker$TextGravity;->RIGHT:Lcom/hbb20/CountryCodePicker$TextGravity;

    .line 2521
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/hbb20/CountryCodePicker$TextGravity;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/hbb20/CountryCodePicker$TextGravity;->$VALUES:[Lcom/hbb20/CountryCodePicker$TextGravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2526
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2527
    iput p3, p0, Lcom/hbb20/CountryCodePicker$TextGravity;->enumIndex:I

    .line 2528
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hbb20/CountryCodePicker$TextGravity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2521
    const-class v0, Lcom/hbb20/CountryCodePicker$TextGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hbb20/CountryCodePicker$TextGravity;

    return-object v0
.end method

.method public static values()[Lcom/hbb20/CountryCodePicker$TextGravity;
    .locals 1

    .line 2521
    sget-object v0, Lcom/hbb20/CountryCodePicker$TextGravity;->$VALUES:[Lcom/hbb20/CountryCodePicker$TextGravity;

    invoke-virtual {v0}, [Lcom/hbb20/CountryCodePicker$TextGravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hbb20/CountryCodePicker$TextGravity;

    return-object v0
.end method
