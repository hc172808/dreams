.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$ypbeLf2gyh6IXwPDyL7zy-7JWHQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$ypbeLf2gyh6IXwPDyL7zy-7JWHQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$ypbeLf2gyh6IXwPDyL7zy-7JWHQ;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$ypbeLf2gyh6IXwPDyL7zy-7JWHQ;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$ypbeLf2gyh6IXwPDyL7zy-7JWHQ;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$ypbeLf2gyh6IXwPDyL7zy-7JWHQ;

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

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$5(Ljava/lang/Throwable;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
