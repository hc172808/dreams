.class public Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;


# instance fields
.field private a:Ljava/lang/String;

.field private b:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;
    .locals 1

    .line 15
    sget-object v0, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->c:Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    return-object v0
.end method

.method public static initPayUMoneyTransaction()V
    .locals 1

    .line 19
    new-instance v0, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    invoke-direct {v0}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;-><init>()V

    sput-object v0, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->c:Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    .line 20
    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getWalletAmount()D
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->b:D

    return-wide v0
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicKey"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setWalletAmount(D)V
    .locals 0
    .param p1, "walletAmount"    # D

    .line 35
    iput-wide p1, p0, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->b:D

    .line 36
    return-void
.end method
