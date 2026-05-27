.class final Lio/grpc/internal/ManagedChannelImpl$ScParser;
.super Lio/grpc/NameResolver$ServiceConfigParser;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScParser"
.end annotation


# instance fields
.field private final autoLoadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

.field private final channelLogger:Lio/grpc/ChannelLogger;

.field private final maxHedgedAttemptsLimit:I

.field private final maxRetryAttemptsLimit:I

.field private final retryEnabled:Z


# direct methods
.method constructor <init>(ZIILio/grpc/internal/AutoConfiguredLoadBalancerFactory;Lio/grpc/ChannelLogger;)V
    .locals 1
    .param p1, "retryEnabled"    # Z
    .param p2, "maxRetryAttemptsLimit"    # I
    .param p3, "maxHedgedAttemptsLimit"    # I
    .param p4, "autoLoadBalancerFactory"    # Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;
    .param p5, "channelLogger"    # Lio/grpc/ChannelLogger;

    .line 1919
    invoke-direct {p0}, Lio/grpc/NameResolver$ServiceConfigParser;-><init>()V

    .line 1920
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImpl$ScParser;->retryEnabled:Z

    .line 1921
    iput p2, p0, Lio/grpc/internal/ManagedChannelImpl$ScParser;->maxRetryAttemptsLimit:I

    .line 1922
    iput p3, p0, Lio/grpc/internal/ManagedChannelImpl$ScParser;->maxHedgedAttemptsLimit:I

    .line 1923
    nop

    .line 1924
    const-string v0, "autoLoadBalancerFactory"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ScParser;->autoLoadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    .line 1925
    const-string v0, "channelLogger"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ChannelLogger;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ScParser;->channelLogger:Lio/grpc/ChannelLogger;

    .line 1926
    return-void
.end method


# virtual methods
.method public parseServiceConfig(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/NameResolver$ConfigOrError;"
        }
    .end annotation

    .line 1932
    .local p1, "rawServiceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ScParser;->autoLoadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$ScParser;->channelLogger:Lio/grpc/ChannelLogger;

    .line 1933
    invoke-virtual {v0, p1, v1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->parseLoadBalancerPolicy(Ljava/util/Map;Lio/grpc/ChannelLogger;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v0

    .line 1934
    .local v0, "choiceFromLoadBalancer":Lio/grpc/NameResolver$ConfigOrError;
    if-nez v0, :cond_0

    .line 1935
    const/4 v1, 0x0

    .local v1, "loadBalancingPolicySelection":Ljava/lang/Object;
    goto :goto_0

    .line 1936
    .end local v1    # "loadBalancingPolicySelection":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1937
    invoke-virtual {v0}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v1

    return-object v1

    .line 1939
    :cond_1
    invoke-virtual {v0}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v1

    .line 1941
    .restart local v1    # "loadBalancingPolicySelection":Ljava/lang/Object;
    :goto_0
    iget-boolean v2, p0, Lio/grpc/internal/ManagedChannelImpl$ScParser;->retryEnabled:Z

    iget v3, p0, Lio/grpc/internal/ManagedChannelImpl$ScParser;->maxRetryAttemptsLimit:I

    iget v4, p0, Lio/grpc/internal/ManagedChannelImpl$ScParser;->maxHedgedAttemptsLimit:I

    .line 1942
    invoke-static {p1, v2, v3, v4, v1}, Lio/grpc/internal/ManagedChannelServiceConfig;->fromServiceConfig(Ljava/util/Map;ZIILjava/lang/Object;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v2

    .line 1941
    invoke-static {v2}, Lio/grpc/NameResolver$ConfigOrError;->fromConfig(Ljava/lang/Object;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1948
    .end local v0    # "choiceFromLoadBalancer":Lio/grpc/NameResolver$ConfigOrError;
    .end local v1    # "loadBalancingPolicySelection":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1949
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    .line 1950
    const-string v2, "failed to parse service config"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    .line 1949
    invoke-static {v1}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v1

    return-object v1
.end method
