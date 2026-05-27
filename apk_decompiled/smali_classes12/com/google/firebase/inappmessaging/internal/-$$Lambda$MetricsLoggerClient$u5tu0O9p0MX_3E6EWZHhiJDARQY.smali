.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$MetricsLoggerClient$u5tu0O9p0MX_3E6EWZHhiJDARQY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

.field public final synthetic f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;

.field public final synthetic f$2:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$MetricsLoggerClient$u5tu0O9p0MX_3E6EWZHhiJDARQY;->f$0:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$MetricsLoggerClient$u5tu0O9p0MX_3E6EWZHhiJDARQY;->f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$MetricsLoggerClient$u5tu0O9p0MX_3E6EWZHhiJDARQY;->f$2:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$MetricsLoggerClient$u5tu0O9p0MX_3E6EWZHhiJDARQY;->f$0:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$MetricsLoggerClient$u5tu0O9p0MX_3E6EWZHhiJDARQY;->f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$MetricsLoggerClient$u5tu0O9p0MX_3E6EWZHhiJDARQY;->f$2:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->lambda$logDismiss$3$MetricsLoggerClient(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;Ljava/lang/String;)V

    return-void
.end method
