.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$AiAaCQ3qsVI6xCnO-1y3DNtSS44;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$AiAaCQ3qsVI6xCnO-1y3DNtSS44;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$AiAaCQ3qsVI6xCnO-1y3DNtSS44;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$AiAaCQ3qsVI6xCnO-1y3DNtSS44;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$AiAaCQ3qsVI6xCnO-1y3DNtSS44;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$AiAaCQ3qsVI6xCnO-1y3DNtSS44;

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

    check-cast p1, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$AiAaCQ3qsVI6xCnO-1y3DNtSS44(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Z

    move-result p1

    return p1
.end method
