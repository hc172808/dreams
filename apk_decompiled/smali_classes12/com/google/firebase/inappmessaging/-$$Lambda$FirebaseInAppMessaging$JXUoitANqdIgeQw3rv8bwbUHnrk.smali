.class public final synthetic Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessaging$JXUoitANqdIgeQw3rv8bwbUHnrk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessaging$JXUoitANqdIgeQw3rv8bwbUHnrk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessaging$JXUoitANqdIgeQw3rv8bwbUHnrk;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessaging$JXUoitANqdIgeQw3rv8bwbUHnrk;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessaging$JXUoitANqdIgeQw3rv8bwbUHnrk;->INSTANCE:Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessaging$JXUoitANqdIgeQw3rv8bwbUHnrk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method
