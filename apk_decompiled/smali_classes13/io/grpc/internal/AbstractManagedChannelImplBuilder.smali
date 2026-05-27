.class public abstract Lio/grpc/internal/AbstractManagedChannelImplBuilder;
.super Lio/grpc/ManagedChannelBuilder;
.source "AbstractManagedChannelImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/AbstractManagedChannelImplBuilder$DirectAddressNameResolverFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/grpc/internal/AbstractManagedChannelImplBuilder<",
        "TT;>;>",
        "Lio/grpc/ManagedChannelBuilder<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

.field private static final DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

.field private static final DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PER_RPC_BUFFER_LIMIT_IN_BYTES:J = 0x100000L

.field private static final DEFAULT_RETRY_BUFFER_SIZE_IN_BYTES:J = 0x1000000L

.field private static final DIRECT_ADDRESS_SCHEME:Ljava/lang/String; = "directaddress"

.field static final IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

.field static final IDLE_MODE_MAX_TIMEOUT_DAYS:J = 0x1eL

.field static final IDLE_MODE_MIN_TIMEOUT_MILLIS:J

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field authorityOverride:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field binlog:Lio/grpc/BinaryLog;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field channelz:Lio/grpc/InternalChannelz;

.field compressorRegistry:Lio/grpc/CompressorRegistry;

.field decompressorRegistry:Lio/grpc/DecompressorRegistry;

.field defaultLbPolicy:Ljava/lang/String;

.field defaultServiceConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final directServerAddress:Ljava/net/SocketAddress;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field executorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field fullStreamDecompression:Z

.field idleTimeoutMillis:J

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field lookUpServiceConfig:Z

.field maxHedgedAttempts:I

.field private maxInboundMessageSize:I

.field maxRetryAttempts:I

.field maxTraceEvents:I

.field private nameResolverFactory:Lio/grpc/NameResolver$Factory;

.field final nameResolverRegistry:Lio/grpc/NameResolverRegistry;

.field offloadExecutorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field perRpcBufferLimit:J

.field proxyDetector:Lio/grpc/ProxyDetector;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private recordFinishedRpcs:Z

.field private recordRealTimeMetrics:Z

.field private recordStartedRpcs:Z

.field retryBufferSize:J

.field retryEnabled:Z

.field private statsEnabled:Z

.field final target:Ljava/lang/String;

.field temporarilyDisableRetry:Z

.field private tracingEnabled:Z

.field protected transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

.field userAgent:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    const-class v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

    .line 88
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->IDLE_MODE_MIN_TIMEOUT_MILLIS:J

    .line 90
    sget-object v0, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 91
    invoke-static {v0}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    .line 94
    invoke-static {}, Lio/grpc/DecompressorRegistry;->getDefaultInstance()Lio/grpc/DecompressorRegistry;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    .line 97
    invoke-static {}, Lio/grpc/CompressorRegistry;->getDefaultInstance()Lio/grpc/CompressorRegistry;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    .line 96
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;

    .line 184
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-direct {p0}, Lio/grpc/ManagedChannelBuilder;-><init>()V

    .line 102
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 104
    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    .line 107
    invoke-static {}, Lio/grpc/NameResolverRegistry;->getDefaultRegistry()Lio/grpc/NameResolverRegistry;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    .line 110
    invoke-virtual {v0}, Lio/grpc/NameResolverRegistry;->asFactory()Lio/grpc/NameResolver$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    .line 124
    const-string v0, "pick_first"

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->defaultLbPolicy:Ljava/lang/String;

    .line 128
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 130
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 132
    sget-wide v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

    iput-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeoutMillis:J

    .line 134
    const/4 v0, 0x5

    iput v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxRetryAttempts:I

    .line 135
    iput v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxHedgedAttempts:I

    .line 136
    const-wide/32 v0, 0x1000000

    iput-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->retryBufferSize:J

    .line 137
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->perRpcBufferLimit:J

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->retryEnabled:Z

    .line 144
    invoke-static {}, Lio/grpc/InternalChannelz;->instance()Lio/grpc/InternalChannelz;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->lookUpServiceConfig:Z

    .line 151
    invoke-static {}, Lio/grpc/internal/TransportTracer;->getDefaultFactory()Lio/grpc/internal/TransportTracer$Factory;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    .line 153
    const/high16 v2, 0x400000

    iput v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMessageSize:I

    .line 178
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->statsEnabled:Z

    .line 179
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordStartedRpcs:Z

    .line 180
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordFinishedRpcs:Z

    .line 181
    iput-boolean v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordRealTimeMetrics:Z

    .line 182
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->tracingEnabled:Z

    .line 185
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->target:Ljava/lang/String;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->directServerAddress:Ljava/net/SocketAddress;

    .line 187
    return-void
.end method

.method protected constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;)V
    .locals 3
    .param p1, "directServerAddress"    # Ljava/net/SocketAddress;
    .param p2, "authority"    # Ljava/lang/String;

    .line 204
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-direct {p0}, Lio/grpc/ManagedChannelBuilder;-><init>()V

    .line 102
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 104
    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    .line 107
    invoke-static {}, Lio/grpc/NameResolverRegistry;->getDefaultRegistry()Lio/grpc/NameResolverRegistry;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    .line 110
    invoke-virtual {v0}, Lio/grpc/NameResolverRegistry;->asFactory()Lio/grpc/NameResolver$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    .line 124
    const-string v0, "pick_first"

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->defaultLbPolicy:Ljava/lang/String;

    .line 128
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 130
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 132
    sget-wide v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

    iput-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeoutMillis:J

    .line 134
    const/4 v0, 0x5

    iput v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxRetryAttempts:I

    .line 135
    iput v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxHedgedAttempts:I

    .line 136
    const-wide/32 v0, 0x1000000

    iput-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->retryBufferSize:J

    .line 137
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->perRpcBufferLimit:J

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->retryEnabled:Z

    .line 144
    invoke-static {}, Lio/grpc/InternalChannelz;->instance()Lio/grpc/InternalChannelz;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->lookUpServiceConfig:Z

    .line 151
    invoke-static {}, Lio/grpc/internal/TransportTracer;->getDefaultFactory()Lio/grpc/internal/TransportTracer$Factory;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    .line 153
    const/high16 v2, 0x400000

    iput v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMessageSize:I

    .line 178
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->statsEnabled:Z

    .line 179
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordStartedRpcs:Z

    .line 180
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordFinishedRpcs:Z

    .line 181
    iput-boolean v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordRealTimeMetrics:Z

    .line 182
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->tracingEnabled:Z

    .line 205
    invoke-static {p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->makeTargetStringForDirectAddress(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->target:Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->directServerAddress:Ljava/net/SocketAddress;

    .line 207
    new-instance v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder$DirectAddressNameResolverFactory;

    invoke-direct {v0, p1, p2}, Lio/grpc/internal/AbstractManagedChannelImplBuilder$DirectAddressNameResolverFactory;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;)V

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    .line 208
    return-void
.end method

.method private static checkListEntryTypes(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 422
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 423
    .local v0, "parsedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 424
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 425
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 426
    :cond_0
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 427
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    invoke-static {v3}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->checkMapEntryTypes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 428
    :cond_1
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 429
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->checkListEntryTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 430
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 431
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 432
    :cond_3
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_4

    .line 433
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 434
    :cond_4
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    .line 435
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    .end local v2    # "value":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 437
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The entry \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' is of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\', which is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 442
    .end local v2    # "value":Ljava/lang/Object;
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static checkMapEntryTypes(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .param p0    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 388
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 389
    return-object v0

    .line 392
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 393
    .local v1, "parsedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 394
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    nop

    .line 395
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    .line 394
    const-string v5, "The key of the entry \'%s\' is not of String type"

    invoke-static {v4, v5, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 398
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 399
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 400
    .local v5, "value":Ljava/lang/Object;
    if-nez v5, :cond_1

    .line 401
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 402
    :cond_1
    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_2

    .line 403
    move-object v6, v5

    check-cast v6, Ljava/util/Map;

    invoke-static {v6}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->checkMapEntryTypes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 404
    :cond_2
    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_3

    .line 405
    move-object v6, v5

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->checkListEntryTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 406
    :cond_3
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 407
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 408
    :cond_4
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_5

    .line 409
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 410
    :cond_5
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_6

    .line 411
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 413
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The value of the map entry \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\' is of type \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\', which is not supported"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_7
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static forAddress(Ljava/lang/String;I)Lio/grpc/ManagedChannelBuilder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass failed to hide static factory"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forTarget(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 2
    .param p0, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass failed to hide static factory"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static makeTargetStringForDirectAddress(Ljava/net/SocketAddress;)Ljava/lang/String;
    .locals 5
    .param p0, "address"    # Ljava/net/SocketAddress;

    .line 197
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "directaddress"

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 660
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    move-object v0, p0

    .line 661
    .local v0, "thisT":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "TT;"
    return-object v0
.end method


# virtual methods
.method public build()Lio/grpc/ManagedChannel;
    .locals 10

    .line 511
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    new-instance v0, Lio/grpc/internal/ManagedChannelOrphanWrapper;

    new-instance v9, Lio/grpc/internal/ManagedChannelImpl;

    .line 513
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->buildTransportFactory()Lio/grpc/internal/ClientTransportFactory;

    move-result-object v3

    new-instance v4, Lio/grpc/internal/ExponentialBackoffPolicy$Provider;

    invoke-direct {v4}, Lio/grpc/internal/ExponentialBackoffPolicy$Provider;-><init>()V

    sget-object v1, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 516
    invoke-static {v1}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v5

    sget-object v6, Lio/grpc/internal/GrpcUtil;->STOPWATCH_SUPPLIER:Lcom/google/common/base/Supplier;

    .line 518
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->getEffectiveInterceptors()Ljava/util/List;

    move-result-object v7

    sget-object v8, Lio/grpc/internal/TimeProvider;->SYSTEM_TIME_PROVIDER:Lio/grpc/internal/TimeProvider;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lio/grpc/internal/ManagedChannelImpl;-><init>(Lio/grpc/internal/AbstractManagedChannelImplBuilder;Lio/grpc/internal/ClientTransportFactory;Lio/grpc/internal/BackoffPolicy$Provider;Lio/grpc/internal/ObjectPool;Lcom/google/common/base/Supplier;Ljava/util/List;Lio/grpc/internal/TimeProvider;)V

    invoke-direct {v0, v9}, Lio/grpc/internal/ManagedChannelOrphanWrapper;-><init>(Lio/grpc/ManagedChannel;)V

    .line 511
    return-object v0
.end method

.method protected abstract buildTransportFactory()Lio/grpc/internal/ClientTransportFactory;
.end method

.method protected checkAuthority(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .line 506
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->checkAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/CompressorRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/CompressorRegistry;",
            ")TT;"
        }
    .end annotation

    .line 287
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    if-eqz p1, :cond_0

    .line 288
    iput-object p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    goto :goto_0

    .line 290
    :cond_0
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 292
    :goto_0
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/DecompressorRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/DecompressorRegistry;",
            ")TT;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    if-eqz p1, :cond_0

    .line 278
    iput-object p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    goto :goto_0

    .line 280
    :cond_0
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 282
    :goto_0
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 5
    .param p1, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    iget-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->directServerAddress:Ljava/net/SocketAddress;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "directServerAddress is set (%s), which forbids the use of load-balancing policy"

    invoke-static {v3, v4, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 264
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "policy cannot be null"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 265
    iput-object p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->defaultLbPolicy:Ljava/lang/String;

    .line 266
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic defaultServiceConfig(Ljava/util/Map;)Lio/grpc/ManagedChannelBuilder;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->defaultServiceConfig(Ljava/util/Map;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultServiceConfig(Ljava/util/Map;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .line 382
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    .local p1, "serviceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->checkMapEntryTypes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->defaultServiceConfig:Ljava/util/Map;

    .line 383
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic directExecutor()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->directExecutor()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final directExecutor()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic disableRetry()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->disableRetry()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final disableRetry()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 348
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->retryEnabled:Z

    .line 349
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic disableServiceConfigLookUp()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->disableServiceConfigLookUp()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableServiceConfigLookUp()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 447
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->lookUpServiceConfig:Z

    .line 448
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic enableFullStreamDecompression()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->enableFullStreamDecompression()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final enableFullStreamDecompression()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->fullStreamDecompression:Z

    .line 272
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic enableRetry()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->enableRetry()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final enableRetry()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 354
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->retryEnabled:Z

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->statsEnabled:Z

    .line 356
    iput-boolean v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->tracingEnabled:Z

    .line 357
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic executor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 217
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    if-eqz p1, :cond_0

    .line 218
    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    invoke-direct {v0, p1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    goto :goto_0

    .line 220
    :cond_0
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 222
    :goto_0
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultPort()I
    .locals 1

    .line 604
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    const/16 v0, 0x1bb

    return v0
.end method

.method final getEffectiveInterceptors()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation

    .line 527
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 529
    .local v0, "effectiveInterceptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->temporarilyDisableRetry:Z

    .line 530
    iget-boolean v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->statsEnabled:Z

    const/4 v3, 0x0

    const-string v4, "getClientInterceptor"

    const/4 v5, 0x1

    const-string v6, "Unable to apply census stats"

    if-eqz v2, :cond_0

    .line 531
    iput-boolean v5, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->temporarilyDisableRetry:Z

    .line 532
    const/4 v2, 0x0

    .line 534
    .local v2, "statsInterceptor":Lio/grpc/ClientInterceptor;
    :try_start_0
    const-string v7, "io.grpc.census.InternalCensusStatsAccessor"

    .line 535
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 536
    .local v7, "censusStatsAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v1

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 537
    invoke-virtual {v7, v4, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 542
    .local v9, "getClientInterceptorMethod":Ljava/lang/reflect/Method;
    new-array v8, v8, [Ljava/lang/Object;

    iget-boolean v10, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordStartedRpcs:Z

    .line 546
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v1

    iget-boolean v10, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordFinishedRpcs:Z

    .line 547
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v5

    iget-boolean v10, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordRealTimeMetrics:Z

    .line 548
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v11

    .line 544
    invoke-virtual {v9, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/grpc/ClientInterceptor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v8

    .line 558
    .end local v7    # "censusStatsAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "getClientInterceptorMethod":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 556
    :catch_0
    move-exception v7

    .line 557
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v8, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 554
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v7

    .line 555
    .local v7, "e":Ljava/lang/IllegalAccessException;
    sget-object v8, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 552
    :catch_2
    move-exception v7

    .line 553
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    sget-object v8, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 549
    :catch_3
    move-exception v7

    .line 551
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    sget-object v8, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 559
    :goto_1
    if-eqz v2, :cond_0

    .line 562
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 565
    .end local v2    # "statsInterceptor":Lio/grpc/ClientInterceptor;
    :cond_0
    iget-boolean v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->tracingEnabled:Z

    if-eqz v2, :cond_1

    .line 566
    iput-boolean v5, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->temporarilyDisableRetry:Z

    .line 567
    const/4 v2, 0x0

    .line 569
    .local v2, "tracingInterceptor":Lio/grpc/ClientInterceptor;
    :try_start_1
    const-string v5, "io.grpc.census.InternalCensusTracingAccessor"

    .line 570
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 571
    .local v5, "censusTracingAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v7, v1, [Ljava/lang/Class;

    .line 572
    invoke-virtual {v5, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 573
    .local v4, "getClientInterceptroMethod":Ljava/lang/reflect/Method;
    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/ClientInterceptor;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v2, v3

    .line 583
    .end local v4    # "getClientInterceptroMethod":Ljava/lang/reflect/Method;
    .end local v5    # "censusTracingAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    goto :goto_3

    .line 581
    :catch_4
    move-exception v3

    .line 582
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 579
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v3

    .line 580
    .local v3, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 577
    :catch_6
    move-exception v3

    .line 578
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2

    .line 574
    :catch_7
    move-exception v3

    .line 576
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_2

    .line 584
    :goto_3
    if-eqz v2, :cond_1

    .line 585
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 588
    .end local v2    # "tracingInterceptor":Lio/grpc/ClientInterceptor;
    :cond_1
    return-object v0
.end method

.method final getIdleTimeoutMillis()J
    .locals 2

    .line 497
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    iget-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeoutMillis:J

    return-wide v0
.end method

.method getNameResolverFactory()Lio/grpc/NameResolver$Factory;
    .locals 3

    .line 611
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    iget-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->authorityOverride:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    return-object v0

    .line 614
    :cond_0
    new-instance v1, Lio/grpc/internal/OverrideAuthorityNameResolverFactory;

    iget-object v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    invoke-direct {v1, v2, v0}, Lio/grpc/internal/OverrideAuthorityNameResolverFactory;-><init>(Lio/grpc/NameResolver$Factory;Ljava/lang/String;)V

    return-object v1
.end method

.method protected getOffloadExecutorPool()Lio/grpc/internal/ObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation

    .line 668
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    iget-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    return-object v0
.end method

.method public bridge synthetic idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 5
    .param p1, "value"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 309
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "idle timeout is %s, but must be positive"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 311
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 313
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeoutMillis:J

    goto :goto_1

    .line 315
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sget-wide v2, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->IDLE_MODE_MIN_TIMEOUT_MILLIS:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeoutMillis:J

    .line 317
    :goto_1
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic intercept(Ljava/util/List;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->intercept(Ljava/util/List;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final intercept(Ljava/util/List;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;)TT;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    iget-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 238
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final varargs intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "interceptors"    # [Lio/grpc/ClientInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/grpc/ClientInterceptor;",
            ")TT;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->intercept(Ljava/util/List;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maxHedgedAttempts(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxHedgedAttempts(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final maxHedgedAttempts(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "maxHedgedAttempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 328
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    iput p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxHedgedAttempts:I

    .line 329
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected final maxInboundMessageSize()I
    .locals 1

    .line 175
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    iget v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMessageSize:I

    return v0
.end method

.method public bridge synthetic maxInboundMessageSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMessageSize(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMessageSize(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 2
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "negative max"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 170
    iput p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMessageSize:I

    .line 171
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maxRetryAttempts(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxRetryAttempts(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final maxRetryAttempts(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "maxRetryAttempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 322
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    iput p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxRetryAttempts:I

    .line 323
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maxTraceEvents(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxTraceEvents(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxTraceEvents(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 2
    .param p1, "maxTraceEvents"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 368
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxTraceEvents must be non-negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 369
    iput p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxTraceEvents:I

    .line 370
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 3
    .param p1, "resolverFactory"    # Lio/grpc/NameResolver$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/NameResolver$Factory;",
            ")TT;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    iget-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->directServerAddress:Ljava/net/SocketAddress;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "directServerAddress is set (%s), which forbids the use of NameResolverFactory"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 251
    if-eqz p1, :cond_1

    .line 252
    iput-object p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    goto :goto_1

    .line 254
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    invoke-virtual {v0}, Lio/grpc/NameResolverRegistry;->asFactory()Lio/grpc/NameResolver$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    .line 256
    :goto_1
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    if-eqz p1, :cond_0

    .line 228
    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    invoke-direct {v0, p1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    goto :goto_0

    .line 230
    :cond_0
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 232
    :goto_0
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic overrideAuthority(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->overrideAuthority(Ljava/lang/String;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final overrideAuthority(Ljava/lang/String;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 303
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->checkAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->authorityOverride:Ljava/lang/String;

    .line 304
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic perRpcBufferLimit(J)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->perRpcBufferLimit(J)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final perRpcBufferLimit(J)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 3
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 341
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "per RPC buffer limit must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 342
    iput-wide p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->perRpcBufferLimit:J

    .line 343
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/ManagedChannelBuilder;
    .locals 0
    .param p1    # Lio/grpc/ProxyDetector;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "proxyDetector"    # Lio/grpc/ProxyDetector;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ProxyDetector;",
            ")TT;"
        }
    .end annotation

    .line 375
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    iput-object p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->proxyDetector:Lio/grpc/ProxyDetector;

    .line 376
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retryBufferSize(J)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->retryBufferSize(J)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final retryBufferSize(J)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 3
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "retry buffer size must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 335
    iput-wide p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->retryBufferSize:J

    .line 336
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "binlog"    # Lio/grpc/BinaryLog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/BinaryLog;",
            ")TT;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    iput-object p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->binlog:Lio/grpc/BinaryLog;

    .line 363
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected setStatsEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 458
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    iput-boolean p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->statsEnabled:Z

    .line 459
    return-void
.end method

.method protected setStatsRecordFinishedRpcs(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 474
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    iput-boolean p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordFinishedRpcs:Z

    .line 475
    return-void
.end method

.method protected setStatsRecordRealTimeMetrics(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 482
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    iput-boolean p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordRealTimeMetrics:Z

    .line 483
    return-void
.end method

.method protected setStatsRecordStartedRpcs(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 466
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    iput-boolean p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordStartedRpcs:Z

    .line 467
    return-void
.end method

.method protected setTracingEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 492
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    iput-boolean p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->tracingEnabled:Z

    .line 493
    return-void
.end method

.method public bridge synthetic userAgent(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->userAgent(Ljava/lang/String;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final userAgent(Ljava/lang/String;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 297
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    iput-object p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->userAgent:Ljava/lang/String;

    .line 298
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method
