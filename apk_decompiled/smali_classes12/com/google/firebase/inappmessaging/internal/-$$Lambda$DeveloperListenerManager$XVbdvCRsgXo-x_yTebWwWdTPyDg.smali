.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$XVbdvCRsgXo-x_yTebWwWdTPyDg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;

.field public final synthetic f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$XVbdvCRsgXo-x_yTebWwWdTPyDg;->f$0:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$XVbdvCRsgXo-x_yTebWwWdTPyDg;->f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$XVbdvCRsgXo-x_yTebWwWdTPyDg;->f$0:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$XVbdvCRsgXo-x_yTebWwWdTPyDg;->f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->lambda$messageDismissed$3(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;)V

    return-void
.end method
