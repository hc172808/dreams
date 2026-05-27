.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$T6hACkuC0mDbtRpq24gdwgSW298;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

.field public final synthetic f$1:Lio/reactivex/Maybe;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lio/reactivex/Maybe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$T6hACkuC0mDbtRpq24gdwgSW298;->f$0:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$T6hACkuC0mDbtRpq24gdwgSW298;->f$1:Lio/reactivex/Maybe;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$T6hACkuC0mDbtRpq24gdwgSW298;->f$0:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$T6hACkuC0mDbtRpq24gdwgSW298;->f$1:Lio/reactivex/Maybe;

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$20$InAppMessageStreamManager(Lio/reactivex/Maybe;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method
