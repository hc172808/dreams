.class public Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector;
.super Ljava/lang/Object;
.source "ProxyAnalyticsConnector.java"

# interfaces
.implements Lcom/google/firebase/analytics/connector/AnalyticsConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;
    }
.end annotation


# instance fields
.field private volatile instance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inject/Deferred;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "analyticsConnector":Lcom/google/firebase/inject/Deferred;, "Lcom/google/firebase/inject/Deferred<Lcom/google/firebase/analytics/connector/AnalyticsConnector;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector;->instance:Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProxyAnalyticsConnector$fC6K2U2gpvz9jZjYJNy-12TIBm8;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProxyAnalyticsConnector$fC6K2U2gpvz9jZjYJNy-12TIBm8;-><init>(Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector;)V

    invoke-interface {p1, v0}, Lcom/google/firebase/inject/Deferred;->whenAvailable(Lcom/google/firebase/inject/Deferred$DeferredHandler;)V

    .line 41
    return-void
.end method

.method private safeGet()Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector;->instance:Ljava/lang/Object;

    .line 45
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    if-eqz v1, :cond_0

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    return-object v1

    .line 48
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 96
    return-void
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxUserProperties(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getUserProperties(Z)Ljava/util/Map;
    .locals 1
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$0$ProxyAnalyticsConnector(Lcom/google/firebase/inject/Provider;)V
    .locals 1
    .param p1, "connectorProvider"    # Lcom/google/firebase/inject/Provider;

    .line 40
    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector;->instance:Ljava/lang/Object;

    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 53
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector;->safeGet()Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    move-result-object v0

    .line 54
    .local v0, "connector":Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1, p2, p3}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 57
    :cond_0
    return-void
.end method

.method public registerAnalyticsConnectorListener(Ljava/lang/String;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "analyticsConnectorListener"    # Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;

    .line 78
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector;->instance:Ljava/lang/Object;

    .line 79
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    if-eqz v1, :cond_0

    .line 80
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 81
    invoke-interface {v1, p1, p2}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->registerAnalyticsConnectorListener(Ljava/lang/String;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    move-result-object v1

    .line 80
    return-object v1

    .line 84
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/inject/Deferred;

    .line 85
    .local v1, "deferred":Lcom/google/firebase/inject/Deferred;, "Lcom/google/firebase/inject/Deferred<Lcom/google/firebase/analytics/connector/AnalyticsConnector;>;"
    new-instance v2, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v1, v3}, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;-><init>(Ljava/lang/String;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;Lcom/google/firebase/inject/Deferred;Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$1;)V

    return-object v2
.end method

.method public setConditionalUserProperty(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)V
    .locals 0
    .param p1, "conditionalUserProperty"    # Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 91
    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "o"    # Ljava/lang/Object;

    .line 61
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector;->safeGet()Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    move-result-object v0

    .line 62
    .local v0, "connector":Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p1, p2, p3}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    :cond_0
    return-void
.end method
