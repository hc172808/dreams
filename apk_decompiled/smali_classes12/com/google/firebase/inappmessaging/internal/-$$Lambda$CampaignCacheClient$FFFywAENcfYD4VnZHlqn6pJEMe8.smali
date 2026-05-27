.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$FFFywAENcfYD4VnZHlqn6pJEMe8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$FFFywAENcfYD4VnZHlqn6pJEMe8;->f$0:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$FFFywAENcfYD4VnZHlqn6pJEMe8;->f$0:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->lambda$get$2$CampaignCacheClient(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)V

    return-void
.end method
