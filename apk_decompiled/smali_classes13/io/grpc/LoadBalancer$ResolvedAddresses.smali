.class public final Lio/grpc/LoadBalancer$ResolvedAddresses;
.super Ljava/lang/Object;
.source "LoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/LoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResolvedAddresses"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;
    }
.end annotation


# instance fields
.field private final addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final attributes:Lio/grpc/Attributes;

.field private final loadBalancingPolicyConfig:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Lio/grpc/Attributes;Ljava/lang/Object;)V
    .locals 2
    .param p2, "attributes"    # Lio/grpc/Attributes;
    .param p3, "loadBalancingPolicyConfig"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;",
            "Lio/grpc/Attributes;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 187
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    .line 189
    const-string v1, "addresses"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->addresses:Ljava/util/List;

    .line 190
    const-string v0, "attributes"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Attributes;

    iput-object v0, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->attributes:Lio/grpc/Attributes;

    .line 191
    iput-object p3, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->loadBalancingPolicyConfig:Ljava/lang/Object;

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lio/grpc/Attributes;Ljava/lang/Object;Lio/grpc/LoadBalancer$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lio/grpc/Attributes;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lio/grpc/LoadBalancer$1;

    .line 176
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/LoadBalancer$ResolvedAddresses;-><init>(Ljava/util/List;Lio/grpc/Attributes;Ljava/lang/Object;)V

    return-void
.end method

.method public static newBuilder()Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;
    .locals 1

    .line 200
    new-instance v0, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    invoke-direct {v0}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 314
    instance-of v0, p1, Lio/grpc/LoadBalancer$ResolvedAddresses;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 315
    return v1

    .line 317
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 318
    .local v0, "that":Lio/grpc/LoadBalancer$ResolvedAddresses;
    iget-object v2, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->addresses:Ljava/util/List;

    iget-object v3, v0, Lio/grpc/LoadBalancer$ResolvedAddresses;->addresses:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->attributes:Lio/grpc/Attributes;

    iget-object v3, v0, Lio/grpc/LoadBalancer$ResolvedAddresses;->attributes:Lio/grpc/Attributes;

    .line 319
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->loadBalancingPolicyConfig:Ljava/lang/Object;

    iget-object v3, v0, Lio/grpc/LoadBalancer$ResolvedAddresses;->loadBalancingPolicyConfig:Ljava/lang/Object;

    .line 320
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 318
    :goto_0
    return v1
.end method

.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->addresses:Ljava/util/List;

    return-object v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 232
    iget-object v0, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->attributes:Lio/grpc/Attributes;

    return-object v0
.end method

.method public getLoadBalancingPolicyConfig()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 243
    iget-object v0, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->loadBalancingPolicyConfig:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 309
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->addresses:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->attributes:Lio/grpc/Attributes;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->loadBalancingPolicyConfig:Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBuilder()Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;
    .locals 2

    .line 209
    invoke-static {}, Lio/grpc/LoadBalancer$ResolvedAddresses;->newBuilder()Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->addresses:Ljava/util/List;

    .line 210
    invoke-virtual {v0, v1}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->attributes:Lio/grpc/Attributes;

    .line 211
    invoke-virtual {v0, v1}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->loadBalancingPolicyConfig:Ljava/lang/Object;

    .line 212
    invoke-virtual {v0, v1}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setLoadBalancingPolicyConfig(Ljava/lang/Object;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v0

    .line 209
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 300
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->addresses:Ljava/util/List;

    .line 301
    const-string v2, "addresses"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->attributes:Lio/grpc/Attributes;

    .line 302
    const-string v2, "attributes"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$ResolvedAddresses;->loadBalancingPolicyConfig:Ljava/lang/Object;

    .line 303
    const-string v2, "loadBalancingPolicyConfig"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    return-object v0
.end method
