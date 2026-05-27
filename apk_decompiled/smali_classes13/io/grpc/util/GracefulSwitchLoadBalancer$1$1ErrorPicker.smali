.class Lio/grpc/util/GracefulSwitchLoadBalancer$1$1ErrorPicker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "GracefulSwitchLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/util/GracefulSwitchLoadBalancer$1;->handleNameResolutionError(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorPicker"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/util/GracefulSwitchLoadBalancer$1;

.field final synthetic val$error:Lio/grpc/Status;


# direct methods
.method constructor <init>(Lio/grpc/util/GracefulSwitchLoadBalancer$1;Lio/grpc/Status;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/util/GracefulSwitchLoadBalancer$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1$1ErrorPicker;->this$1:Lio/grpc/util/GracefulSwitchLoadBalancer$1;

    iput-object p2, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1$1ErrorPicker;->val$error:Lio/grpc/Status;

    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    return-void
.end method


# virtual methods
.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 1
    .param p1, "args"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 63
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1$1ErrorPicker;->val$error:Lio/grpc/Status;

    invoke-static {v0}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    const-class v0, Lio/grpc/util/GracefulSwitchLoadBalancer$1$1ErrorPicker;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1$1ErrorPicker;->val$error:Lio/grpc/Status;

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
