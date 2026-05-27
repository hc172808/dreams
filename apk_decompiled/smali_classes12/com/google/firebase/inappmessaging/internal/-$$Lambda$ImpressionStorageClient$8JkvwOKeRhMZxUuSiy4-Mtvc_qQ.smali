.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$8JkvwOKeRhMZxUuSiy4-Mtvc_qQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

.field public final synthetic f$1:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$8JkvwOKeRhMZxUuSiy4-Mtvc_qQ;->f$0:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$8JkvwOKeRhMZxUuSiy4-Mtvc_qQ;->f$1:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$8JkvwOKeRhMZxUuSiy4-Mtvc_qQ;->f$0:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$8JkvwOKeRhMZxUuSiy4-Mtvc_qQ;->f$1:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->lambda$storeImpression$1$ImpressionStorageClient(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
