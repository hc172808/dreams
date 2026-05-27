.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$JuECYLRUZ20m-graAdtlox2RtIQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$JuECYLRUZ20m-graAdtlox2RtIQ;->f$0:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$JuECYLRUZ20m-graAdtlox2RtIQ;->f$0:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->processCampaignFetch(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)V

    return-void
.end method
