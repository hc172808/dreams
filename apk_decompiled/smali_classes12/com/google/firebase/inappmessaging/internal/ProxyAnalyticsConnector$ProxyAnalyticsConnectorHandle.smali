.class Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;
.super Ljava/lang/Object;
.source "ProxyAnalyticsConnector.java"

# interfaces
.implements Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyAnalyticsConnectorHandle"
.end annotation


# static fields
.field private static final UNREGISTERED:Ljava/lang/Object;


# instance fields
.field private eventNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->UNREGISTERED:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;Lcom/google/firebase/inject/Deferred;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p3, "analyticsConnector":Lcom/google/firebase/inject/Deferred;, "Lcom/google/firebase/inject/Deferred<Lcom/google/firebase/analytics/connector/AnalyticsConnector;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->eventNames:Ljava/util/Set;

    .line 124
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle$BK4g5eldgrUmAIy3cmAH6ILzw0w;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle$BK4g5eldgrUmAIy3cmAH6ILzw0w;-><init>(Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;Ljava/lang/String;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;)V

    invoke-interface {p3, v0}, Lcom/google/firebase/inject/Deferred;->whenAvailable(Lcom/google/firebase/inject/Deferred$DeferredHandler;)V

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;Lcom/google/firebase/inject/Deferred;Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;
    .param p3, "x2"    # Lcom/google/firebase/inject/Deferred;
    .param p4, "x3"    # Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$1;

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;-><init>(Ljava/lang/String;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;Lcom/google/firebase/inject/Deferred;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle(Ljava/lang/String;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;Lcom/google/firebase/inject/Provider;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;
    .param p3, "connectorProvider"    # Lcom/google/firebase/inject/Provider;

    .line 126
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->instance:Ljava/lang/Object;

    .line 127
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->UNREGISTERED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    invoke-interface {p3}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 134
    .local v1, "connector":Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    nop

    .line 135
    invoke-interface {v1, p1, p2}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->registerAnalyticsConnectorListener(Ljava/lang/String;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    move-result-object v2

    .line 136
    .local v2, "handle":Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;
    iput-object v2, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->instance:Ljava/lang/Object;

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->eventNames:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->eventNames:Ljava/util/Set;

    invoke-interface {v2, v3}, Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;->registerEventNames(Ljava/util/Set;)V

    .line 142
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->eventNames:Ljava/util/Set;

    .line 144
    :cond_1
    monitor-exit p0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public registerEventNames(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->instance:Ljava/lang/Object;

    .line 168
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->UNREGISTERED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 169
    return-void

    .line 172
    :cond_0
    if-eqz v0, :cond_1

    .line 173
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    .line 174
    .local v1, "handle":Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;
    invoke-interface {v1, p1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;->registerEventNames(Ljava/util/Set;)V

    .line 175
    return-void

    .line 177
    .end local v1    # "handle":Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;
    :cond_1
    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->eventNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 179
    monitor-exit p0

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregister()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->instance:Ljava/lang/Object;

    .line 151
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->UNREGISTERED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 152
    return-void

    .line 155
    :cond_0
    if-eqz v0, :cond_1

    .line 156
    move-object v2, v0

    check-cast v2, Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    .line 157
    .local v2, "handle":Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;
    invoke-interface {v2}, Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;->unregister()V

    .line 159
    .end local v2    # "handle":Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;
    :cond_1
    iput-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->instance:Ljava/lang/Object;

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->eventNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 162
    monitor-exit p0

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterEventNames()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->instance:Ljava/lang/Object;

    .line 185
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->UNREGISTERED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 186
    return-void

    .line 188
    :cond_0
    if-eqz v0, :cond_1

    .line 189
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    .line 190
    .local v1, "handle":Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;
    invoke-interface {v1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;->unregisterEventNames()V

    .line 191
    return-void

    .line 193
    .end local v1    # "handle":Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;
    :cond_1
    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector$ProxyAnalyticsConnectorHandle;->eventNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 195
    monitor-exit p0

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
