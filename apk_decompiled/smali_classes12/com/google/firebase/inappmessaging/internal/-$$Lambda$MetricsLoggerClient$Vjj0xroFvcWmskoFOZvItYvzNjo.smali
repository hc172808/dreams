.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$MetricsLoggerClient$Vjj0xroFvcWmskoFOZvItYvzNjo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

.field public final synthetic f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;

.field public final synthetic f$2:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$MetricsLoggerClient$Vjj0xroFvcWmskoFOZvItYvzNjo;->f$0:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$MetricsLoggerClient$Vjj0xroFvcWmskoFOZvItYvzNjo;->f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$MetricsLoggerClient$Vjj0xroFvcWmskoFOZvItYvzNjo;->f$2:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$MetricsLoggerClient$Vjj0xroFvcWmskoFOZvItYvzNjo;->f$0:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$MetricsLoggerClient$Vjj0xroFvcWmskoFOZvItYvzNjo;->f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$MetricsLoggerClient$Vjj0xroFvcWmskoFOZvItYvzNjo;->f$2:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->lambda$logRenderError$2$MetricsLoggerClient(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;Ljava/lang/String;)V

    return-void
.end method
