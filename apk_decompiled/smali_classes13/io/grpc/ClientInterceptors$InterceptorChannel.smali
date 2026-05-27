.class Lio/grpc/ClientInterceptors$InterceptorChannel;
.super Lio/grpc/Channel;
.source "ClientInterceptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ClientInterceptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterceptorChannel"
.end annotation


# instance fields
.field private final channel:Lio/grpc/Channel;

.field private final interceptor:Lio/grpc/ClientInterceptor;


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/ClientInterceptor;)V
    .locals 1
    .param p1, "channel"    # Lio/grpc/Channel;
    .param p2, "interceptor"    # Lio/grpc/ClientInterceptor;

    .line 148
    invoke-direct {p0}, Lio/grpc/Channel;-><init>()V

    .line 149
    iput-object p1, p0, Lio/grpc/ClientInterceptors$InterceptorChannel;->channel:Lio/grpc/Channel;

    .line 150
    const-string v0, "interceptor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ClientInterceptor;

    iput-object v0, p0, Lio/grpc/ClientInterceptors$InterceptorChannel;->interceptor:Lio/grpc/ClientInterceptor;

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/ClientInterceptor;Lio/grpc/ClientInterceptors$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/Channel;
    .param p2, "x1"    # Lio/grpc/ClientInterceptor;
    .param p3, "x2"    # Lio/grpc/ClientInterceptors$1;

    .line 144
    invoke-direct {p0, p1, p2}, Lio/grpc/ClientInterceptors$InterceptorChannel;-><init>(Lio/grpc/Channel;Lio/grpc/ClientInterceptor;)V

    return-void
.end method


# virtual methods
.method public authority()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lio/grpc/ClientInterceptors$InterceptorChannel;->channel:Lio/grpc/Channel;

    invoke-virtual {v0}, Lio/grpc/Channel;->authority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;
    .locals 2
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 156
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/ClientInterceptors$InterceptorChannel;->interceptor:Lio/grpc/ClientInterceptor;

    iget-object v1, p0, Lio/grpc/ClientInterceptors$InterceptorChannel;->channel:Lio/grpc/Channel;

    invoke-interface {v0, p1, p2, v1}, Lio/grpc/ClientInterceptor;->interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;

    move-result-object v0

    return-object v0
.end method
