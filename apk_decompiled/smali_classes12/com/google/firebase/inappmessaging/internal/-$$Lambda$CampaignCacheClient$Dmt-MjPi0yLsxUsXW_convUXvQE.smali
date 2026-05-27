.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$Dmt-MjPi0yLsxUsXW_convUXvQE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$Dmt-MjPi0yLsxUsXW_convUXvQE;->f$0:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$Dmt-MjPi0yLsxUsXW_convUXvQE;->f$0:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->lambda$get$1$CampaignCacheClient()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    move-result-object v0

    return-object v0
.end method
