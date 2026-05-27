.class final Lio/grpc/internal/DnsNameResolver;
.super Lio/grpc/NameResolver;
.source "DnsNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/DnsNameResolver$ResourceResolver;,
        Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;,
        Lio/grpc/internal/DnsNameResolver$AddressResolver;,
        Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;,
        Lio/grpc/internal/DnsNameResolver$ResolutionResults;,
        Lio/grpc/internal/DnsNameResolver$Resolve;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final DEFAULT_NETWORK_CACHE_TTL_SECONDS:J = 0x1eL

.field private static final GRPCLB_NAME_PREFIX:Ljava/lang/String; = "_grpclb._tcp."

.field private static final JNDI_LOCALHOST_PROPERTY:Ljava/lang/String;

.field private static final JNDI_PROPERTY:Ljava/lang/String;

.field private static final JNDI_TXT_PROPERTY:Ljava/lang/String;

.field static final NETWORKADDRESS_CACHE_TTL_PROPERTY:Ljava/lang/String; = "networkaddress.cache.ttl"

.field private static final SERVICE_CONFIG_CHOICE_CLIENT_HOSTNAME_KEY:Ljava/lang/String; = "clientHostname"

.field private static final SERVICE_CONFIG_CHOICE_CLIENT_LANGUAGE_KEY:Ljava/lang/String; = "clientLanguage"

.field private static final SERVICE_CONFIG_CHOICE_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVICE_CONFIG_CHOICE_PERCENTAGE_KEY:Ljava/lang/String; = "percentage"

.field private static final SERVICE_CONFIG_CHOICE_SERVICE_CONFIG_KEY:Ljava/lang/String; = "serviceConfig"

.field private static final SERVICE_CONFIG_NAME_PREFIX:Ljava/lang/String; = "_grpc_config."

.field static final SERVICE_CONFIG_PREFIX:Ljava/lang/String; = "grpc_config="

.field static enableJndi:Z

.field static enableJndiLocalhost:Z

.field static enableTxt:Z

.field private static localHostname:Ljava/lang/String;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final resourceResolverFactory:Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;


# instance fields
.field private volatile addressResolver:Lio/grpc/internal/DnsNameResolver$AddressResolver;

.field private final authority:Ljava/lang/String;

.field private final cacheTtlNanos:J

.field private cachedResolutionResults:Lio/grpc/internal/DnsNameResolver$ResolutionResults;

.field private final enableSrv:Z

.field private executor:Ljava/util/concurrent/Executor;

.field private final executorResource:Lio/grpc/internal/SharedResourceHolder$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final host:Ljava/lang/String;

.field private listener:Lio/grpc/NameResolver$Listener2;

.field private final port:I

.field final proxyDetector:Lio/grpc/ProxyDetector;

.field private final random:Ljava/util/Random;

.field private resolving:Z

.field private final resourceResolver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/internal/DnsNameResolver$ResourceResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceConfigParser:Lio/grpc/NameResolver$ServiceConfigParser;

.field private shutdown:Z

.field private final stopwatch:Lcom/google/common/base/Stopwatch;

.field private final syncContext:Lio/grpc/SynchronizationContext;

.field private final usingExecutorResource:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 66
    const-class v0, Lio/grpc/internal/DnsNameResolver;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    .line 77
    new-instance v1, Ljava/util/HashSet;

    const-string v2, "clientLanguage"

    const-string v3, "percentage"

    const-string v4, "clientHostname"

    const-string v5, "serviceConfig"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/DnsNameResolver;->SERVICE_CONFIG_CHOICE_KEYS:Ljava/util/Set;

    .line 91
    nop

    .line 92
    const-string v1, "io.grpc.internal.DnsNameResolverProvider.enable_jndi"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/DnsNameResolver;->JNDI_PROPERTY:Ljava/lang/String;

    .line 93
    nop

    .line 94
    const-string v2, "io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost"

    const-string v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lio/grpc/internal/DnsNameResolver;->JNDI_LOCALHOST_PROPERTY:Ljava/lang/String;

    .line 95
    nop

    .line 96
    const-string v4, "io.grpc.internal.DnsNameResolverProvider.enable_service_config"

    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lio/grpc/internal/DnsNameResolver;->JNDI_TXT_PROPERTY:Ljava/lang/String;

    .line 114
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lio/grpc/internal/DnsNameResolver;->enableJndi:Z

    .line 116
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lio/grpc/internal/DnsNameResolver;->enableJndiLocalhost:Z

    .line 118
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lio/grpc/internal/DnsNameResolver;->enableTxt:Z

    .line 120
    nop

    .line 121
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver;->getResourceResolverFactory(Ljava/lang/ClassLoader;)Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/DnsNameResolver;->resourceResolverFactory:Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;

    .line 120
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/grpc/NameResolver$Args;Lio/grpc/internal/SharedResourceHolder$Resource;Lcom/google/common/base/Stopwatch;ZZ)V
    .locals 6
    .param p1, "nsAuthority"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # Lio/grpc/NameResolver$Args;
    .param p5, "stopwatch"    # Lcom/google/common/base/Stopwatch;
    .param p6, "isAndroid"    # Z
    .param p7, "enableSrv"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/NameResolver$Args;",
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/common/base/Stopwatch;",
            "ZZ)V"
        }
    .end annotation

    .line 167
    .local p4, "executorResource":Lio/grpc/internal/SharedResourceHolder$Resource;, "Lio/grpc/internal/SharedResourceHolder$Resource<Ljava/util/concurrent/Executor;>;"
    invoke-direct {p0}, Lio/grpc/NameResolver;-><init>()V

    .line 129
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->random:Ljava/util/Random;

    .line 131
    sget-object v0, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;->INSTANCE:Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->addressResolver:Lio/grpc/internal/DnsNameResolver$AddressResolver;

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->resourceResolver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 168
    const-string v0, "args"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iput-object p4, p0, Lio/grpc/internal/DnsNameResolver;->executorResource:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 175
    .local v0, "nameUri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Invalid DNS name: %s"

    invoke-static {v1, v4, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v4, "nameUri (%s) doesn\'t have an authority"

    invoke-static {v1, v4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lio/grpc/internal/DnsNameResolver;->authority:Ljava/lang/String;

    .line 178
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/DnsNameResolver;->host:Ljava/lang/String;

    .line 179
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 180
    invoke-virtual {p3}, Lio/grpc/NameResolver$Args;->getDefaultPort()I

    move-result v1

    iput v1, p0, Lio/grpc/internal/DnsNameResolver;->port:I

    goto :goto_1

    .line 182
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    iput v1, p0, Lio/grpc/internal/DnsNameResolver;->port:I

    .line 184
    :goto_1
    invoke-virtual {p3}, Lio/grpc/NameResolver$Args;->getProxyDetector()Lio/grpc/ProxyDetector;

    move-result-object v1

    const-string v4, "proxyDetector"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ProxyDetector;

    iput-object v1, p0, Lio/grpc/internal/DnsNameResolver;->proxyDetector:Lio/grpc/ProxyDetector;

    .line 185
    invoke-static {p6}, Lio/grpc/internal/DnsNameResolver;->getNetworkAddressCacheTtlNanos(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lio/grpc/internal/DnsNameResolver;->cacheTtlNanos:J

    .line 186
    const-string v1, "stopwatch"

    invoke-static {p5, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Stopwatch;

    iput-object v1, p0, Lio/grpc/internal/DnsNameResolver;->stopwatch:Lcom/google/common/base/Stopwatch;

    .line 187
    invoke-virtual {p3}, Lio/grpc/NameResolver$Args;->getSynchronizationContext()Lio/grpc/SynchronizationContext;

    move-result-object v1

    const-string v4, "syncContext"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/SynchronizationContext;

    iput-object v1, p0, Lio/grpc/internal/DnsNameResolver;->syncContext:Lio/grpc/SynchronizationContext;

    .line 188
    invoke-virtual {p3}, Lio/grpc/NameResolver$Args;->getOffloadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/Executor;

    .line 189
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lio/grpc/internal/DnsNameResolver;->usingExecutorResource:Z

    .line 190
    iput-boolean p7, p0, Lio/grpc/internal/DnsNameResolver;->enableSrv:Z

    .line 191
    invoke-virtual {p3}, Lio/grpc/NameResolver$Args;->getServiceConfigParser()Lio/grpc/NameResolver$ServiceConfigParser;

    move-result-object v1

    const-string v2, "serviceConfigParser"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/NameResolver$ServiceConfigParser;

    iput-object v1, p0, Lio/grpc/internal/DnsNameResolver;->serviceConfigParser:Lio/grpc/NameResolver$ServiceConfigParser;

    .line 192
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 66
    sget-object v0, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;

    .line 66
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lio/grpc/internal/DnsNameResolver;)Lcom/google/common/base/Stopwatch;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;

    .line 66
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->stopwatch:Lcom/google/common/base/Stopwatch;

    return-object v0
.end method

.method static synthetic access$1100(Lio/grpc/internal/DnsNameResolver;)Ljava/util/Random;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;

    .line 66
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->random:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-static {}, Lio/grpc/internal/DnsNameResolver;->getLocalHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/NameResolver$ServiceConfigParser;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;

    .line 66
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->serviceConfigParser:Lio/grpc/NameResolver$ServiceConfigParser;

    return-object v0
.end method

.method static synthetic access$202(Lio/grpc/internal/DnsNameResolver;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;
    .param p1, "x1"    # Z

    .line 66
    iput-boolean p1, p0, Lio/grpc/internal/DnsNameResolver;->resolving:Z

    return p1
.end method

.method static synthetic access$300(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/SynchronizationContext;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;

    .line 66
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->syncContext:Lio/grpc/SynchronizationContext;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/internal/DnsNameResolver;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;

    .line 66
    iget v0, p0, Lio/grpc/internal/DnsNameResolver;->port:I

    return v0
.end method

.method static synthetic access$500(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/internal/DnsNameResolver$ResourceResolver;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;

    .line 66
    invoke-direct {p0}, Lio/grpc/internal/DnsNameResolver;->getResourceResolver()Lio/grpc/internal/DnsNameResolver$ResourceResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/internal/DnsNameResolver$AddressResolver;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;

    .line 66
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->addressResolver:Lio/grpc/internal/DnsNameResolver$AddressResolver;

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/internal/DnsNameResolver;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;

    .line 66
    iget-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->enableSrv:Z

    return v0
.end method

.method static synthetic access$802(Lio/grpc/internal/DnsNameResolver;Lio/grpc/internal/DnsNameResolver$ResolutionResults;)Lio/grpc/internal/DnsNameResolver$ResolutionResults;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;
    .param p1, "x1"    # Lio/grpc/internal/DnsNameResolver$ResolutionResults;

    .line 66
    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver;->cachedResolutionResults:Lio/grpc/internal/DnsNameResolver$ResolutionResults;

    return-object p1
.end method

.method static synthetic access$900(Lio/grpc/internal/DnsNameResolver;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;

    .line 66
    iget-wide v0, p0, Lio/grpc/internal/DnsNameResolver;->cacheTtlNanos:J

    return-wide v0
.end method

.method private cacheRefreshRequired()Z
    .locals 5

    .line 369
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->cachedResolutionResults:Lio/grpc/internal/DnsNameResolver$ResolutionResults;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lio/grpc/internal/DnsNameResolver;->cacheTtlNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->stopwatch:Lcom/google/common/base/Stopwatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 371
    invoke-virtual {v0, v1}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/grpc/internal/DnsNameResolver;->cacheTtlNanos:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 369
    :goto_1
    return v0
.end method

.method private static final getClientLanguagesFromChoice(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 482
    .local p0, "serviceConfigChoice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "clientLanguage"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getListOfStrings(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final getHostnamesFromChoice(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 488
    .local p0, "serviceConfigChoice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "clientHostname"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getListOfStrings(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getLocalHostname()Ljava/lang/String;
    .locals 2

    .line 718
    sget-object v0, Lio/grpc/internal/DnsNameResolver;->localHostname:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 720
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/DnsNameResolver;->localHostname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    goto :goto_0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 725
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    sget-object v0, Lio/grpc/internal/DnsNameResolver;->localHostname:Ljava/lang/String;

    return-object v0
.end method

.method private static getNetworkAddressCacheTtlNanos(Z)J
    .locals 11
    .param p0, "isAndroid"    # Z

    .line 497
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 499
    return-wide v0

    .line 502
    :cond_0
    const-string v2, "networkaddress.cache.ttl"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "cacheTtlPropertyValue":Ljava/lang/String;
    const-wide/16 v4, 0x1e

    .line 504
    .local v4, "cacheTtl":J
    if-eqz v3, :cond_1

    .line 506
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v6

    .line 512
    goto :goto_0

    .line 507
    :catch_0
    move-exception v6

    .line 508
    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v2, 0x1

    aput-object v3, v9, v2

    const/4 v2, 0x2

    .line 511
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v2

    .line 508
    const-string v2, "Property({0}) valid is not valid number format({1}), fall back to default({2})"

    invoke-virtual {v7, v8, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    cmp-long v2, v4, v0

    if-lez v2, :cond_2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    goto :goto_1

    :cond_2
    move-wide v0, v4

    :goto_1
    return-wide v0
.end method

.method private static final getPercentageFromChoice(Ljava/util/Map;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 476
    .local p0, "serviceConfigChoice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "percentage"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getNumber(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private getResourceResolver()Lio/grpc/internal/DnsNameResolver$ResourceResolver;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 663
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->resourceResolver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/DnsNameResolver$ResourceResolver;

    move-object v1, v0

    .local v1, "rr":Lio/grpc/internal/DnsNameResolver$ResourceResolver;
    if-nez v0, :cond_1

    .line 664
    sget-object v0, Lio/grpc/internal/DnsNameResolver;->resourceResolverFactory:Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;

    if-eqz v0, :cond_1

    .line 665
    invoke-interface {v0}, Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;->unavailabilityCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 666
    invoke-interface {v0}, Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;->newResourceResolver()Lio/grpc/internal/DnsNameResolver$ResourceResolver;

    move-result-object v1

    goto :goto_0

    .line 665
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 669
    :cond_1
    :goto_0
    return-object v1
.end method

.method static getResourceResolverFactory(Ljava/lang/ClassLoader;)Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;
    .locals 8
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 677
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "io.grpc.internal.JndiResourceResolverFactory"

    const/4 v2, 0x1

    .line 678
    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;

    .line 679
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 692
    .local v1, "jndiClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;>;"
    nop

    .line 695
    const/4 v2, 0x0

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 699
    .local v3, "jndiCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;>;"
    nop

    .line 702
    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 706
    .local v2, "rrf":Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;
    nop

    .line 707
    invoke-interface {v2}, Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;->unavailabilityCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 708
    sget-object v4, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 711
    invoke-interface {v2}, Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;->unavailabilityCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 708
    const-string v7, "JndiResourceResolverFactory not available, skipping."

    invoke-virtual {v4, v5, v7, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 712
    return-object v0

    .line 714
    :cond_0
    return-object v2

    .line 703
    .end local v2    # "rrf":Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;
    :catch_0
    move-exception v2

    .line 704
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Can\'t construct JndiResourceResolverFactory, skipping."

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 705
    return-object v0

    .line 696
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "jndiCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;>;"
    :catch_1
    move-exception v2

    .line 697
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v3, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Can\'t find JndiResourceResolverFactory ctor, skipping."

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 698
    return-object v0

    .line 683
    .end local v1    # "jndiClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 690
    .local v1, "e":Ljava/lang/ClassCastException;
    sget-object v2, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to cast JndiResourceResolverFactory, skipping."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 691
    return-object v0

    .line 680
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v1

    .line 681
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to find JndiResourceResolverFactory, skipping."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 682
    return-object v0
.end method

.method static maybeChooseServiceConfig(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Random;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 529
    .local p0, "choice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 530
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    sget-object v2, Lio/grpc/internal/DnsNameResolver;->SERVICE_CONFIG_CHOICE_KEYS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Bad key: %s"

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 531
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    goto :goto_0

    .line 533
    :cond_0
    invoke-static {p0}, Lio/grpc/internal/DnsNameResolver;->getClientLanguagesFromChoice(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 534
    .local v0, "clientLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 535
    const/4 v2, 0x0

    .line 536
    .local v2, "javaPresent":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 537
    .local v4, "lang":Ljava/lang/String;
    const-string v5, "java"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 538
    const/4 v2, 0x1

    .line 539
    goto :goto_2

    .line 541
    .end local v4    # "lang":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 542
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    .line 543
    return-object v1

    .line 546
    .end local v2    # "javaPresent":Z
    :cond_3
    invoke-static {p0}, Lio/grpc/internal/DnsNameResolver;->getPercentageFromChoice(Ljava/util/Map;)Ljava/lang/Double;

    move-result-object v2

    .line 547
    .local v2, "percentage":Ljava/lang/Double;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 548
    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v5

    .line 549
    .local v5, "pct":I
    const/16 v6, 0x64

    if-ltz v5, :cond_4

    if-gt v5, v6, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    const-string v8, "Bad percentage: %s"

    invoke-static {v7, v8, v2}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 550
    invoke-virtual {p1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-lt v6, v5, :cond_5

    .line 551
    return-object v1

    .line 554
    .end local v5    # "pct":I
    :cond_5
    invoke-static {p0}, Lio/grpc/internal/DnsNameResolver;->getHostnamesFromChoice(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    .line 555
    .local v5, "clientHostnames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 556
    const/4 v6, 0x0

    .line 557
    .local v6, "hostnamePresent":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 558
    .local v8, "clientHostname":Ljava/lang/String;
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 559
    const/4 v6, 0x1

    .line 560
    goto :goto_5

    .line 562
    .end local v8    # "clientHostname":Ljava/lang/String;
    :cond_6
    goto :goto_4

    .line 563
    :cond_7
    :goto_5
    if-nez v6, :cond_8

    .line 564
    return-object v1

    .line 567
    .end local v6    # "hostnamePresent":Z
    :cond_8
    nop

    .line 568
    const-string v1, "serviceConfig"

    invoke-static {p0, v1}, Lio/grpc/internal/JsonUtil;->getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 569
    .local v6, "sc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v6, :cond_9

    .line 573
    return-object v6

    .line 570
    :cond_9
    new-instance v7, Lcom/google/common/base/VerifyException;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v4

    aput-object v1, v8, v3

    const-string v1, "key \'%s\' missing in \'%s\'"

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method static parseServiceConfig(Ljava/util/List;Ljava/util/Random;Ljava/lang/String;)Lio/grpc/NameResolver$ConfigOrError;
    .locals 6
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "localHostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Random;",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/NameResolver$ConfigOrError;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 336
    .local p0, "rawTxtRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0}, Lio/grpc/internal/DnsNameResolver;->parseTxtResults(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 340
    .local v0, "possibleServiceConfigChoices":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    nop

    .line 341
    const/4 v1, 0x0

    .line 342
    .local v1, "possibleServiceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 344
    .local v3, "possibleServiceConfigChoice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    nop

    .line 345
    :try_start_1
    invoke-static {v3, p1, p2}, Lio/grpc/internal/DnsNameResolver;->maybeChooseServiceConfig(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v4

    .line 349
    nop

    .line 350
    if-eqz v1, :cond_0

    .line 351
    goto :goto_1

    .line 353
    .end local v3    # "possibleServiceConfigChoice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_0
    goto :goto_0

    .line 346
    .restart local v3    # "possibleServiceConfigChoice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    .line 348
    const-string v5, "failed to pick service config choice"

    invoke-virtual {v4, v5}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v4

    invoke-virtual {v4, v2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v4

    .line 347
    invoke-static {v4}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v4

    return-object v4

    .line 354
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "possibleServiceConfigChoice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 355
    const/4 v2, 0x0

    return-object v2

    .line 357
    :cond_2
    invoke-static {v1}, Lio/grpc/NameResolver$ConfigOrError;->fromConfig(Ljava/lang/Object;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v2

    return-object v2

    .line 337
    .end local v0    # "possibleServiceConfigChoices":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .end local v1    # "possibleServiceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    sget-object v1, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    .line 339
    const-string v2, "failed to parse TXT records"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    .line 338
    invoke-static {v1}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v1

    return-object v1
.end method

.method static parseTxtResults(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    .local p0, "txtRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v0, "possibleServiceConfigChoices":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 460
    .local v2, "txtRecord":Ljava/lang/String;
    const-string v3, "grpc_config="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 461
    sget-object v3, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const-string v6, "Ignoring non service config {0}"

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    goto :goto_0

    .line 464
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/grpc/internal/JsonParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 465
    .local v3, "rawChoices":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_1

    .line 468
    move-object v4, v3

    check-cast v4, Ljava/util/List;

    .line 469
    .local v4, "listChoices":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-static {v4}, Lio/grpc/internal/JsonUtil;->checkObjectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 470
    .end local v2    # "txtRecord":Ljava/lang/String;
    .end local v3    # "rawChoices":Ljava/lang/Object;
    .end local v4    # "listChoices":Ljava/util/List;, "Ljava/util/List<*>;"
    goto :goto_0

    .line 466
    .restart local v2    # "txtRecord":Ljava/lang/String;
    .restart local v3    # "rawChoices":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    .end local v2    # "txtRecord":Ljava/lang/String;
    .end local v3    # "rawChoices":Ljava/lang/Object;
    :cond_2
    return-object v0
.end method

.method private resolve()V
    .locals 3

    .line 361
    iget-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->resolving:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->shutdown:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lio/grpc/internal/DnsNameResolver;->cacheRefreshRequired()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->resolving:Z

    .line 365
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/DnsNameResolver$Resolve;

    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver;->listener:Lio/grpc/NameResolver$Listener2;

    invoke-direct {v1, p0, v2}, Lio/grpc/internal/DnsNameResolver$Resolve;-><init>(Lio/grpc/internal/DnsNameResolver;Lio/grpc/NameResolver$Listener2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 366
    return-void

    .line 362
    :cond_1
    :goto_0
    return-void
.end method

.method static resolveAll(Lio/grpc/internal/DnsNameResolver$AddressResolver;Lio/grpc/internal/DnsNameResolver$ResourceResolver;ZZLjava/lang/String;)Lio/grpc/internal/DnsNameResolver$ResolutionResults;
    .locals 15
    .param p0, "addressResolver"    # Lio/grpc/internal/DnsNameResolver$AddressResolver;
    .param p1, "resourceResolver"    # Lio/grpc/internal/DnsNameResolver$ResourceResolver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "requestSrvRecords"    # Z
    .param p3, "requestTxtRecords"    # Z
    .param p4, "name"    # Ljava/lang/String;

    .line 396
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 397
    .local v4, "addresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/InetAddress;>;"
    const/4 v5, 0x0

    .line 398
    .local v5, "addressesException":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 399
    .local v6, "balancerAddresses":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    const/4 v7, 0x0

    .line 400
    .local v7, "balancerAddressesException":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 401
    .local v8, "txtRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 404
    .local v9, "txtRecordsException":Ljava/lang/Exception;
    :try_start_0
    invoke-interface {p0, v3}, Lio/grpc/internal/DnsNameResolver$AddressResolver;->resolveAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 407
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    move-object v5, v0

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v2, :cond_4

    .line 409
    if-eqz p2, :cond_0

    .line 411
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_grpclb._tcp."

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-interface {v2, p0, v0}, Lio/grpc/internal/DnsNameResolver$ResourceResolver;->resolveSrv(Lio/grpc/internal/DnsNameResolver$AddressResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v0

    .line 415
    goto :goto_1

    .line 413
    :catch_1
    move-exception v0

    .line 414
    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v7, v0

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    if-eqz p3, :cond_4

    .line 418
    const/4 v0, 0x0

    const/4 v10, 0x1

    if-eqz p2, :cond_2

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v11, 0x1

    .line 420
    .local v11, "balancerLookupFailedOrNotAttempted":Z
    :goto_3
    if-eqz v5, :cond_3

    if-eqz v11, :cond_3

    const/4 v0, 0x1

    :cond_3
    move v10, v0

    .line 423
    .local v10, "dontResolveTxt":Z
    if-nez v10, :cond_4

    .line 425
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_grpc_config."

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/grpc/internal/DnsNameResolver$ResourceResolver;->resolveTxt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v0

    .line 428
    goto :goto_4

    .line 426
    :catch_2
    move-exception v0

    .line 427
    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v9, v0

    .line 433
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "dontResolveTxt":Z
    .end local v11    # "balancerLookupFailedOrNotAttempted":Z
    :cond_4
    :goto_4
    const-string v10, "ServiceConfig resolution failure"

    const-string v11, "Balancer resolution failure"

    const-string v12, "Address resolution failure"

    if-eqz v5, :cond_9

    if-nez v7, :cond_5

    .line 434
    :try_start_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_5

    .line 435
    :cond_5
    invoke-static {v5}, Lcom/google/common/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 436
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v4    # "addresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/InetAddress;>;"
    .end local v5    # "addressesException":Ljava/lang/Exception;
    .end local v6    # "balancerAddresses":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    .end local v7    # "balancerAddressesException":Ljava/lang/Exception;
    .end local v8    # "txtRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "txtRecordsException":Ljava/lang/Exception;
    .end local p0    # "addressResolver":Lio/grpc/internal/DnsNameResolver$AddressResolver;
    .end local p1    # "resourceResolver":Lio/grpc/internal/DnsNameResolver$ResourceResolver;
    .end local p2    # "requestSrvRecords":Z
    .end local p3    # "requestTxtRecords":Z
    .end local p4    # "name":Ljava/lang/String;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 439
    .restart local v4    # "addresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/InetAddress;>;"
    .restart local v5    # "addressesException":Ljava/lang/Exception;
    .restart local v6    # "balancerAddresses":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    .restart local v7    # "balancerAddressesException":Ljava/lang/Exception;
    .restart local v8    # "txtRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "txtRecordsException":Ljava/lang/Exception;
    .restart local p0    # "addressResolver":Lio/grpc/internal/DnsNameResolver$AddressResolver;
    .restart local p1    # "resourceResolver":Lio/grpc/internal/DnsNameResolver$ResourceResolver;
    .restart local p2    # "requestSrvRecords":Z
    .restart local p3    # "requestTxtRecords":Z
    .restart local p4    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_6

    .line 440
    sget-object v13, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v13, v14, v12, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    :cond_6
    if-eqz v7, :cond_7

    .line 443
    sget-object v12, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v12, v13, v11, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 445
    :cond_7
    if-eqz v9, :cond_8

    .line 446
    sget-object v11, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12, v10, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    throw v0

    .line 439
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    .line 440
    sget-object v0, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v13, v12, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    :cond_a
    if-eqz v7, :cond_b

    .line 443
    sget-object v0, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v12, v11, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 445
    :cond_b
    if-eqz v9, :cond_c

    .line 446
    sget-object v0, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v11, v10, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 449
    :cond_c
    new-instance v0, Lio/grpc/internal/DnsNameResolver$ResolutionResults;

    invoke-direct {v0, v4, v8, v6}, Lio/grpc/internal/DnsNameResolver$ResolutionResults;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method static shouldUseJndi(ZZLjava/lang/String;)Z
    .locals 5
    .param p0, "jndiEnabled"    # Z
    .param p1, "jndiLocalhostEnabled"    # Z
    .param p2, "target"    # Ljava/lang/String;

    .line 730
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 731
    return v0

    .line 733
    :cond_0
    const-string v1, "localhost"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    return p1

    .line 737
    :cond_1
    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 738
    return v0

    .line 742
    :cond_2
    const/4 v1, 0x1

    .line 743
    .local v1, "alldigits":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 744
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 745
    .local v3, "c":C
    const/16 v4, 0x2e

    if-eq v3, v4, :cond_4

    .line 746
    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v1, v4

    .line 743
    .end local v3    # "c":C
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 749
    .end local v2    # "i":I
    :cond_5
    xor-int/lit8 v0, v1, 0x1

    return v0
.end method


# virtual methods
.method final getPort()I
    .locals 1

    .line 386
    iget v0, p0, Lio/grpc/internal/DnsNameResolver;->port:I

    return v0
.end method

.method public getServiceAuthority()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public refresh()V
    .locals 2

    .line 211
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->listener:Lio/grpc/NameResolver$Listener2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 212
    invoke-direct {p0}, Lio/grpc/internal/DnsNameResolver;->resolve()V

    .line 213
    return-void
.end method

.method setAddressResolver(Lio/grpc/internal/DnsNameResolver$AddressResolver;)V
    .locals 0
    .param p1, "addressResolver"    # Lio/grpc/internal/DnsNameResolver$AddressResolver;

    .line 607
    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver;->addressResolver:Lio/grpc/internal/DnsNameResolver$AddressResolver;

    .line 608
    return-void
.end method

.method setResourceResolver(Lio/grpc/internal/DnsNameResolver$ResourceResolver;)V
    .locals 1
    .param p1, "resourceResolver"    # Lio/grpc/internal/DnsNameResolver$ResourceResolver;

    .line 612
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->resourceResolver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 613
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 376
    iget-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->shutdown:Z

    if-eqz v0, :cond_0

    .line 377
    return-void

    .line 379
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->shutdown:Z

    .line 380
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lio/grpc/internal/DnsNameResolver;->usingExecutorResource:Z

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver;->executorResource:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {v1, v0}, Lio/grpc/internal/SharedResourceHolder;->release(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/Executor;

    .line 383
    :cond_1
    return-void
.end method

.method public start(Lio/grpc/NameResolver$Listener2;)V
    .locals 2
    .param p1, "listener"    # Lio/grpc/NameResolver$Listener2;

    .line 201
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->listener:Lio/grpc/NameResolver$Listener2;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 202
    iget-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->usingExecutorResource:Z

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executorResource:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {v0}, Lio/grpc/internal/SharedResourceHolder;->get(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/Executor;

    .line 205
    :cond_1
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/NameResolver$Listener2;

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->listener:Lio/grpc/NameResolver$Listener2;

    .line 206
    invoke-direct {p0}, Lio/grpc/internal/DnsNameResolver;->resolve()V

    .line 207
    return-void
.end method
