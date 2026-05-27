.class final Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;
.super Ljava/lang/Object;
.source "ServerCalls.java"

# interfaces
.implements Lio/grpc/ServerCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ServerCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamingServerCallHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/ServerCalls$StreamingServerCallHandler$StreamingServerCallListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/ServerCallHandler<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field private final method:Lio/grpc/stub/ServerCalls$StreamingRequestMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/ServerCalls$StreamingRequestMethod<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/stub/ServerCalls$StreamingRequestMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/ServerCalls$StreamingRequestMethod<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 216
    .local p0, "this":Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;, "Lio/grpc/stub/ServerCalls$StreamingServerCallHandler<TReqT;TRespT;>;"
    .local p1, "method":Lio/grpc/stub/ServerCalls$StreamingRequestMethod;, "Lio/grpc/stub/ServerCalls$StreamingRequestMethod<TReqT;TRespT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;->method:Lio/grpc/stub/ServerCalls$StreamingRequestMethod;

    .line 218
    return-void
.end method


# virtual methods
.method public startCall(Lio/grpc/ServerCall;Lio/grpc/Metadata;)Lio/grpc/ServerCall$Listener;
    .locals 3
    .param p2, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerCall<",
            "TReqT;TRespT;>;",
            "Lio/grpc/Metadata;",
            ")",
            "Lio/grpc/ServerCall$Listener<",
            "TReqT;>;"
        }
    .end annotation

    .line 222
    .local p0, "this":Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;, "Lio/grpc/stub/ServerCalls$StreamingServerCallHandler<TReqT;TRespT;>;"
    .local p1, "call":Lio/grpc/ServerCall;, "Lio/grpc/ServerCall<TReqT;TRespT;>;"
    new-instance v0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;

    invoke-direct {v0, p1}, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;-><init>(Lio/grpc/ServerCall;)V

    .line 224
    .local v0, "responseObserver":Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;, "Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl<TReqT;TRespT;>;"
    iget-object v1, p0, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;->method:Lio/grpc/stub/ServerCalls$StreamingRequestMethod;

    invoke-interface {v1, v0}, Lio/grpc/stub/ServerCalls$StreamingRequestMethod;->invoke(Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;

    move-result-object v1

    .line 225
    .local v1, "requestObserver":Lio/grpc/stub/StreamObserver;, "Lio/grpc/stub/StreamObserver<TReqT;>;"
    invoke-static {v0}, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->access$100(Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;)V

    .line 226
    invoke-static {v0}, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->access$400(Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lio/grpc/ServerCall;->request(I)V

    .line 229
    :cond_0
    new-instance v2, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler$StreamingServerCallListener;

    invoke-direct {v2, p0, v1, v0, p1}, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler$StreamingServerCallListener;-><init>(Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;Lio/grpc/stub/StreamObserver;Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;Lio/grpc/ServerCall;)V

    return-object v2
.end method
