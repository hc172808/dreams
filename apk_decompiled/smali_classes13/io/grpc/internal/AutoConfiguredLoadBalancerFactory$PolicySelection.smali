.class final Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;
.super Ljava/lang/Object;
.source "AutoConfiguredLoadBalancerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PolicySelection"
.end annotation


# instance fields
.field final config:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final provider:Lio/grpc/LoadBalancerProvider;

.field final rawConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/LoadBalancerProvider;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1
    .param p1, "provider"    # Lio/grpc/LoadBalancerProvider;
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "config"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/LoadBalancerProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 301
    .local p2, "rawConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const-string v0, "provider"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancerProvider;

    iput-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->provider:Lio/grpc/LoadBalancerProvider;

    .line 303
    iput-object p2, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->rawConfig:Ljava/util/Map;

    .line 304
    iput-object p3, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->config:Ljava/lang/Object;

    .line 305
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 309
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 310
    return v0

    .line 312
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 315
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;

    .line 316
    .local v2, "that":Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;
    iget-object v3, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->provider:Lio/grpc/LoadBalancerProvider;

    iget-object v4, v2, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->provider:Lio/grpc/LoadBalancerProvider;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->rawConfig:Ljava/util/Map;

    iget-object v4, v2, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->rawConfig:Ljava/util/Map;

    .line 317
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->config:Ljava/lang/Object;

    iget-object v4, v2, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->config:Ljava/lang/Object;

    .line 318
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    .line 313
    .end local v2    # "that":Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 323
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->provider:Lio/grpc/LoadBalancerProvider;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->rawConfig:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->config:Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 328
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->provider:Lio/grpc/LoadBalancerProvider;

    .line 329
    const-string v2, "provider"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->rawConfig:Ljava/util/Map;

    .line 330
    const-string v2, "rawConfig"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->config:Ljava/lang/Object;

    .line 331
    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    return-object v0
.end method
