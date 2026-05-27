.class public final enum Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/entity/TransactionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

.field public static final enum CANCELLED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

.field public static final enum FAILED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

.field public static final enum FORWARDED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

.field public static final enum PG_FORWARD_REQUESTED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

.field public static final enum PG_REJECTED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

.field public static final enum SUCCESSFUL:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

.field public static final enum TRANSACTION_EXPIRY:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

.field public static final enum UNKNOWN:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 150
    new-instance v0, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    const-string v1, "SUCCESSFUL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->SUCCESSFUL:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    new-instance v1, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    const-string v3, "FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->FAILED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    new-instance v3, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    const-string v5, "CANCELLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->CANCELLED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    new-instance v5, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    const-string v7, "PG_REJECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->PG_REJECTED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    new-instance v7, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    const-string v9, "PG_FORWARD_REQUESTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->PG_FORWARD_REQUESTED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    new-instance v9, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    const-string v11, "UNKNOWN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->UNKNOWN:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    new-instance v11, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    const-string v13, "FORWARDED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->FORWARDED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    new-instance v13, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    const-string v15, "TRANSACTION_EXPIRY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->TRANSACTION_EXPIRY:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 149
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->$VALUES:[Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getTransactionStatus(Ljava/lang/String;)Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;
    .locals 3
    .param p0, "transactionStatus"    # Ljava/lang/String;

    .line 153
    sget-object v0, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->UNKNOWN:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 154
    const-string v1, "SUCCESS"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "SUCCESSFUL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    const-string v1, "FAIL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    sget-object v0, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->FAILED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    goto :goto_2

    .line 158
    :cond_1
    const-string v1, "CANCELLED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "CANCELED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 160
    :cond_2
    const-string v1, "PG_REJECTED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    sget-object v0, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->PG_REJECTED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    goto :goto_2

    .line 162
    :cond_3
    const-string v1, "PG Forward requested"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    sget-object v0, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->PG_FORWARD_REQUESTED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    goto :goto_2

    .line 164
    :cond_4
    const-string v1, "FORWARDED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    sget-object v0, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->FORWARDED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    goto :goto_2

    .line 166
    :cond_5
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 167
    sget-object v0, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->TRANSACTION_EXPIRY:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    goto :goto_2

    .line 159
    :cond_6
    :goto_0
    sget-object v0, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->CANCELLED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    goto :goto_2

    .line 155
    :cond_7
    :goto_1
    sget-object v0, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->SUCCESSFUL:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 170
    :cond_8
    :goto_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 149
    const-class v0, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    return-object v0
.end method

.method public static values()[Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;
    .locals 1

    .line 149
    sget-object v0, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->$VALUES:[Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    invoke-virtual {v0}, [Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    return-object v0
.end method
