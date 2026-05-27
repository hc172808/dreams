.class public final enum Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/response/TransactionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

.field public static final enum CANCELLED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

.field public static final enum FAILED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

.field public static final enum FORWARDED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

.field public static final enum PG_FORWARD_REQUESTED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

.field public static final enum PG_REJECTED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

.field public static final enum SUCCESSFUL:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

.field public static final enum UNKNOWN:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 458
    new-instance v0, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    const-string v1, "SUCCESSFUL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->SUCCESSFUL:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    new-instance v1, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    const-string v3, "FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->FAILED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    new-instance v3, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    const-string v5, "CANCELLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->CANCELLED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    new-instance v5, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    const-string v7, "PG_REJECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->PG_REJECTED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    new-instance v7, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    const-string v9, "PG_FORWARD_REQUESTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->PG_FORWARD_REQUESTED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    new-instance v9, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    const-string v11, "UNKNOWN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->UNKNOWN:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    new-instance v11, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    const-string v13, "FORWARDED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->FORWARDED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    .line 457
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->$VALUES:[Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 457
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getTransactionStatus(Ljava/lang/String;)Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;
    .locals 2
    .param p0, "transactionStatus"    # Ljava/lang/String;

    .line 461
    sget-object v0, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->UNKNOWN:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    .line 462
    const-string v1, "SUCCESS"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "SUCCESSFUL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 464
    :cond_0
    const-string v1, "FAIL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    sget-object v0, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->FAILED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    goto :goto_2

    .line 466
    :cond_1
    const-string v1, "CANCELLED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "CANCELED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 468
    :cond_2
    const-string v1, "PG_REJECTED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 469
    sget-object v0, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->PG_REJECTED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    goto :goto_2

    .line 470
    :cond_3
    const-string v1, "PG Forward requested"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 471
    sget-object v0, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->PG_FORWARD_REQUESTED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    goto :goto_2

    .line 472
    :cond_4
    const-string v1, "FORWARDED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 473
    sget-object v0, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->FORWARDED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    goto :goto_2

    .line 467
    :cond_5
    :goto_0
    sget-object v0, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->CANCELLED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    goto :goto_2

    .line 463
    :cond_6
    :goto_1
    sget-object v0, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->SUCCESSFUL:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    .line 476
    :cond_7
    :goto_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 457
    const-class v0, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    return-object v0
.end method

.method public static values()[Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;
    .locals 1

    .line 457
    sget-object v0, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->$VALUES:[Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    invoke-virtual {v0}, [Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    return-object v0
.end method
