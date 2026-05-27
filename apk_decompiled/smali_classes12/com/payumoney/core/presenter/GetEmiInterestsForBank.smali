.class public Lcom/payumoney/core/presenter/GetEmiInterestsForBank;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;Landroid/content/Context;Ljava/lang/String;DLjava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "paymentId"    # Ljava/lang/String;
    .param p4, "totalAmount"    # D
    .param p7, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/EmiThreshold;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    .local p6, "emiThresholds":Ljava/util/List;, "Ljava/util/List<Lcom/payumoney/core/entity/EmiThreshold;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p2}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    move-object v1, p3

    move-wide v2, p4

    move-object v4, p1

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/payumoney/core/SdkSession;->getEmiInterestsForBank(Ljava/lang/String;DLcom/payumoney/core/listener/OnEmiInterestReceivedListener;Ljava/util/List;Ljava/lang/String;)V

    .line 15
    return-void
.end method
