.class public Lcom/payumoney/core/presenter/GetNetBankingStatusList;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "tag"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p2}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/payumoney/core/SdkSession;->getNetBankingStatus(Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;Ljava/lang/String;)V

    .line 16
    return-void
.end method
