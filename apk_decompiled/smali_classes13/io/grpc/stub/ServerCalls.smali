.class public final Lio/grpc/stub/ServerCalls;
.super Ljava/lang/Object;
.source "ServerCalls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/ServerCalls$NoopStreamObserver;,
        Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;,
        Lio/grpc/stub/ServerCalls$StreamingRequestMethod;,
        Lio/grpc/stub/ServerCalls$UnaryRequestMethod;,
        Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;,
        Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;,
        Lio/grpc/stub/ServerCalls$BidiStreamingMethod;,
        Lio/grpc/stub/ServerCalls$ClientStreamingMethod;,
        Lio/grpc/stub/ServerCalls$ServerStreamingMethod;,
        Lio/grpc/stub/ServerCalls$UnaryMethod;
    }
.end annotation


# static fields
.field static final MISSING_REQUEST:Ljava/lang/String; = "Half-closed without a request"

.field static final TOO_MANY_REQUESTS:Ljava/lang/String; = "Too many requests"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static asyncBidiStreamingCall(Lio/grpc/stub/ServerCalls$BidiStreamingMethod;)Lio/grpc/ServerCallHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/stub/ServerCalls$BidiStreamingMethod<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 81
    .local p0, "method":Lio/grpc/stub/ServerCalls$BidiStreamingMethod;, "Lio/grpc/stub/ServerCalls$BidiStreamingMethod<TReqT;TRespT;>;"
    invoke-static {p0}, Lio/grpc/stub/ServerCalls;->asyncStreamingRequestCall(Lio/grpc/stub/ServerCalls$StreamingRequestMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v0

    return-object v0
.end method

.method public static asyncClientStreamingCall(Lio/grpc/stub/ServerCalls$ClientStreamingMethod;)Lio/grpc/ServerCallHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/stub/ServerCalls$ClientStreamingMethod<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 71
    .local p0, "method":Lio/grpc/stub/ServerCalls$ClientStreamingMethod;, "Lio/grpc/stub/ServerCalls$ClientStreamingMethod<TReqT;TRespT;>;"
    invoke-static {p0}, Lio/grpc/stub/ServerCalls;->asyncStreamingRequestCall(Lio/grpc/stub/ServerCalls$StreamingRequestMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v0

    return-object v0
.end method

.method public static asyncServerStreamingCall(Lio/grpc/stub/ServerCalls$ServerStreamingMethod;)Lio/grpc/ServerCallHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/stub/ServerCalls$ServerStreamingMethod<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 61
    .local p0, "method":Lio/grpc/stub/ServerCalls$ServerStreamingMethod;, "Lio/grpc/stub/ServerCalls$ServerStreamingMethod<TReqT;TRespT;>;"
    invoke-static {p0}, Lio/grpc/stub/ServerCalls;->asyncUnaryRequestCall(Lio/grpc/stub/ServerCalls$UnaryRequestMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v0

    return-object v0
.end method

.method private static asyncStreamingRequestCall(Lio/grpc/stub/ServerCalls$StreamingRequestMethod;)Lio/grpc/ServerCallHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/stub/ServerCalls$StreamingRequestMethod<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 295
    .local p0, "method":Lio/grpc/stub/ServerCalls$StreamingRequestMethod;, "Lio/grpc/stub/ServerCalls$StreamingRequestMethod<TReqT;TRespT;>;"
    new-instance v0, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;

    invoke-direct {v0, p0}, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;-><init>(Lio/grpc/stub/ServerCalls$StreamingRequestMethod;)V

    return-object v0
.end method

.method public static asyncUnaryCall(Lio/grpc/stub/ServerCalls$UnaryMethod;)Lio/grpc/ServerCallHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/stub/ServerCalls$UnaryMethod<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 51
    .local p0, "method":Lio/grpc/stub/ServerCalls$UnaryMethod;, "Lio/grpc/stub/ServerCalls$UnaryMethod<TReqT;TRespT;>;"
    invoke-static {p0}, Lio/grpc/stub/ServerCalls;->asyncUnaryRequestCall(Lio/grpc/stub/ServerCalls$UnaryRequestMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v0

    return-object v0
.end method

.method private static asyncUnaryRequestCall(Lio/grpc/stub/ServerCalls$UnaryRequestMethod;)Lio/grpc/ServerCallHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/stub/ServerCalls$UnaryRequestMethod<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 207
    .local p0, "method":Lio/grpc/stub/ServerCalls$UnaryRequestMethod;, "Lio/grpc/stub/ServerCalls$UnaryRequestMethod<TReqT;TRespT;>;"
    new-instance v0, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;

    invoke-direct {v0, p0}, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;-><init>(Lio/grpc/stub/ServerCalls$UnaryRequestMethod;)V

    return-object v0
.end method

.method public static asyncUnimplementedStreamingCall(Lio/grpc/MethodDescriptor;Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/stub/StreamObserver<",
            "*>;)",
            "Lio/grpc/stub/StreamObserver<",
            "TT;>;"
        }
    .end annotation

    .line 440
    .local p0, "methodDescriptor":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    .local p1, "responseObserver":Lio/grpc/stub/StreamObserver;, "Lio/grpc/stub/StreamObserver<*>;"
    invoke-static {p0, p1}, Lio/grpc/stub/ServerCalls;->asyncUnimplementedUnaryCall(Lio/grpc/MethodDescriptor;Lio/grpc/stub/StreamObserver;)V

    .line 441
    new-instance v0, Lio/grpc/stub/ServerCalls$NoopStreamObserver;

    invoke-direct {v0}, Lio/grpc/stub/ServerCalls$NoopStreamObserver;-><init>()V

    return-object v0
.end method

.method public static asyncUnimplementedUnaryCall(Lio/grpc/MethodDescriptor;Lio/grpc/stub/StreamObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/stub/StreamObserver<",
            "*>;)V"
        }
    .end annotation

    .line 422
    .local p0, "methodDescriptor":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    .local p1, "responseObserver":Lio/grpc/stub/StreamObserver;, "Lio/grpc/stub/StreamObserver<*>;"
    const-string v0, "methodDescriptor"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v0, "responseObserver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lio/grpc/Status;->UNIMPLEMENTED:Lio/grpc/Status;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 426
    invoke-virtual {p0}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 425
    const-string v2, "Method %s is unimplemented"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    .line 424
    invoke-interface {p1, v0}, Lio/grpc/stub/StreamObserver;->onError(Ljava/lang/Throwable;)V

    .line 428
    return-void
.end method
