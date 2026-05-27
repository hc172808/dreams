.class final Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;
.super Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;
.source "RoundRobinLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/RoundRobinLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EmptyPicker"
.end annotation


# instance fields
.field private final status:Lio/grpc/Status;


# direct methods
.method constructor <init>(Lio/grpc/Status;)V
    .locals 1
    .param p1, "status"    # Lio/grpc/Status;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;-><init>(Lio/grpc/util/RoundRobinLoadBalancer$1;)V

    .line 322
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Status;

    iput-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;->status:Lio/grpc/Status;

    .line 323
    return-void
.end method


# virtual methods
.method isEquivalentTo(Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)Z
    .locals 2
    .param p1, "picker"    # Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

    .line 332
    instance-of v0, p1, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;->status:Lio/grpc/Status;

    move-object v1, p1

    check-cast v1, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    iget-object v1, v1, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;->status:Lio/grpc/Status;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;->status:Lio/grpc/Status;

    .line 333
    invoke-virtual {v0}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    iget-object v0, v0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;->status:Lio/grpc/Status;

    invoke-virtual {v0}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0
.end method

.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 1
    .param p1, "args"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 327
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;->status:Lio/grpc/Status;

    invoke-virtual {v0}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/grpc/LoadBalancer$PickResult;->withNoResult()Lio/grpc/LoadBalancer$PickResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;->status:Lio/grpc/Status;

    invoke-static {v0}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 338
    const-class v0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;->status:Lio/grpc/Status;

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
