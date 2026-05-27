.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$UE8u_7Lam8aGUNjAfyB18kWY0Pw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

.field public final synthetic f$1:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$UE8u_7Lam8aGUNjAfyB18kWY0Pw;->f$0:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$UE8u_7Lam8aGUNjAfyB18kWY0Pw;->f$1:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$UE8u_7Lam8aGUNjAfyB18kWY0Pw;->f$0:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$UE8u_7Lam8aGUNjAfyB18kWY0Pw;->f$1:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->lambda$clearImpressions$3$ImpressionStorageClient(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)V

    return-void
.end method
