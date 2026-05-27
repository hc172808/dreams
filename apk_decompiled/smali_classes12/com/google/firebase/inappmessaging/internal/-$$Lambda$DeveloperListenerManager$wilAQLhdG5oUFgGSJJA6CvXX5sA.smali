.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$wilAQLhdG5oUFgGSJJA6CvXX5sA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;

.field public final synthetic f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;

.field public final synthetic f$2:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$wilAQLhdG5oUFgGSJJA6CvXX5sA;->f$0:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$wilAQLhdG5oUFgGSJJA6CvXX5sA;->f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$wilAQLhdG5oUFgGSJJA6CvXX5sA;->f$2:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$wilAQLhdG5oUFgGSJJA6CvXX5sA;->f$0:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$wilAQLhdG5oUFgGSJJA6CvXX5sA;->f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$wilAQLhdG5oUFgGSJJA6CvXX5sA;->f$2:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->lambda$displayErrorEncountered$1(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V

    return-void
.end method
