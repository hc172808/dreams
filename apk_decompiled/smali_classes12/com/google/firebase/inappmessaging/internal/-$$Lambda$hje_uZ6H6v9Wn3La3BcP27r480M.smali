.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$hje_uZ6H6v9Wn3La3BcP27r480M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$hje_uZ6H6v9Wn3La3BcP27r480M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$hje_uZ6H6v9Wn3La3BcP27r480M;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$hje_uZ6H6v9Wn3La3BcP27r480M;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$hje_uZ6H6v9Wn3La3BcP27r480M;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$hje_uZ6H6v9Wn3La3BcP27r480M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/google/firebase/installations/InstallationTokenResult;

    invoke-static {p1, p2}, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;->create(Ljava/lang/String;Lcom/google/firebase/installations/InstallationTokenResult;)Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;

    move-result-object p1

    return-object p1
.end method
