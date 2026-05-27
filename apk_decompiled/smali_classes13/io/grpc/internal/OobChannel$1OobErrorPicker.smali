.class final Lio/grpc/internal/OobChannel$1OobErrorPicker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "OobChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/OobChannel;->handleSubchannelStateChange(Lio/grpc/ConnectivityStateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OobErrorPicker"
.end annotation


# instance fields
.field final errorResult:Lio/grpc/LoadBalancer$PickResult;

.field final synthetic this$0:Lio/grpc/internal/OobChannel;

.field final synthetic val$newState:Lio/grpc/ConnectivityStateInfo;


# direct methods
.method constructor <init>(Lio/grpc/internal/OobChannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/OobChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lio/grpc/internal/OobChannel$1OobErrorPicker;->this$0:Lio/grpc/internal/OobChannel;

    iput-object p2, p0, Lio/grpc/internal/OobChannel$1OobErrorPicker;->val$newState:Lio/grpc/ConnectivityStateInfo;

    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    .line 266
    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getStatus()Lio/grpc/Status;

    move-result-object p2

    invoke-static {p2}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/internal/OobChannel$1OobErrorPicker;->errorResult:Lio/grpc/LoadBalancer$PickResult;

    return-void
.end method


# virtual methods
.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 1
    .param p1, "args"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 270
    iget-object v0, p0, Lio/grpc/internal/OobChannel$1OobErrorPicker;->errorResult:Lio/grpc/LoadBalancer$PickResult;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 275
    const-class v0, Lio/grpc/internal/OobChannel$1OobErrorPicker;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/OobChannel$1OobErrorPicker;->errorResult:Lio/grpc/LoadBalancer$PickResult;

    .line 276
    const-string v2, "errorResult"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    return-object v0
.end method
