.class public final enum Lcom/payumoney/core/SdkSession$PaymentMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/SdkSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaymentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/payumoney/core/SdkSession$PaymentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/payumoney/core/SdkSession$PaymentMode;

.field public static final enum CASH:Lcom/payumoney/core/SdkSession$PaymentMode;

.field public static final enum CC:Lcom/payumoney/core/SdkSession$PaymentMode;

.field public static final enum DC:Lcom/payumoney/core/SdkSession$PaymentMode;

.field public static final enum EMI:Lcom/payumoney/core/SdkSession$PaymentMode;

.field public static final enum NB:Lcom/payumoney/core/SdkSession$PaymentMode;

.field public static final enum PAYU_MONEY:Lcom/payumoney/core/SdkSession$PaymentMode;

.field public static final enum STORED_CARDS:Lcom/payumoney/core/SdkSession$PaymentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1379
    new-instance v0, Lcom/payumoney/core/SdkSession$PaymentMode;

    const-string v1, "CC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/payumoney/core/SdkSession$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/payumoney/core/SdkSession$PaymentMode;->CC:Lcom/payumoney/core/SdkSession$PaymentMode;

    new-instance v1, Lcom/payumoney/core/SdkSession$PaymentMode;

    const-string v3, "DC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/payumoney/core/SdkSession$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/payumoney/core/SdkSession$PaymentMode;->DC:Lcom/payumoney/core/SdkSession$PaymentMode;

    new-instance v3, Lcom/payumoney/core/SdkSession$PaymentMode;

    const-string v5, "NB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/payumoney/core/SdkSession$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/payumoney/core/SdkSession$PaymentMode;->NB:Lcom/payumoney/core/SdkSession$PaymentMode;

    new-instance v5, Lcom/payumoney/core/SdkSession$PaymentMode;

    const-string v7, "EMI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/payumoney/core/SdkSession$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/payumoney/core/SdkSession$PaymentMode;->EMI:Lcom/payumoney/core/SdkSession$PaymentMode;

    new-instance v7, Lcom/payumoney/core/SdkSession$PaymentMode;

    const-string v9, "PAYU_MONEY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/payumoney/core/SdkSession$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/payumoney/core/SdkSession$PaymentMode;->PAYU_MONEY:Lcom/payumoney/core/SdkSession$PaymentMode;

    new-instance v9, Lcom/payumoney/core/SdkSession$PaymentMode;

    const-string v11, "STORED_CARDS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/payumoney/core/SdkSession$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/payumoney/core/SdkSession$PaymentMode;->STORED_CARDS:Lcom/payumoney/core/SdkSession$PaymentMode;

    new-instance v11, Lcom/payumoney/core/SdkSession$PaymentMode;

    const-string v13, "CASH"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/payumoney/core/SdkSession$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/payumoney/core/SdkSession$PaymentMode;->CASH:Lcom/payumoney/core/SdkSession$PaymentMode;

    .line 1378
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/payumoney/core/SdkSession$PaymentMode;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/payumoney/core/SdkSession$PaymentMode;->$VALUES:[Lcom/payumoney/core/SdkSession$PaymentMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1378
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/payumoney/core/SdkSession$PaymentMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1378
    const-class v0, Lcom/payumoney/core/SdkSession$PaymentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/SdkSession$PaymentMode;

    return-object v0
.end method

.method public static values()[Lcom/payumoney/core/SdkSession$PaymentMode;
    .locals 1

    .line 1378
    sget-object v0, Lcom/payumoney/core/SdkSession$PaymentMode;->$VALUES:[Lcom/payumoney/core/SdkSession$PaymentMode;

    invoke-virtual {v0}, [Lcom/payumoney/core/SdkSession$PaymentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/payumoney/core/SdkSession$PaymentMode;

    return-object v0
.end method
