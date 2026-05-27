.class public final enum Lcom/payumoney/core/response/TransactionResponse$PaymentMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/response/TransactionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaymentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/payumoney/core/response/TransactionResponse$PaymentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

.field public static final enum CREDIT_CARD:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

.field public static final enum DEBIT_CARD:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

.field public static final enum LAZYPAY_CARD:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

.field public static final enum NET_BANKING:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

.field public static final enum PREPAID_CARD:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 437
    new-instance v0, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    const-string v1, "NET_BANKING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;->NET_BANKING:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    new-instance v1, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    const-string v3, "CREDIT_CARD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;->CREDIT_CARD:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    new-instance v3, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    const-string v5, "DEBIT_CARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;->DEBIT_CARD:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    new-instance v5, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    const-string v7, "PREPAID_CARD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;->PREPAID_CARD:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    new-instance v7, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    const-string v9, "LAZYPAY_CARD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;->LAZYPAY_CARD:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    .line 436
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;->$VALUES:[Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 436
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getPaymentMode(Ljava/lang/String;)Lcom/payumoney/core/response/TransactionResponse$PaymentMode;
    .locals 1
    .param p0, "paymentMode"    # Ljava/lang/String;

    .line 440
    nop

    .line 441
    const-string v0, "NET_BANKING"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    sget-object v0, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;->NET_BANKING:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    goto :goto_0

    .line 443
    :cond_0
    const-string v0, "CREDIT_CARD"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    sget-object v0, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;->CREDIT_CARD:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    goto :goto_0

    .line 445
    :cond_1
    const-string v0, "DEBIT_CARD"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    sget-object v0, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;->DEBIT_CARD:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    goto :goto_0

    .line 447
    :cond_2
    const-string v0, "PREPAID_CARD"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    sget-object v0, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;->PREPAID_CARD:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    goto :goto_0

    .line 449
    :cond_3
    const-string v0, "LAZYPAY_CARD"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 450
    sget-object v0, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;->LAZYPAY_CARD:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    goto :goto_0

    .line 449
    :cond_4
    const/4 v0, 0x0

    .line 453
    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/payumoney/core/response/TransactionResponse$PaymentMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 436
    const-class v0, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    return-object v0
.end method

.method public static values()[Lcom/payumoney/core/response/TransactionResponse$PaymentMode;
    .locals 1

    .line 436
    sget-object v0, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;->$VALUES:[Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    invoke-virtual {v0}, [Lcom/payumoney/core/response/TransactionResponse$PaymentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    return-object v0
.end method
