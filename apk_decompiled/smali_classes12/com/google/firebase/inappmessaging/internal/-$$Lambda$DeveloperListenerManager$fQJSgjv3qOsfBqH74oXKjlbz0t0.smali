.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$fQJSgjv3qOsfBqH74oXKjlbz0t0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;

.field public final synthetic f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$fQJSgjv3qOsfBqH74oXKjlbz0t0;->f$0:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$fQJSgjv3qOsfBqH74oXKjlbz0t0;->f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$fQJSgjv3qOsfBqH74oXKjlbz0t0;->f$0:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$fQJSgjv3qOsfBqH74oXKjlbz0t0;->f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->lambda$impressionDetected$0(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;)V

    return-void
.end method
