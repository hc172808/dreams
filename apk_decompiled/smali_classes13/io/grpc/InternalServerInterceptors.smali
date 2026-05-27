.class public final Lio/grpc/InternalServerInterceptors;
.super Ljava/lang/Object;
.source "InternalServerInterceptors.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static interceptCallHandler(Lio/grpc/ServerInterceptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerCallHandler;
    .locals 1
    .param p0, "interceptor"    # Lio/grpc/ServerInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ServerInterceptor;",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 26
    .local p1, "callHandler":Lio/grpc/ServerCallHandler;, "Lio/grpc/ServerCallHandler<TReqT;TRespT;>;"
    invoke-static {p0, p1}, Lio/grpc/ServerInterceptors$InterceptCallHandler;->create(Lio/grpc/ServerInterceptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerInterceptors$InterceptCallHandler;

    move-result-object v0

    return-object v0
.end method

.method public static interceptCallHandlerCreate(Lio/grpc/ServerInterceptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerCallHandler;
    .locals 1
    .param p0, "interceptor"    # Lio/grpc/ServerInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ServerInterceptor;",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 38
    .local p1, "callHandler":Lio/grpc/ServerCallHandler;, "Lio/grpc/ServerCallHandler<TReqT;TRespT;>;"
    invoke-static {p0, p1}, Lio/grpc/ServerInterceptors$InterceptCallHandler;->create(Lio/grpc/ServerInterceptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerInterceptors$InterceptCallHandler;

    move-result-object v0

    return-object v0
.end method

.method public static wrapMethod(Lio/grpc/ServerMethodDefinition;Lio/grpc/MethodDescriptor;)Lio/grpc/ServerMethodDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OrigReqT:",
            "Ljava/lang/Object;",
            "OrigRespT:",
            "Ljava/lang/Object;",
            "WrapReqT:",
            "Ljava/lang/Object;",
            "WrapRespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ServerMethodDefinition<",
            "TOrigReqT;TOrigRespT;>;",
            "Lio/grpc/MethodDescriptor<",
            "TWrapReqT;TWrapRespT;>;)",
            "Lio/grpc/ServerMethodDefinition<",
            "TWrapReqT;TWrapRespT;>;"
        }
    .end annotation

    .line 33
    .local p0, "definition":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<TOrigReqT;TOrigRespT;>;"
    .local p1, "wrappedMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TWrapReqT;TWrapRespT;>;"
    invoke-static {p0, p1}, Lio/grpc/ServerInterceptors;->wrapMethod(Lio/grpc/ServerMethodDefinition;Lio/grpc/MethodDescriptor;)Lio/grpc/ServerMethodDefinition;

    move-result-object v0

    return-object v0
.end method
