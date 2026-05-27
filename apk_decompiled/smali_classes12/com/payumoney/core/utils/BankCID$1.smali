.class final enum Lcom/payumoney/core/utils/BankCID$1;
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

    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/payumoney/core/utils/BankCID;-><init>(Ljava/lang/String;ILcom/payumoney/core/utils/BankCID$1;)V

    return-void
.end method


# virtual methods
.method public getBankCode()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "AXIB"

    return-object v0
.end method

.method public getCID()Ljava/lang/String;
    .locals 1

    .line 9
    const-string v0, "CID002"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 14
    const-string v0, "AXIS Bank NetBanking"

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "AXIS"

    return-object v0
.end method
