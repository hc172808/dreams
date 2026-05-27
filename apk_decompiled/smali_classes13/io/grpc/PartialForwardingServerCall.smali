.class abstract Lio/grpc/PartialForwardingServerCall;
.super Lio/grpc/ServerCall;
.source "PartialForwardingServerCall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ServerCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    .local p0, "this":Lio/grpc/PartialForwardingServerCall;, "Lio/grpc/PartialForwardingServerCall<TReqT;TRespT;>;"
    invoke-direct {p0}, Lio/grpc/ServerCall;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 1
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 48
    .local p0, "this":Lio/grpc/PartialForwardingServerCall;, "Lio/grpc/PartialForwardingServerCall<TReqT;TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ServerCall;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 49
    return-void
.end method

.method protected abstract delegate()Lio/grpc/ServerCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ServerCall<",
            "**>;"
        }
    .end annotation
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 71
    .local p0, "this":Lio/grpc/PartialForwardingServerCall;, "Lio/grpc/PartialForwardingServerCall<TReqT;TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerCall;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 76
    .local p0, "this":Lio/grpc/PartialForwardingServerCall;, "Lio/grpc/PartialForwardingServerCall<TReqT;TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerCall;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 53
    .local p0, "this":Lio/grpc/PartialForwardingServerCall;, "Lio/grpc/PartialForwardingServerCall<TReqT;TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerCall;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 43
    .local p0, "this":Lio/grpc/PartialForwardingServerCall;, "Lio/grpc/PartialForwardingServerCall<TReqT;TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerCall;->isReady()Z

    move-result v0

    return v0
.end method

.method public request(I)V
    .locals 1
    .param p1, "numMessages"    # I

    .line 33
    .local p0, "this":Lio/grpc/PartialForwardingServerCall;, "Lio/grpc/PartialForwardingServerCall<TReqT;TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerCall;->request(I)V

    .line 34
    return-void
.end method

.method public sendHeaders(Lio/grpc/Metadata;)V
    .locals 1
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 38
    .local p0, "this":Lio/grpc/PartialForwardingServerCall;, "Lio/grpc/PartialForwardingServerCall<TReqT;TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerCall;->sendHeaders(Lio/grpc/Metadata;)V

    .line 39
    return-void
.end method

.method public setCompression(Ljava/lang/String;)V
    .locals 1
    .param p1, "compressor"    # Ljava/lang/String;

    .line 65
    .local p0, "this":Lio/grpc/PartialForwardingServerCall;, "Lio/grpc/PartialForwardingServerCall<TReqT;TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerCall;->setCompression(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 59
    .local p0, "this":Lio/grpc/PartialForwardingServerCall;, "Lio/grpc/PartialForwardingServerCall<TReqT;TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerCall;->setMessageCompression(Z)V

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    .local p0, "this":Lio/grpc/PartialForwardingServerCall;, "Lio/grpc/PartialForwardingServerCall<TReqT;TRespT;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
