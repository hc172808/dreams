.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$xoQwavTxF-PxKmNh_lcWYwCmE0s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$xoQwavTxF-PxKmNh_lcWYwCmE0s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$xoQwavTxF-PxKmNh_lcWYwCmE0s;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$xoQwavTxF-PxKmNh_lcWYwCmE0s;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$xoQwavTxF-PxKmNh_lcWYwCmE0s;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$xoQwavTxF-PxKmNh_lcWYwCmE0s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$9(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
