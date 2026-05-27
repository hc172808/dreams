.class public Lcom/payumoney/graphics/classes/PGSettingIdentifier;
.super Ljava/lang/Object;
.source "PGSettingIdentifier.java"


# instance fields
.field private creditCard:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private debitCard:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lazyPayEnabled:Ljava/lang/Boolean;

.field private mcpEnabled:Ljava/lang/Boolean;

.field private netBanking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/payumoney/graphics/classes/NetBanking;",
            ">;"
        }
    .end annotation
.end field

.field private prepaid:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payumoney/graphics/classes/PGSettingIdentifier;->creditCard:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payumoney/graphics/classes/PGSettingIdentifier;->debitCard:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payumoney/graphics/classes/PGSettingIdentifier;->netBanking:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCreditCard()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/payumoney/graphics/classes/PGSettingIdentifier;->creditCard:Ljava/util/List;

    return-object v0
.end method

.method public getDebitCard()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/payumoney/graphics/classes/PGSettingIdentifier;->debitCard:Ljava/util/List;

    return-object v0
.end method

.method public getNetBanking()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/payumoney/graphics/classes/NetBanking;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/payumoney/graphics/classes/PGSettingIdentifier;->netBanking:Ljava/util/List;

    return-object v0
.end method

.method public setCreditCard(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "creditCard":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/payumoney/graphics/classes/PGSettingIdentifier;->creditCard:Ljava/util/List;

    .line 32
    return-void
.end method

.method public setDebitCard(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "debitCard":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/payumoney/graphics/classes/PGSettingIdentifier;->debitCard:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setNetBanking(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/payumoney/graphics/classes/NetBanking;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p1, "netBanking":Ljava/util/List;, "Ljava/util/List<Lcom/payumoney/graphics/classes/NetBanking;>;"
    iput-object p1, p0, Lcom/payumoney/graphics/classes/PGSettingIdentifier;->netBanking:Ljava/util/List;

    .line 60
    return-void
.end method
