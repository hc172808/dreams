.class public final Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;
.super Ljava/lang/Object;
.source "LoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/LoadBalancer$ResolvedAddresses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Lio/grpc/Attributes;

.field private loadBalancingPolicyConfig:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    iput-object v0, p0, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->attributes:Lio/grpc/Attributes;

    .line 257
    return-void
.end method


# virtual methods
.method public build()Lio/grpc/LoadBalancer$ResolvedAddresses;
    .locals 5

    .line 294
    new-instance v0, Lio/grpc/LoadBalancer$ResolvedAddresses;

    iget-object v1, p0, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->addresses:Ljava/util/List;

    iget-object v2, p0, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->attributes:Lio/grpc/Attributes;

    iget-object v3, p0, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->loadBalancingPolicyConfig:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/LoadBalancer$ResolvedAddresses;-><init>(Ljava/util/List;Lio/grpc/Attributes;Ljava/lang/Object;Lio/grpc/LoadBalancer$1;)V

    return-object v0
.end method

.method public setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)",
            "Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;"
        }
    .end annotation

    .line 265
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    iput-object p1, p0, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->addresses:Ljava/util/List;

    .line 266
    return-object p0
.end method

.method public setAttributes(Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;
    .locals 0
    .param p1, "attributes"    # Lio/grpc/Attributes;

    .line 276
    iput-object p1, p0, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->attributes:Lio/grpc/Attributes;

    .line 277
    return-object p0
.end method

.method public setLoadBalancingPolicyConfig(Ljava/lang/Object;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;
    .locals 0
    .param p1, "loadBalancingPolicyConfig"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 286
    iput-object p1, p0, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->loadBalancingPolicyConfig:Ljava/lang/Object;

    .line 287
    return-object p0
.end method
