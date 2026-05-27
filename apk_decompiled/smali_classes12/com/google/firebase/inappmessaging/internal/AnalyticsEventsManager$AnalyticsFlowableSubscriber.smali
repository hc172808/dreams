.class Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager$AnalyticsFlowableSubscriber;
.super Ljava/lang/Object;
.source "AnalyticsEventsManager.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnalyticsFlowableSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager$AnalyticsFlowableSubscriber;->this$0:Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p1, "emitter":Lio/reactivex/FlowableEmitter;, "Lio/reactivex/FlowableEmitter<Ljava/lang/String;>;"
    const-string v0, "Subscribing to analytics events."

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager$AnalyticsFlowableSubscriber;->this$0:Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

    .line 106
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->access$100(Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;)Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/internal/FiamAnalyticsConnectorListener;

    invoke-direct {v2, p1}, Lcom/google/firebase/inappmessaging/internal/FiamAnalyticsConnectorListener;-><init>(Lio/reactivex/FlowableEmitter;)V

    const-string v3, "fiam"

    invoke-interface {v1, v3, v2}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->registerAnalyticsConnectorListener(Ljava/lang/String;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->access$002(Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    .line 108
    return-void
.end method
