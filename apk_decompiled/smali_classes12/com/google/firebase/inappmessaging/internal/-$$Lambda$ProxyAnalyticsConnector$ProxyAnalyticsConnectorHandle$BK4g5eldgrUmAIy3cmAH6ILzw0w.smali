.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle$BK4g5eldgrUmAIy3cmAH6ILzw0w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;Ljava/lang/String;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle$BK4g5eldgrUmAIy3cmAH6ILzw0w;->f$0:Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle$BK4g5eldgrUmAIy3cmAH6ILzw0w;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle$BK4g5eldgrUmAIy3cmAH6ILzw0w;->f$2:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;

    return-void
.end method


# virtual methods
.method public final handle(Lcom/google/firebase/inject/Provider;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle$BK4g5eldgrUmAIy3cmAH6ILzw0w;->f$0:Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle$BK4g5eldgrUmAIy3cmAH6ILzw0w;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle$BK4g5eldgrUmAIy3cmAH6ILzw0w;->f$2:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->lambda$new$0$ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle(Ljava/lang/String;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method
