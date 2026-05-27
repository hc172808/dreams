.class public final Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor;
.super Ljava/lang/Object;
.source "TransmitStatusRuntimeExceptionInterceptor.java"

# interfaces
.implements Lio/grpc/ServerInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static instance()Lio/grpc/ServerInterceptor;
    .locals 1

    .line 53
    new-instance v0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor;

    invoke-direct {v0}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor;-><init>()V

    return-object v0
.end method


# virtual methods
.method public interceptCall(Lio/grpc/ServerCall;Lio/grpc/Metadata;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerCall$Listener;
    .locals 3
    .param p2, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ServerCall<",
            "TReqT;TRespT;>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerCall$Listener<",
            "TReqT;>;"
        }
    .end annotation

    .line 59
    .local p1, "call":Lio/grpc/ServerCall;, "Lio/grpc/ServerCall<TReqT;TRespT;>;"
    .local p3, "next":Lio/grpc/ServerCallHandler;, "Lio/grpc/ServerCallHandler<TReqT;TRespT;>;"
    new-instance v0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;

    invoke-direct {v0, p1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;-><init>(Lio/grpc/ServerCall;)V

    .line 60
    .local v0, "serverCall":Lio/grpc/ServerCall;, "Lio/grpc/ServerCall<TReqT;TRespT;>;"
    invoke-interface {p3, v0, p2}, Lio/grpc/ServerCallHandler;->startCall(Lio/grpc/ServerCall;Lio/grpc/Metadata;)Lio/grpc/ServerCall$Listener;

    move-result-object v1

    .line 61
    .local v1, "listener":Lio/grpc/ServerCall$Listener;, "Lio/grpc/ServerCall$Listener<TReqT;>;"
    new-instance v2, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$1;

    invoke-direct {v2, p0, v1, v0}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$1;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor;Lio/grpc/ServerCall$Listener;Lio/grpc/ServerCall;)V

    return-object v2
.end method
