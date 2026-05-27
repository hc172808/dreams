.class final enum Lcom/payumoney/core/utils/BankCID$28;
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

    .line 600
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/payumoney/core/utils/BankCID;-><init>(Ljava/lang/String;ILcom/payumoney/core/utils/BankCID$1;)V

    return-void
.end method


# virtual methods
.method public getBankCode()Ljava/lang/String;
    .locals 1

    .line 618
    const-string v0, "SBBJB"

    return-object v0
.end method

.method public getCID()Ljava/lang/String;
    .locals 1

    .line 603
    const-string v0, "CID013"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 608
    const-string v0, "State Bank of Bikaner and Jaipur"

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .line 613
    const-string v0, "State Bank B&J"

    return-object v0
.end method
