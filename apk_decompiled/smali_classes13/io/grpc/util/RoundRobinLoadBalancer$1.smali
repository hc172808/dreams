.class Lio/grpc/util/RoundRobinLoadBalancer$1;
.super Ljava/lang/Object;
.source "RoundRobinLoadBalancer.java"

# interfaces
.implements Lio/grpc/LoadBalancer$SubchannelStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/util/RoundRobinLoadBalancer;->handleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/util/RoundRobinLoadBalancer;

.field final synthetic val$subchannel:Lio/grpc/LoadBalancer$Subchannel;


# direct methods
.method constructor <init>(Lio/grpc/util/RoundRobinLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/util/RoundRobinLoadBalancer;

    .line 106
    iput-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer$1;->this$0:Lio/grpc/util/RoundRobinLoadBalancer;

    iput-object p2, p0, Lio/grpc/util/RoundRobinLoadBalancer$1;->val$subchannel:Lio/grpc/LoadBalancer$Subchannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubchannelState(Lio/grpc/ConnectivityStateInfo;)V
    .locals 2
    .param p1, "state"    # Lio/grpc/ConnectivityStateInfo;

    .line 109
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$1;->this$0:Lio/grpc/util/RoundRobinLoadBalancer;

    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer$1;->val$subchannel:Lio/grpc/LoadBalancer$Subchannel;

    invoke-static {v0, v1, p1}, Lio/grpc/util/RoundRobinLoadBalancer;->access$000(Lio/grpc/util/RoundRobinLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V

    .line 110
    return-void
.end method
