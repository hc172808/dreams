.class abstract Lio/grpc/PartialForwardingClientCallListener;
.super Lio/grpc/ClientCall$Listener;
.source "PartialForwardingClientCallListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ClientCall$Listener<",
        "TRespT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    .local p0, "this":Lio/grpc/PartialForwardingClientCallListener;, "Lio/grpc/PartialForwardingClientCallListener<TRespT;>;"
    invoke-direct {p0}, Lio/grpc/ClientCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract delegate()Lio/grpc/ClientCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ClientCall$Listener<",
            "*>;"
        }
    .end annotation
.end method

.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 1
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 39
    .local p0, "this":Lio/grpc/PartialForwardingClientCallListener;, "Lio/grpc/PartialForwardingClientCallListener<TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingClientCallListener;->delegate()Lio/grpc/ClientCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientCall$Listener;->onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 40
    return-void
.end method

.method public onHeaders(Lio/grpc/Metadata;)V
    .locals 1
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 34
    .local p0, "this":Lio/grpc/PartialForwardingClientCallListener;, "Lio/grpc/PartialForwardingClientCallListener<TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingClientCallListener;->delegate()Lio/grpc/ClientCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall$Listener;->onHeaders(Lio/grpc/Metadata;)V

    .line 35
    return-void
.end method

.method public onReady()V
    .locals 1

    .line 44
    .local p0, "this":Lio/grpc/PartialForwardingClientCallListener;, "Lio/grpc/PartialForwardingClientCallListener<TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingClientCallListener;->delegate()Lio/grpc/ClientCall$Listener;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ClientCall$Listener;->onReady()V

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 49
    .local p0, "this":Lio/grpc/PartialForwardingClientCallListener;, "Lio/grpc/PartialForwardingClientCallListener<TRespT;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/PartialForwardingClientCallListener;->delegate()Lio/grpc/ClientCall$Listener;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
