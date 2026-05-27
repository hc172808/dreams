.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$Jc0lh_3m7fcCFSYsayevqCCc7bk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$Jc0lh_3m7fcCFSYsayevqCCc7bk;->f$0:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$Jc0lh_3m7fcCFSYsayevqCCc7bk;->f$0:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->lambda$Jc0lh_3m7fcCFSYsayevqCCc7bk(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)Z

    move-result p1

    return p1
.end method
