.class public final enum Lcom/payumoney/core/entity/SdkIssuer;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/payumoney/core/entity/SdkIssuer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/payumoney/core/entity/SdkIssuer;

.field public static final enum AMEX:Lcom/payumoney/core/entity/SdkIssuer;

.field public static final enum DINER:Lcom/payumoney/core/entity/SdkIssuer;

.field public static final enum DISCOVER:Lcom/payumoney/core/entity/SdkIssuer;

.field public static final enum JCB:Lcom/payumoney/core/entity/SdkIssuer;

.field public static final enum LASER:Lcom/payumoney/core/entity/SdkIssuer;

.field public static final enum MAESTRO:Lcom/payumoney/core/entity/SdkIssuer;

.field public static final enum MASTERCARD:Lcom/payumoney/core/entity/SdkIssuer;

.field public static final enum RUPAY:Lcom/payumoney/core/entity/SdkIssuer;

.field public static final enum UNKNOWN:Lcom/payumoney/core/entity/SdkIssuer;

.field public static final enum VISA:Lcom/payumoney/core/entity/SdkIssuer;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 7
    new-instance v0, Lcom/payumoney/core/entity/SdkIssuer;

    const-string v1, "VISA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/payumoney/core/entity/SdkIssuer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/payumoney/core/entity/SdkIssuer;->VISA:Lcom/payumoney/core/entity/SdkIssuer;

    new-instance v1, Lcom/payumoney/core/entity/SdkIssuer;

    const-string v3, "MASTERCARD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/payumoney/core/entity/SdkIssuer;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/payumoney/core/entity/SdkIssuer;->MASTERCARD:Lcom/payumoney/core/entity/SdkIssuer;

    new-instance v3, Lcom/payumoney/core/entity/SdkIssuer;

    const-string v5, "MAESTRO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/payumoney/core/entity/SdkIssuer;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/payumoney/core/entity/SdkIssuer;->MAESTRO:Lcom/payumoney/core/entity/SdkIssuer;

    new-instance v5, Lcom/payumoney/core/entity/SdkIssuer;

    const-string v7, "DISCOVER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/payumoney/core/entity/SdkIssuer;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/payumoney/core/entity/SdkIssuer;->DISCOVER:Lcom/payumoney/core/entity/SdkIssuer;

    new-instance v7, Lcom/payumoney/core/entity/SdkIssuer;

    const-string v9, "AMEX"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/payumoney/core/entity/SdkIssuer;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/payumoney/core/entity/SdkIssuer;->AMEX:Lcom/payumoney/core/entity/SdkIssuer;

    new-instance v9, Lcom/payumoney/core/entity/SdkIssuer;

    const-string v11, "DINER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/payumoney/core/entity/SdkIssuer;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/payumoney/core/entity/SdkIssuer;->DINER:Lcom/payumoney/core/entity/SdkIssuer;

    new-instance v11, Lcom/payumoney/core/entity/SdkIssuer;

    const-string v13, "UNKNOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/payumoney/core/entity/SdkIssuer;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/payumoney/core/entity/SdkIssuer;->UNKNOWN:Lcom/payumoney/core/entity/SdkIssuer;

    new-instance v13, Lcom/payumoney/core/entity/SdkIssuer;

    const-string v15, "JCB"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/payumoney/core/entity/SdkIssuer;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/payumoney/core/entity/SdkIssuer;->JCB:Lcom/payumoney/core/entity/SdkIssuer;

    new-instance v15, Lcom/payumoney/core/entity/SdkIssuer;

    const-string v14, "LASER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/payumoney/core/entity/SdkIssuer;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/payumoney/core/entity/SdkIssuer;->LASER:Lcom/payumoney/core/entity/SdkIssuer;

    new-instance v14, Lcom/payumoney/core/entity/SdkIssuer;

    const-string v12, "RUPAY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/payumoney/core/entity/SdkIssuer;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/payumoney/core/entity/SdkIssuer;->RUPAY:Lcom/payumoney/core/entity/SdkIssuer;

    .line 6
    const/16 v12, 0xa

    new-array v12, v12, [Lcom/payumoney/core/entity/SdkIssuer;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/payumoney/core/entity/SdkIssuer;->$VALUES:[Lcom/payumoney/core/entity/SdkIssuer;

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

.method public static getIssuer(Ljava/lang/String;)Lcom/payumoney/core/entity/SdkIssuer;
    .locals 5
    .param p0, "issuer"    # Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/payumoney/core/entity/SdkIssuer;->values()[Lcom/payumoney/core/entity/SdkIssuer;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 11
    invoke-virtual {v3}, Lcom/payumoney/core/entity/SdkIssuer;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 12
    return-object v3

    .line 10
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_1
    sget-object v0, Lcom/payumoney/core/entity/SdkIssuer;->UNKNOWN:Lcom/payumoney/core/entity/SdkIssuer;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/payumoney/core/entity/SdkIssuer;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/payumoney/core/entity/SdkIssuer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/SdkIssuer;

    return-object v0
.end method

.method public static values()[Lcom/payumoney/core/entity/SdkIssuer;
    .locals 1

    .line 6
    sget-object v0, Lcom/payumoney/core/entity/SdkIssuer;->$VALUES:[Lcom/payumoney/core/entity/SdkIssuer;

    invoke-virtual {v0}, [Lcom/payumoney/core/entity/SdkIssuer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/payumoney/core/entity/SdkIssuer;

    return-object v0
.end method
