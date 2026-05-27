.class public abstract Lio/grpc/util/ForwardingLoadBalancerHelper;
.super Lio/grpc/LoadBalancer$Helper;
.source "ForwardingLoadBalancerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lio/grpc/LoadBalancer$Helper;-><init>()V

    return-void
.end method


# virtual methods
.method public createOobChannel(Lio/grpc/EquivalentAddressGroup;Ljava/lang/String;)Lio/grpc/ManagedChannel;
    .locals 1
    .param p1, "eag"    # Lio/grpc/EquivalentAddressGroup;
    .param p2, "authority"    # Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->createOobChannel(Lio/grpc/EquivalentAddressGroup;Ljava/lang/String;)Lio/grpc/ManagedChannel;

    move-result-object v0

    return-object v0
.end method

.method public createResolvingOobChannel(Ljava/lang/String;)Lio/grpc/ManagedChannel;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer$Helper;->createResolvingOobChannel(Ljava/lang/String;)Lio/grpc/ManagedChannel;

    move-result-object v0

    return-object v0
.end method

.method public createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;
    .locals 1
    .param p1, "args"    # Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    .line 51
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer$Helper;->createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v0

    return-object v0
.end method

.method public createSubchannel(Ljava/util/List;Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$Subchannel;
    .locals 1
    .param p2, "attrs"    # Lio/grpc/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;",
            "Lio/grpc/Attributes;",
            ")",
            "Lio/grpc/LoadBalancer$Subchannel;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    .local p1, "addrs":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->createSubchannel(Ljava/util/List;Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lio/grpc/LoadBalancer$Helper;
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelLogger()Lio/grpc/ChannelLogger;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getChannelLogger()Lio/grpc/ChannelLogger;

    move-result-object v0

    return-object v0
.end method

.method public getNameResolverArgs()Lio/grpc/NameResolver$Args;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getNameResolverArgs()Lio/grpc/NameResolver$Args;

    move-result-object v0

    return-object v0
.end method

.method public getNameResolverFactory()Lio/grpc/NameResolver$Factory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getNameResolverFactory()Lio/grpc/NameResolver$Factory;

    move-result-object v0

    return-object v0
.end method

.method public getNameResolverRegistry()Lio/grpc/NameResolverRegistry;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getNameResolverRegistry()Lio/grpc/NameResolverRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getSynchronizationContext()Lio/grpc/SynchronizationContext;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getSynchronizationContext()Lio/grpc/SynchronizationContext;

    move-result-object v0

    return-object v0
.end method

.method public refreshNameResolution()V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->refreshNameResolution()V

    .line 85
    return-void
.end method

.method public runSerialized(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer$Helper;->runSerialized(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 131
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 1
    .param p1, "newState"    # Lio/grpc/ConnectivityState;
    .param p2, "newPicker"    # Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 79
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 80
    return-void
.end method

.method public updateOobChannelAddresses(Lio/grpc/ManagedChannel;Lio/grpc/EquivalentAddressGroup;)V
    .locals 1
    .param p1, "channel"    # Lio/grpc/ManagedChannel;
    .param p2, "eag"    # Lio/grpc/EquivalentAddressGroup;

    .line 68
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->updateOobChannelAddresses(Lio/grpc/ManagedChannel;Lio/grpc/EquivalentAddressGroup;)V

    .line 69
    return-void
.end method

.method public updateSubchannelAddresses(Lio/grpc/LoadBalancer$Subchannel;Ljava/util/List;)V
    .locals 1
    .param p1, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/LoadBalancer$Subchannel;",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    .local p2, "addrs":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->updateSubchannelAddresses(Lio/grpc/LoadBalancer$Subchannel;Ljava/util/List;)V

    .line 59
    return-void
.end method
