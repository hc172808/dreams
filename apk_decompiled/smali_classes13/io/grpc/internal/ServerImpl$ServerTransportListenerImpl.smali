.class final Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;
.super Ljava/lang/Object;
.source "ServerImpl.java"

# interfaces
.implements Lio/grpc/internal/ServerTransportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServerTransportListenerImpl"
.end annotation


# instance fields
.field private attributes:Lio/grpc/Attributes;

.field private handshakeTimeoutFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/grpc/internal/ServerImpl;

.field private final transport:Lio/grpc/internal/ServerTransport;


# direct methods
.method constructor <init>(Lio/grpc/internal/ServerImpl;Lio/grpc/internal/ServerTransport;)V
    .locals 0
    .param p2, "transport"    # Lio/grpc/internal/ServerTransport;

    .line 422
    iput-object p1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->transport:Lio/grpc/internal/ServerTransport;

    .line 424
    return-void
.end method

.method static synthetic access$1900(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/ServerMethodDefinition;Lio/grpc/Metadata;Lio/grpc/Context$CancellableContext;Lio/grpc/internal/StatsTraceContext;Lio/perfmark/Tag;)Lio/grpc/internal/ServerStreamListener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;
    .param p1, "x1"    # Lio/grpc/internal/ServerStream;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lio/grpc/ServerMethodDefinition;
    .param p4, "x4"    # Lio/grpc/Metadata;
    .param p5, "x5"    # Lio/grpc/Context$CancellableContext;
    .param p6, "x6"    # Lio/grpc/internal/StatsTraceContext;
    .param p7, "x7"    # Lio/perfmark/Tag;

    .line 417
    invoke-direct/range {p0 .. p7}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->startCall(Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/ServerMethodDefinition;Lio/grpc/Metadata;Lio/grpc/Context$CancellableContext;Lio/grpc/internal/StatsTraceContext;Lio/perfmark/Tag;)Lio/grpc/internal/ServerStreamListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;)Lio/grpc/internal/ServerTransport;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    .line 417
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->transport:Lio/grpc/internal/ServerTransport;

    return-object v0
.end method

.method private createContext(Lio/grpc/Metadata;Lio/grpc/internal/StatsTraceContext;)Lio/grpc/Context$CancellableContext;
    .locals 6
    .param p1, "headers"    # Lio/grpc/Metadata;
    .param p2, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;

    .line 593
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMEOUT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v0}, Lio/grpc/Metadata;->get(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 595
    .local v0, "timeoutNanos":Ljava/lang/Long;
    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerImpl;->access$2000(Lio/grpc/internal/ServerImpl;)Lio/grpc/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/grpc/internal/StatsTraceContext;->serverFilterContext(Lio/grpc/Context;)Lio/grpc/Context;

    move-result-object v1

    .line 597
    .local v1, "baseContext":Lio/grpc/Context;
    if-nez v0, :cond_0

    .line 598
    invoke-virtual {v1}, Lio/grpc/Context;->withCancellation()Lio/grpc/Context$CancellableContext;

    move-result-object v2

    return-object v2

    .line 601
    :cond_0
    nop

    .line 603
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v5}, Lio/grpc/internal/ServerImpl;->access$2100(Lio/grpc/internal/ServerImpl;)Lio/grpc/Deadline$Ticker;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lio/grpc/Deadline;->after(JLjava/util/concurrent/TimeUnit;Lio/grpc/Deadline$Ticker;)Lio/grpc/Deadline;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->transport:Lio/grpc/internal/ServerTransport;

    .line 604
    invoke-interface {v3}, Lio/grpc/internal/ServerTransport;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 602
    invoke-virtual {v1, v2, v3}, Lio/grpc/Context;->withDeadline(Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/Context$CancellableContext;

    move-result-object v2

    .line 606
    .local v2, "context":Lio/grpc/Context$CancellableContext;
    return-object v2
.end method

.method private startCall(Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/ServerMethodDefinition;Lio/grpc/Metadata;Lio/grpc/Context$CancellableContext;Lio/grpc/internal/StatsTraceContext;Lio/perfmark/Tag;)Lio/grpc/internal/ServerStreamListener;
    .locals 12
    .param p1, "stream"    # Lio/grpc/internal/ServerStream;
    .param p2, "fullMethodName"    # Ljava/lang/String;
    .param p4, "headers"    # Lio/grpc/Metadata;
    .param p5, "context"    # Lio/grpc/Context$CancellableContext;
    .param p6, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;
    .param p7, "tag"    # Lio/perfmark/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/ServerStream;",
            "Ljava/lang/String;",
            "Lio/grpc/ServerMethodDefinition<",
            "TReqT;TRespT;>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/Context$CancellableContext;",
            "Lio/grpc/internal/StatsTraceContext;",
            "Lio/perfmark/Tag;",
            ")",
            "Lio/grpc/internal/ServerStreamListener;"
        }
    .end annotation

    .line 614
    .local p3, "methodDef":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<TReqT;TRespT;>;"
    move-object v7, p0

    new-instance v0, Lio/grpc/internal/ServerCallInfoImpl;

    .line 616
    invoke-virtual {p3}, Lio/grpc/ServerMethodDefinition;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v1

    .line 617
    invoke-interface {p1}, Lio/grpc/internal/ServerStream;->getAttributes()Lio/grpc/Attributes;

    move-result-object v2

    .line 618
    invoke-interface {p1}, Lio/grpc/internal/ServerStream;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/internal/ServerCallInfoImpl;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/Attributes;Ljava/lang/String;)V

    .line 614
    move-object/from16 v8, p6

    invoke-virtual {v8, v0}, Lio/grpc/internal/StatsTraceContext;->serverCallStarted(Lio/grpc/ServerStreamTracer$ServerCallInfo;)V

    .line 619
    invoke-virtual {p3}, Lio/grpc/ServerMethodDefinition;->getServerCallHandler()Lio/grpc/ServerCallHandler;

    move-result-object v0

    .line 620
    .local v0, "handler":Lio/grpc/ServerCallHandler;, "Lio/grpc/ServerCallHandler<TReqT;TRespT;>;"
    iget-object v1, v7, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerImpl;->access$2200(Lio/grpc/internal/ServerImpl;)[Lio/grpc/ServerInterceptor;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move-object v9, v0

    .end local v0    # "handler":Lio/grpc/ServerCallHandler;, "Lio/grpc/ServerCallHandler<TReqT;TRespT;>;"
    .local v9, "handler":Lio/grpc/ServerCallHandler;, "Lio/grpc/ServerCallHandler<TReqT;TRespT;>;"
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v0, v1, v3

    .line 621
    .local v0, "interceptor":Lio/grpc/ServerInterceptor;
    invoke-static {v0, v9}, Lio/grpc/InternalServerInterceptors;->interceptCallHandler(Lio/grpc/ServerInterceptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerCallHandler;

    move-result-object v9

    .line 620
    .end local v0    # "interceptor":Lio/grpc/ServerInterceptor;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 623
    :cond_0
    move-object v10, p3

    invoke-virtual {p3, v9}, Lio/grpc/ServerMethodDefinition;->withServerCallHandler(Lio/grpc/ServerCallHandler;)Lio/grpc/ServerMethodDefinition;

    move-result-object v11

    .line 624
    .local v11, "interceptedDef":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<TReqT;TRespT;>;"
    iget-object v0, v7, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$2300(Lio/grpc/internal/ServerImpl;)Lio/grpc/BinaryLog;

    move-result-object v0

    if-nez v0, :cond_1

    .line 625
    move-object v2, v11

    goto :goto_1

    :cond_1
    iget-object v0, v7, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$2300(Lio/grpc/internal/ServerImpl;)Lio/grpc/BinaryLog;

    move-result-object v0

    invoke-virtual {v0, v11}, Lio/grpc/BinaryLog;->wrapMethodDefinition(Lio/grpc/ServerMethodDefinition;)Lio/grpc/ServerMethodDefinition;

    move-result-object v0

    move-object v2, v0

    .line 626
    .local v2, "wMethodDef":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    :goto_1
    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->startWrappedCall(Ljava/lang/String;Lio/grpc/ServerMethodDefinition;Lio/grpc/internal/ServerStream;Lio/grpc/Metadata;Lio/grpc/Context$CancellableContext;Lio/perfmark/Tag;)Lio/grpc/internal/ServerStreamListener;

    move-result-object v0

    return-object v0
.end method

.method private startWrappedCall(Ljava/lang/String;Lio/grpc/ServerMethodDefinition;Lio/grpc/internal/ServerStream;Lio/grpc/Metadata;Lio/grpc/Context$CancellableContext;Lio/perfmark/Tag;)Lio/grpc/internal/ServerStreamListener;
    .locals 11
    .param p1, "fullMethodName"    # Ljava/lang/String;
    .param p3, "stream"    # Lio/grpc/internal/ServerStream;
    .param p4, "headers"    # Lio/grpc/Metadata;
    .param p5, "context"    # Lio/grpc/Context$CancellableContext;
    .param p6, "tag"    # Lio/perfmark/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<WReqT:",
            "Ljava/lang/Object;",
            "WRespT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/grpc/ServerMethodDefinition<",
            "TWReqT;TWRespT;>;",
            "Lio/grpc/internal/ServerStream;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/Context$CancellableContext;",
            "Lio/perfmark/Tag;",
            ")",
            "Lio/grpc/internal/ServerStreamListener;"
        }
    .end annotation

    .line 637
    .local p2, "methodDef":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<TWReqT;TWRespT;>;"
    move-object v0, p0

    new-instance v10, Lio/grpc/internal/ServerCallImpl;

    .line 639
    invoke-virtual {p2}, Lio/grpc/ServerMethodDefinition;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v3

    iget-object v1, v0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    .line 642
    invoke-static {v1}, Lio/grpc/internal/ServerImpl;->access$1400(Lio/grpc/internal/ServerImpl;)Lio/grpc/DecompressorRegistry;

    move-result-object v6

    iget-object v1, v0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    .line 643
    invoke-static {v1}, Lio/grpc/internal/ServerImpl;->access$2400(Lio/grpc/internal/ServerImpl;)Lio/grpc/CompressorRegistry;

    move-result-object v7

    iget-object v1, v0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    .line 644
    invoke-static {v1}, Lio/grpc/internal/ServerImpl;->access$2500(Lio/grpc/internal/ServerImpl;)Lio/grpc/internal/CallTracer;

    move-result-object v8

    move-object v1, v10

    move-object v2, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lio/grpc/internal/ServerCallImpl;-><init>(Lio/grpc/internal/ServerStream;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/Context$CancellableContext;Lio/grpc/DecompressorRegistry;Lio/grpc/CompressorRegistry;Lio/grpc/internal/CallTracer;Lio/perfmark/Tag;)V

    .line 647
    .local v1, "call":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TWReqT;TWRespT;>;"
    nop

    .line 648
    invoke-virtual {p2}, Lio/grpc/ServerMethodDefinition;->getServerCallHandler()Lio/grpc/ServerCallHandler;

    move-result-object v2

    move-object v3, p4

    invoke-interface {v2, v1, p4}, Lio/grpc/ServerCallHandler;->startCall(Lio/grpc/ServerCall;Lio/grpc/Metadata;)Lio/grpc/ServerCall$Listener;

    move-result-object v2

    .line 649
    .local v2, "listener":Lio/grpc/ServerCall$Listener;, "Lio/grpc/ServerCall$Listener<TWReqT;>;"
    if-eqz v2, :cond_0

    .line 653
    invoke-virtual {v1, v2}, Lio/grpc/internal/ServerCallImpl;->newServerStreamListener(Lio/grpc/ServerCall$Listener;)Lio/grpc/internal/ServerStreamListener;

    move-result-object v4

    return-object v4

    .line 650
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startCall() returned a null listener for method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private streamCreatedInternal(Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/Metadata;Lio/perfmark/Tag;)V
    .locals 18
    .param p1, "stream"    # Lio/grpc/internal/ServerStream;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "headers"    # Lio/grpc/Metadata;
    .param p4, "tag"    # Lio/perfmark/Tag;

    .line 485
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v12, v0}, Lio/grpc/Metadata;->containsKey(Lio/grpc/Metadata$Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v12, v0}, Lio/grpc/Metadata;->get(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 487
    .local v0, "encoding":Ljava/lang/String;
    iget-object v1, v10, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerImpl;->access$1400(Lio/grpc/internal/ServerImpl;)Lio/grpc/DecompressorRegistry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/DecompressorRegistry;->lookupDecompressor(Ljava/lang/String;)Lio/grpc/Decompressor;

    move-result-object v1

    .line 488
    .local v1, "decompressor":Lio/grpc/Decompressor;
    if-nez v1, :cond_0

    .line 489
    sget-object v2, Lio/grpc/Status;->UNIMPLEMENTED:Lio/grpc/Status;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 491
    const-string v4, "Can\'t find decompressor for %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 490
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    .line 489
    invoke-interface {v11, v2, v3}, Lio/grpc/internal/ServerStream;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 493
    return-void

    .line 495
    :cond_0
    invoke-interface {v11, v1}, Lio/grpc/internal/ServerStream;->setDecompressor(Lio/grpc/Decompressor;)V

    .line 498
    .end local v0    # "encoding":Ljava/lang/String;
    .end local v1    # "decompressor":Lio/grpc/Decompressor;
    :cond_1
    nop

    .line 499
    invoke-interface/range {p1 .. p1}, Lio/grpc/internal/ServerStream;->statsTraceContext()Lio/grpc/internal/StatsTraceContext;

    move-result-object v0

    .line 498
    const-string v1, "statsTraceCtx not present from stream"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lio/grpc/internal/StatsTraceContext;

    .line 501
    .local v13, "statsTraceCtx":Lio/grpc/internal/StatsTraceContext;
    invoke-direct {v10, v12, v13}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->createContext(Lio/grpc/Metadata;Lio/grpc/internal/StatsTraceContext;)Lio/grpc/Context$CancellableContext;

    move-result-object v14

    .line 505
    .local v14, "context":Lio/grpc/Context$CancellableContext;
    iget-object v0, v10, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$1500(Lio/grpc/internal/ServerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 506
    new-instance v0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;

    invoke-direct {v0}, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;-><init>()V

    move-object v15, v0

    .local v0, "wrappedExecutor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 508
    .end local v0    # "wrappedExecutor":Ljava/util/concurrent/Executor;
    :cond_2
    new-instance v0, Lio/grpc/internal/SerializingExecutor;

    iget-object v1, v10, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerImpl;->access$1500(Lio/grpc/internal/ServerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/internal/SerializingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    move-object v15, v0

    .line 511
    .local v15, "wrappedExecutor":Ljava/util/concurrent/Executor;
    :goto_0
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v16

    .line 513
    .local v16, "link":Lio/perfmark/Link;
    new-instance v6, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    iget-object v0, v10, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    .line 515
    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$1500(Lio/grpc/internal/ServerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v2

    move-object v0, v6

    move-object v1, v15

    move-object/from16 v3, p1

    move-object v4, v14

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lio/grpc/internal/ServerStream;Lio/grpc/Context$CancellableContext;Lio/perfmark/Tag;)V

    move-object v9, v6

    .line 516
    .local v9, "jumpListener":Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;
    invoke-interface {v11, v9}, Lio/grpc/internal/ServerStream;->setListener(Lio/grpc/internal/ServerStreamListener;)V

    .line 588
    new-instance v8, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p4

    move-object/from16 v4, v16

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object v10, v8

    move-object v8, v13

    move-object/from16 v17, v9

    .end local v9    # "jumpListener":Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;
    .local v17, "jumpListener":Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;
    invoke-direct/range {v0 .. v9}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;-><init>(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;Lio/grpc/Context$CancellableContext;Lio/perfmark/Tag;Lio/perfmark/Link;Ljava/lang/String;Lio/grpc/internal/ServerStream;Lio/grpc/Metadata;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)V

    invoke-interface {v15, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 589
    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .line 433
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$1000(Lio/grpc/internal/ServerImpl;)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 434
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->transport:Lio/grpc/internal/ServerTransport;

    invoke-interface {v0}, Lio/grpc/internal/ServerTransport;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1TransportShutdownNow;

    invoke-direct {v1, p0}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1TransportShutdownNow;-><init>(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;)V

    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    .line 435
    invoke-static {v2}, Lio/grpc/internal/ServerImpl;->access$1000(Lio/grpc/internal/ServerImpl;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->handshakeTimeoutFuture:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 438
    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1;

    invoke-direct {v1, p0}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1;-><init>(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->handshakeTimeoutFuture:Ljava/util/concurrent/Future;

    .line 442
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$1100(Lio/grpc/internal/ServerImpl;)Lio/grpc/InternalChannelz;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->transport:Lio/grpc/internal/ServerTransport;

    invoke-virtual {v0, v1, v2}, Lio/grpc/InternalChannelz;->addServerSocket(Lio/grpc/InternalInstrumented;Lio/grpc/InternalInstrumented;)V

    .line 443
    return-void
.end method

.method public streamCreated(Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/Metadata;)V
    .locals 3
    .param p1, "stream"    # Lio/grpc/internal/ServerStream;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "headers"    # Lio/grpc/Metadata;

    .line 473
    invoke-interface {p1}, Lio/grpc/internal/ServerStream;->streamId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2, v0, v1}, Lio/perfmark/PerfMark;->createTag(Ljava/lang/String;J)Lio/perfmark/Tag;

    move-result-object v0

    .line 474
    .local v0, "tag":Lio/perfmark/Tag;
    const-string v1, "ServerTransportListener.streamCreated"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 476
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->streamCreatedInternal(Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/Metadata;Lio/perfmark/Tag;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 479
    nop

    .line 480
    return-void

    .line 478
    :catchall_0
    move-exception v2

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v2
.end method

.method public transportReady(Lio/grpc/Attributes;)Lio/grpc/Attributes;
    .locals 4
    .param p1, "attributes"    # Lio/grpc/Attributes;

    .line 447
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->handshakeTimeoutFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->handshakeTimeoutFuture:Ljava/util/concurrent/Future;

    .line 450
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$1200(Lio/grpc/internal/ServerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerTransportFilter;

    .line 451
    .local v1, "filter":Lio/grpc/ServerTransportFilter;
    invoke-virtual {v1, p1}, Lio/grpc/ServerTransportFilter;->transportReady(Lio/grpc/Attributes;)Lio/grpc/Attributes;

    move-result-object v2

    const-string v3, "Filter %s returned null"

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Lio/grpc/Attributes;

    .line 453
    .end local v1    # "filter":Lio/grpc/ServerTransportFilter;
    goto :goto_0

    .line 454
    :cond_0
    iput-object p1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->attributes:Lio/grpc/Attributes;

    .line 455
    return-object p1
.end method

.method public transportTerminated()V
    .locals 3

    .line 460
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->handshakeTimeoutFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 461
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->handshakeTimeoutFuture:Ljava/util/concurrent/Future;

    .line 464
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$1200(Lio/grpc/internal/ServerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerTransportFilter;

    .line 465
    .local v1, "filter":Lio/grpc/ServerTransportFilter;
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->attributes:Lio/grpc/Attributes;

    invoke-virtual {v1, v2}, Lio/grpc/ServerTransportFilter;->transportTerminated(Lio/grpc/Attributes;)V

    .line 466
    .end local v1    # "filter":Lio/grpc/ServerTransportFilter;
    goto :goto_0

    .line 467
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->transport:Lio/grpc/internal/ServerTransport;

    invoke-static {v0, v1}, Lio/grpc/internal/ServerImpl;->access$1300(Lio/grpc/internal/ServerImpl;Lio/grpc/internal/ServerTransport;)V

    .line 468
    return-void
.end method
