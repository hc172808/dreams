.class public final Lio/grpc/LoadBalancerRegistry;
.super Ljava/lang/Object;
.source "LoadBalancerRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/LoadBalancerRegistry$LoadBalancerPriorityAccessor;
    }
.end annotation


# static fields
.field private static final HARDCODED_CLASSES:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static instance:Lio/grpc/LoadBalancerRegistry;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final allProviders:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lio/grpc/LoadBalancerProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final effectiveProviders:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lio/grpc/LoadBalancerProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lio/grpc/LoadBalancerRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/LoadBalancerRegistry;->logger:Ljava/util/logging/Logger;

    .line 45
    invoke-static {}, Lio/grpc/LoadBalancerRegistry;->getHardCodedClasses()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/grpc/LoadBalancerRegistry;->HARDCODED_CLASSES:Ljava/lang/Iterable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/LoadBalancerRegistry;->allProviders:Ljava/util/LinkedHashSet;

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/LoadBalancerRegistry;->effectiveProviders:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private declared-synchronized addProvider(Lio/grpc/LoadBalancerProvider;)V
    .locals 2
    .param p1, "provider"    # Lio/grpc/LoadBalancerProvider;

    monitor-enter p0

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lio/grpc/LoadBalancerProvider;->isAvailable()Z

    move-result v0

    const-string v1, "isAvailable() returned false"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lio/grpc/LoadBalancerRegistry;->allProviders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 68
    .end local p0    # "this":Lio/grpc/LoadBalancerRegistry;
    .end local p1    # "provider":Lio/grpc/LoadBalancerProvider;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getDefaultRegistry()Lio/grpc/LoadBalancerRegistry;
    .locals 7

    const-class v0, Lio/grpc/LoadBalancerRegistry;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lio/grpc/LoadBalancerRegistry;->instance:Lio/grpc/LoadBalancerRegistry;

    if-nez v1, :cond_2

    .line 102
    const-class v1, Lio/grpc/LoadBalancerProvider;

    sget-object v2, Lio/grpc/LoadBalancerRegistry;->HARDCODED_CLASSES:Ljava/lang/Iterable;

    const-class v3, Lio/grpc/LoadBalancerProvider;

    .line 105
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lio/grpc/LoadBalancerRegistry$LoadBalancerPriorityAccessor;

    invoke-direct {v4}, Lio/grpc/LoadBalancerRegistry$LoadBalancerPriorityAccessor;-><init>()V

    .line 102
    invoke-static {v1, v2, v3, v4}, Lio/grpc/ServiceProviders;->loadAll(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lio/grpc/ServiceProviders$PriorityAccessor;)Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, "providerList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/LoadBalancerProvider;>;"
    new-instance v2, Lio/grpc/LoadBalancerRegistry;

    invoke-direct {v2}, Lio/grpc/LoadBalancerRegistry;-><init>()V

    sput-object v2, Lio/grpc/LoadBalancerRegistry;->instance:Lio/grpc/LoadBalancerRegistry;

    .line 108
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/LoadBalancerProvider;

    .line 109
    .local v3, "provider":Lio/grpc/LoadBalancerProvider;
    sget-object v4, Lio/grpc/LoadBalancerRegistry;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service loader found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3}, Lio/grpc/LoadBalancerProvider;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    sget-object v4, Lio/grpc/LoadBalancerRegistry;->instance:Lio/grpc/LoadBalancerRegistry;

    invoke-direct {v4, v3}, Lio/grpc/LoadBalancerRegistry;->addProvider(Lio/grpc/LoadBalancerProvider;)V

    .line 113
    .end local v3    # "provider":Lio/grpc/LoadBalancerProvider;
    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    sget-object v2, Lio/grpc/LoadBalancerRegistry;->instance:Lio/grpc/LoadBalancerRegistry;

    invoke-direct {v2}, Lio/grpc/LoadBalancerRegistry;->refreshProviderMap()V

    .line 116
    .end local v1    # "providerList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/LoadBalancerProvider;>;"
    :cond_2
    sget-object v1, Lio/grpc/LoadBalancerRegistry;->instance:Lio/grpc/LoadBalancerRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getHardCodedClasses()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    :try_start_0
    const-string v1, "io.grpc.internal.PickFirstLoadBalancerProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lio/grpc/LoadBalancerRegistry;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to find pick-first LoadBalancer"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    :try_start_1
    const-string v1, "io.grpc.util.SecretRoundRobinLoadBalancerProvider$Provider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    goto :goto_1

    .line 150
    :catch_1
    move-exception v1

    .line 153
    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lio/grpc/LoadBalancerRegistry;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to find round-robin LoadBalancer"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized refreshProviderMap()V
    .locals 6

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lio/grpc/LoadBalancerRegistry;->effectiveProviders:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 88
    iget-object v0, p0, Lio/grpc/LoadBalancerRegistry;->allProviders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/LoadBalancerProvider;

    .line 89
    .local v1, "provider":Lio/grpc/LoadBalancerProvider;
    invoke-virtual {v1}, Lio/grpc/LoadBalancerProvider;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "policy":Ljava/lang/String;
    iget-object v3, p0, Lio/grpc/LoadBalancerRegistry;->effectiveProviders:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/LoadBalancerProvider;

    .line 91
    .local v3, "existing":Lio/grpc/LoadBalancerProvider;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lio/grpc/LoadBalancerProvider;->getPriority()I

    move-result v4

    invoke-virtual {v1}, Lio/grpc/LoadBalancerProvider;->getPriority()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 92
    .end local p0    # "this":Lio/grpc/LoadBalancerRegistry;
    :cond_0
    iget-object v4, p0, Lio/grpc/LoadBalancerRegistry;->effectiveProviders:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v1    # "provider":Lio/grpc/LoadBalancerProvider;
    .end local v2    # "policy":Ljava/lang/String;
    .end local v3    # "existing":Lio/grpc/LoadBalancerProvider;
    :cond_1
    goto :goto_0

    .line 95
    :cond_2
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized deregister(Lio/grpc/LoadBalancerProvider;)V
    .locals 1
    .param p1, "provider"    # Lio/grpc/LoadBalancerProvider;

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lio/grpc/LoadBalancerRegistry;->allProviders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 83
    invoke-direct {p0}, Lio/grpc/LoadBalancerRegistry;->refreshProviderMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 81
    .end local p0    # "this":Lio/grpc/LoadBalancerRegistry;
    .end local p1    # "provider":Lio/grpc/LoadBalancerProvider;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProvider(Ljava/lang/String;)Lio/grpc/LoadBalancerProvider;
    .locals 2
    .param p1, "policy"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lio/grpc/LoadBalancerRegistry;->effectiveProviders:Ljava/util/LinkedHashMap;

    const-string v1, "policy"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancerProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 126
    .end local p0    # "this":Lio/grpc/LoadBalancerRegistry;
    .end local p1    # "policy":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized providers()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/LoadBalancerProvider;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 134
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lio/grpc/LoadBalancerRegistry;->effectiveProviders:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 134
    .end local p0    # "this":Lio/grpc/LoadBalancerRegistry;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Lio/grpc/LoadBalancerProvider;)V
    .locals 0
    .param p1, "provider"    # Lio/grpc/LoadBalancerProvider;

    monitor-enter p0

    .line 64
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/LoadBalancerRegistry;->addProvider(Lio/grpc/LoadBalancerProvider;)V

    .line 65
    invoke-direct {p0}, Lio/grpc/LoadBalancerRegistry;->refreshProviderMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 63
    .end local p0    # "this":Lio/grpc/LoadBalancerRegistry;
    .end local p1    # "provider":Lio/grpc/LoadBalancerProvider;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
