.class public Lcom/payumoney/core/presenter/GetMultipleBinDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    .local p3, "cardNumbersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p2}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Lcom/payumoney/core/SdkSession;->fetchMultipleCardBinInfo(Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 22
    return-void

    .line 18
    :cond_1
    :goto_0
    const-string v0, "Invalid card number list"

    invoke-interface {p1, v0, p4}, Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method
