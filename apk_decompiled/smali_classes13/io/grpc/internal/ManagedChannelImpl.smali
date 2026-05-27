.class final Lio/grpc/internal/ManagedChannelImpl;
.super Lio/grpc/ManagedChannel;
.source "ManagedChannelImpl.java"

# interfaces
.implements Lio/grpc/InternalInstrumented;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;,
        Lio/grpc/internal/ManagedChannelImpl$ResolutionState;,
        Lio/grpc/internal/ManagedChannelImpl$ScParser;,
        Lio/grpc/internal/ManagedChannelImpl$RestrictedScheduledExecutor;,
        Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;,
        Lio/grpc/internal/ManagedChannelImpl$IdleModeStateAggregator;,
        Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;,
        Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;,
        Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;,
        Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;,
        Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;,
        Lio/grpc/internal/ManagedChannelImpl$RealChannel;,
        Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;,
        Lio/grpc/internal/ManagedChannelImpl$DelayedNameResolverRefresh;,
        Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ManagedChannel;",
        "Lio/grpc/InternalInstrumented<",
        "Lio/grpc/InternalChannelz$ChannelStats;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_SERVICE_CONFIG:Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

.field static final IDLE_TIMEOUT_MILLIS_DISABLE:J = -0x1L

.field static final SHUTDOWN_NOW_STATUS:Lio/grpc/Status;

.field static final SHUTDOWN_STATUS:Lio/grpc/Status;

.field static final SUBCHANNEL_SHUTDOWN_DELAY_SECONDS:J = 0x5L

.field static final SUBCHANNEL_SHUTDOWN_STATUS:Lio/grpc/Status;

.field static final URI_PATTERN:Ljava/util/regex/Pattern;

.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final backoffPolicyProvider:Lio/grpc/internal/BackoffPolicy$Provider;

.field private final balancerRpcExecutorHolder:Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

.field private final balancerRpcExecutorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final callTracerFactory:Lio/grpc/internal/CallTracer$Factory;

.field private final channelBufferLimit:J

.field private final channelBufferUsed:Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

.field private final channelCallTracer:Lio/grpc/internal/CallTracer;

.field private final channelLogger:Lio/grpc/ChannelLogger;

.field private final channelStateManager:Lio/grpc/internal/ConnectivityStateManager;

.field private final channelTracer:Lio/grpc/internal/ChannelTracer;

.field private final channelz:Lio/grpc/InternalChannelz;

.field private final compressorRegistry:Lio/grpc/CompressorRegistry;

.field private final decompressorRegistry:Lio/grpc/DecompressorRegistry;

.field private final defaultServiceConfig:Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final delayedTransport:Lio/grpc/internal/DelayedClientTransport;

.field private final delayedTransportListener:Lio/grpc/internal/ManagedClientTransport$Listener;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final executorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private fullStreamDecompression:Z

.field private final idleTimeoutMillis:J

.field private final idleTimer:Lio/grpc/internal/Rescheduler;

.field final inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/InUseStateAggregator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final interceptorChannel:Lio/grpc/Channel;

.field private lastResolutionState:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

.field private lastServiceConfig:Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

.field private lbHelper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final loadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

.field private final logId:Lio/grpc/InternalLogId;

.field private final lookUpServiceConfig:Z

.field private final maxTraceEvents:I

.field private nameResolver:Lio/grpc/NameResolver;

.field private final nameResolverArgs:Lio/grpc/NameResolver$Args;

.field private nameResolverBackoffPolicy:Lio/grpc/internal/BackoffPolicy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final nameResolverFactory:Lio/grpc/NameResolver$Factory;

.field private final nameResolverRegistry:Lio/grpc/NameResolverRegistry;

.field private nameResolverStarted:Z

.field private final offloadExecutorHolder:Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

.field private final oobChannels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/grpc/internal/OobChannel;",
            ">;"
        }
    .end annotation
.end field

.field private panicMode:Z

.field private final perRpcBufferLimit:J

.field private final retryEnabled:Z

.field private final scheduledExecutor:Lio/grpc/internal/ManagedChannelImpl$RestrictedScheduledExecutor;

.field private scheduledNameResolverRefresh:Lio/grpc/SynchronizationContext$ScheduledHandle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final serviceConfigInterceptor:Lio/grpc/internal/ServiceConfigInterceptor;

.field private serviceConfigUpdated:Z

.field private final shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private shutdownNowed:Z

.field private final stopwatchSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;"
        }
    .end annotation
.end field

.field private volatile subchannelPicker:Lio/grpc/LoadBalancer$SubchannelPicker;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final subchannels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/grpc/internal/InternalSubchannel;",
            ">;"
        }
    .end annotation
.end field

.field final syncContext:Lio/grpc/SynchronizationContext;

.field private final target:Ljava/lang/String;

.field private volatile terminated:Z

.field private final terminatedLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile terminating:Z

.field private final timeProvider:Lio/grpc/internal/TimeProvider;

.field private final transportFactory:Lio/grpc/internal/ClientTransportFactory;

.field private final transportProvider:Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;

.field private final uncommittedRetriableStreamsRegistry:Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

.field private final userAgent:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 108
    const-class v0, Lio/grpc/internal/ManagedChannelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelImpl;->logger:Ljava/util/logging/Logger;

    .line 114
    const-string v0, "[a-zA-Z][a-zA-Z0-9+.-]*:/.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelImpl;->URI_PATTERN:Ljava/util/regex/Pattern;

    .line 122
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 123
    const-string v1, "Channel shutdownNow invoked"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelImpl;->SHUTDOWN_NOW_STATUS:Lio/grpc/Status;

    .line 126
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 127
    const-string v1, "Channel shutdown invoked"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelImpl;->SHUTDOWN_STATUS:Lio/grpc/Status;

    .line 130
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 131
    const-string v1, "Subchannel shutdown invoked"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelImpl;->SUBCHANNEL_SHUTDOWN_STATUS:Lio/grpc/Status;

    .line 133
    new-instance v0, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 136
    invoke-static {}, Lio/grpc/internal/ManagedChannelServiceConfig;->empty()Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;-><init>(Ljava/util/Map;Lio/grpc/internal/ManagedChannelServiceConfig;)V

    sput-object v0, Lio/grpc/internal/ManagedChannelImpl;->EMPTY_SERVICE_CONFIG:Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    .line 133
    return-void
.end method

.method constructor <init>(Lio/grpc/internal/AbstractManagedChannelImplBuilder;Lio/grpc/internal/ClientTransportFactory;Lio/grpc/internal/BackoffPolicy$Provider;Lio/grpc/internal/ObjectPool;Lcom/google/common/base/Supplier;Ljava/util/List;Lio/grpc/internal/TimeProvider;)V
    .locals 26
    .param p2, "clientTransportFactory"    # Lio/grpc/internal/ClientTransportFactory;
    .param p3, "backoffPolicyProvider"    # Lio/grpc/internal/BackoffPolicy$Provider;
    .param p7, "timeProvider"    # Lio/grpc/internal/TimeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/AbstractManagedChannelImplBuilder<",
            "*>;",
            "Lio/grpc/internal/ClientTransportFactory;",
            "Lio/grpc/internal/BackoffPolicy$Provider;",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;",
            "Lio/grpc/internal/TimeProvider;",
            ")V"
        }
    .end annotation

    .line 561
    .local p1, "builder":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<*>;"
    .local p4, "balancerRpcExecutorPool":Lio/grpc/internal/ObjectPool;, "Lio/grpc/internal/ObjectPool<+Ljava/util/concurrent/Executor;>;"
    .local p5, "stopwatchSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/common/base/Stopwatch;>;"
    .local p6, "interceptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    invoke-direct/range {p0 .. p0}, Lio/grpc/ManagedChannel;-><init>()V

    .line 154
    new-instance v4, Lio/grpc/SynchronizationContext;

    new-instance v5, Lio/grpc/internal/ManagedChannelImpl$1;

    invoke-direct {v5, v0}, Lio/grpc/internal/ManagedChannelImpl$1;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    invoke-direct {v4, v5}, Lio/grpc/SynchronizationContext;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v4, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    .line 176
    new-instance v5, Lio/grpc/internal/ConnectivityStateManager;

    invoke-direct {v5}, Lio/grpc/internal/ConnectivityStateManager;-><init>()V

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->channelStateManager:Lio/grpc/internal/ConnectivityStateManager;

    .line 211
    new-instance v5, Ljava/util/HashSet;

    const/16 v6, 0x10

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-direct {v5, v6, v7}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->subchannels:Ljava/util/Set;

    .line 214
    new-instance v5, Ljava/util/HashSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v7}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->oobChannels:Ljava/util/Set;

    .line 218
    new-instance v5, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

    const/4 v7, 0x0

    invoke-direct {v5, v0, v7}, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->uncommittedRetriableStreamsRegistry:Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

    .line 237
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 244
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->terminatedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 254
    sget-object v5, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->NO_RESOLUTION:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->lastResolutionState:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    .line 257
    sget-object v5, Lio/grpc/internal/ManagedChannelImpl;->EMPTY_SERVICE_CONFIG:Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->lastServiceConfig:Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    .line 261
    iput-boolean v8, v0, Lio/grpc/internal/ManagedChannelImpl;->serviceConfigUpdated:Z

    .line 265
    new-instance v5, Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    invoke-direct {v5}, Lio/grpc/internal/RetriableStream$ChannelBufferMeter;-><init>()V

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->channelBufferUsed:Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    .line 274
    new-instance v5, Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;

    invoke-direct {v5, v0, v7}, Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->delayedTransportListener:Lio/grpc/internal/ManagedClientTransport$Listener;

    .line 290
    new-instance v9, Lio/grpc/internal/ManagedChannelImpl$IdleModeStateAggregator;

    invoke-direct {v9, v0, v7}, Lio/grpc/internal/ManagedChannelImpl$IdleModeStateAggregator;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V

    iput-object v9, v0, Lio/grpc/internal/ManagedChannelImpl;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    .line 550
    new-instance v9, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;

    invoke-direct {v9, v0, v7}, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V

    iput-object v9, v0, Lio/grpc/internal/ManagedChannelImpl;->transportProvider:Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;

    .line 562
    iget-object v9, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->target:Ljava/lang/String;

    const-string v10, "target"

    invoke-static {v9, v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v0, Lio/grpc/internal/ManagedChannelImpl;->target:Ljava/lang/String;

    .line 563
    const-string v10, "Channel"

    invoke-static {v10, v9}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v12

    iput-object v12, v0, Lio/grpc/internal/ManagedChannelImpl;->logId:Lio/grpc/InternalLogId;

    .line 564
    const-string v10, "timeProvider"

    invoke-static {v3, v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/grpc/internal/TimeProvider;

    iput-object v10, v0, Lio/grpc/internal/ManagedChannelImpl;->timeProvider:Lio/grpc/internal/TimeProvider;

    .line 565
    iget-object v10, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    const-string v11, "executorPool"

    invoke-static {v10, v11}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/grpc/internal/ObjectPool;

    iput-object v10, v0, Lio/grpc/internal/ManagedChannelImpl;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 566
    invoke-interface {v10}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object v10

    const-string v11, "executor"

    invoke-static {v10, v11}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/Executor;

    iput-object v10, v0, Lio/grpc/internal/ManagedChannelImpl;->executor:Ljava/util/concurrent/Executor;

    .line 567
    new-instance v14, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    move-object/from16 v15, p2

    invoke-direct {v14, v15, v10}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;-><init>(Lio/grpc/internal/ClientTransportFactory;Ljava/util/concurrent/Executor;)V

    iput-object v14, v0, Lio/grpc/internal/ManagedChannelImpl;->transportFactory:Lio/grpc/internal/ClientTransportFactory;

    .line 569
    new-instance v13, Lio/grpc/internal/ManagedChannelImpl$RestrictedScheduledExecutor;

    .line 570
    invoke-interface {v14}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v11

    invoke-direct {v13, v11, v7}, Lio/grpc/internal/ManagedChannelImpl$RestrictedScheduledExecutor;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/ManagedChannelImpl$1;)V

    iput-object v13, v0, Lio/grpc/internal/ManagedChannelImpl;->scheduledExecutor:Lio/grpc/internal/ManagedChannelImpl$RestrictedScheduledExecutor;

    .line 571
    iget v11, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxTraceEvents:I

    iput v11, v0, Lio/grpc/internal/ManagedChannelImpl;->maxTraceEvents:I

    .line 572
    new-instance v11, Lio/grpc/internal/ChannelTracer;

    iget v8, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxTraceEvents:I

    .line 573
    invoke-interface/range {p7 .. p7}, Lio/grpc/internal/TimeProvider;->currentTimeNanos()J

    move-result-wide v18

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Channel for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v6, v11

    move-object v7, v13

    move v13, v8

    move-object v8, v14

    move-wide/from16 v14, v18

    invoke-direct/range {v11 .. v16}, Lio/grpc/internal/ChannelTracer;-><init>(Lio/grpc/InternalLogId;IJLjava/lang/String;)V

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->channelTracer:Lio/grpc/internal/ChannelTracer;

    .line 575
    new-instance v11, Lio/grpc/internal/ChannelLoggerImpl;

    invoke-direct {v11, v6, v3}, Lio/grpc/internal/ChannelLoggerImpl;-><init>(Lio/grpc/internal/ChannelTracer;Lio/grpc/internal/TimeProvider;)V

    iput-object v11, v0, Lio/grpc/internal/ManagedChannelImpl;->channelLogger:Lio/grpc/ChannelLogger;

    .line 576
    invoke-virtual/range {p1 .. p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->getNameResolverFactory()Lio/grpc/NameResolver$Factory;

    move-result-object v6

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    .line 578
    iget-object v12, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->proxyDetector:Lio/grpc/ProxyDetector;

    if-eqz v12, :cond_0

    iget-object v12, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->proxyDetector:Lio/grpc/ProxyDetector;

    goto :goto_0

    :cond_0
    sget-object v12, Lio/grpc/internal/GrpcUtil;->DEFAULT_PROXY_DETECTOR:Lio/grpc/ProxyDetector;

    .line 579
    .local v12, "proxyDetector":Lio/grpc/ProxyDetector;
    :goto_0
    iget-boolean v13, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->retryEnabled:Z

    if-eqz v13, :cond_1

    iget-boolean v13, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->temporarilyDisableRetry:Z

    if-nez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    iput-boolean v13, v0, Lio/grpc/internal/ManagedChannelImpl;->retryEnabled:Z

    .line 580
    new-instance v14, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    iget-object v15, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->defaultLbPolicy:Ljava/lang/String;

    invoke-direct {v14, v15}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;-><init>(Ljava/lang/String;)V

    iput-object v14, v0, Lio/grpc/internal/ManagedChannelImpl;->loadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    .line 581
    new-instance v15, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    iget-object v3, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 583
    move-object/from16 v16, v8

    const-string v8, "offloadExecutorPool"

    invoke-static {v3, v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/internal/ObjectPool;

    invoke-direct {v15, v3}, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;-><init>(Lio/grpc/internal/ObjectPool;)V

    iput-object v15, v0, Lio/grpc/internal/ManagedChannelImpl;->offloadExecutorHolder:Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    .line 584
    iget-object v3, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    iput-object v3, v0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    .line 585
    new-instance v3, Lio/grpc/internal/ManagedChannelImpl$ScParser;

    iget v8, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxRetryAttempts:I

    iget v15, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxHedgedAttempts:I

    move-object/from16 v20, v3

    move/from16 v21, v13

    move/from16 v22, v8

    move/from16 v23, v15

    move-object/from16 v24, v14

    move-object/from16 v25, v11

    invoke-direct/range {v20 .. v25}, Lio/grpc/internal/ManagedChannelImpl$ScParser;-><init>(ZIILio/grpc/internal/AutoConfiguredLoadBalancerFactory;Lio/grpc/ChannelLogger;)V

    .line 592
    .local v3, "serviceConfigParser":Lio/grpc/internal/ManagedChannelImpl$ScParser;
    nop

    .line 593
    invoke-static {}, Lio/grpc/NameResolver$Args;->newBuilder()Lio/grpc/NameResolver$Args$Builder;

    move-result-object v8

    .line 594
    invoke-virtual/range {p1 .. p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->getDefaultPort()I

    move-result v14

    invoke-virtual {v8, v14}, Lio/grpc/NameResolver$Args$Builder;->setDefaultPort(I)Lio/grpc/NameResolver$Args$Builder;

    move-result-object v8

    .line 595
    invoke-virtual {v8, v12}, Lio/grpc/NameResolver$Args$Builder;->setProxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/NameResolver$Args$Builder;

    move-result-object v8

    .line 596
    invoke-virtual {v8, v4}, Lio/grpc/NameResolver$Args$Builder;->setSynchronizationContext(Lio/grpc/SynchronizationContext;)Lio/grpc/NameResolver$Args$Builder;

    move-result-object v8

    .line 597
    invoke-virtual {v8, v7}, Lio/grpc/NameResolver$Args$Builder;->setScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/NameResolver$Args$Builder;

    move-result-object v7

    .line 598
    invoke-virtual {v7, v3}, Lio/grpc/NameResolver$Args$Builder;->setServiceConfigParser(Lio/grpc/NameResolver$ServiceConfigParser;)Lio/grpc/NameResolver$Args$Builder;

    move-result-object v7

    .line 599
    invoke-virtual {v7, v11}, Lio/grpc/NameResolver$Args$Builder;->setChannelLogger(Lio/grpc/ChannelLogger;)Lio/grpc/NameResolver$Args$Builder;

    move-result-object v7

    new-instance v8, Lio/grpc/internal/ManagedChannelImpl$2;

    invoke-direct {v8, v0}, Lio/grpc/internal/ManagedChannelImpl$2;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    .line 600
    invoke-virtual {v7, v8}, Lio/grpc/NameResolver$Args$Builder;->setOffloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/NameResolver$Args$Builder;

    move-result-object v7

    .line 608
    invoke-virtual {v7}, Lio/grpc/NameResolver$Args$Builder;->build()Lio/grpc/NameResolver$Args;

    move-result-object v7

    iput-object v7, v0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverArgs:Lio/grpc/NameResolver$Args;

    .line 609
    invoke-static {v9, v6, v7}, Lio/grpc/internal/ManagedChannelImpl;->getNameResolver(Ljava/lang/String;Lio/grpc/NameResolver$Factory;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;

    move-result-object v6

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    .line 610
    const-string v6, "balancerRpcExecutorPool"

    invoke-static {v2, v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/internal/ObjectPool;

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->balancerRpcExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 611
    new-instance v6, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    invoke-direct {v6, v2}, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;-><init>(Lio/grpc/internal/ObjectPool;)V

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->balancerRpcExecutorHolder:Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    .line 612
    new-instance v6, Lio/grpc/internal/DelayedClientTransport;

    invoke-direct {v6, v10, v4}, Lio/grpc/internal/DelayedClientTransport;-><init>(Ljava/util/concurrent/Executor;Lio/grpc/SynchronizationContext;)V

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    .line 613
    invoke-virtual {v6, v5}, Lio/grpc/internal/DelayedClientTransport;->start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;

    .line 614
    move-object/from16 v5, p3

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->backoffPolicyProvider:Lio/grpc/internal/BackoffPolicy$Provider;

    .line 616
    new-instance v6, Lio/grpc/internal/ServiceConfigInterceptor;

    invoke-direct {v6, v13}, Lio/grpc/internal/ServiceConfigInterceptor;-><init>(Z)V

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->serviceConfigInterceptor:Lio/grpc/internal/ServiceConfigInterceptor;

    .line 617
    iget-object v7, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->defaultServiceConfig:Ljava/util/Map;

    if-eqz v7, :cond_3

    .line 618
    iget-object v7, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->defaultServiceConfig:Ljava/util/Map;

    .line 619
    invoke-virtual {v3, v7}, Lio/grpc/internal/ManagedChannelImpl$ScParser;->parseServiceConfig(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v7

    .line 620
    .local v7, "parsedDefaultServiceConfig":Lio/grpc/NameResolver$ConfigOrError;
    nop

    .line 621
    invoke-virtual {v7}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 623
    :goto_2
    invoke-virtual {v7}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v9

    .line 620
    const-string v10, "Default config is invalid: %s"

    invoke-static {v8, v10, v9}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 624
    new-instance v8, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    iget-object v9, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->defaultServiceConfig:Ljava/util/Map;

    .line 627
    invoke-virtual {v7}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/grpc/internal/ManagedChannelServiceConfig;

    invoke-direct {v8, v9, v10}, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;-><init>(Ljava/util/Map;Lio/grpc/internal/ManagedChannelServiceConfig;)V

    iput-object v8, v0, Lio/grpc/internal/ManagedChannelImpl;->defaultServiceConfig:Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    .line 628
    iput-object v8, v0, Lio/grpc/internal/ManagedChannelImpl;->lastServiceConfig:Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    .line 629
    .end local v7    # "parsedDefaultServiceConfig":Lio/grpc/NameResolver$ConfigOrError;
    const/4 v7, 0x0

    goto :goto_3

    .line 630
    :cond_3
    const/4 v7, 0x0

    iput-object v7, v0, Lio/grpc/internal/ManagedChannelImpl;->defaultServiceConfig:Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    .line 632
    :goto_3
    iget-boolean v8, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->lookUpServiceConfig:Z

    iput-boolean v8, v0, Lio/grpc/internal/ManagedChannelImpl;->lookUpServiceConfig:Z

    .line 633
    new-instance v9, Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v10, v0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    invoke-virtual {v10}, Lio/grpc/NameResolver;->getServiceAuthority()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v0, v10, v7}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;-><init>(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/String;Lio/grpc/internal/ManagedChannelImpl$1;)V

    move-object v7, v9

    .line 634
    .local v7, "channel":Lio/grpc/Channel;
    const/4 v9, 0x1

    new-array v10, v9, [Lio/grpc/ClientInterceptor;

    const/4 v13, 0x0

    aput-object v6, v10, v13

    invoke-static {v7, v10}, Lio/grpc/ClientInterceptors;->intercept(Lio/grpc/Channel;[Lio/grpc/ClientInterceptor;)Lio/grpc/Channel;

    move-result-object v6

    .line 635
    .end local v7    # "channel":Lio/grpc/Channel;
    .local v6, "channel":Lio/grpc/Channel;
    iget-object v7, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->binlog:Lio/grpc/BinaryLog;

    if-eqz v7, :cond_4

    .line 636
    iget-object v7, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->binlog:Lio/grpc/BinaryLog;

    invoke-virtual {v7, v6}, Lio/grpc/BinaryLog;->wrapChannel(Lio/grpc/Channel;)Lio/grpc/Channel;

    move-result-object v6

    .line 638
    :cond_4
    move-object/from16 v7, p6

    invoke-static {v6, v7}, Lio/grpc/ClientInterceptors;->intercept(Lio/grpc/Channel;Ljava/util/List;)Lio/grpc/Channel;

    move-result-object v10

    iput-object v10, v0, Lio/grpc/internal/ManagedChannelImpl;->interceptorChannel:Lio/grpc/Channel;

    .line 639
    const-string v10, "stopwatchSupplier"

    move-object/from16 v14, p5

    invoke-static {v14, v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/common/base/Supplier;

    iput-object v10, v0, Lio/grpc/internal/ManagedChannelImpl;->stopwatchSupplier:Lcom/google/common/base/Supplier;

    .line 640
    iget-wide v9, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeoutMillis:J

    const-wide/16 v17, -0x1

    cmp-long v15, v9, v17

    if-nez v15, :cond_5

    .line 641
    iget-wide v9, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeoutMillis:J

    iput-wide v9, v0, Lio/grpc/internal/ManagedChannelImpl;->idleTimeoutMillis:J

    goto :goto_4

    .line 643
    :cond_5
    iget-wide v9, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeoutMillis:J

    sget-wide v17, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->IDLE_MODE_MIN_TIMEOUT_MILLIS:J

    cmp-long v15, v9, v17

    if-ltz v15, :cond_6

    const/4 v13, 0x1

    :cond_6
    iget-wide v9, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeoutMillis:J

    const-string v15, "invalid idleTimeoutMillis %s"

    invoke-static {v13, v15, v9, v10}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 647
    iget-wide v9, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeoutMillis:J

    iput-wide v9, v0, Lio/grpc/internal/ManagedChannelImpl;->idleTimeoutMillis:J

    .line 650
    :goto_4
    new-instance v9, Lio/grpc/internal/Rescheduler;

    new-instance v10, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;

    const/4 v13, 0x0

    invoke-direct {v10, v0, v13}, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V

    .line 653
    invoke-interface/range {v16 .. v16}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v13

    .line 654
    invoke-interface/range {p5 .. p5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/common/base/Stopwatch;

    invoke-direct {v9, v10, v4, v13, v15}, Lio/grpc/internal/Rescheduler;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Stopwatch;)V

    iput-object v9, v0, Lio/grpc/internal/ManagedChannelImpl;->idleTimer:Lio/grpc/internal/Rescheduler;

    .line 655
    iget-boolean v4, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->fullStreamDecompression:Z

    iput-boolean v4, v0, Lio/grpc/internal/ManagedChannelImpl;->fullStreamDecompression:Z

    .line 656
    iget-object v4, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    const-string v9, "decompressorRegistry"

    invoke-static {v4, v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/DecompressorRegistry;

    iput-object v4, v0, Lio/grpc/internal/ManagedChannelImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 657
    iget-object v4, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    const-string v9, "compressorRegistry"

    invoke-static {v4, v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/CompressorRegistry;

    iput-object v4, v0, Lio/grpc/internal/ManagedChannelImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 658
    iget-object v4, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->userAgent:Ljava/lang/String;

    iput-object v4, v0, Lio/grpc/internal/ManagedChannelImpl;->userAgent:Ljava/lang/String;

    .line 660
    iget-wide v9, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->retryBufferSize:J

    iput-wide v9, v0, Lio/grpc/internal/ManagedChannelImpl;->channelBufferLimit:J

    .line 661
    iget-wide v9, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->perRpcBufferLimit:J

    iput-wide v9, v0, Lio/grpc/internal/ManagedChannelImpl;->perRpcBufferLimit:J

    .line 669
    new-instance v4, Lio/grpc/internal/ManagedChannelImpl$1ChannelCallTracerFactory;

    move-object/from16 v9, p7

    invoke-direct {v4, v0, v9}, Lio/grpc/internal/ManagedChannelImpl$1ChannelCallTracerFactory;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/TimeProvider;)V

    iput-object v4, v0, Lio/grpc/internal/ManagedChannelImpl;->callTracerFactory:Lio/grpc/internal/CallTracer$Factory;

    .line 670
    invoke-interface {v4}, Lio/grpc/internal/CallTracer$Factory;->create()Lio/grpc/internal/CallTracer;

    move-result-object v4

    iput-object v4, v0, Lio/grpc/internal/ManagedChannelImpl;->channelCallTracer:Lio/grpc/internal/CallTracer;

    .line 671
    iget-object v4, v1, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/InternalChannelz;

    iput-object v4, v0, Lio/grpc/internal/ManagedChannelImpl;->channelz:Lio/grpc/InternalChannelz;

    .line 672
    invoke-virtual {v4, v0}, Lio/grpc/InternalChannelz;->addRootChannel(Lio/grpc/InternalInstrumented;)V

    .line 674
    if-nez v8, :cond_8

    .line 675
    iget-object v4, v0, Lio/grpc/internal/ManagedChannelImpl;->defaultServiceConfig:Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    if-eqz v4, :cond_7

    .line 676
    sget-object v4, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v8, "Service config look-up disabled, using default service config"

    invoke-virtual {v11, v4, v8}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 679
    :cond_7
    invoke-direct/range {p0 .. p0}, Lio/grpc/internal/ManagedChannelImpl;->handleServiceConfigUpdate()V

    .line 681
    :cond_8
    return-void
.end method

.method static synthetic access$1100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/SynchronizationContext$ScheduledHandle;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->scheduledNameResolverRefresh:Lio/grpc/SynchronizationContext$ScheduledHandle;

    return-object v0
.end method

.method static synthetic access$1102(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/SynchronizationContext$ScheduledHandle;)Lio/grpc/SynchronizationContext$ScheduledHandle;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 106
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl;->scheduledNameResolverRefresh:Lio/grpc/SynchronizationContext$ScheduledHandle;

    return-object p1
.end method

.method static synthetic access$1200(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->refreshNameResolution()V

    return-void
.end method

.method static synthetic access$1300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/LoadBalancer$SubchannelPicker;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->subchannelPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    return-object v0
.end method

.method static synthetic access$1400(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/DelayedClientTransport;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    return-object v0
.end method

.method static synthetic access$1600(Lio/grpc/internal/ManagedChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->retryEnabled:Z

    return v0
.end method

.method static synthetic access$1700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->lastServiceConfig:Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    return-object v0
.end method

.method static synthetic access$1702(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;)Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    .line 106
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl;->lastServiceConfig:Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    return-object p1
.end method

.method static synthetic access$1800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/RetriableStream$ChannelBufferMeter;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelBufferUsed:Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    return-object v0
.end method

.method static synthetic access$1900(Lio/grpc/internal/ManagedChannelImpl;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-wide v0, p0, Lio/grpc/internal/ManagedChannelImpl;->perRpcBufferLimit:J

    return-wide v0
.end method

.method static synthetic access$2000(Lio/grpc/internal/ManagedChannelImpl;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-wide v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelBufferLimit:J

    return-wide v0
.end method

.method static synthetic access$2100(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/CallOptions;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Lio/grpc/CallOptions;

    .line 106
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl;->getCallExecutor(Lio/grpc/CallOptions;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->transportFactory:Lio/grpc/internal/ClientTransportFactory;

    return-object v0
.end method

.method static synthetic access$2300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->uncommittedRetriableStreamsRegistry:Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

    return-object v0
.end method

.method static synthetic access$2600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->offloadExecutorHolder:Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    return-object v0
.end method

.method static synthetic access$2900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelLogger:Lio/grpc/ChannelLogger;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/CallTracer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelCallTracer:Lio/grpc/internal/CallTracer;

    return-object v0
.end method

.method static synthetic access$3000(Lio/grpc/internal/ManagedChannelImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Z

    .line 106
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl;->cancelIdleTimer(Z)V

    return-void
.end method

.method static synthetic access$3100(Lio/grpc/internal/ManagedChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->shutdownNowed:Z

    return v0
.end method

.method static synthetic access$3102(Lio/grpc/internal/ManagedChannelImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Z

    .line 106
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImpl;->shutdownNowed:Z

    return p1
.end method

.method static synthetic access$3200(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->maybeShutdownNowSubchannels()V

    return-void
.end method

.method static synthetic access$3300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/CompressorRegistry;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    return-object v0
.end method

.method static synthetic access$3400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/DecompressorRegistry;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    return-object v0
.end method

.method static synthetic access$3500(Lio/grpc/internal/ManagedChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->fullStreamDecompression:Z

    return v0
.end method

.method static synthetic access$3600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->transportProvider:Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;

    return-object v0
.end method

.method static synthetic access$3700(Lio/grpc/internal/ManagedChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->terminated:Z

    return v0
.end method

.method static synthetic access$3800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->lbHelper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    return-object v0
.end method

.method static synthetic access$3900(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ChannelTracer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelTracer:Lio/grpc/internal/ChannelTracer;

    return-object v0
.end method

.method static synthetic access$4000(Lio/grpc/internal/ManagedChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverStarted:Z

    return v0
.end method

.method static synthetic access$4100(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->refreshAndResetNameResolution()V

    return-void
.end method

.method static synthetic access$4200(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl;->logWarningIfNotInSyncContext(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 106
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl;->updateSubchannelPicker(Lio/grpc/LoadBalancer$SubchannelPicker;)V

    return-void
.end method

.method static synthetic access$4500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/TimeProvider;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->timeProvider:Lio/grpc/internal/TimeProvider;

    return-object v0
.end method

.method static synthetic access$4600(Lio/grpc/internal/ManagedChannelImpl;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget v0, p0, Lio/grpc/internal/ManagedChannelImpl;->maxTraceEvents:I

    return v0
.end method

.method static synthetic access$4700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ObjectPool;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->balancerRpcExecutorPool:Lio/grpc/internal/ObjectPool;

    return-object v0
.end method

.method static synthetic access$4800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/CallTracer$Factory;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->callTracerFactory:Lio/grpc/internal/CallTracer$Factory;

    return-object v0
.end method

.method static synthetic access$4900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/InternalChannelz;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelz:Lio/grpc/InternalChannelz;

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ConnectivityStateManager;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelStateManager:Lio/grpc/internal/ConnectivityStateManager;

    return-object v0
.end method

.method static synthetic access$5000(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->maybeTerminateChannel()V

    return-void
.end method

.method static synthetic access$5100(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/ConnectivityStateInfo;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Lio/grpc/ConnectivityStateInfo;

    .line 106
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl;->handleInternalSubchannelState(Lio/grpc/ConnectivityStateInfo;)V

    return-void
.end method

.method static synthetic access$5200(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/BackoffPolicy$Provider;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->backoffPolicyProvider:Lio/grpc/internal/BackoffPolicy$Provider;

    return-object v0
.end method

.method static synthetic access$5400(Lio/grpc/internal/ManagedChannelImpl;)Lcom/google/common/base/Supplier;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->stopwatchSupplier:Lcom/google/common/base/Supplier;

    return-object v0
.end method

.method static synthetic access$5500(Lio/grpc/internal/ManagedChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->terminating:Z

    return v0
.end method

.method static synthetic access$5502(Lio/grpc/internal/ManagedChannelImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Z

    .line 106
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImpl;->terminating:Z

    return p1
.end method

.method static synthetic access$5600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver$Factory;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    return-object v0
.end method

.method static synthetic access$5700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RestrictedScheduledExecutor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->scheduledExecutor:Lio/grpc/internal/ManagedChannelImpl$RestrictedScheduledExecutor;

    return-object v0
.end method

.method static synthetic access$5800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver$Args;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverArgs:Lio/grpc/NameResolver$Args;

    return-object v0
.end method

.method static synthetic access$5900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolverRegistry;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    return-object v0
.end method

.method static synthetic access$600(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->target:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6000(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ResolutionState;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->lastResolutionState:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    return-object v0
.end method

.method static synthetic access$6002(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$ResolutionState;)Lio/grpc/internal/ManagedChannelImpl$ResolutionState;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    .line 106
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl;->lastResolutionState:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    return-object p1
.end method

.method static synthetic access$6100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/BackoffPolicy;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverBackoffPolicy:Lio/grpc/internal/BackoffPolicy;

    return-object v0
.end method

.method static synthetic access$6102(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/BackoffPolicy;)Lio/grpc/internal/BackoffPolicy;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Lio/grpc/internal/BackoffPolicy;

    .line 106
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverBackoffPolicy:Lio/grpc/internal/BackoffPolicy;

    return-object p1
.end method

.method static synthetic access$6200(Lio/grpc/internal/ManagedChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->lookUpServiceConfig:Z

    return v0
.end method

.method static synthetic access$6300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->defaultServiceConfig:Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    return-object v0
.end method

.method static synthetic access$6400()Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;
    .locals 1

    .line 106
    sget-object v0, Lio/grpc/internal/ManagedChannelImpl;->EMPTY_SERVICE_CONFIG:Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    return-object v0
.end method

.method static synthetic access$6500(Lio/grpc/internal/ManagedChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->serviceConfigUpdated:Z

    return v0
.end method

.method static synthetic access$6600(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->handleServiceConfigUpdate()V

    return-void
.end method

.method static synthetic access$700(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->subchannels:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$7000(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->balancerRpcExecutorHolder:Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    return-object v0
.end method

.method static synthetic access$7100(Lio/grpc/internal/ManagedChannelImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Z

    .line 106
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl;->shutdownNameResolverAndLoadBalancer(Z)V

    return-void
.end method

.method static synthetic access$7200(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->rescheduleIdleTimer()V

    return-void
.end method

.method static synthetic access$800(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->oobChannels:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 106
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->enterIdleMode()V

    return-void
.end method

.method private cancelIdleTimer(Z)V
    .locals 1
    .param p1, "permanent"    # Z

    .line 406
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->idleTimer:Lio/grpc/internal/Rescheduler;

    invoke-virtual {v0, p1}, Lio/grpc/internal/Rescheduler;->cancel(Z)V

    .line 407
    return-void
.end method

.method private cancelNameResolverBackoff()V
    .locals 1

    .line 435
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 436
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->scheduledNameResolverRefresh:Lio/grpc/SynchronizationContext$ScheduledHandle;

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0}, Lio/grpc/SynchronizationContext$ScheduledHandle;->cancel()V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->scheduledNameResolverRefresh:Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 439
    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverBackoffPolicy:Lio/grpc/internal/BackoffPolicy;

    .line 441
    :cond_0
    return-void
.end method

.method private enterIdleMode()V
    .locals 3

    .line 395
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/grpc/internal/ManagedChannelImpl;->shutdownNameResolverAndLoadBalancer(Z)V

    .line 396
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/grpc/internal/DelayedClientTransport;->reprocess(Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 397
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelLogger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "Entering IDLE state"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelStateManager:Lio/grpc/internal/ConnectivityStateManager;

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    invoke-virtual {v0, v1}, Lio/grpc/internal/ConnectivityStateManager;->gotoState(Lio/grpc/ConnectivityState;)V

    .line 399
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    invoke-virtual {v0}, Lio/grpc/internal/InUseStateAggregator;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImpl;->exitIdleMode()V

    .line 402
    :cond_0
    return-void
.end method

.method private getCallExecutor(Lio/grpc/CallOptions;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p1, "callOptions"    # Lio/grpc/CallOptions;

    .line 870
    invoke-virtual {p1}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 871
    .local v0, "executor":Ljava/util/concurrent/Executor;
    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->executor:Ljava/util/concurrent/Executor;

    .line 874
    :cond_0
    return-object v0
.end method

.method static getNameResolver(Ljava/lang/String;Lio/grpc/NameResolver$Factory;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;
    .locals 7
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "nameResolverFactory"    # Lio/grpc/NameResolver$Factory;
    .param p2, "nameResolverArgs"    # Lio/grpc/NameResolver$Args;

    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, "targetUri":Ljava/net/URI;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .local v1, "uriSyntaxErrors":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 704
    goto :goto_0

    .line 701
    :catch_0
    move-exception v2

    .line 703
    .local v2, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :goto_0
    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p1, v0, p2}, Lio/grpc/NameResolver$Factory;->newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;

    move-result-object v2

    .line 707
    .local v2, "resolver":Lio/grpc/NameResolver;
    if-eqz v2, :cond_0

    .line 708
    return-object v2

    .line 715
    .end local v2    # "resolver":Lio/grpc/NameResolver;
    :cond_0
    sget-object v2, Lio/grpc/internal/ManagedChannelImpl;->URI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_1

    .line 719
    :try_start_1
    new-instance v2, Ljava/net/URI;

    invoke-virtual {p1}, Lio/grpc/NameResolver$Factory;->getDefaultScheme()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v4, v3, v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 723
    nop

    .line 724
    invoke-virtual {p1, v0, p2}, Lio/grpc/NameResolver$Factory;->newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;

    move-result-object v2

    .line 725
    .restart local v2    # "resolver":Lio/grpc/NameResolver;
    if-eqz v2, :cond_1

    .line 726
    return-object v2

    .line 720
    .end local v2    # "resolver":Lio/grpc/NameResolver;
    :catch_1
    move-exception v2

    .line 722
    .local v2, "e":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 729
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    .line 731
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    aput-object v3, v4, v5

    .line 729
    const-string v3, "cannot find a NameResolver for %s%s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleInternalSubchannelState(Lio/grpc/ConnectivityStateInfo;)V
    .locals 2
    .param p1, "newState"    # Lio/grpc/ConnectivityStateInfo;

    .line 932
    invoke-virtual {p1}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_1

    .line 933
    :cond_0
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->refreshAndResetNameResolution()V

    .line 935
    :cond_1
    return-void
.end method

.method private handleServiceConfigUpdate()V
    .locals 2

    .line 685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->serviceConfigUpdated:Z

    .line 686
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->serviceConfigInterceptor:Lio/grpc/internal/ServiceConfigInterceptor;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->lastServiceConfig:Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;->managedChannelServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

    invoke-virtual {v0, v1}, Lio/grpc/internal/ServiceConfigInterceptor;->handleUpdate(Lio/grpc/internal/ManagedChannelServiceConfig;)V

    .line 687
    return-void
.end method

.method private logWarningIfNotInSyncContext(Ljava/lang/String;)V
    .locals 5
    .param p1, "method"    # Ljava/lang/String;

    .line 1957
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1963
    goto :goto_0

    .line 1958
    :catch_0
    move-exception v0

    .line 1959
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lio/grpc/internal/ManagedChannelImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " should be called from SynchronizationContext. This warning will become an exception in a future release. See https://github.com/grpc/grpc-java/issues/5015 for more details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1964
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method private maybeShutdownNowSubchannels()V
    .locals 4

    .line 279
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->shutdownNowed:Z

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->subchannels:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/InternalSubchannel;

    .line 281
    .local v1, "subchannel":Lio/grpc/internal/InternalSubchannel;
    sget-object v2, Lio/grpc/internal/ManagedChannelImpl;->SHUTDOWN_NOW_STATUS:Lio/grpc/Status;

    invoke-virtual {v1, v2}, Lio/grpc/internal/InternalSubchannel;->shutdownNow(Lio/grpc/Status;)V

    .line 282
    .end local v1    # "subchannel":Lio/grpc/internal/InternalSubchannel;
    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->oobChannels:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/OobChannel;

    .line 284
    .local v1, "oobChannel":Lio/grpc/internal/OobChannel;
    invoke-virtual {v1}, Lio/grpc/internal/OobChannel;->getInternalSubchannel()Lio/grpc/internal/InternalSubchannel;

    move-result-object v2

    sget-object v3, Lio/grpc/internal/ManagedChannelImpl;->SHUTDOWN_NOW_STATUS:Lio/grpc/Status;

    invoke-virtual {v2, v3}, Lio/grpc/internal/InternalSubchannel;->shutdownNow(Lio/grpc/Status;)V

    .line 285
    .end local v1    # "oobChannel":Lio/grpc/internal/OobChannel;
    goto :goto_1

    .line 287
    :cond_1
    return-void
.end method

.method private maybeTerminateChannel()V
    .locals 3

    .line 913
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->terminated:Z

    if-eqz v0, :cond_0

    .line 914
    return-void

    .line 916
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->subchannels:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->oobChannels:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelLogger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelz:Lio/grpc/InternalChannelz;

    invoke-virtual {v0, p0}, Lio/grpc/InternalChannelz;->removeRootChannel(Lio/grpc/InternalInstrumented;)V

    .line 919
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->executorPool:Lio/grpc/internal/ObjectPool;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->balancerRpcExecutorHolder:Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;->release()V

    .line 921
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->offloadExecutorHolder:Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;->release()V

    .line 923
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->transportFactory:Lio/grpc/internal/ClientTransportFactory;

    invoke-interface {v0}, Lio/grpc/internal/ClientTransportFactory;->close()V

    .line 925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->terminated:Z

    .line 926
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->terminatedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 928
    :cond_1
    return-void
.end method

.method private refreshAndResetNameResolution()V
    .locals 1

    .line 448
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 449
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->cancelNameResolverBackoff()V

    .line 450
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->refreshNameResolution()V

    .line 451
    return-void
.end method

.method private refreshNameResolution()V
    .locals 1

    .line 454
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 455
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverStarted:Z

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    invoke-virtual {v0}, Lio/grpc/NameResolver;->refresh()V

    .line 458
    :cond_0
    return-void
.end method

.method private rescheduleIdleTimer()V
    .locals 5

    .line 411
    iget-wide v0, p0, Lio/grpc/internal/ManagedChannelImpl;->idleTimeoutMillis:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 412
    return-void

    .line 414
    :cond_0
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl;->idleTimer:Lio/grpc/internal/Rescheduler;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Lio/grpc/internal/Rescheduler;->reschedule(JLjava/util/concurrent/TimeUnit;)V

    .line 415
    return-void
.end method

.method private shutdownNameResolverAndLoadBalancer(Z)V
    .locals 4
    .param p1, "channelIsActive"    # Z

    .line 332
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 333
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 334
    iget-boolean v1, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverStarted:Z

    const-string v2, "nameResolver is not started"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 335
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->lbHelper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "lbHelper is null"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 337
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 338
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->cancelNameResolverBackoff()V

    .line 339
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    invoke-virtual {v1}, Lio/grpc/NameResolver;->shutdown()V

    .line 340
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverStarted:Z

    .line 341
    if-eqz p1, :cond_2

    .line 342
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->target:Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverArgs:Lio/grpc/NameResolver$Args;

    invoke-static {v0, v1, v3}, Lio/grpc/internal/ManagedChannelImpl;->getNameResolver(Ljava/lang/String;Lio/grpc/NameResolver$Factory;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    goto :goto_1

    .line 344
    :cond_2
    iput-object v2, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    .line 347
    :cond_3
    :goto_1
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->lbHelper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    if-eqz v0, :cond_4

    .line 348
    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->lb:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

    invoke-virtual {v0}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->shutdown()V

    .line 349
    iput-object v2, p0, Lio/grpc/internal/ManagedChannelImpl;->lbHelper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    .line 351
    :cond_4
    iput-object v2, p0, Lio/grpc/internal/ManagedChannelImpl;->subchannelPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 352
    return-void
.end method

.method private updateSubchannelPicker(Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 1
    .param p1, "newPicker"    # Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 836
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl;->subchannelPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 837
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    invoke-virtual {v0, p1}, Lio/grpc/internal/DelayedClientTransport;->reprocess(Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 838
    return-void
.end method


# virtual methods
.method public authority()Ljava/lang/String;
    .locals 1

    .line 866
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->interceptorChannel:Lio/grpc/Channel;

    invoke-virtual {v0}, Lio/grpc/Channel;->authority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->terminatedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public enterIdle()V
    .locals 2

    .line 1009
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$1PrepareToLoseNetworkRunnable;

    invoke-direct {v1, p0}, Lio/grpc/internal/ManagedChannelImpl$1PrepareToLoseNetworkRunnable;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 1010
    return-void
.end method

.method exitIdleMode()V
    .locals 3

    .line 361
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 362
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->panicMode:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    invoke-virtual {v0}, Lio/grpc/internal/InUseStateAggregator;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/grpc/internal/ManagedChannelImpl;->cancelIdleTimer(Z)V

    goto :goto_0

    .line 372
    :cond_1
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->rescheduleIdleTimer()V

    .line 374
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->lbHelper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    if-eqz v0, :cond_2

    .line 375
    return-void

    .line 377
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelLogger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "Exiting idle mode"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 378
    new-instance v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V

    .line 379
    .local v0, "lbHelper":Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->loadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    invoke-virtual {v1, v0}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->newLoadBalancer(Lio/grpc/LoadBalancer$Helper;)Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->lb:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

    .line 382
    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->lbHelper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    .line 384
    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    invoke-direct {v1, p0, v0, v2}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/NameResolver;)V

    .line 385
    .local v1, "listener":Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    invoke-virtual {v2, v1}, Lio/grpc/NameResolver;->start(Lio/grpc/NameResolver$Listener2;)V

    .line 386
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverStarted:Z

    .line 387
    return-void

    .line 363
    .end local v0    # "lbHelper":Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;
    .end local v1    # "listener":Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;
    :cond_3
    :goto_1
    return-void
.end method

.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    .line 318
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->logId:Lio/grpc/InternalLogId;

    return-object v0
.end method

.method public getState(Z)Lio/grpc/ConnectivityState;
    .locals 3
    .param p1, "requestConnection"    # Z

    .line 940
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelStateManager:Lio/grpc/internal/ConnectivityStateManager;

    invoke-virtual {v0}, Lio/grpc/internal/ConnectivityStateManager;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    .line 941
    .local v0, "savedChannelState":Lio/grpc/ConnectivityState;
    if-eqz p1, :cond_0

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    .line 955
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v2, Lio/grpc/internal/ManagedChannelImpl$1RequestConnection;

    invoke-direct {v2, p0}, Lio/grpc/internal/ManagedChannelImpl$1RequestConnection;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    invoke-virtual {v1, v2}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 957
    :cond_0
    return-object v0
.end method

.method public getStats()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lio/grpc/InternalChannelz$ChannelStats;",
            ">;"
        }
    .end annotation

    .line 295
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 312
    .local v0, "ret":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lio/grpc/InternalChannelz$ChannelStats;>;"
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v2, Lio/grpc/internal/ManagedChannelImpl$1StatsFetcher;

    invoke-direct {v2, p0, v0}, Lio/grpc/internal/ManagedChannelImpl$1StatsFetcher;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v1, v2}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 313
    return-object v0
.end method

.method isInPanicMode()Z
    .locals 1

    .line 831
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->panicMode:Z

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 842
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 852
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->terminated:Z

    return v0
.end method

.method public newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;
    .locals 1
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

    .line 861
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->interceptorChannel:Lio/grpc/Channel;

    invoke-virtual {v0, p1, p2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v0

    return-object v0
.end method

.method public notifyWhenStateChanged(Lio/grpc/ConnectivityState;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "source"    # Lio/grpc/ConnectivityState;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 969
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$1NotifyStateChanged;

    invoke-direct {v1, p0, p2, p1}, Lio/grpc/internal/ManagedChannelImpl$1NotifyStateChanged;-><init>(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/Runnable;Lio/grpc/ConnectivityState;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 970
    return-void
.end method

.method panic(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 799
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->panicMode:Z

    if-eqz v0, :cond_0

    .line 801
    return-void

    .line 803
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->panicMode:Z

    .line 804
    invoke-direct {p0, v0}, Lio/grpc/internal/ManagedChannelImpl;->cancelIdleTimer(Z)V

    .line 805
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/grpc/internal/ManagedChannelImpl;->shutdownNameResolverAndLoadBalancer(Z)V

    .line 824
    new-instance v0, Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;-><init>(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/ManagedChannelImpl;->updateSubchannelPicker(Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 825
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelLogger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->ERROR:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "PANIC! Entering TRANSIENT_FAILURE"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelStateManager:Lio/grpc/internal/ConnectivityStateManager;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    invoke-virtual {v0, v1}, Lio/grpc/internal/ConnectivityStateManager;->gotoState(Lio/grpc/ConnectivityState;)V

    .line 827
    return-void
.end method

.method public resetConnectBackoff()V
    .locals 2

    .line 993
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$1ResetConnectBackoff;

    invoke-direct {v1, p0}, Lio/grpc/internal/ManagedChannelImpl$1ResetConnectBackoff;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 994
    return-void
.end method

.method public bridge synthetic shutdown()Lio/grpc/ManagedChannel;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImpl;->shutdown()Lio/grpc/internal/ManagedChannelImpl;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()Lio/grpc/internal/ManagedChannelImpl;
    .locals 3

    .line 740
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelLogger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "shutdown() called"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    return-object p0

    .line 757
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$1Shutdown;

    invoke-direct {v1, p0}, Lio/grpc/internal/ManagedChannelImpl$1Shutdown;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 759
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->uncommittedRetriableStreamsRegistry:Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

    sget-object v1, Lio/grpc/internal/ManagedChannelImpl;->SHUTDOWN_STATUS:Lio/grpc/Status;

    invoke-virtual {v0, v1}, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->onShutdown(Lio/grpc/Status;)V

    .line 767
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$1CancelIdleTimer;

    invoke-direct {v1, p0}, Lio/grpc/internal/ManagedChannelImpl$1CancelIdleTimer;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 768
    return-object p0
.end method

.method public bridge synthetic shutdownNow()Lio/grpc/ManagedChannel;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImpl;->shutdownNow()Lio/grpc/internal/ManagedChannelImpl;

    move-result-object v0

    return-object v0
.end method

.method public shutdownNow()Lio/grpc/internal/ManagedChannelImpl;
    .locals 3

    .line 778
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelLogger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "shutdownNow() called"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImpl;->shutdown()Lio/grpc/internal/ManagedChannelImpl;

    .line 780
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->uncommittedRetriableStreamsRegistry:Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

    sget-object v1, Lio/grpc/internal/ManagedChannelImpl;->SHUTDOWN_NOW_STATUS:Lio/grpc/Status;

    invoke-virtual {v0, v1}, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->onShutdownNow(Lio/grpc/Status;)V

    .line 792
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$1ShutdownNow;

    invoke-direct {v1, p0}, Lio/grpc/internal/ManagedChannelImpl$1ShutdownNow;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 793
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1723
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->logId:Lio/grpc/InternalLogId;

    .line 1724
    invoke-virtual {v1}, Lio/grpc/InternalLogId;->getId()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->target:Ljava/lang/String;

    .line 1725
    const-string v2, "target"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 1726
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1723
    return-object v0
.end method
