.class public Lcom/payumoney/core/response/NetBankingStatusResponse;
.super Lcom/payumoney/core/response/PayUMoneyAPIResponse;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/payumoney/core/response/PayUMoneyAPIResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetBankList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/payumoney/core/response/NetBankingStatusResponse;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setNetBankList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p1, "netBankList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/PaymentEntity;>;"
    iput-object p1, p0, Lcom/payumoney/core/response/NetBankingStatusResponse;->a:Ljava/util/ArrayList;

    .line 20
    return-void
.end method
