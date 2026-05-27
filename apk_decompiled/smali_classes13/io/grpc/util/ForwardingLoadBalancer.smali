.class public abstract Lio/grpc/util/ForwardingLoadBalancer;
.super Lio/grpc/LoadBalancer;
.source "ForwardingLoadBalancer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/grpc/LoadBalancer;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandleEmptyAddressListFromNameResolution()Z
    .locals 1

    .line 68
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancer;->delegate()Lio/grpc/LoadBalancer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer;->canHandleEmptyAddressListFromNameResolution()Z

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lio/grpc/LoadBalancer;
.end method

.method public handleNameResolutionError(Lio/grpc/Status;)V
    .locals 1
    .param p1, "error"    # Lio/grpc/Status;

    .line 51
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancer;->delegate()Lio/grpc/LoadBalancer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    .line 52
    return-void
.end method

.method public handleResolvedAddressGroups(Ljava/util/List;Lio/grpc/Attributes;)V
    .locals 1
    .param p2, "attributes"    # Lio/grpc/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;",
            "Lio/grpc/Attributes;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    .local p1, "servers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancer;->delegate()Lio/grpc/LoadBalancer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer;->handleResolvedAddressGroups(Ljava/util/List;Lio/grpc/Attributes;)V

    .line 42
    return-void
.end method

.method public handleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V
    .locals 1
    .param p1, "resolvedAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 46
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancer;->delegate()Lio/grpc/LoadBalancer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer;->handleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V

    .line 47
    return-void
.end method

.method public handleSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 1
    .param p1, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;
    .param p2, "stateInfo"    # Lio/grpc/ConnectivityStateInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancer;->delegate()Lio/grpc/LoadBalancer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer;->handleSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V

    .line 59
    return-void
.end method

.method public requestConnection()V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancer;->delegate()Lio/grpc/LoadBalancer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer;->requestConnection()V

    .line 74
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancer;->delegate()Lio/grpc/LoadBalancer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer;->shutdown()V

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 78
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancer;->delegate()Lio/grpc/LoadBalancer;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
