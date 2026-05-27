.class abstract Lio/grpc/PartialForwardingServerCallListener;
.super Lio/grpc/ServerCall$Listener;
.source "PartialForwardingServerCallListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ServerCall$Listener<",
        "TReqT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    .local p0, "this":Lio/grpc/PartialForwardingServerCallListener;, "Lio/grpc/PartialForwardingServerCallListener<TReqT;>;"
    invoke-direct {p0}, Lio/grpc/ServerCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract delegate()Lio/grpc/ServerCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ServerCall$Listener<",
            "*>;"
        }
    .end annotation
.end method

.method public onCancel()V
    .locals 1

    .line 40
    .local p0, "this":Lio/grpc/PartialForwardingServerCallListener;, "Lio/grpc/PartialForwardingServerCallListener<TReqT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCallListener;->delegate()Lio/grpc/ServerCall$Listener;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerCall$Listener;->onCancel()V

    .line 41
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 45
    .local p0, "this":Lio/grpc/PartialForwardingServerCallListener;, "Lio/grpc/PartialForwardingServerCallListener<TReqT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCallListener;->delegate()Lio/grpc/ServerCall$Listener;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerCall$Listener;->onComplete()V

    .line 46
    return-void
.end method

.method public onHalfClose()V
    .locals 1

    .line 35
    .local p0, "this":Lio/grpc/PartialForwardingServerCallListener;, "Lio/grpc/PartialForwardingServerCallListener<TReqT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCallListener;->delegate()Lio/grpc/ServerCall$Listener;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerCall$Listener;->onHalfClose()V

    .line 36
    return-void
.end method

.method public onReady()V
    .locals 1

    .line 50
    .local p0, "this":Lio/grpc/PartialForwardingServerCallListener;, "Lio/grpc/PartialForwardingServerCallListener<TReqT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCallListener;->delegate()Lio/grpc/ServerCall$Listener;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerCall$Listener;->onReady()V

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 55
    .local p0, "this":Lio/grpc/PartialForwardingServerCallListener;, "Lio/grpc/PartialForwardingServerCallListener<TReqT;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCallListener;->delegate()Lio/grpc/ServerCall$Listener;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
