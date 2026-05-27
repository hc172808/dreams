.class Lio/grpc/okhttp/OkHttpClientTransport;
.super Ljava/lang/Object;
.source "OkHttpClientTransport.java"

# interfaces
.implements Lio/grpc/internal/ConnectionClientTransport;
.implements Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    }
.end annotation


# static fields
.field private static final EMPTY_STREAM_ARRAY:[Lio/grpc/okhttp/OkHttpClientStream;

.field private static final ERROR_CODE_TO_STATUS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/okhttp/internal/framed/ErrorCode;",
            "Lio/grpc/Status;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final address:Ljava/net/InetSocketAddress;

.field private attributes:Lio/grpc/Attributes;

.field private clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

.field connectedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field connectingCallback:Ljava/lang/Runnable;

.field private final connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

.field private connectionUnacknowledgedBytesRead:I

.field private final defaultAuthority:Ljava/lang/String;

.field private enableKeepAlive:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

.field private goAwaySent:Z

.field private goAwayStatus:Lio/grpc/Status;

.field private hasStream:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final inUseState:Lio/grpc/internal/InUseStateAggregator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/InUseStateAggregator<",
            "Lio/grpc/okhttp/OkHttpClientStream;",
            ">;"
        }
    .end annotation
.end field

.field private final initialWindowSize:I

.field private keepAliveManager:Lio/grpc/internal/KeepAliveManager;

.field private keepAliveTimeNanos:J

.field private keepAliveTimeoutNanos:J

.field private keepAliveWithoutCalls:Z

.field private listener:Lio/grpc/internal/ManagedClientTransport$Listener;

.field private final lock:Ljava/lang/Object;

.field private final logId:Lio/grpc/InternalLogId;

.field private maxConcurrentStreams:I

.field private final maxInboundMetadataSize:I

.field private final maxMessageSize:I

.field private nextStreamId:I

.field private outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

.field private final pendingStreams:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lio/grpc/okhttp/OkHttpClientStream;",
            ">;"
        }
    .end annotation
.end field

.field private ping:Lio/grpc/internal/Http2Ping;

.field final proxiedAddr:Lio/grpc/HttpConnectProxiedSocketAddress;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private securityInfo:Lio/grpc/InternalChannelz$Security;

.field private final serializingExecutor:Lio/grpc/internal/SerializingExecutor;

.field private socket:Ljava/net/Socket;

.field private final socketFactory:Ljavax/net/SocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private stopped:Z

.field private final stopwatchFactory:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;"
        }
    .end annotation
.end field

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/grpc/okhttp/OkHttpClientStream;",
            ">;"
        }
    .end annotation
.end field

.field private testFrameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

.field private testFrameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

.field private testFrameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

.field private final tooManyPingsRunnable:Ljava/lang/Runnable;

.field private final transportTracer:Lio/grpc/internal/TransportTracer;

.field private final useGetForSafeMethods:Z

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    invoke-static {}, Lio/grpc/okhttp/OkHttpClientTransport;->buildErrorCodeToStatusMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpClientTransport;->ERROR_CODE_TO_STATUS:Ljava/util/Map;

    .line 110
    const-class v0, Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpClientTransport;->log:Ljava/util/logging/Logger;

    .line 111
    const/4 v0, 0x0

    new-array v0, v0, [Lio/grpc/okhttp/OkHttpClientStream;

    sput-object v0, Lio/grpc/okhttp/OkHttpClientTransport;->EMPTY_STREAM_ARRAY:[Lio/grpc/okhttp/OkHttpClientStream;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lio/grpc/okhttp/internal/framed/FrameReader;Lio/grpc/okhttp/internal/framed/FrameWriter;Lio/grpc/okhttp/OkHttpFrameLogger;ILjava/net/Socket;Lcom/google/common/base/Supplier;Ljava/lang/Runnable;Lcom/google/common/util/concurrent/SettableFuture;IILjava/lang/Runnable;Lio/grpc/internal/TransportTracer;)V
    .locals 17
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "frameReader"    # Lio/grpc/okhttp/internal/framed/FrameReader;
    .param p4, "testFrameWriter"    # Lio/grpc/okhttp/internal/framed/FrameWriter;
    .param p5, "testFrameLogger"    # Lio/grpc/okhttp/OkHttpFrameLogger;
    .param p6, "nextStreamId"    # I
    .param p7, "socket"    # Ljava/net/Socket;
    .param p9, "connectingCallback"    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "maxMessageSize"    # I
    .param p12, "initialWindowSize"    # I
    .param p13, "tooManyPingsRunnable"    # Ljava/lang/Runnable;
    .param p14, "transportTracer"    # Lio/grpc/internal/TransportTracer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Lio/grpc/okhttp/internal/framed/FrameReader;",
            "Lio/grpc/okhttp/internal/framed/FrameWriter;",
            "Lio/grpc/okhttp/OkHttpFrameLogger;",
            "I",
            "Ljava/net/Socket;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Ljava/lang/Void;",
            ">;II",
            "Ljava/lang/Runnable;",
            "Lio/grpc/internal/TransportTracer;",
            ")V"
        }
    .end annotation

    .line 291
    .local p8, "stopwatchFactory":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/common/base/Stopwatch;>;"
    .local p10, "connectedFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Void;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->random:Ljava/util/Random;

    .line 155
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    .line 159
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    .line 187
    const/4 v2, 0x0

    iput v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I

    .line 189
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    .line 205
    new-instance v3, Lio/grpc/okhttp/OkHttpClientTransport$1;

    invoke-direct {v3, v0}, Lio/grpc/okhttp/OkHttpClientTransport$1;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;)V

    iput-object v3, v0, Lio/grpc/okhttp/OkHttpClientTransport;->inUseState:Lio/grpc/internal/InUseStateAggregator;

    .line 292
    iput-boolean v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->useGetForSafeMethods:Z

    .line 293
    const/4 v2, 0x0

    iput-object v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;

    .line 294
    move/from16 v3, p11

    iput v3, v0, Lio/grpc/okhttp/OkHttpClientTransport;->maxMessageSize:I

    .line 295
    move/from16 v4, p12

    iput v4, v0, Lio/grpc/okhttp/OkHttpClientTransport;->initialWindowSize:I

    .line 296
    const-string v5, "notarealauthority:80"

    iput-object v5, v0, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    .line 297
    const-string v5, "okhttp"

    move-object/from16 v6, p1

    invoke-static {v5, v6}, Lio/grpc/internal/GrpcUtil;->getGrpcUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lio/grpc/okhttp/OkHttpClientTransport;->userAgent:Ljava/lang/String;

    .line 298
    const-string v5, "executor"

    invoke-static {v1, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    iput-object v5, v0, Lio/grpc/okhttp/OkHttpClientTransport;->executor:Ljava/util/concurrent/Executor;

    .line 299
    new-instance v5, Lio/grpc/internal/SerializingExecutor;

    invoke-direct {v5, v1}, Lio/grpc/internal/SerializingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v5, v0, Lio/grpc/okhttp/OkHttpClientTransport;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    .line 300
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v5

    iput-object v5, v0, Lio/grpc/okhttp/OkHttpClientTransport;->socketFactory:Ljavax/net/SocketFactory;

    .line 301
    const-string v5, "frameReader"

    move-object/from16 v7, p3

    invoke-static {v7, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/okhttp/internal/framed/FrameReader;

    iput-object v5, v0, Lio/grpc/okhttp/OkHttpClientTransport;->testFrameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    .line 302
    const-string v5, "testFrameWriter"

    move-object/from16 v8, p4

    invoke-static {v8, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/okhttp/internal/framed/FrameWriter;

    iput-object v5, v0, Lio/grpc/okhttp/OkHttpClientTransport;->testFrameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    .line 303
    const-string v5, "testFrameLogger"

    move-object/from16 v9, p5

    invoke-static {v9, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/okhttp/OkHttpFrameLogger;

    iput-object v5, v0, Lio/grpc/okhttp/OkHttpClientTransport;->testFrameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    .line 304
    const-string v5, "socket"

    move-object/from16 v10, p7

    invoke-static {v10, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/Socket;

    iput-object v5, v0, Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;

    .line 305
    move/from16 v5, p6

    iput v5, v0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    .line 306
    move-object/from16 v11, p8

    iput-object v11, v0, Lio/grpc/okhttp/OkHttpClientTransport;->stopwatchFactory:Lcom/google/common/base/Supplier;

    .line 307
    iput-object v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 308
    move-object/from16 v12, p9

    iput-object v12, v0, Lio/grpc/okhttp/OkHttpClientTransport;->connectingCallback:Ljava/lang/Runnable;

    .line 309
    const-string v13, "connectedFuture"

    move-object/from16 v14, p10

    invoke-static {v14, v13}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/common/util/concurrent/SettableFuture;

    iput-object v13, v0, Lio/grpc/okhttp/OkHttpClientTransport;->connectedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 310
    iput-object v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->proxiedAddr:Lio/grpc/HttpConnectProxiedSocketAddress;

    .line 311
    nop

    .line 312
    const-string v2, "tooManyPingsRunnable"

    move-object/from16 v13, p13

    invoke-static {v13, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    iput-object v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->tooManyPingsRunnable:Ljava/lang/Runnable;

    .line 313
    const v2, 0x7fffffff

    iput v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->maxInboundMetadataSize:I

    .line 314
    const-string v2, "transportTracer"

    move-object/from16 v15, p14

    invoke-static {v15, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/TransportTracer;

    iput-object v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    .line 315
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {p7 .. p7}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/okhttp/OkHttpClientTransport;->logId:Lio/grpc/InternalLogId;

    .line 316
    invoke-direct/range {p0 .. p0}, Lio/grpc/okhttp/OkHttpClientTransport;->initTransportTracer()V

    .line 317
    return-void
.end method

.method constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/Attributes;Ljava/util/concurrent/Executor;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/grpc/okhttp/internal/ConnectionSpec;IILio/grpc/HttpConnectProxiedSocketAddress;Ljava/lang/Runnable;ILio/grpc/internal/TransportTracer;Z)V
    .locals 16
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "eagAttrs"    # Lio/grpc/Attributes;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "socketFactory"    # Ljavax/net/SocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "connectionSpec"    # Lio/grpc/okhttp/internal/ConnectionSpec;
    .param p10, "maxMessageSize"    # I
    .param p11, "initialWindowSize"    # I
    .param p12, "proxiedAddr"    # Lio/grpc/HttpConnectProxiedSocketAddress;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p13, "tooManyPingsRunnable"    # Ljava/lang/Runnable;
    .param p14, "maxInboundMetadataSize"    # I
    .param p15, "transportTracer"    # Lio/grpc/internal/TransportTracer;
    .param p16, "useGetForSafeMethods"    # Z

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->random:Ljava/util/Random;

    .line 155
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    .line 159
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    .line 187
    const/4 v2, 0x0

    iput v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I

    .line 189
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    .line 205
    new-instance v2, Lio/grpc/okhttp/OkHttpClientTransport$1;

    invoke-direct {v2, v0}, Lio/grpc/okhttp/OkHttpClientTransport$1;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;)V

    iput-object v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->inUseState:Lio/grpc/internal/InUseStateAggregator;

    .line 246
    const-string v2, "address"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    iput-object v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;

    .line 247
    move-object/from16 v2, p2

    iput-object v2, v0, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    .line 248
    move/from16 v4, p10

    iput v4, v0, Lio/grpc/okhttp/OkHttpClientTransport;->maxMessageSize:I

    .line 249
    move/from16 v5, p11

    iput v5, v0, Lio/grpc/okhttp/OkHttpClientTransport;->initialWindowSize:I

    .line 250
    const-string v6, "executor"

    invoke-static {v1, v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Executor;

    iput-object v6, v0, Lio/grpc/okhttp/OkHttpClientTransport;->executor:Ljava/util/concurrent/Executor;

    .line 251
    new-instance v6, Lio/grpc/internal/SerializingExecutor;

    invoke-direct {v6, v1}, Lio/grpc/internal/SerializingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v6, v0, Lio/grpc/okhttp/OkHttpClientTransport;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    .line 254
    const/4 v6, 0x3

    iput v6, v0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    .line 255
    if-nez p6, :cond_0

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object/from16 v6, p6

    :goto_0
    iput-object v6, v0, Lio/grpc/okhttp/OkHttpClientTransport;->socketFactory:Ljavax/net/SocketFactory;

    .line 256
    move-object/from16 v6, p7

    iput-object v6, v0, Lio/grpc/okhttp/OkHttpClientTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 257
    move-object/from16 v7, p8

    iput-object v7, v0, Lio/grpc/okhttp/OkHttpClientTransport;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 258
    const-string v8, "connectionSpec"

    move-object/from16 v9, p9

    invoke-static {v9, v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/grpc/okhttp/internal/ConnectionSpec;

    iput-object v8, v0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 259
    sget-object v8, Lio/grpc/internal/GrpcUtil;->STOPWATCH_SUPPLIER:Lcom/google/common/base/Supplier;

    iput-object v8, v0, Lio/grpc/okhttp/OkHttpClientTransport;->stopwatchFactory:Lcom/google/common/base/Supplier;

    .line 260
    const-string v8, "okhttp"

    move-object/from16 v10, p3

    invoke-static {v8, v10}, Lio/grpc/internal/GrpcUtil;->getGrpcUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lio/grpc/okhttp/OkHttpClientTransport;->userAgent:Ljava/lang/String;

    .line 261
    move-object/from16 v8, p12

    iput-object v8, v0, Lio/grpc/okhttp/OkHttpClientTransport;->proxiedAddr:Lio/grpc/HttpConnectProxiedSocketAddress;

    .line 262
    nop

    .line 263
    const-string v11, "tooManyPingsRunnable"

    move-object/from16 v12, p13

    invoke-static {v12, v11}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Runnable;

    iput-object v11, v0, Lio/grpc/okhttp/OkHttpClientTransport;->tooManyPingsRunnable:Ljava/lang/Runnable;

    .line 264
    move/from16 v11, p14

    iput v11, v0, Lio/grpc/okhttp/OkHttpClientTransport;->maxInboundMetadataSize:I

    .line 265
    invoke-static/range {p15 .. p15}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/grpc/internal/TransportTracer;

    iput-object v13, v0, Lio/grpc/okhttp/OkHttpClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    .line 266
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v13

    iput-object v13, v0, Lio/grpc/okhttp/OkHttpClientTransport;->logId:Lio/grpc/InternalLogId;

    .line 267
    invoke-static {}, Lio/grpc/Attributes;->newBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v13

    sget-object v14, Lio/grpc/internal/GrpcAttributes;->ATTR_CLIENT_EAG_ATTRS:Lio/grpc/Attributes$Key;

    .line 268
    move-object/from16 v15, p4

    invoke-virtual {v13, v14, v15}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v13

    iput-object v13, v0, Lio/grpc/okhttp/OkHttpClientTransport;->attributes:Lio/grpc/Attributes;

    .line 269
    move/from16 v13, p16

    iput-boolean v13, v0, Lio/grpc/okhttp/OkHttpClientTransport;->useGetForSafeMethods:Z

    .line 270
    invoke-direct/range {p0 .. p0}, Lio/grpc/okhttp/OkHttpClientTransport;->initTransportTracer()V

    .line 271
    return-void
.end method

.method static synthetic access$000(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lio/grpc/okhttp/OkHttpClientTransport;)Ljavax/net/SocketFactory;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method static synthetic access$1100(Lio/grpc/okhttp/OkHttpClientTransport;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # Ljava/net/InetSocketAddress;
    .param p2, "x2"    # Ljava/net/InetSocketAddress;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lio/grpc/okhttp/OkHttpClientTransport;->createHttpProxySocket(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lio/grpc/okhttp/OkHttpClientTransport;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method static synthetic access$1300(Lio/grpc/okhttp/OkHttpClientTransport;)Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method static synthetic access$1400(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/internal/ConnectionSpec;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    return-object v0
.end method

.method static synthetic access$1500(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/Attributes;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->attributes:Lio/grpc/Attributes;

    return-object v0
.end method

.method static synthetic access$1502(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/Attributes;)Lio/grpc/Attributes;
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # Lio/grpc/Attributes;

    .line 108
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->attributes:Lio/grpc/Attributes;

    return-object p1
.end method

.method static synthetic access$1600(Lio/grpc/okhttp/OkHttpClientTransport;ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p3, "x3"    # Lio/grpc/Status;

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpClientTransport;->startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    return-void
.end method

.method static synthetic access$1702(Lio/grpc/okhttp/OkHttpClientTransport;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # Ljava/net/Socket;

    .line 108
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$1802(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/InternalChannelz$Security;)Lio/grpc/InternalChannelz$Security;
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # Lio/grpc/InternalChannelz$Security;

    .line 108
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->securityInfo:Lio/grpc/InternalChannelz$Security;

    return-object p1
.end method

.method static synthetic access$1900(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/KeepAliveManager;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OutboundFlowController;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/util/logging/Logger;
    .locals 1

    .line 108
    sget-object v0, Lio/grpc/okhttp/OkHttpClientTransport;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$2100(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    return-object v0
.end method

.method static synthetic access$2200(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p2, "x2"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1, p2}, Lio/grpc/okhttp/OkHttpClientTransport;->onError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lio/grpc/okhttp/OkHttpClientTransport;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionUnacknowledgedBytesRead:I

    return v0
.end method

.method static synthetic access$2302(Lio/grpc/okhttp/OkHttpClientTransport;I)I
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionUnacknowledgedBytesRead:I

    return p1
.end method

.method static synthetic access$2312(Lio/grpc/okhttp/OkHttpClientTransport;I)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # I

    .line 108
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionUnacknowledgedBytesRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionUnacknowledgedBytesRead:I

    return v0
.end method

.method static synthetic access$2400(Lio/grpc/okhttp/OkHttpClientTransport;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->initialWindowSize:I

    return v0
.end method

.method static synthetic access$2500(Lio/grpc/okhttp/OkHttpClientTransport;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxInboundMetadataSize:I

    return v0
.end method

.method static synthetic access$2600(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2700(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/Http2Ping;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    return-object v0
.end method

.method static synthetic access$2702(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/internal/Http2Ping;)Lio/grpc/internal/Http2Ping;
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # Lio/grpc/internal/Http2Ping;

    .line 108
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    return-object p1
.end method

.method static synthetic access$2800(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->tooManyPingsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    return-object v0
.end method

.method static synthetic access$302(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    .line 108
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    return-object p1
.end method

.method static synthetic access$400(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/internal/framed/FrameReader;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->testFrameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OkHttpFrameLogger;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->testFrameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    return-object v0
.end method

.method static synthetic access$600(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$702(Lio/grpc/okhttp/OkHttpClientTransport;I)I
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I

    return p1
.end method

.method static synthetic access$800(Lio/grpc/okhttp/OkHttpClientTransport;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->startPendingStreams()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 108
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method private static buildErrorCodeToStatusMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/grpc/okhttp/internal/framed/ErrorCode;",
            "Lio/grpc/Status;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 115
    .local v0, "errorToStatus":Ljava/util/Map;, "Ljava/util/Map<Lio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;>;"
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 116
    const-string v3, "No error: A GRPC status of OK should have been sent"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 115
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 118
    const-string v3, "Protocol error"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 117
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 120
    const-string v3, "Internal error"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 119
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 122
    const-string v3, "Flow control error"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 121
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 124
    const-string v3, "Stream closed"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 123
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->FRAME_TOO_LARGE:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 126
    const-string v3, "Frame too large"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 125
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 128
    const-string v3, "Refused stream"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 127
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    .line 130
    const-string v3, "Cancelled"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 129
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->COMPRESSION_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 132
    const-string v3, "Compression error"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 131
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->CONNECT_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 134
    const-string v3, "Connect error"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 133
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->ENHANCE_YOUR_CALM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    .line 136
    const-string v3, "Enhance your calm"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 135
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->INADEQUATE_SECURITY:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->PERMISSION_DENIED:Lio/grpc/Status;

    .line 138
    const-string v3, "Inadequate security"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 137
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private createHttpProxyRequest(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request;
    .locals 4
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "proxyUsername"    # Ljava/lang/String;
    .param p3, "proxyPassword"    # Ljava/lang/String;

    .line 710
    new-instance v0, Lcom/squareup/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/HttpUrl$Builder;-><init>()V

    .line 711
    const-string v1, "https"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    move-result-object v0

    .line 712
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->host(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    move-result-object v0

    .line 713
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->port(I)Lcom/squareup/okhttp/HttpUrl$Builder;

    move-result-object v0

    .line 714
    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl$Builder;->build()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v0

    .line 715
    .local v0, "tunnelUrl":Lcom/squareup/okhttp/HttpUrl;
    new-instance v1, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 716
    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/Request$Builder;->url(Lcom/squareup/okhttp/HttpUrl;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 717
    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl;->port()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Host"

    invoke-virtual {v1, v3, v2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->userAgent:Ljava/lang/String;

    .line 718
    const-string v3, "User-Agent"

    invoke-virtual {v1, v3, v2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    .line 721
    .local v1, "request":Lcom/squareup/okhttp/Request$Builder;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 722
    invoke-static {p2, p3}, Lcom/squareup/okhttp/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Proxy-Authorization"

    invoke-virtual {v1, v3, v2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 724
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v2

    return-object v2
.end method

.method private createHttpProxySocket(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 16
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "proxyAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxyUsername"    # Ljava/lang/String;
    .param p4, "proxyPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    .line 650
    move-object/from16 v1, p0

    const-string v0, "\r\n"

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 651
    iget-object v2, v1, Lio/grpc/okhttp/OkHttpClientTransport;->socketFactory:Ljavax/net/SocketFactory;

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v2

    .local v2, "sock":Ljava/net/Socket;
    goto :goto_0

    .line 653
    .end local v2    # "sock":Ljava/net/Socket;
    :cond_0
    iget-object v2, v1, Lio/grpc/okhttp/OkHttpClientTransport;->socketFactory:Ljavax/net/SocketFactory;

    .line 654
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    .line 656
    .restart local v2    # "sock":Ljava/net/Socket;
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 658
    invoke-static {v2}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v4

    .line 659
    .local v4, "source":Lokio/Source;
    invoke-static {v2}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 662
    .local v5, "sink":Lokio/BufferedSink;
    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    :try_start_1
    invoke-direct {v1, v6, v7, v8}, Lio/grpc/okhttp/OkHttpClientTransport;->createHttpProxyRequest(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request;

    move-result-object v9

    .line 663
    .local v9, "proxyRequest":Lcom/squareup/okhttp/Request;
    invoke-virtual {v9}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v10

    .line 664
    .local v10, "url":Lcom/squareup/okhttp/HttpUrl;
    const-string v11, "CONNECT %s:%d HTTP/1.1"

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/squareup/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-virtual {v10}, Lcom/squareup/okhttp/HttpUrl;->port()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v3

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 667
    .local v11, "requestLine":Ljava/lang/String;
    invoke-interface {v5, v11}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v13

    invoke-interface {v13, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 668
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-virtual {v9}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v14

    invoke-virtual {v14}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v14

    .local v14, "size":I
    :goto_1
    if-ge v13, v14, :cond_1

    .line 669
    invoke-virtual {v9}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v12

    invoke-virtual {v12, v13}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v12

    const-string v3, ": "

    .line 670
    invoke-interface {v12, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    .line 671
    invoke-virtual {v9}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v12

    invoke-virtual {v12, v13}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    .line 672
    invoke-interface {v3, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 668
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x1

    const/4 v12, 0x2

    goto :goto_1

    .line 674
    .end local v13    # "i":I
    .end local v14    # "size":I
    :cond_1
    invoke-interface {v5, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 676
    invoke-interface {v5}, Lokio/BufferedSink;->flush()V

    .line 679
    invoke-static {v4}, Lio/grpc/okhttp/OkHttpClientTransport;->readUtf8LineStrictUnbuffered(Lokio/Source;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v0

    move-object v3, v0

    .line 681
    .local v3, "statusLine":Lcom/squareup/okhttp/internal/http/StatusLine;
    :goto_2
    invoke-static {v4}, Lio/grpc/okhttp/OkHttpClientTransport;->readUtf8LineStrictUnbuffered(Lokio/Source;)Ljava/lang/String;

    move-result-object v0

    const-string v12, ""

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 682
    :cond_2
    iget v0, v3, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    const/16 v12, 0xc8

    if-lt v0, v12, :cond_3

    iget v0, v3, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    const/16 v12, 0x12c

    if-ge v0, v12, :cond_3

    .line 701
    return-object v2

    .line 683
    :cond_3
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v12, v0

    .line 685
    .local v12, "body":Lokio/Buffer;
    :try_start_2
    invoke-virtual {v2}, Ljava/net/Socket;->shutdownOutput()V

    .line 686
    const-wide/16 v13, 0x400

    invoke-interface {v4, v12, v13, v14}, Lokio/Source;->read(Lokio/Buffer;J)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 689
    goto :goto_3

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to read body: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 691
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 694
    goto :goto_4

    .line 692
    :catch_1
    move-exception v0

    .line 695
    :goto_4
    :try_start_5
    const-string v0, "Response returned from proxy was not successful (expected 2xx, got %d %s). Response body:\n%s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    iget v14, v3, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    .line 698
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v15

    iget-object v14, v3, Lcom/squareup/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-virtual {v12}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    .line 695
    invoke-static {v0, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "message":Ljava/lang/String;
    sget-object v13, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    invoke-virtual {v13, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v13

    invoke-virtual {v13}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v13

    .end local p1    # "address":Ljava/net/InetSocketAddress;
    .end local p2    # "proxyAddress":Ljava/net/InetSocketAddress;
    .end local p3    # "proxyUsername":Ljava/lang/String;
    .end local p4    # "proxyPassword":Ljava/lang/String;
    throw v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 702
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "sock":Ljava/net/Socket;
    .end local v3    # "statusLine":Lcom/squareup/okhttp/internal/http/StatusLine;
    .end local v4    # "source":Lokio/Source;
    .end local v5    # "sink":Lokio/BufferedSink;
    .end local v9    # "proxyRequest":Lcom/squareup/okhttp/Request;
    .end local v10    # "url":Lcom/squareup/okhttp/HttpUrl;
    .end local v11    # "requestLine":Ljava/lang/String;
    .end local v12    # "body":Lokio/Buffer;
    .restart local p1    # "address":Ljava/net/InetSocketAddress;
    .restart local p2    # "proxyAddress":Ljava/net/InetSocketAddress;
    .restart local p3    # "proxyUsername":Ljava/lang/String;
    .restart local p4    # "proxyPassword":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 703
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    sget-object v2, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v3, "Failed trying to connect with proxy"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v2

    .line 704
    invoke-virtual {v2}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v2

    throw v2
.end method

.method private getPingFailure()Ljava/lang/Throwable;
    .locals 3

    .line 1020
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1021
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    if-eqz v1, :cond_0

    .line 1022
    invoke-virtual {v1}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1024
    :cond_0
    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v2, "Connection closed"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1026
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initTransportTracer()V
    .locals 3

    .line 325
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    new-instance v2, Lio/grpc/okhttp/OkHttpClientTransport$2;

    invoke-direct {v2, p0}, Lio/grpc/okhttp/OkHttpClientTransport$2;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;)V

    invoke-virtual {v1, v2}, Lio/grpc/internal/TransportTracer;->setFlowControlWindowReader(Lio/grpc/internal/TransportTracer$FlowControlReader;)V

    .line 336
    monitor-exit v0

    .line 337
    return-void

    .line 336
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isForTest()Z
    .locals 1

    .line 351
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeClearInUse(Lio/grpc/okhttp/OkHttpClientStream;)V
    .locals 2
    .param p1, "stream"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 986
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->hasStream:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iput-boolean v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->hasStream:Z

    .line 989
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    if-eqz v0, :cond_0

    .line 993
    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onTransportIdle()V

    .line 997
    :cond_0
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->shouldBeCountedForInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->inUseState:Lio/grpc/internal/InUseStateAggregator;

    invoke-virtual {v0, p1, v1}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    .line 1000
    :cond_1
    return-void
.end method

.method private onError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p2, "moreDetail"    # Ljava/lang/String;

    .line 865
    invoke-static {p1}, Lio/grpc/okhttp/OkHttpClientTransport;->toGrpcStatus(Lio/grpc/okhttp/internal/framed/ErrorCode;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    .line 866
    return-void
.end method

.method private static readUtf8LineStrictUnbuffered(Lokio/Source;)Ljava/lang/String;
    .locals 8
    .param p0, "source"    # Lokio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 730
    .local v0, "buffer":Lokio/Buffer;
    :cond_0
    const-wide/16 v1, 0x1

    invoke-interface {p0, v0, v1, v2}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    .line 733
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 734
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 731
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setInUse(Lio/grpc/okhttp/OkHttpClientStream;)V
    .locals 2
    .param p1, "stream"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 1004
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->hasStream:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1005
    iput-boolean v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->hasStream:Z

    .line 1006
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    if-eqz v0, :cond_0

    .line 1011
    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onTransportActive()V

    .line 1014
    :cond_0
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->shouldBeCountedForInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->inUseState:Lio/grpc/internal/InUseStateAggregator;

    invoke-virtual {v0, p1, v1}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    .line 1017
    :cond_1
    return-void
.end method

.method private startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    .locals 8
    .param p1, "lastKnownStreamId"    # I
    .param p2, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p3, "status"    # Lio/grpc/Status;

    .line 869
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 870
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    if-nez v1, :cond_0

    .line 871
    iput-object p3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    .line 872
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    invoke-interface {v1, p3}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportShutdown(Lio/grpc/Status;)V

    .line 874
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-boolean v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwaySent:Z

    if-nez v3, :cond_1

    .line 877
    iput-boolean v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwaySent:Z

    .line 878
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    new-array v4, v2, [B

    invoke-virtual {v3, v2, p2, v4}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V

    .line 881
    :cond_1
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 882
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpClientStream;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 883
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 884
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpClientStream;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, p1, :cond_2

    .line 885
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 886
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/okhttp/OkHttpClientStream;

    invoke-virtual {v5}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v5

    sget-object v6, Lio/grpc/internal/ClientStreamListener$RpcProgress;->REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v7, Lio/grpc/Metadata;

    invoke-direct {v7}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v5, p3, v6, v2, v7}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/Metadata;)V

    .line 888
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/okhttp/OkHttpClientStream;

    invoke-direct {p0, v5}, Lio/grpc/okhttp/OkHttpClientTransport;->maybeClearInUse(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 890
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpClientStream;>;"
    :cond_2
    goto :goto_0

    .line 892
    :cond_3
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/okhttp/OkHttpClientStream;

    .line 893
    .local v4, "stream":Lio/grpc/okhttp/OkHttpClientStream;
    invoke-virtual {v4}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v5

    sget-object v6, Lio/grpc/internal/ClientStreamListener$RpcProgress;->REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v7, Lio/grpc/Metadata;

    invoke-direct {v7}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v5, p3, v6, v1, v7}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/Metadata;)V

    .line 895
    invoke-direct {p0, v4}, Lio/grpc/okhttp/OkHttpClientTransport;->maybeClearInUse(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 896
    .end local v4    # "stream":Lio/grpc/okhttp/OkHttpClientStream;
    goto :goto_1

    .line 897
    :cond_4
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 899
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->stopIfNecessary()V

    .line 900
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpClientStream;>;>;"
    monitor-exit v0

    .line 901
    return-void

    .line 900
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startPendingStreams()Z
    .locals 3

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "hasStreamStarted":Z
    :goto_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I

    if-ge v1, v2, :cond_0

    .line 461
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/OkHttpClientStream;

    .line 462
    .local v1, "stream":Lio/grpc/okhttp/OkHttpClientStream;
    invoke-direct {p0, v1}, Lio/grpc/okhttp/OkHttpClientTransport;->startStream(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 463
    const/4 v0, 0x1

    .line 464
    .end local v1    # "stream":Lio/grpc/okhttp/OkHttpClientStream;
    goto :goto_0

    .line 465
    :cond_0
    return v0
.end method

.method private startStream(Lio/grpc/okhttp/OkHttpClientStream;)V
    .locals 4
    .param p1, "stream"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 431
    nop

    .line 432
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->id()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 431
    :goto_0
    const-string v1, "StreamId already assigned"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 433
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    iget v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpClientTransport;->setInUse(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 437
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v0

    iget v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    invoke-virtual {v0, v1}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->start(I)V

    .line 439
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    if-ne v0, v1, :cond_2

    .line 440
    :cond_1
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->useGet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    :cond_2
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v0}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 443
    :cond_3
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    const v1, 0x7ffffffd

    if-lt v0, v1, :cond_4

    .line 446
    const v0, 0x7fffffff

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    .line 447
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 448
    const-string v3, "Stream ids exhausted"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 447
    invoke-direct {p0, v0, v1, v2}, Lio/grpc/okhttp/OkHttpClientTransport;->startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    goto :goto_1

    .line 450
    :cond_4
    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    .line 452
    :goto_1
    return-void
.end method

.method private stopIfNecessary()V
    .locals 4

    .line 953
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 956
    :cond_0
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->stopped:Z

    if-eqz v0, :cond_1

    .line 957
    return-void

    .line 959
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->stopped:Z

    .line 961
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    if-eqz v1, :cond_2

    .line 962
    invoke-virtual {v1}, Lio/grpc/internal/KeepAliveManager;->onTransportTermination()V

    .line 964
    sget-object v1, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1, v2}, Lio/grpc/internal/SharedResourceHolder;->release(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 967
    :cond_2
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    if-eqz v1, :cond_3

    .line 968
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->getPingFailure()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/internal/Http2Ping;->failed(Ljava/lang/Throwable;)V

    .line 969
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    .line 972
    :cond_3
    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwaySent:Z

    if-nez v1, :cond_4

    .line 975
    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwaySent:Z

    .line 976
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-virtual {v0, v2, v1, v3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V

    .line 981
    :cond_4
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v0}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->close()V

    .line 982
    return-void

    .line 954
    :cond_5
    :goto_0
    return-void
.end method

.method static toGrpcStatus(Lio/grpc/okhttp/internal/framed/ErrorCode;)Lio/grpc/Status;
    .locals 4
    .param p0, "code"    # Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 1046
    sget-object v0, Lio/grpc/okhttp/OkHttpClientTransport;->ERROR_CODE_TO_STATUS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Status;

    .line 1047
    .local v0, "status":Lio/grpc/Status;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown http2 error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method enableKeepAlive(ZJJZ)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "keepAliveTimeNanos"    # J
    .param p4, "keepAliveTimeoutNanos"    # J
    .param p6, "keepAliveWithoutCalls"    # Z

    .line 344
    iput-boolean p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->enableKeepAlive:Z

    .line 345
    iput-wide p2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveTimeNanos:J

    .line 346
    iput-wide p4, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveTimeoutNanos:J

    .line 347
    iput-boolean p6, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveWithoutCalls:Z

    .line 348
    return-void
.end method

.method finishStream(ILio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Metadata;)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "status"    # Lio/grpc/Status;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "rpcProgress"    # Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .param p4, "stopDelivery"    # Z
    .param p5, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "trailers"    # Lio/grpc/Metadata;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 925
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 926
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/OkHttpClientStream;

    .line 927
    .local v1, "stream":Lio/grpc/okhttp/OkHttpClientStream;
    if-eqz v1, :cond_3

    .line 928
    if-eqz p5, :cond_0

    .line 929
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    sget-object v3, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v2, p1, v3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 931
    :cond_0
    if-eqz p2, :cond_2

    .line 932
    nop

    .line 933
    invoke-virtual {v1}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v2

    .line 938
    if-eqz p6, :cond_1

    move-object v3, p6

    goto :goto_0

    :cond_1
    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    .line 934
    :goto_0
    invoke-virtual {v2, p2, p3, p4, v3}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/Metadata;)V

    .line 940
    :cond_2
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->startPendingStreams()Z

    move-result v2

    if-nez v2, :cond_3

    .line 941
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->stopIfNecessary()V

    .line 942
    invoke-direct {p0, v1}, Lio/grpc/okhttp/OkHttpClientTransport;->maybeClearInUse(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 945
    .end local v1    # "stream":Lio/grpc/okhttp/OkHttpClientStream;
    :cond_3
    monitor-exit v0

    .line 946
    return-void

    .line 945
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getActiveStreams()[Lio/grpc/okhttp/OkHttpClientStream;
    .locals 3

    .line 829
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 830
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    sget-object v2, Lio/grpc/okhttp/OkHttpClientTransport;->EMPTY_STREAM_ARRAY:[Lio/grpc/okhttp/OkHttpClientStream;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/grpc/okhttp/OkHttpClientStream;

    monitor-exit v0

    return-object v1

    .line 831
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 822
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->attributes:Lio/grpc/Attributes;

    return-object v0
.end method

.method getHandler()Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    .locals 1

    .line 836
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    return-object v0
.end method

.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    .line 749
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->logId:Lio/grpc/InternalLogId;

    return-object v0
.end method

.method getOverridenHost()Ljava/lang/String;
    .locals 2

    .line 767
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->authorityToUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 768
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 769
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 772
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    return-object v1
.end method

.method getOverridenPort()I
    .locals 3

    .line 777
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->authorityToUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 778
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 779
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    return v1

    .line 782
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    return v1
.end method

.method getPendingStreamSize()I
    .locals 2

    .line 846
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 848
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 841
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getStats()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    .line 1053
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 1054
    .local v0, "ret":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lio/grpc/InternalChannelz$SocketStats;>;"
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1055
    :try_start_0
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;

    if-nez v2, :cond_0

    .line 1056
    new-instance v2, Lio/grpc/InternalChannelz$SocketStats;

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    .line 1057
    invoke-virtual {v3}, Lio/grpc/internal/TransportTracer;->getStats()Lio/grpc/InternalChannelz$TransportStats;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v3, Lio/grpc/InternalChannelz$SocketOptions$Builder;

    invoke-direct {v3}, Lio/grpc/InternalChannelz$SocketOptions$Builder;-><init>()V

    .line 1060
    invoke-virtual {v3}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->build()Lio/grpc/InternalChannelz$SocketOptions;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lio/grpc/InternalChannelz$SocketStats;-><init>(Lio/grpc/InternalChannelz$TransportStats;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/InternalChannelz$SocketOptions;Lio/grpc/InternalChannelz$Security;)V

    .line 1056
    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1063
    :cond_0
    new-instance v2, Lio/grpc/InternalChannelz$SocketStats;

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    .line 1064
    invoke-virtual {v3}, Lio/grpc/internal/TransportTracer;->getStats()Lio/grpc/InternalChannelz$TransportStats;

    move-result-object v4

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;

    .line 1065
    invoke-virtual {v3}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;

    .line 1066
    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v6

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;

    .line 1067
    invoke-static {v3}, Lio/grpc/okhttp/Utils;->getSocketOptions(Ljava/net/Socket;)Lio/grpc/InternalChannelz$SocketOptions;

    move-result-object v7

    iget-object v8, p0, Lio/grpc/okhttp/OkHttpClientTransport;->securityInfo:Lio/grpc/InternalChannelz$Security;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lio/grpc/InternalChannelz$SocketStats;-><init>(Lio/grpc/InternalChannelz$TransportStats;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/InternalChannelz$SocketOptions;Lio/grpc/InternalChannelz$Security;)V

    .line 1063
    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 1070
    :goto_0
    monitor-exit v1

    return-object v0

    .line 1071
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getStream(I)Lio/grpc/okhttp/OkHttpClientStream;
    .locals 3
    .param p1, "streamId"    # I

    .line 1036
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1037
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/OkHttpClientStream;

    monitor-exit v0

    return-object v1

    .line 1038
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isUsingPlaintext()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method mayHaveCreatedStream(I)Z
    .locals 3
    .param p1, "streamId"    # I

    .line 1030
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1031
    :try_start_0
    iget v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    const/4 v2, 0x1

    if-ge p1, v1, :cond_0

    and-int/lit8 v1, p1, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1032
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;
    .locals 0

    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object p1

    return-object p1
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/okhttp/OkHttpClientStream;
    .locals 21
    .param p2, "headers"    # Lio/grpc/Metadata;
    .param p3, "callOptions"    # Lio/grpc/CallOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/okhttp/OkHttpClientStream;"
        }
    .end annotation

    .line 391
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p2

    const-string v0, "method"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v0, "headers"

    invoke-static {v14, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v0, v15, Lio/grpc/okhttp/OkHttpClientTransport;->attributes:Lio/grpc/Attributes;

    .line 394
    move-object/from16 v12, p3

    invoke-static {v12, v0, v14}, Lio/grpc/internal/StatsTraceContext;->newClientContext(Lio/grpc/CallOptions;Lio/grpc/Attributes;Lio/grpc/Metadata;)Lio/grpc/internal/StatsTraceContext;

    move-result-object v16

    .line 396
    .local v16, "statsTraceCtx":Lio/grpc/internal/StatsTraceContext;
    iget-object v11, v15, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v11

    .line 397
    :try_start_0
    new-instance v0, Lio/grpc/okhttp/OkHttpClientStream;

    iget-object v4, v15, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    iget-object v6, v15, Lio/grpc/okhttp/OkHttpClientTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    iget-object v7, v15, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    iget v8, v15, Lio/grpc/okhttp/OkHttpClientTransport;->maxMessageSize:I

    iget v9, v15, Lio/grpc/okhttp/OkHttpClientTransport;->initialWindowSize:I

    iget-object v10, v15, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    iget-object v5, v15, Lio/grpc/okhttp/OkHttpClientTransport;->userAgent:Ljava/lang/String;

    iget-object v3, v15, Lio/grpc/okhttp/OkHttpClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    iget-boolean v2, v15, Lio/grpc/okhttp/OkHttpClientTransport;->useGetForSafeMethods:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    move/from16 v17, v2

    move-object/from16 v2, p1

    move-object/from16 v18, v3

    move-object/from16 v3, p2

    move-object/from16 v19, v5

    move-object/from16 v5, p0

    move-object/from16 v20, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v16

    move-object/from16 v13, v18

    move-object/from16 v14, p3

    move/from16 v15, v17

    :try_start_1
    invoke-direct/range {v1 .. v15}, Lio/grpc/okhttp/OkHttpClientStream;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/okhttp/ExceptionHandlingFrameWriter;Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OutboundFlowController;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Lio/grpc/CallOptions;Z)V

    monitor-exit v20

    return-object v0

    .line 412
    :catchall_0
    move-exception v0

    move-object/from16 v20, v11

    :goto_0
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "failureCause"    # Ljava/lang/Throwable;

    .line 856
    const-string v0, "failureCause"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    invoke-virtual {v0, p1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 858
    .local v0, "status":Lio/grpc/Status;
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    .line 859
    return-void
.end method

.method public ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    .locals 9
    .param p1, "callback"    # Lio/grpc/internal/ClientTransport$PingCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 356
    const-wide/16 v0, 0x0

    .line 359
    .local v0, "data":J
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 360
    :try_start_0
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 361
    iget-boolean v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->stopped:Z

    if-eqz v3, :cond_1

    .line 362
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->getPingFailure()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {p1, p2, v3}, Lio/grpc/internal/Http2Ping;->notifyFailed(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;)V

    .line 363
    monitor-exit v2

    return-void

    .line 365
    :cond_1
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    if-eqz v3, :cond_2

    .line 368
    nop

    .line 369
    .local v3, "p":Lio/grpc/internal/Http2Ping;
    const/4 v5, 0x0

    .local v5, "writePing":Z
    goto :goto_1

    .line 372
    .end local v3    # "p":Lio/grpc/internal/Http2Ping;
    .end local v5    # "writePing":Z
    :cond_2
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    move-wide v0, v5

    .line 373
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->stopwatchFactory:Lcom/google/common/base/Supplier;

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/base/Stopwatch;

    .line 374
    .local v3, "stopwatch":Lcom/google/common/base/Stopwatch;
    invoke-virtual {v3}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    .line 375
    new-instance v5, Lio/grpc/internal/Http2Ping;

    invoke-direct {v5, v0, v1, v3}, Lio/grpc/internal/Http2Ping;-><init>(JLcom/google/common/base/Stopwatch;)V

    iput-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    .line 376
    .local v5, "p":Lio/grpc/internal/Http2Ping;
    const/4 v6, 0x1

    .line 377
    .local v6, "writePing":Z
    iget-object v7, p0, Lio/grpc/okhttp/OkHttpClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    invoke-virtual {v7}, Lio/grpc/internal/TransportTracer;->reportKeepAliveSent()V

    move-object v3, v5

    move v5, v6

    .line 379
    .end local v6    # "writePing":Z
    .local v3, "p":Lio/grpc/internal/Http2Ping;
    .local v5, "writePing":Z
    :goto_1
    if-eqz v5, :cond_3

    .line 380
    iget-object v6, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    const/16 v7, 0x20

    ushr-long v7, v0, v7

    long-to-int v8, v7

    long-to-int v7, v0

    invoke-virtual {v6, v4, v8, v7}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->ping(ZII)V

    .line 382
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    invoke-virtual {v3, p1, p2}, Lio/grpc/internal/Http2Ping;->addCallback(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V

    .line 386
    return-void

    .line 382
    .end local v3    # "p":Lio/grpc/internal/Http2Ping;
    .end local v5    # "writePing":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method removePendingStream(Lio/grpc/okhttp/OkHttpClientStream;)V
    .locals 1
    .param p1, "pendingStream"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 473
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 474
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpClientTransport;->maybeClearInUse(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 475
    return-void
.end method

.method sendConnectionPrefaceAndSettings()V
    .locals 6

    .line 633
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->connectionPreface()V

    .line 635
    new-instance v1, Lio/grpc/okhttp/internal/framed/Settings;

    invoke-direct {v1}, Lio/grpc/okhttp/internal/framed/Settings;-><init>()V

    .line 636
    .local v1, "settings":Lio/grpc/okhttp/internal/framed/Settings;
    const/4 v2, 0x7

    iget v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->initialWindowSize:I

    invoke-static {v1, v2, v3}, Lio/grpc/okhttp/OkHttpSettingsUtil;->set(Lio/grpc/okhttp/internal/framed/Settings;II)V

    .line 637
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v2, v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->settings(Lio/grpc/okhttp/internal/framed/Settings;)V

    .line 638
    iget v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->initialWindowSize:I

    const v3, 0xffff

    if-le v2, v3, :cond_0

    .line 639
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    const/4 v5, 0x0

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v4, v5, v2, v3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->windowUpdate(IJ)V

    .line 642
    .end local v1    # "settings":Lio/grpc/okhttp/internal/framed/Settings;
    :cond_0
    monitor-exit v0

    .line 643
    return-void

    .line 642
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdown(Lio/grpc/Status;)V
    .locals 2
    .param p1, "reason"    # Lio/grpc/Status;

    .line 787
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    if-eqz v1, :cond_0

    .line 789
    monitor-exit v0

    return-void

    .line 792
    :cond_0
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    .line 793
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    invoke-interface {v1, p1}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportShutdown(Lio/grpc/Status;)V

    .line 794
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->stopIfNecessary()V

    .line 795
    monitor-exit v0

    .line 796
    return-void

    .line 795
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdownNow(Lio/grpc/Status;)V
    .locals 7
    .param p1, "reason"    # Lio/grpc/Status;

    .line 800
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpClientTransport;->shutdown(Lio/grpc/Status;)V

    .line 801
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 803
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpClientStream;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 804
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 805
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpClientStream;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 806
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/OkHttpClientStream;

    invoke-virtual {v3}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lio/grpc/Metadata;

    invoke-direct {v5}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v3, p1, v4, v5}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    .line 807
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/OkHttpClientStream;

    invoke-direct {p0, v3}, Lio/grpc/okhttp/OkHttpClientTransport;->maybeClearInUse(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 808
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpClientStream;>;"
    goto :goto_0

    .line 810
    :cond_0
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/OkHttpClientStream;

    .line 811
    .local v3, "stream":Lio/grpc/okhttp/OkHttpClientStream;
    invoke-virtual {v3}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lio/grpc/Metadata;

    invoke-direct {v6}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v4, p1, v5, v6}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    .line 812
    invoke-direct {p0, v3}, Lio/grpc/okhttp/OkHttpClientTransport;->maybeClearInUse(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 813
    .end local v3    # "stream":Lio/grpc/okhttp/OkHttpClientStream;
    goto :goto_1

    .line 814
    :cond_1
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 816
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->stopIfNecessary()V

    .line 817
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpClientStream;>;>;"
    monitor-exit v0

    .line 818
    return-void

    .line 817
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
    .locals 9
    .param p1, "listener"    # Lio/grpc/internal/ManagedClientTransport$Listener;

    .line 479
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedClientTransport$Listener;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    .line 481
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->enableKeepAlive:Z

    if-eqz v0, :cond_0

    .line 482
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {v0}, Lio/grpc/internal/SharedResourceHolder;->get(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 483
    new-instance v0, Lio/grpc/internal/KeepAliveManager;

    new-instance v2, Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;

    invoke-direct {v2, p0}, Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;-><init>(Lio/grpc/internal/ConnectionClientTransport;)V

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v4, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveTimeNanos:J

    iget-wide v6, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveTimeoutNanos:J

    iget-boolean v8, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveWithoutCalls:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lio/grpc/internal/KeepAliveManager;-><init>(Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;Ljava/util/concurrent/ScheduledExecutorService;JJZ)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    .line 486
    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onTransportStarted()V

    .line 488
    :cond_0
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->isForTest()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_0
    new-instance v2, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->testFrameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport;->testFrameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    invoke-direct {v2, p0, v3, v4}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;-><init>(Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;Lio/grpc/okhttp/internal/framed/FrameWriter;Lio/grpc/okhttp/OkHttpFrameLogger;)V

    iput-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    .line 492
    new-instance v3, Lio/grpc/okhttp/OutboundFlowController;

    invoke-direct {v3, p0, v2}, Lio/grpc/okhttp/OutboundFlowController;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/FrameWriter;)V

    iput-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    .line 493
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v2, Lio/grpc/okhttp/OkHttpClientTransport$3;

    invoke-direct {v2, p0}, Lio/grpc/okhttp/OkHttpClientTransport$3;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;)V

    invoke-virtual {v0, v2}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 509
    return-object v1

    .line 493
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 512
    :cond_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    invoke-static {v0, p0}, Lio/grpc/okhttp/AsyncSink;->sink(Lio/grpc/internal/SerializingExecutor;Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;)Lio/grpc/okhttp/AsyncSink;

    move-result-object v0

    .line 513
    .local v0, "asyncSink":Lio/grpc/okhttp/AsyncSink;
    new-instance v2, Lio/grpc/okhttp/internal/framed/Http2;

    invoke-direct {v2}, Lio/grpc/okhttp/internal/framed/Http2;-><init>()V

    .line 514
    .local v2, "variant":Lio/grpc/okhttp/internal/framed/Variant;
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lio/grpc/okhttp/internal/framed/Variant;->newWriter(Lokio/BufferedSink;Z)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v3

    .line 516
    .local v3, "rawFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    iget-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 517
    :try_start_2
    new-instance v6, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-direct {v6, p0, v3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;-><init>(Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;Lio/grpc/okhttp/internal/framed/FrameWriter;)V

    iput-object v6, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    .line 518
    new-instance v7, Lio/grpc/okhttp/OutboundFlowController;

    invoke-direct {v7, p0, v6}, Lio/grpc/okhttp/OutboundFlowController;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/FrameWriter;)V

    iput-object v7, p0, Lio/grpc/okhttp/OkHttpClientTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    .line 519
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 520
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v4, v5

    .line 523
    .local v4, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v6, Lio/grpc/okhttp/OkHttpClientTransport$4;

    invoke-direct {v6, p0, v4, v0, v2}, Lio/grpc/okhttp/OkHttpClientTransport$4;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;Ljava/util/concurrent/CountDownLatch;Lio/grpc/okhttp/AsyncSink;Lio/grpc/okhttp/internal/framed/Variant;)V

    invoke-virtual {v5, v6}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 608
    :try_start_3
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->sendConnectionPrefaceAndSettings()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 610
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 611
    nop

    .line 613
    iget-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v6, Lio/grpc/okhttp/OkHttpClientTransport$5;

    invoke-direct {v6, p0}, Lio/grpc/okhttp/OkHttpClientTransport$5;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;)V

    invoke-virtual {v5, v6}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 625
    return-object v1

    .line 610
    :catchall_1
    move-exception v1

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1

    .line 519
    .end local v4    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method streamReadyToStart(Lio/grpc/okhttp/OkHttpClientStream;)V
    .locals 5
    .param p1, "clientStream"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 417
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    sget-object v2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const/4 v3, 0x1

    new-instance v4, Lio/grpc/Metadata;

    invoke-direct {v4}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/Metadata;)V

    goto :goto_0

    .line 420
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I

    if-lt v0, v1, :cond_1

    .line 421
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpClientTransport;->setInUse(Lio/grpc/okhttp/OkHttpClientStream;)V

    goto :goto_0

    .line 424
    :cond_1
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpClientTransport;->startStream(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 426
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 741
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->logId:Lio/grpc/InternalLogId;

    .line 742
    invoke-virtual {v1}, Lio/grpc/InternalLogId;->getId()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;

    .line 743
    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    return-object v0
.end method
