.class Lio/grpc/ClientInterceptors$1$1;
.super Lio/grpc/PartialForwardingClientCall;
.source "ClientInterceptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/ClientInterceptors$1;->interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/PartialForwardingClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/ClientInterceptors$1;

.field final synthetic val$method:Lio/grpc/MethodDescriptor;

.field final synthetic val$wrappedCall:Lio/grpc/ClientCall;


# direct methods
.method constructor <init>(Lio/grpc/ClientInterceptors$1;Lio/grpc/ClientCall;Lio/grpc/MethodDescriptor;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/ClientInterceptors$1;

    .line 110
    iput-object p1, p0, Lio/grpc/ClientInterceptors$1$1;->this$0:Lio/grpc/ClientInterceptors$1;

    iput-object p2, p0, Lio/grpc/ClientInterceptors$1$1;->val$wrappedCall:Lio/grpc/ClientCall;

    iput-object p3, p0, Lio/grpc/ClientInterceptors$1$1;->val$method:Lio/grpc/MethodDescriptor;

    invoke-direct {p0}, Lio/grpc/PartialForwardingClientCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected delegate()Lio/grpc/ClientCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ClientCall<",
            "**>;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lio/grpc/ClientInterceptors$1$1;->val$wrappedCall:Lio/grpc/ClientCall;

    return-object v0
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 130
    .local p1, "message":Ljava/lang/Object;, "TReqT;"
    iget-object v0, p0, Lio/grpc/ClientInterceptors$1$1;->val$method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getRequestMarshaller()Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/MethodDescriptor$Marshaller;->stream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 131
    .local v0, "bytes":Ljava/io/InputStream;
    iget-object v1, p0, Lio/grpc/ClientInterceptors$1$1;->this$0:Lio/grpc/ClientInterceptors$1;

    iget-object v1, v1, Lio/grpc/ClientInterceptors$1;->val$reqMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    invoke-interface {v1, v0}, Lio/grpc/MethodDescriptor$Marshaller;->parse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 132
    .local v1, "wReq":Ljava/lang/Object;, "TWReqT;"
    iget-object v2, p0, Lio/grpc/ClientInterceptors$1$1;->val$wrappedCall:Lio/grpc/ClientCall;

    invoke-virtual {v2, v1}, Lio/grpc/ClientCall;->sendMessage(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 2
    .param p2, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 113
    .local p1, "responseListener":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    iget-object v0, p0, Lio/grpc/ClientInterceptors$1$1;->val$wrappedCall:Lio/grpc/ClientCall;

    new-instance v1, Lio/grpc/ClientInterceptors$1$1$1;

    invoke-direct {v1, p0, p1}, Lio/grpc/ClientInterceptors$1$1$1;-><init>(Lio/grpc/ClientInterceptors$1$1;Lio/grpc/ClientCall$Listener;)V

    invoke-virtual {v0, v1, p2}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    .line 126
    return-void
.end method
