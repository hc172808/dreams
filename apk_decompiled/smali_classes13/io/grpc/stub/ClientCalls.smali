.class public final Lio/grpc/stub/ClientCalls;
.super Ljava/lang/Object;
.source "ClientCalls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/ClientCalls$StubType;,
        Lio/grpc/stub/ClientCalls$ThreadlessExecutor;,
        Lio/grpc/stub/ClientCalls$BlockingResponseStream;,
        Lio/grpc/stub/ClientCalls$GrpcFuture;,
        Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;,
        Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;,
        Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final STUB_TYPE_OPTION:Lio/grpc/CallOptions$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/CallOptions$Key<",
            "Lio/grpc/stub/ClientCalls$StubType;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    nop

    .line 54
    const-class v0, Lio/grpc/stub/ClientCalls;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/stub/ClientCalls;->logger:Ljava/util/logging/Logger;

    .line 717
    nop

    .line 718
    const-string v0, "internal-stub-type"

    invoke-static {v0}, Lio/grpc/CallOptions$Key;->create(Ljava/lang/String;)Lio/grpc/CallOptions$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/stub/ClientCalls;->STUB_TYPE_OPTION:Lio/grpc/CallOptions$Key;

    .line 717
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncBidiStreamingCall(Lio/grpc/ClientCall;Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;",
            "Lio/grpc/stub/StreamObserver<",
            "TRespT;>;)",
            "Lio/grpc/stub/StreamObserver<",
            "TReqT;>;"
        }
    .end annotation

    .line 99
    .local p0, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    .local p1, "responseObserver":Lio/grpc/stub/StreamObserver;, "Lio/grpc/stub/StreamObserver<TRespT;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lio/grpc/stub/ClientCalls;->asyncStreamingRequestCall(Lio/grpc/ClientCall;Lio/grpc/stub/StreamObserver;Z)Lio/grpc/stub/StreamObserver;

    move-result-object v0

    return-object v0
.end method

.method public static asyncClientStreamingCall(Lio/grpc/ClientCall;Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;",
            "Lio/grpc/stub/StreamObserver<",
            "TRespT;>;)",
            "Lio/grpc/stub/StreamObserver<",
            "TReqT;>;"
        }
    .end annotation

    .line 88
    .local p0, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    .local p1, "responseObserver":Lio/grpc/stub/StreamObserver;, "Lio/grpc/stub/StreamObserver<TRespT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/grpc/stub/ClientCalls;->asyncStreamingRequestCall(Lio/grpc/ClientCall;Lio/grpc/stub/StreamObserver;Z)Lio/grpc/stub/StreamObserver;

    move-result-object v0

    return-object v0
.end method

.method public static asyncServerStreamingCall(Lio/grpc/ClientCall;Ljava/lang/Object;Lio/grpc/stub/StreamObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;TReqT;",
            "Lio/grpc/stub/StreamObserver<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    .local p1, "req":Ljava/lang/Object;, "TReqT;"
    .local p2, "responseObserver":Lio/grpc/stub/StreamObserver;, "Lio/grpc/stub/StreamObserver<TRespT;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lio/grpc/stub/ClientCalls;->asyncUnaryRequestCall(Lio/grpc/ClientCall;Ljava/lang/Object;Lio/grpc/stub/StreamObserver;Z)V

    .line 76
    return-void
.end method

.method private static asyncStreamingRequestCall(Lio/grpc/ClientCall;Lio/grpc/stub/StreamObserver;Z)Lio/grpc/stub/StreamObserver;
    .locals 2
    .param p2, "streamingResponse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;",
            "Lio/grpc/stub/StreamObserver<",
            "TRespT;>;Z)",
            "Lio/grpc/stub/StreamObserver<",
            "TReqT;>;"
        }
    .end annotation

    .line 302
    .local p0, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    .local p1, "responseObserver":Lio/grpc/stub/StreamObserver;, "Lio/grpc/stub/StreamObserver<TRespT;>;"
    new-instance v0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    invoke-direct {v0, p0}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;-><init>(Lio/grpc/ClientCall;)V

    .line 303
    .local v0, "adapter":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TReqT;>;"
    new-instance v1, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;

    invoke-direct {v1, p1, v0, p2}, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;-><init>(Lio/grpc/stub/StreamObserver;Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;Z)V

    invoke-static {p0, v1, p2}, Lio/grpc/stub/ClientCalls;->startCall(Lio/grpc/ClientCall;Lio/grpc/ClientCall$Listener;Z)V

    .line 308
    return-object v0
.end method

.method public static asyncUnaryCall(Lio/grpc/ClientCall;Ljava/lang/Object;Lio/grpc/stub/StreamObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;TReqT;",
            "Lio/grpc/stub/StreamObserver<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 65
    .local p0, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    .local p1, "req":Ljava/lang/Object;, "TReqT;"
    .local p2, "responseObserver":Lio/grpc/stub/StreamObserver;, "Lio/grpc/stub/StreamObserver<TRespT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lio/grpc/stub/ClientCalls;->asyncUnaryRequestCall(Lio/grpc/ClientCall;Ljava/lang/Object;Lio/grpc/stub/StreamObserver;Z)V

    .line 66
    return-void
.end method

.method private static asyncUnaryRequestCall(Lio/grpc/ClientCall;Ljava/lang/Object;Lio/grpc/ClientCall$Listener;Z)V
    .locals 2
    .param p3, "streamingResponse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;TReqT;",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;Z)V"
        }
    .end annotation

    .line 287
    .local p0, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    .local p1, "req":Ljava/lang/Object;, "TReqT;"
    .local p2, "responseListener":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    invoke-static {p0, p2, p3}, Lio/grpc/stub/ClientCalls;->startCall(Lio/grpc/ClientCall;Lio/grpc/ClientCall$Listener;Z)V

    .line 289
    :try_start_0
    invoke-virtual {p0, p1}, Lio/grpc/ClientCall;->sendMessage(Ljava/lang/Object;)V

    .line 290
    invoke-virtual {p0}, Lio/grpc/ClientCall;->halfClose()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    nop

    .line 296
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Error;
    invoke-static {p0, v0}, Lio/grpc/stub/ClientCalls;->cancelThrow(Lio/grpc/ClientCall;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 291
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0, v0}, Lio/grpc/stub/ClientCalls;->cancelThrow(Lio/grpc/ClientCall;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static asyncUnaryRequestCall(Lio/grpc/ClientCall;Ljava/lang/Object;Lio/grpc/stub/StreamObserver;Z)V
    .locals 2
    .param p3, "streamingResponse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;TReqT;",
            "Lio/grpc/stub/StreamObserver<",
            "TRespT;>;Z)V"
        }
    .end annotation

    .line 272
    .local p0, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    .local p1, "req":Ljava/lang/Object;, "TReqT;"
    .local p2, "responseObserver":Lio/grpc/stub/StreamObserver;, "Lio/grpc/stub/StreamObserver<TRespT;>;"
    new-instance v0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;

    new-instance v1, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    invoke-direct {v1, p0}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;-><init>(Lio/grpc/ClientCall;)V

    invoke-direct {v0, p2, v1, p3}, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;-><init>(Lio/grpc/stub/StreamObserver;Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;Z)V

    invoke-static {p0, p1, v0, p3}, Lio/grpc/stub/ClientCalls;->asyncUnaryRequestCall(Lio/grpc/ClientCall;Ljava/lang/Object;Lio/grpc/ClientCall$Listener;Z)V

    .line 280
    return-void
.end method

.method public static blockingServerStreamingCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 5
    .param p0, "channel"    # Lio/grpc/Channel;
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Channel;",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            "TReqT;)",
            "Ljava/util/Iterator<",
            "TRespT;>;"
        }
    .end annotation

    .line 179
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    .local p3, "req":Ljava/lang/Object;, "TReqT;"
    new-instance v0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;

    invoke-direct {v0}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;-><init>()V

    .line 180
    .local v0, "executor":Lio/grpc/stub/ClientCalls$ThreadlessExecutor;
    invoke-virtual {p2, v0}, Lio/grpc/CallOptions;->withExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/CallOptions;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v1

    .line 181
    .local v1, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    new-instance v2, Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-direct {v2, v1, v0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;-><init>(Lio/grpc/ClientCall;Lio/grpc/stub/ClientCalls$ThreadlessExecutor;)V

    .line 182
    .local v2, "result":Lio/grpc/stub/ClientCalls$BlockingResponseStream;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TRespT;>;"
    invoke-virtual {v2}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->listener()Lio/grpc/ClientCall$Listener;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, p3, v3, v4}, Lio/grpc/stub/ClientCalls;->asyncUnaryRequestCall(Lio/grpc/ClientCall;Ljava/lang/Object;Lio/grpc/ClientCall$Listener;Z)V

    .line 183
    return-object v2
.end method

.method public static blockingServerStreamingCall(Lio/grpc/ClientCall;Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;TReqT;)",
            "Ljava/util/Iterator<",
            "TRespT;>;"
        }
    .end annotation

    .line 164
    .local p0, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    .local p1, "req":Ljava/lang/Object;, "TReqT;"
    new-instance v0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-direct {v0, p0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;-><init>(Lio/grpc/ClientCall;)V

    .line 165
    .local v0, "result":Lio/grpc/stub/ClientCalls$BlockingResponseStream;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TRespT;>;"
    invoke-virtual {v0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->listener()Lio/grpc/ClientCall$Listener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Lio/grpc/stub/ClientCalls;->asyncUnaryRequestCall(Lio/grpc/ClientCall;Ljava/lang/Object;Lio/grpc/ClientCall$Listener;Z)V

    .line 166
    return-object v0
.end method

.method public static blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "channel"    # Lio/grpc/Channel;
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Channel;",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            "TReqT;)TRespT;"
        }
    .end annotation

    .line 126
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    .local p3, "req":Ljava/lang/Object;, "TReqT;"
    new-instance v0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;

    invoke-direct {v0}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;-><init>()V

    .line 127
    .local v0, "executor":Lio/grpc/stub/ClientCalls$ThreadlessExecutor;
    const/4 v1, 0x0

    .line 128
    .local v1, "interrupt":Z
    invoke-virtual {p2, v0}, Lio/grpc/CallOptions;->withExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/CallOptions;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v2

    .line 130
    .local v2, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    :try_start_0
    invoke-static {v2, p3}, Lio/grpc/stub/ClientCalls;->futureUnaryCall(Lio/grpc/ClientCall;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 131
    .local v3, "responseFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TRespT;>;"
    :goto_0
    invoke-interface {v3}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 133
    :try_start_1
    invoke-virtual {v0}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->waitAndDrain()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :goto_1
    goto :goto_0

    .line 134
    :catch_0
    move-exception v4

    .line 135
    .local v4, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 136
    :try_start_2
    const-string v5, "Thread interrupted"

    invoke-virtual {v2, v5, v4}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 140
    :cond_0
    invoke-static {v3}, Lio/grpc/stub/ClientCalls;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    if-eqz v1, :cond_1

    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 140
    :cond_1
    return-object v4

    .line 148
    .end local v3    # "responseFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TRespT;>;"
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 144
    :catch_1
    move-exception v3

    .line 146
    .local v3, "e":Ljava/lang/Error;
    :try_start_3
    invoke-static {v2, v3}, Lio/grpc/stub/ClientCalls;->cancelThrow(Lio/grpc/ClientCall;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "executor":Lio/grpc/stub/ClientCalls$ThreadlessExecutor;
    .end local v1    # "interrupt":Z
    .end local v2    # "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    .end local p0    # "channel":Lio/grpc/Channel;
    .end local p1    # "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    .end local p2    # "callOptions":Lio/grpc/CallOptions;
    .end local p3    # "req":Ljava/lang/Object;, "TReqT;"
    throw v4

    .line 141
    .end local v3    # "e":Ljava/lang/Error;
    .restart local v0    # "executor":Lio/grpc/stub/ClientCalls$ThreadlessExecutor;
    .restart local v1    # "interrupt":Z
    .restart local v2    # "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    .restart local p0    # "channel":Lio/grpc/Channel;
    .restart local p1    # "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    .restart local p2    # "callOptions":Lio/grpc/CallOptions;
    .restart local p3    # "req":Ljava/lang/Object;, "TReqT;"
    :catch_2
    move-exception v3

    .line 143
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-static {v2, v3}, Lio/grpc/stub/ClientCalls;->cancelThrow(Lio/grpc/ClientCall;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "executor":Lio/grpc/stub/ClientCalls$ThreadlessExecutor;
    .end local v1    # "interrupt":Z
    .end local v2    # "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    .end local p0    # "channel":Lio/grpc/Channel;
    .end local p1    # "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    .end local p2    # "callOptions":Lio/grpc/CallOptions;
    .end local p3    # "req":Ljava/lang/Object;, "TReqT;"
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "executor":Lio/grpc/stub/ClientCalls$ThreadlessExecutor;
    .restart local v1    # "interrupt":Z
    .restart local v2    # "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    .restart local p0    # "channel":Lio/grpc/Channel;
    .restart local p1    # "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    .restart local p2    # "callOptions":Lio/grpc/CallOptions;
    .restart local p3    # "req":Ljava/lang/Object;, "TReqT;"
    :goto_2
    if-eqz v1, :cond_2

    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v3
.end method

.method public static blockingUnaryCall(Lio/grpc/ClientCall;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;TReqT;)TRespT;"
        }
    .end annotation

    .line 110
    .local p0, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    .local p1, "req":Ljava/lang/Object;, "TReqT;"
    :try_start_0
    invoke-static {p0, p1}, Lio/grpc/stub/ClientCalls;->futureUnaryCall(Lio/grpc/ClientCall;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/stub/ClientCalls;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Error;
    invoke-static {p0, v0}, Lio/grpc/stub/ClientCalls;->cancelThrow(Lio/grpc/ClientCall;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 111
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0, v0}, Lio/grpc/stub/ClientCalls;->cancelThrow(Lio/grpc/ClientCall;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static cancelThrow(Lio/grpc/ClientCall;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "**>;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 255
    .local p0, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<**>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    goto :goto_1

    .line 256
    :catchall_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 258
    :cond_1
    :goto_0
    sget-object v1, Lio/grpc/stub/ClientCalls;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "RuntimeException encountered while closing call"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_3

    .line 262
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_2

    .line 263
    move-object v0, p1

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 266
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 261
    :cond_3
    move-object v0, p1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method public static futureUnaryCall(Lio/grpc/ClientCall;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;TReqT;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TRespT;>;"
        }
    .end annotation

    .line 195
    .local p0, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    .local p1, "req":Ljava/lang/Object;, "TReqT;"
    new-instance v0, Lio/grpc/stub/ClientCalls$GrpcFuture;

    invoke-direct {v0, p0}, Lio/grpc/stub/ClientCalls$GrpcFuture;-><init>(Lio/grpc/ClientCall;)V

    .line 196
    .local v0, "responseFuture":Lio/grpc/stub/ClientCalls$GrpcFuture;, "Lio/grpc/stub/ClientCalls$GrpcFuture<TRespT;>;"
    new-instance v1, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;

    invoke-direct {v1, v0}, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;-><init>(Lio/grpc/stub/ClientCalls$GrpcFuture;)V

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lio/grpc/stub/ClientCalls;->asyncUnaryRequestCall(Lio/grpc/ClientCall;Ljava/lang/Object;Lio/grpc/ClientCall$Listener;Z)V

    .line 197
    return-object v0
.end method

.method private static getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 213
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/stub/ClientCalls;->toStatusRuntimeException(Ljava/lang/Throwable;)Lio/grpc/StatusRuntimeException;

    move-result-object v1

    throw v1

    .line 214
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 216
    sget-object v1, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    .line 217
    const-string v2, "Thread interrupted"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 218
    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static startCall(Lio/grpc/ClientCall;Lio/grpc/ClientCall$Listener;Z)V
    .locals 1
    .param p2, "streamingResponse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;Z)V"
        }
    .end annotation

    .line 315
    .local p0, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    .local p1, "responseListener":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    .line 316
    if-eqz p2, :cond_0

    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/grpc/ClientCall;->request(I)V

    goto :goto_0

    .line 321
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lio/grpc/ClientCall;->request(I)V

    .line 323
    :goto_0
    return-void
.end method

.method private static toStatusRuntimeException(Ljava/lang/Throwable;)Lio/grpc/StatusRuntimeException;
    .locals 5
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 232
    const-string v0, "t"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 233
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_2

    .line 235
    instance-of v1, v0, Lio/grpc/StatusException;

    if-eqz v1, :cond_0

    .line 236
    move-object v1, v0

    check-cast v1, Lio/grpc/StatusException;

    .line 237
    .local v1, "se":Lio/grpc/StatusException;
    new-instance v2, Lio/grpc/StatusRuntimeException;

    invoke-virtual {v1}, Lio/grpc/StatusException;->getStatus()Lio/grpc/Status;

    move-result-object v3

    invoke-virtual {v1}, Lio/grpc/StatusException;->getTrailers()Lio/grpc/Metadata;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lio/grpc/StatusRuntimeException;-><init>(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-object v2

    .line 238
    .end local v1    # "se":Lio/grpc/StatusException;
    :cond_0
    instance-of v1, v0, Lio/grpc/StatusRuntimeException;

    if-eqz v1, :cond_1

    .line 239
    move-object v1, v0

    check-cast v1, Lio/grpc/StatusRuntimeException;

    .line 240
    .local v1, "se":Lio/grpc/StatusRuntimeException;
    new-instance v2, Lio/grpc/StatusRuntimeException;

    invoke-virtual {v1}, Lio/grpc/StatusRuntimeException;->getStatus()Lio/grpc/Status;

    move-result-object v3

    invoke-virtual {v1}, Lio/grpc/StatusRuntimeException;->getTrailers()Lio/grpc/Metadata;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lio/grpc/StatusRuntimeException;-><init>(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-object v2

    .line 242
    .end local v1    # "se":Lio/grpc/StatusRuntimeException;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_2
    sget-object v1, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    const-string v2, "unexpected exception"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v1

    .line 244
    return-object v1
.end method
