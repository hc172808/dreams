.class abstract Lio/grpc/PartialForwardingClientCall;
.super Lio/grpc/ClientCall;
.source "PartialForwardingClientCall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    .local p0, "this":Lio/grpc/PartialForwardingClientCall;, "Lio/grpc/PartialForwardingClientCall<TReqT;TRespT;>;"
    invoke-direct {p0}, Lio/grpc/ClientCall;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    .local p0, "this":Lio/grpc/PartialForwardingClientCall;, "Lio/grpc/PartialForwardingClientCall<TReqT;TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingClientCall;->delegate()Lio/grpc/ClientCall;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method

.method protected abstract delegate()Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ClientCall<",
            "**>;"
        }
    .end annotation
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 59
    .local p0, "this":Lio/grpc/PartialForwardingClientCall;, "Lio/grpc/PartialForwardingClientCall<TReqT;TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingClientCall;->delegate()Lio/grpc/ClientCall;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ClientCall;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public halfClose()V
    .locals 1

    .line 44
    .local p0, "this":Lio/grpc/PartialForwardingClientCall;, "Lio/grpc/PartialForwardingClientCall<TReqT;TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingClientCall;->delegate()Lio/grpc/ClientCall;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ClientCall;->halfClose()V

    .line 45
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 54
    .local p0, "this":Lio/grpc/PartialForwardingClientCall;, "Lio/grpc/PartialForwardingClientCall<TReqT;TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingClientCall;->delegate()Lio/grpc/ClientCall;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ClientCall;->isReady()Z

    move-result v0

    return v0
.end method

.method public request(I)V
    .locals 1
    .param p1, "numMessages"    # I

    .line 34
    .local p0, "this":Lio/grpc/PartialForwardingClientCall;, "Lio/grpc/PartialForwardingClientCall<TReqT;TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingClientCall;->delegate()Lio/grpc/ClientCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->request(I)V

    .line 35
    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 49
    .local p0, "this":Lio/grpc/PartialForwardingClientCall;, "Lio/grpc/PartialForwardingClientCall<TReqT;TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingClientCall;->delegate()Lio/grpc/ClientCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->setMessageCompression(Z)V

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    .local p0, "this":Lio/grpc/PartialForwardingClientCall;, "Lio/grpc/PartialForwardingClientCall<TReqT;TRespT;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/PartialForwardingClientCall;->delegate()Lio/grpc/ClientCall;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
