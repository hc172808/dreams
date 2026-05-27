.class final enum Lcom/payumoney/core/utils/BankCID$34;
.super Lcom/payumoney/core/utils/BankCID;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/utils/BankCID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 732
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/payumoney/core/utils/BankCID;-><init>(Ljava/lang/String;ILcom/payumoney/core/utils/BankCID$1;)V

    return-void
.end method


# virtual methods
.method public getBankCode()Ljava/lang/String;
    .locals 1

    .line 750
    const-string v0, "UNIB"

    return-object v0
.end method

.method public getCID()Ljava/lang/String;
    .locals 1

    .line 735
    const-string v0, "CID041"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 740
    const-string v0, "United Bank of India"

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .line 745
    const-string v0, "UBI"

    return-object v0
.end method
