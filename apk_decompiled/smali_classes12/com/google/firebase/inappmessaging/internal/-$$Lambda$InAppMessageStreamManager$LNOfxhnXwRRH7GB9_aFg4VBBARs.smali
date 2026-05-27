.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$LNOfxhnXwRRH7GB9_aFg4VBBARs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$LNOfxhnXwRRH7GB9_aFg4VBBARs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$LNOfxhnXwRRH7GB9_aFg4VBBARs;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$LNOfxhnXwRRH7GB9_aFg4VBBARs;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$LNOfxhnXwRRH7GB9_aFg4VBBARs;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$LNOfxhnXwRRH7GB9_aFg4VBBARs;

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

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$17(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)V

    return-void
.end method
