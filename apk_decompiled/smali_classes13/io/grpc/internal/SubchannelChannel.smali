.class final Lio/grpc/internal/SubchannelChannel;
.super Lio/grpc/Channel;
.source "SubchannelChannel.java"


# static fields
.field static final NOT_READY_ERROR:Lio/grpc/Status;

.field static final WAIT_FOR_READY_ERROR:Lio/grpc/Status;

.field private static final notReadyTransport:Lio/grpc/internal/FailingClientTransport;


# instance fields
.field private final callsTracer:Lio/grpc/internal/CallTracer;

.field private final deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final subchannel:Lio/grpc/internal/InternalSubchannel;

.field private final transportProvider:Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 39
    const-string v1, "Subchannel is NOT READY"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/SubchannelChannel;->NOT_READY_ERROR:Lio/grpc/Status;

    .line 41
    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 42
    const-string v2, "wait-for-ready RPC is not supported on Subchannel.asChannel()"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/SubchannelChannel;->WAIT_FOR_READY_ERROR:Lio/grpc/Status;

    .line 44
    new-instance v1, Lio/grpc/internal/FailingClientTransport;

    sget-object v2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {v1, v0, v2}, Lio/grpc/internal/FailingClientTransport;-><init>(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;)V

    sput-object v1, Lio/grpc/internal/SubchannelChannel;->notReadyTransport:Lio/grpc/internal/FailingClientTransport;

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/InternalSubchannel;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/CallTracer;)V
    .locals 1
    .param p1, "subchannel"    # Lio/grpc/internal/InternalSubchannel;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "deadlineCancellationExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p4, "callsTracer"    # Lio/grpc/internal/CallTracer;

    .line 71
    invoke-direct {p0}, Lio/grpc/Channel;-><init>()V

    .line 51
    new-instance v0, Lio/grpc/internal/SubchannelChannel$1;

    invoke-direct {v0, p0}, Lio/grpc/internal/SubchannelChannel$1;-><init>(Lio/grpc/internal/SubchannelChannel;)V

    iput-object v0, p0, Lio/grpc/internal/SubchannelChannel;->transportProvider:Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;

    .line 72
    const-string v0, "subchannel"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/InternalSubchannel;

    iput-object v0, p0, Lio/grpc/internal/SubchannelChannel;->subchannel:Lio/grpc/internal/InternalSubchannel;

    .line 73
    const-string v0, "executor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/internal/SubchannelChannel;->executor:Ljava/util/concurrent/Executor;

    .line 74
    nop

    .line 75
    const-string v0, "deadlineCancellationExecutor"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/internal/SubchannelChannel;->deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    const-string v0, "callsTracer"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/CallTracer;

    iput-object v0, p0, Lio/grpc/internal/SubchannelChannel;->callsTracer:Lio/grpc/internal/CallTracer;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/SubchannelChannel;)Lio/grpc/internal/InternalSubchannel;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/SubchannelChannel;

    .line 36
    iget-object v0, p0, Lio/grpc/internal/SubchannelChannel;->subchannel:Lio/grpc/internal/InternalSubchannel;

    return-object v0
.end method

.method static synthetic access$100()Lio/grpc/internal/FailingClientTransport;
    .locals 1

    .line 36
    sget-object v0, Lio/grpc/internal/SubchannelChannel;->notReadyTransport:Lio/grpc/internal/FailingClientTransport;

    return-object v0
.end method


# virtual methods
.method public authority()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lio/grpc/internal/SubchannelChannel;->subchannel:Lio/grpc/internal/InternalSubchannel;

    invoke-virtual {v0}, Lio/grpc/internal/InternalSubchannel;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;
    .locals 10
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/ClientCall<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 83
    .local p1, "methodDescriptor":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TRequestT;TResponseT;>;"
    invoke-virtual {p2}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/SubchannelChannel;->executor:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 84
    .local v0, "effectiveExecutor":Ljava/util/concurrent/Executor;
    :goto_0
    invoke-virtual {p2}, Lio/grpc/CallOptions;->isWaitForReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    new-instance v1, Lio/grpc/internal/SubchannelChannel$2;

    invoke-direct {v1, p0, v0}, Lio/grpc/internal/SubchannelChannel$2;-><init>(Lio/grpc/internal/SubchannelChannel;Ljava/util/concurrent/Executor;)V

    return-object v1

    .line 109
    :cond_1
    new-instance v9, Lio/grpc/internal/ClientCallImpl;

    sget-object v1, Lio/grpc/internal/GrpcUtil;->CALL_OPTIONS_RPC_OWNED_BY_BALANCER:Lio/grpc/CallOptions$Key;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 111
    invoke-virtual {p2, v1, v2}, Lio/grpc/CallOptions;->withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/SubchannelChannel;->transportProvider:Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;

    iget-object v6, p0, Lio/grpc/internal/SubchannelChannel;->deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lio/grpc/internal/SubchannelChannel;->callsTracer:Lio/grpc/internal/CallTracer;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v8}, Lio/grpc/internal/ClientCallImpl;-><init>(Lio/grpc/MethodDescriptor;Ljava/util/concurrent/Executor;Lio/grpc/CallOptions;Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/CallTracer;Z)V

    .line 109
    return-object v9
.end method
