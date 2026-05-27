.class public Lcom/payumoney/core/presenter/GetBinDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/payumoney/core/listener/OnCardBinDetailsReceived;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnCardBinDetailsReceived;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "cardNumber"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p2}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Lcom/payumoney/core/SdkSession;->fetchCardBinInfo(Lcom/payumoney/core/listener/OnCardBinDetailsReceived;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void

    .line 15
    :cond_1
    :goto_0
    const-string v0, "Invalid card number"

    invoke-interface {p1, v0, p4}, Lcom/payumoney/core/listener/OnCardBinDetailsReceived;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method
