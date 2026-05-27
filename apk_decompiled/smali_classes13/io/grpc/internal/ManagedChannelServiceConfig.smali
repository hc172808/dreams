.class final Lio/grpc/internal/ManagedChannelServiceConfig;
.super Ljava/lang/Object;
.source "ManagedChannelServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    }
.end annotation


# instance fields
.field private final loadBalancingConfig:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final retryThrottling:Lio/grpc/internal/RetriableStream$Throttle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lio/grpc/internal/RetriableStream$Throttle;Ljava/lang/Object;)V
    .locals 1
    .param p3, "retryThrottling"    # Lio/grpc/internal/RetriableStream$Throttle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "loadBalancingConfig"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;",
            ">;",
            "Lio/grpc/internal/RetriableStream$Throttle;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 51
    .local p1, "serviceMethodMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;>;"
    .local p2, "serviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMethodMap:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMap:Ljava/util/Map;

    .line 54
    iput-object p3, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->retryThrottling:Lio/grpc/internal/RetriableStream$Throttle;

    .line 55
    iput-object p4, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->loadBalancingConfig:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method static empty()Lio/grpc/internal/ManagedChannelServiceConfig;
    .locals 4

    .line 60
    new-instance v0, Lio/grpc/internal/ManagedChannelServiceConfig;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lio/grpc/internal/ManagedChannelServiceConfig;-><init>(Ljava/util/Map;Ljava/util/Map;Lio/grpc/internal/RetriableStream$Throttle;Ljava/lang/Object;)V

    return-object v0
.end method

.method static fromServiceConfig(Ljava/util/Map;ZIILjava/lang/Object;)Lio/grpc/internal/ManagedChannelServiceConfig;
    .locals 19
    .param p1, "retryEnabled"    # Z
    .param p2, "maxRetryAttemptsLimit"    # I
    .param p3, "maxHedgedAttemptsLimit"    # I
    .param p4, "loadBalancingConfig"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;ZII",
            "Ljava/lang/Object;",
            ")",
            "Lio/grpc/internal/ManagedChannelServiceConfig;"
        }
    .end annotation

    .line 77
    .local p0, "serviceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    move/from16 v0, p1

    move-object/from16 v1, p4

    const/4 v2, 0x0

    .line 78
    .local v2, "retryThrottling":Lio/grpc/internal/RetriableStream$Throttle;
    if-eqz v0, :cond_0

    .line 79
    invoke-static/range {p0 .. p0}, Lio/grpc/internal/ServiceConfigUtil;->getThrottlePolicy(Ljava/util/Map;)Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v2

    .line 81
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v3, "serviceMethodMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v4, "serviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;>;"
    nop

    .line 87
    invoke-static/range {p0 .. p0}, Lio/grpc/internal/ServiceConfigUtil;->getMethodConfigFromServiceConfig(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    .line 89
    .local v5, "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    if-nez v5, :cond_1

    .line 91
    new-instance v6, Lio/grpc/internal/ManagedChannelServiceConfig;

    invoke-direct {v6, v3, v4, v2, v1}, Lio/grpc/internal/ManagedChannelServiceConfig;-><init>(Ljava/util/Map;Ljava/util/Map;Lio/grpc/internal/RetriableStream$Throttle;Ljava/lang/Object;)V

    return-object v6

    .line 95
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 96
    .local v7, "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v8, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-direct {v8, v7, v0, v9, v10}, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;-><init>(Ljava/util/Map;ZII)V

    .line 99
    .local v8, "info":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    nop

    .line 100
    invoke-static {v7}, Lio/grpc/internal/ServiceConfigUtil;->getNameListFromMethodConfig(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    .line 102
    .local v11, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v12, 0x1

    if-eqz v11, :cond_2

    .line 103
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    .line 102
    :goto_1
    const-string v14, "no names in method config %s"

    invoke-static {v13, v14, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 104
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 105
    .local v14, "name":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {v14}, Lio/grpc/internal/ServiceConfigUtil;->getServiceFromName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    .line 106
    .local v15, "serviceName":Ljava/lang/String;
    invoke-static {v15}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v16

    xor-int/lit8 v0, v16, 0x1

    const-string v12, "missing service name"

    invoke-static {v0, v12}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 107
    invoke-static {v14}, Lio/grpc/internal/ServiceConfigUtil;->getMethodFromName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "methodName":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 110
    nop

    .line 111
    invoke-interface {v4, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const/16 v16, 0x1

    xor-int/lit8 v12, v12, 0x1

    .line 110
    move-object/from16 v17, v5

    .end local v5    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local v17, "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const-string v5, "Duplicate service %s"

    invoke-static {v12, v5, v15}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 112
    invoke-interface {v4, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x1

    goto :goto_3

    .line 115
    .end local v17    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .restart local v5    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :cond_3
    move-object/from16 v17, v5

    .end local v5    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .restart local v17    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-static {v15, v0}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "fullMethodName":Ljava/lang/String;
    nop

    .line 117
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const/16 v16, 0x1

    xor-int/lit8 v12, v12, 0x1

    .line 116
    move-object/from16 v18, v0

    .end local v0    # "methodName":Ljava/lang/String;
    .local v18, "methodName":Ljava/lang/String;
    const-string v0, "Duplicate method name %s"

    invoke-static {v12, v0, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 120
    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v5    # "fullMethodName":Ljava/lang/String;
    .end local v14    # "name":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v15    # "serviceName":Ljava/lang/String;
    .end local v18    # "methodName":Ljava/lang/String;
    :goto_3
    move/from16 v0, p1

    move-object/from16 v5, v17

    const/4 v12, 0x1

    goto :goto_2

    .line 104
    .end local v17    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local v5, "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :cond_4
    move-object/from16 v17, v5

    .line 123
    .end local v5    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .end local v7    # "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v8    # "info":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    .end local v11    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .restart local v17    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    move/from16 v0, p1

    goto/16 :goto_0

    .line 125
    .end local v17    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .restart local v5    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :cond_5
    new-instance v0, Lio/grpc/internal/ManagedChannelServiceConfig;

    invoke-direct {v0, v3, v4, v2, v1}, Lio/grpc/internal/ManagedChannelServiceConfig;-><init>(Ljava/util/Map;Ljava/util/Map;Lio/grpc/internal/RetriableStream$Throttle;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 156
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 157
    return v0

    .line 159
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 162
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 163
    .local v2, "that":Lio/grpc/internal/ManagedChannelServiceConfig;
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMethodMap:Ljava/util/Map;

    iget-object v4, v2, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMethodMap:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMap:Ljava/util/Map;

    iget-object v4, v2, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMap:Ljava/util/Map;

    .line 164
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->retryThrottling:Lio/grpc/internal/RetriableStream$Throttle;

    iget-object v4, v2, Lio/grpc/internal/ManagedChannelServiceConfig;->retryThrottling:Lio/grpc/internal/RetriableStream$Throttle;

    .line 165
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->loadBalancingConfig:Ljava/lang/Object;

    iget-object v4, v2, Lio/grpc/internal/ManagedChannelServiceConfig;->loadBalancingConfig:Ljava/lang/Object;

    .line 166
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    .line 160
    .end local v2    # "that":Lio/grpc/internal/ManagedChannelServiceConfig;
    :cond_3
    :goto_1
    return v1
.end method

.method getLoadBalancingConfig()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 146
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->loadBalancingConfig:Ljava/lang/Object;

    return-object v0
.end method

.method getRetryThrottling()Lio/grpc/internal/RetriableStream$Throttle;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 151
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->retryThrottling:Lio/grpc/internal/RetriableStream$Throttle;

    return-object v0
.end method

.method getServiceMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMap:Ljava/util/Map;

    return-object v0
.end method

.method getServiceMethodMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMethodMap:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 171
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMethodMap:Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMap:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->retryThrottling:Lio/grpc/internal/RetriableStream$Throttle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->loadBalancingConfig:Ljava/lang/Object;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 176
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMethodMap:Ljava/util/Map;

    .line 177
    const-string v2, "serviceMethodMap"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMap:Ljava/util/Map;

    .line 178
    const-string v2, "serviceMap"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->retryThrottling:Lio/grpc/internal/RetriableStream$Throttle;

    .line 179
    const-string v2, "retryThrottling"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->loadBalancingConfig:Ljava/lang/Object;

    .line 180
    const-string v2, "loadBalancingConfig"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    return-object v0
.end method
