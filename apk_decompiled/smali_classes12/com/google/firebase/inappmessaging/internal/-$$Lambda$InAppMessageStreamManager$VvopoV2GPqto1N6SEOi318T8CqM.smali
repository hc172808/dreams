.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$VvopoV2GPqto1N6SEOi318T8CqM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$VvopoV2GPqto1N6SEOi318T8CqM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$VvopoV2GPqto1N6SEOi318T8CqM;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$VvopoV2GPqto1N6SEOi318T8CqM;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$VvopoV2GPqto1N6SEOi318T8CqM;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$VvopoV2GPqto1N6SEOi318T8CqM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$1(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)V

    return-void
.end method
