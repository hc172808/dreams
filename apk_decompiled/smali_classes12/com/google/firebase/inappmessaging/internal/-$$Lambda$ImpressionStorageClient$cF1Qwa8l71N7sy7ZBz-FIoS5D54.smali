.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$cF1Qwa8l71N7sy7ZBz-FIoS5D54;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

.field public final synthetic f$1:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$cF1Qwa8l71N7sy7ZBz-FIoS5D54;->f$0:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$cF1Qwa8l71N7sy7ZBz-FIoS5D54;->f$1:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$cF1Qwa8l71N7sy7ZBz-FIoS5D54;->f$0:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$cF1Qwa8l71N7sy7ZBz-FIoS5D54;->f$1:Ljava/util/HashSet;

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->lambda$clearImpressions$4$ImpressionStorageClient(Ljava/util/HashSet;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
