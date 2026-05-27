.class public final Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;
.super Ljava/lang/Object;
.source "AutoConfiguredLoadBalancerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$FailingPicker;,
        Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$EmptyPicker;,
        Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;,
        Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;,
        Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;,
        Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$NoopLoadBalancer;
    }
.end annotation


# instance fields
.field private final defaultPolicy:Ljava/lang/String;

.field private final registry:Lio/grpc/LoadBalancerRegistry;


# direct methods
.method constructor <init>(Lio/grpc/LoadBalancerRegistry;Ljava/lang/String;)V
    .locals 1
    .param p1, "registry"    # Lio/grpc/LoadBalancerRegistry;
    .param p2, "defaultPolicy"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "registry"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancerRegistry;

    iput-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->registry:Lio/grpc/LoadBalancerRegistry;

    .line 62
    const-string v0, "defaultPolicy"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->defaultPolicy:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultPolicy"    # Ljava/lang/String;

    .line 56
    invoke-static {}, Lio/grpc/LoadBalancerRegistry;->getDefaultRegistry()Lio/grpc/LoadBalancerRegistry;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;-><init>(Lio/grpc/LoadBalancerRegistry;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    .line 50
    iget-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->defaultPolicy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;)Lio/grpc/LoadBalancerRegistry;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    .line 50
    iget-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->registry:Lio/grpc/LoadBalancerRegistry;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;Ljava/lang/String;Ljava/lang/String;)Lio/grpc/LoadBalancerProvider;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->getProviderOrThrow(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/LoadBalancerProvider;

    move-result-object v0

    return-object v0
.end method

.method private getProviderOrThrow(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/LoadBalancerProvider;
    .locals 4
    .param p1, "policy"    # Ljava/lang/String;
    .param p2, "choiceReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->registry:Lio/grpc/LoadBalancerRegistry;

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancerRegistry;->getProvider(Ljava/lang/String;)Lio/grpc/LoadBalancerProvider;

    move-result-object v0

    .line 213
    .local v0, "provider":Lio/grpc/LoadBalancerProvider;
    if-eqz v0, :cond_0

    .line 217
    return-object v0

    .line 214
    :cond_0
    new-instance v1, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to load \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but it\'s unavailable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;-><init>(Ljava/lang/String;Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$1;)V

    throw v1
.end method


# virtual methods
.method public newLoadBalancer(Lio/grpc/LoadBalancer$Helper;)Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;
    .locals 1
    .param p1, "helper"    # Lio/grpc/LoadBalancer$Helper;

    .line 66
    new-instance v0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;-><init>(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;Lio/grpc/LoadBalancer$Helper;)V

    return-object v0
.end method

.method parseLoadBalancerPolicy(Ljava/util/Map;Lio/grpc/ChannelLogger;)Lio/grpc/NameResolver$ConfigOrError;
    .locals 9
    .param p2, "channelLogger"    # Lio/grpc/ChannelLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lio/grpc/ChannelLogger;",
            ")",
            "Lio/grpc/NameResolver$ConfigOrError;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 243
    .local p1, "serviceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    .line 244
    .local v0, "loadBalancerConfigs":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/ServiceConfigUtil$LbConfig;>;"
    if-eqz p1, :cond_0

    .line 245
    nop

    .line 246
    :try_start_0
    invoke-static {p1}, Lio/grpc/internal/ServiceConfigUtil;->getLoadBalancingConfigsFromServiceConfig(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 247
    .local v1, "rawLbConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-static {v1}, Lio/grpc/internal/ServiceConfigUtil;->unwrapLoadBalancingConfigList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 277
    .end local v0    # "loadBalancerConfigs":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/ServiceConfigUtil$LbConfig;>;"
    .end local v1    # "rawLbConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 249
    .restart local v0    # "loadBalancerConfigs":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/ServiceConfigUtil$LbConfig;>;"
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v1, "policiesTried":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/internal/ServiceConfigUtil$LbConfig;

    .line 252
    .local v3, "lbConfig":Lio/grpc/internal/ServiceConfigUtil$LbConfig;
    invoke-virtual {v3}, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->getPolicyName()Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "policy":Ljava/lang/String;
    iget-object v5, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->registry:Lio/grpc/LoadBalancerRegistry;

    invoke-virtual {v5, v4}, Lio/grpc/LoadBalancerRegistry;->getProvider(Ljava/lang/String;)Lio/grpc/LoadBalancerProvider;

    move-result-object v5

    .line 254
    .local v5, "provider":Lio/grpc/LoadBalancerProvider;
    if-nez v5, :cond_1

    .line 255
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v3    # "lbConfig":Lio/grpc/internal/ServiceConfigUtil$LbConfig;
    .end local v4    # "policy":Ljava/lang/String;
    .end local v5    # "provider":Lio/grpc/LoadBalancerProvider;
    goto :goto_1

    .line 257
    .restart local v3    # "lbConfig":Lio/grpc/internal/ServiceConfigUtil$LbConfig;
    .restart local v4    # "policy":Ljava/lang/String;
    .restart local v5    # "provider":Lio/grpc/LoadBalancerProvider;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 258
    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v6, "{0} specified by Service Config are not available"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {p2, v2, v6, v7}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_2
    nop

    .line 263
    invoke-virtual {v3}, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->getRawConfigValue()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v5, v2}, Lio/grpc/LoadBalancerProvider;->parseLoadBalancingPolicyConfig(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v2

    .line 264
    .local v2, "parsedLbPolicyConfig":Lio/grpc/NameResolver$ConfigOrError;
    invoke-virtual {v2}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 265
    return-object v2

    .line 267
    :cond_3
    new-instance v6, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;

    .line 269
    invoke-virtual {v3}, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->getRawConfigValue()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v2}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v6, v5, v7, v8}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;-><init>(Lio/grpc/LoadBalancerProvider;Ljava/util/Map;Ljava/lang/Object;)V

    .line 267
    invoke-static {v6}, Lio/grpc/NameResolver$ConfigOrError;->fromConfig(Ljava/lang/Object;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v6

    return-object v6

    .line 272
    .end local v2    # "parsedLbPolicyConfig":Lio/grpc/NameResolver$ConfigOrError;
    .end local v3    # "lbConfig":Lio/grpc/internal/ServiceConfigUtil$LbConfig;
    .end local v4    # "policy":Ljava/lang/String;
    .end local v5    # "provider":Lio/grpc/LoadBalancerProvider;
    :cond_4
    sget-object v2, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "None of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " specified by Service Config are available."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 272
    invoke-static {v2}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 278
    .end local v1    # "policiesTried":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_2
    sget-object v1, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    .line 279
    const-string v2, "can\'t parse load balancer configuration"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    .line 278
    invoke-static {v1}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v1

    return-object v1

    .line 276
    .local v0, "loadBalancerConfigs":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/ServiceConfigUtil$LbConfig;>;"
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method
