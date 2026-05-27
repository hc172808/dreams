.class public final Lio/grpc/InternalClientInterceptors;
.super Ljava/lang/Object;
.source "InternalClientInterceptors.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrapClientInterceptor(Lio/grpc/ClientInterceptor;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/ClientInterceptor;
    .locals 1
    .param p0, "interceptor"    # Lio/grpc/ClientInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ClientInterceptor;",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TReqT;>;",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TRespT;>;)",
            "Lio/grpc/ClientInterceptor;"
        }
    .end annotation

    .line 30
    .local p1, "reqMarshaller":Lio/grpc/MethodDescriptor$Marshaller;, "Lio/grpc/MethodDescriptor$Marshaller<TReqT;>;"
    .local p2, "respMarshaller":Lio/grpc/MethodDescriptor$Marshaller;, "Lio/grpc/MethodDescriptor$Marshaller<TRespT;>;"
    invoke-static {p0, p1, p2}, Lio/grpc/ClientInterceptors;->wrapClientInterceptor(Lio/grpc/ClientInterceptor;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/ClientInterceptor;

    move-result-object v0

    return-object v0
.end method
