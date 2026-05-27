.class public abstract Lio/grpc/internal/AbstractServerImplBuilder;
.super Lio/grpc/ServerBuilder;
.source "AbstractServerImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/AbstractServerImplBuilder$DefaultFallbackRegistry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/grpc/internal/AbstractServerImplBuilder<",
        "TT;>;>",
        "Lio/grpc/ServerBuilder<",
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

.field private static final DEFAULT_FALLBACK_REGISTRY:Lio/grpc/HandlerRegistry;

.field private static final DEFAULT_HANDSHAKE_TIMEOUT_MILLIS:J

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field binlog:Lio/grpc/BinaryLog;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field callTracerFactory:Lio/grpc/internal/CallTracer$Factory;

.field channelz:Lio/grpc/InternalChannelz;

.field compressorRegistry:Lio/grpc/CompressorRegistry;

.field decompressorRegistry:Lio/grpc/DecompressorRegistry;

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

.field fallbackRegistry:Lio/grpc/HandlerRegistry;

.field handshakeTimeoutMillis:J

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final notifyOnBuildList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/InternalNotifyOnServerBuild;",
            ">;"
        }
    .end annotation
.end field

.field private recordFinishedRpcs:Z

.field private recordRealTimeMetrics:Z

.field private recordStartedRpcs:Z

.field final registryBuilder:Lio/grpc/internal/InternalHandlerRegistry$Builder;

.field private statsEnabled:Z

.field private final streamTracerFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;"
        }
    .end annotation
.end field

.field ticker:Lio/grpc/Deadline$Ticker;

.field private tracingEnabled:Z

.field final transportFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerTransportFilter;",
            ">;"
        }
    .end annotation
.end field

.field transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    const-class v0, Lio/grpc/internal/AbstractServerImplBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractServerImplBuilder;->log:Ljava/util/logging/Logger;

    .line 66
    sget-object v0, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 67
    invoke-static {v0}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractServerImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    .line 68
    new-instance v0, Lio/grpc/internal/AbstractServerImplBuilder$DefaultFallbackRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/internal/AbstractServerImplBuilder$DefaultFallbackRegistry;-><init>(Lio/grpc/internal/AbstractServerImplBuilder$1;)V

    sput-object v0, Lio/grpc/internal/AbstractServerImplBuilder;->DEFAULT_FALLBACK_REGISTRY:Lio/grpc/HandlerRegistry;

    .line 70
    invoke-static {}, Lio/grpc/DecompressorRegistry;->getDefaultInstance()Lio/grpc/DecompressorRegistry;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractServerImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    .line 72
    invoke-static {}, Lio/grpc/CompressorRegistry;->getDefaultInstance()Lio/grpc/CompressorRegistry;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractServerImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    .line 73
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/AbstractServerImplBuilder;->DEFAULT_HANDSHAKE_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    invoke-direct {p0}, Lio/grpc/ServerBuilder;-><init>()V

    .line 76
    new-instance v0, Lio/grpc/internal/InternalHandlerRegistry$Builder;

    invoke-direct {v0}, Lio/grpc/internal/InternalHandlerRegistry$Builder;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->registryBuilder:Lio/grpc/internal/InternalHandlerRegistry$Builder;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->transportFilters:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->interceptors:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->notifyOnBuildList:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->streamTracerFactories:Ljava/util/List;

    .line 82
    sget-object v0, Lio/grpc/internal/AbstractServerImplBuilder;->DEFAULT_FALLBACK_REGISTRY:Lio/grpc/HandlerRegistry;

    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->fallbackRegistry:Lio/grpc/HandlerRegistry;

    .line 83
    sget-object v0, Lio/grpc/internal/AbstractServerImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 84
    sget-object v0, Lio/grpc/internal/AbstractServerImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 85
    sget-object v0, Lio/grpc/internal/AbstractServerImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 86
    sget-wide v0, Lio/grpc/internal/AbstractServerImplBuilder;->DEFAULT_HANDSHAKE_TIMEOUT_MILLIS:J

    iput-wide v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->handshakeTimeoutMillis:J

    .line 87
    invoke-static {}, Lio/grpc/Deadline;->getSystemTicker()Lio/grpc/Deadline$Ticker;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->ticker:Lio/grpc/Deadline$Ticker;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->statsEnabled:Z

    .line 89
    iput-boolean v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->recordStartedRpcs:Z

    .line 90
    iput-boolean v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->recordFinishedRpcs:Z

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/grpc/internal/AbstractServerImplBuilder;->recordRealTimeMetrics:Z

    .line 92
    iput-boolean v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->tracingEnabled:Z

    .line 94
    invoke-static {}, Lio/grpc/internal/TransportTracer;->getDefaultFactory()Lio/grpc/internal/TransportTracer$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    .line 95
    invoke-static {}, Lio/grpc/InternalChannelz;->instance()Lio/grpc/InternalChannelz;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    .line 96
    invoke-static {}, Lio/grpc/internal/CallTracer;->getDefaultFactory()Lio/grpc/internal/CallTracer$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->callTracerFactory:Lio/grpc/internal/CallTracer$Factory;

    return-void
.end method

.method public static forPort(I)Lio/grpc/ServerBuilder;
    .locals 2
    .param p0, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/grpc/ServerBuilder<",
            "*>;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass failed to hide static factory"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private thisT()Lio/grpc/internal/AbstractServerImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 318
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    move-object v0, p0

    .line 319
    .local v0, "thisT":Lio/grpc/internal/AbstractServerImplBuilder;, "TT;"
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addService(Lio/grpc/BindableService;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 56
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractServerImplBuilder;->addService(Lio/grpc/BindableService;)Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 56
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractServerImplBuilder;->addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final addService(Lio/grpc/BindableService;)Lio/grpc/internal/AbstractServerImplBuilder;
    .locals 2
    .param p1, "bindableService"    # Lio/grpc/BindableService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/BindableService;",
            ")TT;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    instance-of v0, p1, Lio/grpc/InternalNotifyOnServerBuild;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->notifyOnBuildList:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lio/grpc/InternalNotifyOnServerBuild;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    const-string v0, "bindableService"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/BindableService;

    invoke-interface {v0}, Lio/grpc/BindableService;->bindService()Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractServerImplBuilder;->addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/internal/AbstractServerImplBuilder;
    .locals 2
    .param p1, "service"    # Lio/grpc/ServerServiceDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerServiceDefinition;",
            ")TT;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    iget-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->registryBuilder:Lio/grpc/internal/InternalHandlerRegistry$Builder;

    const-string v1, "service"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerServiceDefinition;

    invoke-virtual {v0, v1}, Lio/grpc/internal/InternalHandlerRegistry$Builder;->addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/internal/InternalHandlerRegistry$Builder;

    .line 112
    invoke-direct {p0}, Lio/grpc/internal/AbstractServerImplBuilder;->thisT()Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addStreamTracerFactory(Lio/grpc/ServerStreamTracer$Factory;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 56
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractServerImplBuilder;->addStreamTracerFactory(Lio/grpc/ServerStreamTracer$Factory;)Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final addStreamTracerFactory(Lio/grpc/ServerStreamTracer$Factory;)Lio/grpc/internal/AbstractServerImplBuilder;
    .locals 2
    .param p1, "factory"    # Lio/grpc/ServerStreamTracer$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ")TT;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    iget-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->streamTracerFactories:Ljava/util/List;

    const-string v1, "factory"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-direct {p0}, Lio/grpc/internal/AbstractServerImplBuilder;->thisT()Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTransportFilter(Lio/grpc/ServerTransportFilter;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 56
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractServerImplBuilder;->addTransportFilter(Lio/grpc/ServerTransportFilter;)Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final addTransportFilter(Lio/grpc/ServerTransportFilter;)Lio/grpc/internal/AbstractServerImplBuilder;
    .locals 2
    .param p1, "filter"    # Lio/grpc/ServerTransportFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerTransportFilter;",
            ")TT;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    iget-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->transportFilters:Ljava/util/List;

    const-string v1, "filter"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-direct {p0}, Lio/grpc/internal/AbstractServerImplBuilder;->thisT()Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lio/grpc/Server;
    .locals 3

    .line 225
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    new-instance v0, Lio/grpc/internal/ServerImpl;

    .line 227
    invoke-virtual {p0}, Lio/grpc/internal/AbstractServerImplBuilder;->getTracerFactories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/grpc/internal/AbstractServerImplBuilder;->buildTransportServers(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    invoke-direct {v0, p0, v1, v2}, Lio/grpc/internal/ServerImpl;-><init>(Lio/grpc/internal/AbstractServerImplBuilder;Ljava/util/List;Lio/grpc/Context;)V

    .line 229
    .local v0, "server":Lio/grpc/internal/ServerImpl;
    iget-object v1, p0, Lio/grpc/internal/AbstractServerImplBuilder;->notifyOnBuildList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/InternalNotifyOnServerBuild;

    .line 230
    .local v2, "notifyTarget":Lio/grpc/InternalNotifyOnServerBuild;
    invoke-interface {v2, v0}, Lio/grpc/InternalNotifyOnServerBuild;->notifyOnBuild(Lio/grpc/Server;)V

    .line 231
    .end local v2    # "notifyTarget":Lio/grpc/InternalNotifyOnServerBuild;
    goto :goto_0

    .line 232
    :cond_0
    return-object v0
.end method

.method protected abstract buildTransportServers(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/internal/InternalServer;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ServerBuilder;
    .locals 0
    .param p1    # Lio/grpc/CompressorRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractServerImplBuilder;->compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/AbstractServerImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/CompressorRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/CompressorRegistry;",
            ")TT;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/internal/AbstractServerImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    :goto_0
    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 156
    invoke-direct {p0}, Lio/grpc/internal/AbstractServerImplBuilder;->thisT()Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ServerBuilder;
    .locals 0
    .param p1    # Lio/grpc/DecompressorRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractServerImplBuilder;->decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/AbstractServerImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/DecompressorRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/DecompressorRegistry;",
            ")TT;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/internal/AbstractServerImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    :goto_0
    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 150
    invoke-direct {p0}, Lio/grpc/internal/AbstractServerImplBuilder;->thisT()Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic directExecutor()Lio/grpc/ServerBuilder;
    .locals 1

    .line 56
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractServerImplBuilder;->directExecutor()Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final directExecutor()Lio/grpc/internal/AbstractServerImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractServerImplBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic executor(Ljava/util/concurrent/Executor;)Lio/grpc/ServerBuilder;
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractServerImplBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/AbstractServerImplBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    if-eqz p1, :cond_0

    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    invoke-direct {v0, p1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/internal/AbstractServerImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    :goto_0
    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 106
    invoke-direct {p0}, Lio/grpc/internal/AbstractServerImplBuilder;->thisT()Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fallbackHandlerRegistry(Lio/grpc/HandlerRegistry;)Lio/grpc/ServerBuilder;
    .locals 0
    .param p1    # Lio/grpc/HandlerRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractServerImplBuilder;->fallbackHandlerRegistry(Lio/grpc/HandlerRegistry;)Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final fallbackHandlerRegistry(Lio/grpc/HandlerRegistry;)Lio/grpc/internal/AbstractServerImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/HandlerRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/HandlerRegistry;",
            ")TT;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/internal/AbstractServerImplBuilder;->DEFAULT_FALLBACK_REGISTRY:Lio/grpc/HandlerRegistry;

    :goto_0
    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->fallbackRegistry:Lio/grpc/HandlerRegistry;

    .line 144
    invoke-direct {p0}, Lio/grpc/internal/AbstractServerImplBuilder;->thisT()Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected final getChannelz()Lio/grpc/InternalChannelz;
    .locals 1

    .line 299
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    iget-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    return-object v0
.end method

.method protected getExecutorPool()Lio/grpc/internal/ObjectPool;
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

    .line 340
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    iget-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    return-object v0
.end method

.method final getTracerFactories()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v0, "tracerFactories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/ServerStreamTracer$Factory;>;"
    iget-boolean v1, p0, Lio/grpc/internal/AbstractServerImplBuilder;->statsEnabled:Z

    const/4 v2, 0x0

    const-string v3, "getServerStreamTracerFactory"

    const/4 v4, 0x0

    const-string v5, "Unable to apply census stats"

    if-eqz v1, :cond_0

    .line 239
    const/4 v1, 0x0

    .line 241
    .local v1, "censusStatsTracerFactory":Lio/grpc/ServerStreamTracer$Factory;
    :try_start_0
    const-string v6, "io.grpc.census.InternalCensusStatsAccessor"

    .line 242
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 243
    .local v6, "censusStatsAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x2

    aput-object v9, v8, v11

    .line 244
    invoke-virtual {v6, v3, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 249
    .local v8, "getServerStreamTracerFactoryMethod":Ljava/lang/reflect/Method;
    new-array v7, v7, [Ljava/lang/Object;

    iget-boolean v9, p0, Lio/grpc/internal/AbstractServerImplBuilder;->recordStartedRpcs:Z

    .line 253
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v4

    iget-boolean v9, p0, Lio/grpc/internal/AbstractServerImplBuilder;->recordFinishedRpcs:Z

    .line 254
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v10

    iget-boolean v9, p0, Lio/grpc/internal/AbstractServerImplBuilder;->recordRealTimeMetrics:Z

    .line 255
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v11

    .line 251
    invoke-virtual {v8, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/grpc/ServerStreamTracer$Factory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v7

    .line 265
    .end local v6    # "censusStatsAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "getServerStreamTracerFactoryMethod":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 263
    :catch_0
    move-exception v6

    .line 264
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v7, Lio/grpc/internal/AbstractServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 261
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v6

    .line 262
    .local v6, "e":Ljava/lang/IllegalAccessException;
    sget-object v7, Lio/grpc/internal/AbstractServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 259
    :catch_2
    move-exception v6

    .line 260
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    sget-object v7, Lio/grpc/internal/AbstractServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 256
    :catch_3
    move-exception v6

    .line 258
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    sget-object v7, Lio/grpc/internal/AbstractServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 266
    :goto_1
    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v1    # "censusStatsTracerFactory":Lio/grpc/ServerStreamTracer$Factory;
    :cond_0
    iget-boolean v1, p0, Lio/grpc/internal/AbstractServerImplBuilder;->tracingEnabled:Z

    if-eqz v1, :cond_1

    .line 271
    const/4 v1, 0x0

    .line 273
    .local v1, "tracingStreamTracerFactory":Lio/grpc/ServerStreamTracer$Factory;
    :try_start_1
    const-string v6, "io.grpc.census.InternalCensusTracingAccessor"

    .line 274
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 275
    .local v6, "censusTracingAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v7, v4, [Ljava/lang/Class;

    .line 276
    invoke-virtual {v6, v3, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 277
    .local v3, "getServerStreamTracerFactoryMethod":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    .line 278
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/ServerStreamTracer$Factory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v1, v2

    .line 288
    .end local v3    # "getServerStreamTracerFactoryMethod":Ljava/lang/reflect/Method;
    .end local v6    # "censusTracingAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    goto :goto_3

    .line 286
    :catch_4
    move-exception v2

    .line 287
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Lio/grpc/internal/AbstractServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 284
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Lio/grpc/internal/AbstractServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 282
    :catch_6
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    sget-object v3, Lio/grpc/internal/AbstractServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2

    .line 279
    :catch_7
    move-exception v2

    .line 281
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lio/grpc/internal/AbstractServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_2

    .line 289
    :goto_3
    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v1    # "tracingStreamTracerFactory":Lio/grpc/ServerStreamTracer$Factory;
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/AbstractServerImplBuilder;->streamTracerFactories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 294
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 295
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected final getTransportTracerFactory()Lio/grpc/internal/TransportTracer$Factory;
    .locals 1

    .line 303
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    iget-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    return-object v0
.end method

.method public bridge synthetic handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 56
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/internal/AbstractServerImplBuilder;->handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/AbstractServerImplBuilder;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "handshake timeout is %s, but must be positive"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 162
    const-string v0, "unit"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->handshakeTimeoutMillis:J

    .line 163
    invoke-direct {p0}, Lio/grpc/internal/AbstractServerImplBuilder;->thisT()Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic intercept(Lio/grpc/ServerInterceptor;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 56
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractServerImplBuilder;->intercept(Lio/grpc/ServerInterceptor;)Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final intercept(Lio/grpc/ServerInterceptor;)Lio/grpc/internal/AbstractServerImplBuilder;
    .locals 2
    .param p1, "interceptor"    # Lio/grpc/ServerInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerInterceptor;",
            ")TT;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    iget-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->interceptors:Ljava/util/List;

    const-string v1, "interceptor"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-direct {p0}, Lio/grpc/internal/AbstractServerImplBuilder;->thisT()Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/ServerBuilder;
    .locals 0
    .param p1    # Lio/grpc/BinaryLog;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractServerImplBuilder;->setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/internal/AbstractServerImplBuilder;
    .locals 1
    .param p1, "binaryLog"    # Lio/grpc/BinaryLog;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/BinaryLog;",
            ")TT;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    iput-object p1, p0, Lio/grpc/internal/AbstractServerImplBuilder;->binlog:Lio/grpc/BinaryLog;

    .line 169
    invoke-direct {p0}, Lio/grpc/internal/AbstractServerImplBuilder;->thisT()Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected setDeadlineTicker(Lio/grpc/Deadline$Ticker;)V
    .locals 1
    .param p1, "ticker"    # Lio/grpc/Deadline$Ticker;

    .line 220
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    const-string v0, "ticker"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Deadline$Ticker;

    iput-object v0, p0, Lio/grpc/internal/AbstractServerImplBuilder;->ticker:Lio/grpc/Deadline$Ticker;

    .line 221
    return-void
.end method

.method protected setStatsEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 182
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    iput-boolean p1, p0, Lio/grpc/internal/AbstractServerImplBuilder;->statsEnabled:Z

    .line 183
    return-void
.end method

.method protected setStatsRecordFinishedRpcs(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 198
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    iput-boolean p1, p0, Lio/grpc/internal/AbstractServerImplBuilder;->recordFinishedRpcs:Z

    .line 199
    return-void
.end method

.method protected setStatsRecordRealTimeMetrics(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 206
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    iput-boolean p1, p0, Lio/grpc/internal/AbstractServerImplBuilder;->recordRealTimeMetrics:Z

    .line 207
    return-void
.end method

.method protected setStatsRecordStartedRpcs(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 190
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    iput-boolean p1, p0, Lio/grpc/internal/AbstractServerImplBuilder;->recordStartedRpcs:Z

    .line 191
    return-void
.end method

.method protected setTracingEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 213
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    iput-boolean p1, p0, Lio/grpc/internal/AbstractServerImplBuilder;->tracingEnabled:Z

    .line 214
    return-void
.end method

.method public final setTransportTracerFactory(Lio/grpc/internal/TransportTracer$Factory;)Lio/grpc/internal/AbstractServerImplBuilder;
    .locals 1
    .param p1, "transportTracerFactory"    # Lio/grpc/internal/TransportTracer$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/TransportTracer$Factory;",
            ")TT;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<TT;>;"
    iput-object p1, p0, Lio/grpc/internal/AbstractServerImplBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    .line 175
    invoke-direct {p0}, Lio/grpc/internal/AbstractServerImplBuilder;->thisT()Lio/grpc/internal/AbstractServerImplBuilder;

    move-result-object v0

    return-object v0
.end method
