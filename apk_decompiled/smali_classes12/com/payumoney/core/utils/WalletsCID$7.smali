.class final enum Lcom/payumoney/core/utils/WalletsCID$7;
.super Lcom/payumoney/core/utils/WalletsCID;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/utils/WalletsCID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/payumoney/core/utils/WalletsCID;-><init>(Ljava/lang/String;ILcom/payumoney/core/utils/WalletsCID$1;)V

    return-void
.end method


# virtual methods
.method public getBankCode()Ljava/lang/String;
    .locals 1

    .line 146
    const-string v0, "ZIPCASH"

    return-object v0
.end method

.method public getCID()Ljava/lang/String;
    .locals 1

    .line 131
    const-string v0, "BCW002"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 136
    const-string v0, "ZIPcash card"

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .line 141
    const-string v0, "ZIPcash card"

    return-object v0
.end method
