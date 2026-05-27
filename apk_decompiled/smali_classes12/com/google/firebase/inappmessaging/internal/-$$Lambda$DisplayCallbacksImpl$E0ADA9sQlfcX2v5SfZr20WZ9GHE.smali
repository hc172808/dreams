.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$E0ADA9sQlfcX2v5SfZr20WZ9GHE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$E0ADA9sQlfcX2v5SfZr20WZ9GHE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$E0ADA9sQlfcX2v5SfZr20WZ9GHE;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$E0ADA9sQlfcX2v5SfZr20WZ9GHE;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$E0ADA9sQlfcX2v5SfZr20WZ9GHE;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$E0ADA9sQlfcX2v5SfZr20WZ9GHE;

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

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->lambda$logToImpressionStore$5(Ljava/lang/Throwable;)V

    return-void
.end method
