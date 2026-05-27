.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$WiTgr1zOccm4SCfHqVFSw88Xckw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$WiTgr1zOccm4SCfHqVFSw88Xckw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$WiTgr1zOccm4SCfHqVFSw88Xckw;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$WiTgr1zOccm4SCfHqVFSw88Xckw;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$WiTgr1zOccm4SCfHqVFSw88Xckw;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$WiTgr1zOccm4SCfHqVFSw88Xckw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;

    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;->getAlreadySeenCampaignsList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
