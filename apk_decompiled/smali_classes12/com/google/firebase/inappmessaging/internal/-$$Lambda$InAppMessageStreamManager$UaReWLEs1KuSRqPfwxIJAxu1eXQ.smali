.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$UaReWLEs1KuSRqPfwxIJAxu1eXQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$UaReWLEs1KuSRqPfwxIJAxu1eXQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$UaReWLEs1KuSRqPfwxIJAxu1eXQ;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$UaReWLEs1KuSRqPfwxIJAxu1eXQ;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$UaReWLEs1KuSRqPfwxIJAxu1eXQ;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$UaReWLEs1KuSRqPfwxIJAxu1eXQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    check-cast p2, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {p1, p2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$UaReWLEs1KuSRqPfwxIJAxu1eXQ(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)I

    move-result p1

    return p1
.end method
