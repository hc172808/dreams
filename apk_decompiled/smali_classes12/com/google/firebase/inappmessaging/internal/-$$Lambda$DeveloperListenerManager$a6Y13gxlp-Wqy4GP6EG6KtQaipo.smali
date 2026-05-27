.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$a6Y13gxlp-Wqy4GP6EG6KtQaipo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;

.field public final synthetic f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;

.field public final synthetic f$2:Lcom/google/firebase/inappmessaging/model/Action;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/model/Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$a6Y13gxlp-Wqy4GP6EG6KtQaipo;->f$0:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$a6Y13gxlp-Wqy4GP6EG6KtQaipo;->f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$a6Y13gxlp-Wqy4GP6EG6KtQaipo;->f$2:Lcom/google/firebase/inappmessaging/model/Action;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$a6Y13gxlp-Wqy4GP6EG6KtQaipo;->f$0:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$a6Y13gxlp-Wqy4GP6EG6KtQaipo;->f$1:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$a6Y13gxlp-Wqy4GP6EG6KtQaipo;->f$2:Lcom/google/firebase/inappmessaging/model/Action;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->lambda$messageClicked$2(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/model/Action;)V

    return-void
.end method
