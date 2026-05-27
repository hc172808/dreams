.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$w4tUspl0-bTh48AvRyCAZ0a1mSM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$w4tUspl0-bTh48AvRyCAZ0a1mSM;->f$0:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$w4tUspl0-bTh48AvRyCAZ0a1mSM;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$w4tUspl0-bTh48AvRyCAZ0a1mSM;->f$0:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$w4tUspl0-bTh48AvRyCAZ0a1mSM;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$getTriggeredInAppMessageMaybe$27$InAppMessageStreamManager(Ljava/lang/String;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Lio/reactivex/MaybeSource;

    move-result-object p1

    return-object p1
.end method
