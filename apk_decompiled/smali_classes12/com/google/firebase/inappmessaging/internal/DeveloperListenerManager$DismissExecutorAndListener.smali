.class Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;
.super Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;
.source "DeveloperListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DismissExecutorAndListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener<",
        "Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;",
        ">;"
    }
.end annotation


# instance fields
.field listener:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;

    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 265
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;->listener:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;

    .line 266
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;
    .param p2, "e"    # Ljava/util/concurrent/Executor;

    .line 259
    invoke-direct {p0, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 260
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;->listener:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;

    .line 261
    return-void
.end method


# virtual methods
.method public getListener()Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;->listener:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;

    return-object v0
.end method

.method public bridge synthetic getListener()Ljava/lang/Object;
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;->getListener()Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;

    move-result-object v0

    return-object v0
.end method
