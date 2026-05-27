.class final Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;
.super Ljava/lang/Object;
.source "OkHttpChannelBuilder.java"

# interfaces
.implements Lio/grpc/internal/ClientTransportFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpChannelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OkHttpTransportFactory"
.end annotation


# instance fields
.field private closed:Z

.field private final connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

.field private final enableKeepAlive:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final flowControlWindow:I

.field private final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final keepAliveTimeNanos:Lio/grpc/internal/AtomicBackoff;

.field private final keepAliveTimeoutNanos:J

.field private final keepAliveWithoutCalls:Z

.field private final maxInboundMetadataSize:I

.field private final maxMessageSize:I

.field private final socketFactory:Ljavax/net/SocketFactory;

.field private final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final timeoutService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

.field private final useGetForSafeMethods:Z

.field private final usingSharedExecutor:Z

.field private final usingSharedScheduler:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/grpc/okhttp/internal/ConnectionSpec;IZJJIZILio/grpc/internal/TransportTracer$Factory;Z)V
    .locals 16
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "timeoutService"    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "socketFactory"    # Ljavax/net/SocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "connectionSpec"    # Lio/grpc/okhttp/internal/ConnectionSpec;
    .param p7, "maxMessageSize"    # I
    .param p8, "enableKeepAlive"    # Z
    .param p9, "keepAliveTimeNanos"    # J
    .param p11, "keepAliveTimeoutNanos"    # J
    .param p13, "flowControlWindow"    # I
    .param p14, "keepAliveWithoutCalls"    # Z
    .param p15, "maxInboundMetadataSize"    # I
    .param p16, "transportTracerFactory"    # Lio/grpc/internal/TransportTracer$Factory;
    .param p17, "useGetForSafeMethods"    # Z

    .line 461
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 462
    if-nez p2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->usingSharedScheduler:Z

    .line 463
    if-eqz v4, :cond_1

    .line 464
    sget-object v4, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {v4}, Lio/grpc/internal/SharedResourceHolder;->get(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    iput-object v4, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->timeoutService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 465
    move-object/from16 v4, p3

    iput-object v4, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->socketFactory:Ljavax/net/SocketFactory;

    .line 466
    move-object/from16 v5, p4

    iput-object v5, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 467
    move-object/from16 v6, p5

    iput-object v6, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 468
    move-object/from16 v7, p6

    iput-object v7, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 469
    move/from16 v8, p7

    iput v8, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->maxMessageSize:I

    .line 470
    move/from16 v9, p8

    iput-boolean v9, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->enableKeepAlive:Z

    .line 471
    new-instance v10, Lio/grpc/internal/AtomicBackoff;

    const-string v11, "keepalive time nanos"

    move-wide/from16 v12, p9

    invoke-direct {v10, v11, v12, v13}, Lio/grpc/internal/AtomicBackoff;-><init>(Ljava/lang/String;J)V

    iput-object v10, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveTimeNanos:Lio/grpc/internal/AtomicBackoff;

    .line 472
    move-wide/from16 v10, p11

    iput-wide v10, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveTimeoutNanos:J

    .line 473
    move/from16 v14, p13

    iput v14, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->flowControlWindow:I

    .line 474
    move/from16 v15, p14

    iput-boolean v15, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveWithoutCalls:Z

    .line 475
    move/from16 v2, p15

    iput v2, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->maxInboundMetadataSize:I

    .line 476
    move/from16 v3, p17

    iput-boolean v3, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->useGetForSafeMethods:Z

    .line 478
    if-nez v1, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->usingSharedExecutor:Z

    .line 479
    nop

    .line 480
    const-string v3, "transportTracerFactory"

    move-object/from16 v4, p16

    invoke-static {v4, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/internal/TransportTracer$Factory;

    iput-object v3, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    .line 481
    if-eqz v2, :cond_3

    .line 483
    invoke-static {}, Lio/grpc/okhttp/OkHttpChannelBuilder;->access$100()Lio/grpc/internal/SharedResourceHolder$Resource;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/internal/SharedResourceHolder;->get(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iput-object v2, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->executor:Ljava/util/concurrent/Executor;

    goto :goto_3

    .line 485
    :cond_3
    iput-object v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->executor:Ljava/util/concurrent/Executor;

    .line 487
    :goto_3
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/grpc/okhttp/internal/ConnectionSpec;IZJJIZILio/grpc/internal/TransportTracer$Factory;ZLio/grpc/okhttp/OkHttpChannelBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/concurrent/Executor;
    .param p2, "x1"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "x2"    # Ljavax/net/SocketFactory;
    .param p4, "x3"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p5, "x4"    # Ljavax/net/ssl/HostnameVerifier;
    .param p6, "x5"    # Lio/grpc/okhttp/internal/ConnectionSpec;
    .param p7, "x6"    # I
    .param p8, "x7"    # Z
    .param p9, "x8"    # J
    .param p11, "x9"    # J
    .param p13, "x10"    # I
    .param p14, "x11"    # Z
    .param p15, "x12"    # I
    .param p16, "x13"    # Lio/grpc/internal/TransportTracer$Factory;
    .param p17, "x14"    # Z
    .param p18, "x15"    # Lio/grpc/okhttp/OkHttpChannelBuilder$1;

    .line 425
    invoke-direct/range {p0 .. p17}, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/grpc/okhttp/internal/ConnectionSpec;IZJJIZILio/grpc/internal/TransportTracer$Factory;Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 535
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->closed:Z

    if-eqz v0, :cond_0

    .line 536
    return-void

    .line 538
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->closed:Z

    .line 540
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->usingSharedScheduler:Z

    if-eqz v0, :cond_1

    .line 541
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->timeoutService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1}, Lio/grpc/internal/SharedResourceHolder;->release(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_1
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->usingSharedExecutor:Z

    if-eqz v0, :cond_2

    .line 545
    invoke-static {}, Lio/grpc/okhttp/OkHttpChannelBuilder;->access$100()Lio/grpc/internal/SharedResourceHolder$Resource;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lio/grpc/internal/SharedResourceHolder;->release(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    :cond_2
    return-void
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 530
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->timeoutService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public newClientTransport(Ljava/net/SocketAddress;Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;Lio/grpc/ChannelLogger;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 29
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .param p2, "options"    # Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;
    .param p3, "channelLogger"    # Lio/grpc/ChannelLogger;

    .line 492
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->closed:Z

    if-nez v1, :cond_1

    .line 495
    iget-object v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveTimeNanos:Lio/grpc/internal/AtomicBackoff;

    invoke-virtual {v1}, Lio/grpc/internal/AtomicBackoff;->getState()Lio/grpc/internal/AtomicBackoff$State;

    move-result-object v1

    .line 496
    .local v1, "keepAliveTimeNanosState":Lio/grpc/internal/AtomicBackoff$State;
    new-instance v15, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory$1;

    invoke-direct {v15, v0, v1}, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory$1;-><init>(Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;Lio/grpc/internal/AtomicBackoff$State;)V

    .line 502
    .local v15, "tooManyPingsRunnable":Ljava/lang/Runnable;
    move-object/from16 v19, p1

    check-cast v19, Ljava/net/InetSocketAddress;

    .local v19, "inetSocketAddr":Ljava/net/InetSocketAddress;
    move-object/from16 v3, v19

    .line 504
    new-instance v20, Lio/grpc/okhttp/OkHttpClientTransport;

    move-object/from16 v2, v20

    .line 506
    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 507
    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    .line 508
    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getEagAttributes()Lio/grpc/Attributes;

    move-result-object v6

    iget-object v7, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->executor:Ljava/util/concurrent/Executor;

    iget-object v8, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->socketFactory:Ljavax/net/SocketFactory;

    iget-object v9, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v10, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v11, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    iget v12, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->maxMessageSize:I

    iget v13, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->flowControlWindow:I

    .line 516
    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getHttpConnectProxiedSocketAddress()Lio/grpc/HttpConnectProxiedSocketAddress;

    move-result-object v14

    move-object/from16 v21, v1

    .end local v1    # "keepAliveTimeNanosState":Lio/grpc/internal/AtomicBackoff$State;
    .local v21, "keepAliveTimeNanosState":Lio/grpc/internal/AtomicBackoff$State;
    iget v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->maxInboundMetadataSize:I

    move/from16 v16, v1

    iget-object v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    .line 519
    invoke-virtual {v1}, Lio/grpc/internal/TransportTracer$Factory;->create()Lio/grpc/internal/TransportTracer;

    move-result-object v17

    iget-boolean v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->useGetForSafeMethods:Z

    move/from16 v18, v1

    invoke-direct/range {v2 .. v18}, Lio/grpc/okhttp/OkHttpClientTransport;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/Attributes;Ljava/util/concurrent/Executor;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/grpc/okhttp/internal/ConnectionSpec;IILio/grpc/HttpConnectProxiedSocketAddress;Ljava/lang/Runnable;ILio/grpc/internal/TransportTracer;Z)V

    move-object/from16 v1, v20

    .line 521
    .local v1, "transport":Lio/grpc/okhttp/OkHttpClientTransport;
    iget-boolean v2, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->enableKeepAlive:Z

    if-eqz v2, :cond_0

    .line 522
    const/16 v23, 0x1

    .line 523
    invoke-virtual/range {v21 .. v21}, Lio/grpc/internal/AtomicBackoff$State;->get()J

    move-result-wide v24

    iget-wide v2, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveTimeoutNanos:J

    iget-boolean v4, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveWithoutCalls:Z

    .line 522
    move-object/from16 v22, v1

    move-wide/from16 v26, v2

    move/from16 v28, v4

    invoke-virtual/range {v22 .. v28}, Lio/grpc/okhttp/OkHttpClientTransport;->enableKeepAlive(ZJJZ)V

    .line 525
    :cond_0
    return-object v1

    .line 493
    .end local v1    # "transport":Lio/grpc/okhttp/OkHttpClientTransport;
    .end local v15    # "tooManyPingsRunnable":Ljava/lang/Runnable;
    .end local v19    # "inetSocketAddr":Ljava/net/InetSocketAddress;
    .end local v21    # "keepAliveTimeNanosState":Lio/grpc/internal/AtomicBackoff$State;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The transport factory is closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
