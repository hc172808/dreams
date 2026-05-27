.class Lio/grpc/internal/SubchannelChannel$1;
.super Ljava/lang/Object;
.source "SubchannelChannel.java"

# interfaces
.implements Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/SubchannelChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/SubchannelChannel;


# direct methods
.method constructor <init>(Lio/grpc/internal/SubchannelChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/SubchannelChannel;

    .line 51
    iput-object p1, p0, Lio/grpc/internal/SubchannelChannel$1;->this$0:Lio/grpc/internal/SubchannelChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/internal/ClientTransport;
    .locals 2
    .param p1, "args"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 54
    iget-object v0, p0, Lio/grpc/internal/SubchannelChannel$1;->this$0:Lio/grpc/internal/SubchannelChannel;

    invoke-static {v0}, Lio/grpc/internal/SubchannelChannel;->access$000(Lio/grpc/internal/SubchannelChannel;)Lio/grpc/internal/InternalSubchannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/InternalSubchannel;->getTransport()Lio/grpc/internal/ClientTransport;

    move-result-object v0

    .line 55
    .local v0, "transport":Lio/grpc/internal/ClientTransport;
    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lio/grpc/internal/SubchannelChannel;->access$100()Lio/grpc/internal/FailingClientTransport;

    move-result-object v1

    return-object v1

    .line 58
    :cond_0
    return-object v0
.end method

.method public newRetriableStream(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Metadata;Lio/grpc/Context;)Lio/grpc/internal/ClientStream;
    .locals 2
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .param p3, "headers"    # Lio/grpc/Metadata;
    .param p4, "context"    # Lio/grpc/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;*>;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/Context;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    .line 65
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "OobChannel should not create retriable streams"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
