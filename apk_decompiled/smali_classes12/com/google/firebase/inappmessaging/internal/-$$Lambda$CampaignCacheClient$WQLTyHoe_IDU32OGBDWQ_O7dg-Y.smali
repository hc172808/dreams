.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$WQLTyHoe_IDU32OGBDWQ_O7dg-Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

.field public final synthetic f$1:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$WQLTyHoe_IDU32OGBDWQ_O7dg-Y;->f$0:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$WQLTyHoe_IDU32OGBDWQ_O7dg-Y;->f$1:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$WQLTyHoe_IDU32OGBDWQ_O7dg-Y;->f$0:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$WQLTyHoe_IDU32OGBDWQ_O7dg-Y;->f$1:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->lambda$put$0$CampaignCacheClient(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)V

    return-void
.end method
