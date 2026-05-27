.class public final Lio/grpc/internal/ServerImpl;
.super Lio/grpc/Server;
.source "ServerImpl.java"

# interfaces
.implements Lio/grpc/InternalInstrumented;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ServerImpl$ContextCloser;,
        Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;,
        Lio/grpc/internal/ServerImpl$NoopListener;,
        Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;,
        Lio/grpc/internal/ServerImpl$ServerListenerImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/Server;",
        "Lio/grpc/InternalInstrumented<",
        "Lio/grpc/InternalChannelz$ServerStats;",
        ">;"
    }
.end annotation


# static fields
.field private static final NOOP_LISTENER:Lio/grpc/internal/ServerStreamListener;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private activeTransportServers:I

.field private final binlog:Lio/grpc/BinaryLog;

.field private final channelz:Lio/grpc/InternalChannelz;

.field private final compressorRegistry:Lio/grpc/CompressorRegistry;

.field private final decompressorRegistry:Lio/grpc/DecompressorRegistry;

.field private executor:Ljava/util/concurrent/Executor;

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

.field private final fallbackRegistry:Lio/grpc/HandlerRegistry;

.field private final handshakeTimeoutMillis:J

.field private final interceptors:[Lio/grpc/ServerInterceptor;

.field private final lock:Ljava/lang/Object;

.field private final logId:Lio/grpc/InternalLogId;

.field private final registry:Lio/grpc/HandlerRegistry;

.field private final rootContext:Lio/grpc/Context;

.field private final serverCallTracer:Lio/grpc/internal/CallTracer;

.field private serverShutdownCallbackInvoked:Z

.field private shutdown:Z

.field private shutdownNowStatus:Lio/grpc/Status;

.field private started:Z

.field private terminated:Z

.field private final ticker:Lio/grpc/Deadline$Ticker;

.field private final transportFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerTransportFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final transportServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lio/grpc/internal/InternalServer;",
            ">;"
        }
    .end annotation
.end field

.field private transportServersTerminated:Z

.field private final transports:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/grpc/internal/ServerTransport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 91
    const-class v0, Lio/grpc/internal/ServerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ServerImpl;->log:Ljava/util/logging/Logger;

    .line 92
    new-instance v0, Lio/grpc/internal/ServerImpl$NoopListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/internal/ServerImpl$NoopListener;-><init>(Lio/grpc/internal/ServerImpl$1;)V

    sput-object v0, Lio/grpc/internal/ServerImpl;->NOOP_LISTENER:Lio/grpc/internal/ServerStreamListener;

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/AbstractServerImplBuilder;Ljava/util/List;Lio/grpc/Context;)V
    .locals 3
    .param p3, "rootContext"    # Lio/grpc/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/AbstractServerImplBuilder<",
            "*>;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/internal/InternalServer;",
            ">;",
            "Lio/grpc/Context;",
            ")V"
        }
    .end annotation

    .line 140
    .local p1, "builder":Lio/grpc/internal/AbstractServerImplBuilder;, "Lio/grpc/internal/AbstractServerImplBuilder<*>;"
    .local p2, "transportServers":Ljava/util/List;, "Ljava/util/List<+Lio/grpc/internal/InternalServer;>;"
    invoke-direct {p0}, Lio/grpc/Server;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ServerImpl;->transports:Ljava/util/Set;

    .line 141
    iget-object v0, p1, Lio/grpc/internal/AbstractServerImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    const-string v1, "executorPool"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/ServerImpl;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 142
    iget-object v0, p1, Lio/grpc/internal/AbstractServerImplBuilder;->registryBuilder:Lio/grpc/internal/InternalHandlerRegistry$Builder;

    invoke-virtual {v0}, Lio/grpc/internal/InternalHandlerRegistry$Builder;->build()Lio/grpc/internal/InternalHandlerRegistry;

    move-result-object v0

    const-string v1, "registryBuilder"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/HandlerRegistry;

    iput-object v0, p0, Lio/grpc/internal/ServerImpl;->registry:Lio/grpc/HandlerRegistry;

    .line 143
    iget-object v0, p1, Lio/grpc/internal/AbstractServerImplBuilder;->fallbackRegistry:Lio/grpc/HandlerRegistry;

    .line 144
    const-string v1, "fallbackRegistry"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/HandlerRegistry;

    iput-object v0, p0, Lio/grpc/internal/ServerImpl;->fallbackRegistry:Lio/grpc/HandlerRegistry;

    .line 145
    const-string v0, "transportServers"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "no servers provided"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/internal/ServerImpl;->transportServers:Ljava/util/List;

    .line 148
    nop

    .line 149
    invoke-direct {p0}, Lio/grpc/internal/ServerImpl;->getListenSocketsIgnoringLifecycle()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Server"

    invoke-static {v1, v0}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ServerImpl;->logId:Lio/grpc/InternalLogId;

    .line 152
    const-string v0, "rootContext"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->fork()Lio/grpc/Context;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ServerImpl;->rootContext:Lio/grpc/Context;

    .line 153
    iget-object v0, p1, Lio/grpc/internal/AbstractServerImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ServerImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 154
    iget-object v0, p1, Lio/grpc/internal/AbstractServerImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ServerImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lio/grpc/internal/AbstractServerImplBuilder;->transportFilters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ServerImpl;->transportFilters:Ljava/util/List;

    .line 157
    iget-object v0, p1, Lio/grpc/internal/AbstractServerImplBuilder;->interceptors:Ljava/util/List;

    iget-object v1, p1, Lio/grpc/internal/AbstractServerImplBuilder;->interceptors:Ljava/util/List;

    .line 158
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lio/grpc/ServerInterceptor;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/ServerInterceptor;

    iput-object v0, p0, Lio/grpc/internal/ServerImpl;->interceptors:[Lio/grpc/ServerInterceptor;

    .line 159
    iget-wide v0, p1, Lio/grpc/internal/AbstractServerImplBuilder;->handshakeTimeoutMillis:J

    iput-wide v0, p0, Lio/grpc/internal/ServerImpl;->handshakeTimeoutMillis:J

    .line 160
    iget-object v0, p1, Lio/grpc/internal/AbstractServerImplBuilder;->binlog:Lio/grpc/BinaryLog;

    iput-object v0, p0, Lio/grpc/internal/ServerImpl;->binlog:Lio/grpc/BinaryLog;

    .line 161
    iget-object v0, p1, Lio/grpc/internal/AbstractServerImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    iput-object v0, p0, Lio/grpc/internal/ServerImpl;->channelz:Lio/grpc/InternalChannelz;

    .line 162
    iget-object v1, p1, Lio/grpc/internal/AbstractServerImplBuilder;->callTracerFactory:Lio/grpc/internal/CallTracer$Factory;

    invoke-interface {v1}, Lio/grpc/internal/CallTracer$Factory;->create()Lio/grpc/internal/CallTracer;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/ServerImpl;->serverCallTracer:Lio/grpc/internal/CallTracer;

    .line 163
    iget-object v1, p1, Lio/grpc/internal/AbstractServerImplBuilder;->ticker:Lio/grpc/Deadline$Ticker;

    const-string v2, "ticker"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/Deadline$Ticker;

    iput-object v1, p0, Lio/grpc/internal/ServerImpl;->ticker:Lio/grpc/Deadline$Ticker;

    .line 165
    invoke-virtual {v0, p0}, Lio/grpc/InternalChannelz;->addServer(Lio/grpc/InternalInstrumented;)V

    .line 166
    return-void
.end method

.method static synthetic access$1000(Lio/grpc/internal/ServerImpl;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget-wide v0, p0, Lio/grpc/internal/ServerImpl;->handshakeTimeoutMillis:J

    return-wide v0
.end method

.method static synthetic access$1100(Lio/grpc/internal/ServerImpl;)Lio/grpc/InternalChannelz;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->channelz:Lio/grpc/InternalChannelz;

    return-object v0
.end method

.method static synthetic access$1200(Lio/grpc/internal/ServerImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->transportFilters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lio/grpc/internal/ServerImpl;Lio/grpc/internal/ServerTransport;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;
    .param p1, "x1"    # Lio/grpc/internal/ServerTransport;

    .line 90
    invoke-direct {p0, p1}, Lio/grpc/internal/ServerImpl;->transportClosed(Lio/grpc/internal/ServerTransport;)V

    return-void
.end method

.method static synthetic access$1400(Lio/grpc/internal/ServerImpl;)Lio/grpc/DecompressorRegistry;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    return-object v0
.end method

.method static synthetic access$1500(Lio/grpc/internal/ServerImpl;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$1600()Lio/grpc/internal/ServerStreamListener;
    .locals 1

    .line 90
    sget-object v0, Lio/grpc/internal/ServerImpl;->NOOP_LISTENER:Lio/grpc/internal/ServerStreamListener;

    return-object v0
.end method

.method static synthetic access$1700(Lio/grpc/internal/ServerImpl;)Lio/grpc/HandlerRegistry;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->registry:Lio/grpc/HandlerRegistry;

    return-object v0
.end method

.method static synthetic access$1800(Lio/grpc/internal/ServerImpl;)Lio/grpc/HandlerRegistry;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->fallbackRegistry:Lio/grpc/HandlerRegistry;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/internal/ServerImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lio/grpc/internal/ServerImpl;)Lio/grpc/Context;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->rootContext:Lio/grpc/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lio/grpc/internal/ServerImpl;)Lio/grpc/Deadline$Ticker;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->ticker:Lio/grpc/Deadline$Ticker;

    return-object v0
.end method

.method static synthetic access$2200(Lio/grpc/internal/ServerImpl;)[Lio/grpc/ServerInterceptor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->interceptors:[Lio/grpc/ServerInterceptor;

    return-object v0
.end method

.method static synthetic access$2300(Lio/grpc/internal/ServerImpl;)Lio/grpc/BinaryLog;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->binlog:Lio/grpc/BinaryLog;

    return-object v0
.end method

.method static synthetic access$2400(Lio/grpc/internal/ServerImpl;)Lio/grpc/CompressorRegistry;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    return-object v0
.end method

.method static synthetic access$2500(Lio/grpc/internal/ServerImpl;)Lio/grpc/internal/CallTracer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->serverCallTracer:Lio/grpc/internal/CallTracer;

    return-object v0
.end method

.method static synthetic access$2600()Ljava/util/logging/Logger;
    .locals 1

    .line 90
    sget-object v0, Lio/grpc/internal/ServerImpl;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/internal/ServerImpl;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->transports:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/internal/ServerImpl;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget v0, p0, Lio/grpc/internal/ServerImpl;->activeTransportServers:I

    return v0
.end method

.method static synthetic access$410(Lio/grpc/internal/ServerImpl;)I
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget v0, p0, Lio/grpc/internal/ServerImpl;->activeTransportServers:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/grpc/internal/ServerImpl;->activeTransportServers:I

    return v0
.end method

.method static synthetic access$500(Lio/grpc/internal/ServerImpl;)Lio/grpc/Status;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->shutdownNowStatus:Lio/grpc/Status;

    return-object v0
.end method

.method static synthetic access$602(Lio/grpc/internal/ServerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lio/grpc/internal/ServerImpl;->serverShutdownCallbackInvoked:Z

    return p1
.end method

.method static synthetic access$702(Lio/grpc/internal/ServerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lio/grpc/internal/ServerImpl;->transportServersTerminated:Z

    return p1
.end method

.method static synthetic access$800(Lio/grpc/internal/ServerImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl;

    .line 90
    invoke-direct {p0}, Lio/grpc/internal/ServerImpl;->checkForTermination()V

    return-void
.end method

.method private checkForTermination()V
    .locals 3

    .line 360
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/ServerImpl;->shutdown:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/grpc/internal/ServerImpl;->transports:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lio/grpc/internal/ServerImpl;->transportServersTerminated:Z

    if-eqz v1, :cond_2

    .line 362
    iget-boolean v1, p0, Lio/grpc/internal/ServerImpl;->terminated:Z

    if-nez v1, :cond_1

    .line 365
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/internal/ServerImpl;->terminated:Z

    .line 366
    iget-object v1, p0, Lio/grpc/internal/ServerImpl;->channelz:Lio/grpc/InternalChannelz;

    invoke-virtual {v1, p0}, Lio/grpc/InternalChannelz;->removeServer(Lio/grpc/InternalInstrumented;)V

    .line 367
    iget-object v1, p0, Lio/grpc/internal/ServerImpl;->executor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    .line 368
    iget-object v2, p0, Lio/grpc/internal/ServerImpl;->executorPool:Lio/grpc/internal/ObjectPool;

    invoke-interface {v2, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, p0, Lio/grpc/internal/ServerImpl;->executor:Ljava/util/concurrent/Executor;

    .line 370
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 363
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Server already terminated"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 372
    :cond_2
    :goto_0
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getListenSocketsIgnoringLifecycle()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/internal/ServerImpl;->transportServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    .local v1, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    iget-object v2, p0, Lio/grpc/internal/ServerImpl;->transportServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/internal/InternalServer;

    .line 222
    .local v3, "ts":Lio/grpc/internal/InternalServer;
    invoke-interface {v3}, Lio/grpc/internal/InternalServer;->getListenSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    nop

    .end local v3    # "ts":Lio/grpc/internal/InternalServer;
    goto :goto_0

    .line 224
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 225
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private transportClosed(Lio/grpc/internal/ServerTransport;)V
    .locals 3
    .param p1, "transport"    # Lio/grpc/internal/ServerTransport;

    .line 349
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ServerImpl;->transports:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lio/grpc/internal/ServerImpl;->channelz:Lio/grpc/InternalChannelz;

    invoke-virtual {v1, p0, p1}, Lio/grpc/InternalChannelz;->removeServerSocket(Lio/grpc/InternalInstrumented;Lio/grpc/InternalInstrumented;)V

    .line 354
    invoke-direct {p0}, Lio/grpc/internal/ServerImpl;->checkForTermination()V

    .line 355
    monitor-exit v0

    .line 356
    return-void

    .line 351
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Transport already removed"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "transport":Lio/grpc/internal/ServerTransport;
    throw v1

    .line 355
    .restart local p1    # "transport":Lio/grpc/internal/ServerTransport;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public awaitTermination()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/ServerImpl;->terminated:Z

    if-nez v1, :cond_0

    .line 330
    iget-object v1, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 332
    :cond_0
    monitor-exit v0

    .line 333
    return-void

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 10
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 318
    .local v1, "timeoutNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 319
    .local v3, "endTimeNanos":J
    :goto_0
    iget-boolean v5, p0, Lio/grpc/internal/ServerImpl;->terminated:Z

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v5, v3, v5

    move-wide v1, v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    .line 320
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    invoke-virtual {v5, v6, v1, v2}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    goto :goto_0

    .line 322
    :cond_0
    iget-boolean v5, p0, Lio/grpc/internal/ServerImpl;->terminated:Z

    monitor-exit v0

    return v5

    .line 323
    .end local v1    # "timeoutNanos":J
    .end local v3    # "endTimeNanos":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getImmutableServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ServerServiceDefinition;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->registry:Lio/grpc/HandlerRegistry;

    invoke-virtual {v0}, Lio/grpc/HandlerRegistry;->getServices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getListenSockets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/ServerImpl;->started:Z

    const-string v2, "Not started"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 213
    iget-boolean v1, p0, Lio/grpc/internal/ServerImpl;->terminated:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Already terminated"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 214
    invoke-direct {p0}, Lio/grpc/internal/ServerImpl;->getListenSocketsIgnoringLifecycle()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    .line 659
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->logId:Lio/grpc/InternalLogId;

    return-object v0
.end method

.method public getMutableServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ServerServiceDefinition;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->fallbackRegistry:Lio/grpc/HandlerRegistry;

    invoke-virtual {v0}, Lio/grpc/HandlerRegistry;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 5

    .line 196
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/ServerImpl;->started:Z

    const-string v2, "Not started"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 198
    iget-boolean v1, p0, Lio/grpc/internal/ServerImpl;->terminated:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Already terminated"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 199
    iget-object v1, p0, Lio/grpc/internal/ServerImpl;->transportServers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/InternalServer;

    .line 200
    .local v2, "ts":Lio/grpc/internal/InternalServer;
    invoke-interface {v2}, Lio/grpc/internal/InternalServer;->getListenSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    .line 201
    .local v3, "addr":Ljava/net/SocketAddress;
    instance-of v4, v3, Ljava/net/InetSocketAddress;

    if-eqz v4, :cond_1

    .line 202
    move-object v1, v3

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    monitor-exit v0

    return v1

    .line 204
    .end local v2    # "ts":Lio/grpc/internal/InternalServer;
    .end local v3    # "addr":Ljava/net/SocketAddress;
    :cond_1
    goto :goto_1

    .line 205
    :cond_2
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ServerServiceDefinition;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->fallbackRegistry:Lio/grpc/HandlerRegistry;

    invoke-virtual {v0}, Lio/grpc/HandlerRegistry;->getServices()Ljava/util/List;

    move-result-object v0

    .line 231
    .local v0, "fallbackServices":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerServiceDefinition;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lio/grpc/internal/ServerImpl;->registry:Lio/grpc/HandlerRegistry;

    invoke-virtual {v1}, Lio/grpc/HandlerRegistry;->getServices()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 234
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/ServerImpl;->registry:Lio/grpc/HandlerRegistry;

    invoke-virtual {v1}, Lio/grpc/HandlerRegistry;->getServices()Ljava/util/List;

    move-result-object v1

    .line 235
    .local v1, "registryServices":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerServiceDefinition;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 236
    .local v2, "servicesCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerServiceDefinition;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 240
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public getStats()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lio/grpc/InternalChannelz$ServerStats;",
            ">;"
        }
    .end annotation

    .line 664
    new-instance v0, Lio/grpc/InternalChannelz$ServerStats$Builder;

    invoke-direct {v0}, Lio/grpc/InternalChannelz$ServerStats$Builder;-><init>()V

    .line 665
    .local v0, "builder":Lio/grpc/InternalChannelz$ServerStats$Builder;
    iget-object v1, p0, Lio/grpc/internal/ServerImpl;->transportServers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/InternalServer;

    .line 667
    .local v2, "ts":Lio/grpc/internal/InternalServer;
    invoke-interface {v2}, Lio/grpc/internal/InternalServer;->getListenSocketStats()Lio/grpc/InternalInstrumented;

    move-result-object v3

    .line 668
    .local v3, "stats":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$SocketStats;>;"
    if-eqz v3, :cond_0

    .line 669
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/grpc/InternalChannelz$ServerStats$Builder;->addListenSockets(Ljava/util/List;)Lio/grpc/InternalChannelz$ServerStats$Builder;

    .line 671
    .end local v2    # "ts":Lio/grpc/internal/InternalServer;
    .end local v3    # "stats":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$SocketStats;>;"
    :cond_0
    goto :goto_0

    .line 672
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/ServerImpl;->serverCallTracer:Lio/grpc/internal/CallTracer;

    invoke-virtual {v1, v0}, Lio/grpc/internal/CallTracer;->updateBuilder(Lio/grpc/InternalChannelz$ServerStats$Builder;)V

    .line 673
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 674
    .local v1, "ret":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lio/grpc/InternalChannelz$ServerStats;>;"
    invoke-virtual {v0}, Lio/grpc/InternalChannelz$ServerStats$Builder;->build()Lio/grpc/InternalChannelz$ServerStats;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 675
    return-object v1
.end method

.method public isShutdown()Z
    .locals 2

    .line 309
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/ServerImpl;->shutdown:Z

    monitor-exit v0

    return v1

    .line 311
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTerminated()Z
    .locals 2

    .line 337
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/ServerImpl;->terminated:Z

    monitor-exit v0

    return v1

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic shutdown()Lio/grpc/Server;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lio/grpc/internal/ServerImpl;->shutdown()Lio/grpc/internal/ServerImpl;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()Lio/grpc/internal/ServerImpl;
    .locals 3

    .line 260
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/ServerImpl;->shutdown:Z

    if-eqz v1, :cond_0

    .line 262
    monitor-exit v0

    return-object p0

    .line 264
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/internal/ServerImpl;->shutdown:Z

    .line 265
    iget-boolean v2, p0, Lio/grpc/internal/ServerImpl;->started:Z

    .line 266
    .local v2, "shutdownTransportServers":Z
    if-nez v2, :cond_1

    .line 267
    iput-boolean v1, p0, Lio/grpc/internal/ServerImpl;->transportServersTerminated:Z

    .line 268
    invoke-direct {p0}, Lio/grpc/internal/ServerImpl;->checkForTermination()V

    .line 270
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    if-eqz v2, :cond_2

    .line 272
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->transportServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/InternalServer;

    .line 273
    .local v1, "ts":Lio/grpc/internal/InternalServer;
    invoke-interface {v1}, Lio/grpc/internal/InternalServer;->shutdown()V

    .line 274
    .end local v1    # "ts":Lio/grpc/internal/InternalServer;
    goto :goto_0

    .line 276
    :cond_2
    return-object p0

    .line 270
    .end local v2    # "shutdownTransportServers":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bridge synthetic shutdownNow()Lio/grpc/Server;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lio/grpc/internal/ServerImpl;->shutdownNow()Lio/grpc/internal/ServerImpl;

    move-result-object v0

    return-object v0
.end method

.method public shutdownNow()Lio/grpc/internal/ServerImpl;
    .locals 5

    .line 281
    invoke-virtual {p0}, Lio/grpc/internal/ServerImpl;->shutdown()Lio/grpc/internal/ServerImpl;

    .line 283
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v1, "Server shutdownNow invoked"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 285
    .local v0, "nowStatus":Lio/grpc/Status;
    iget-object v1, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/ServerImpl;->shutdownNowStatus:Lio/grpc/Status;

    if-eqz v2, :cond_0

    .line 289
    monitor-exit v1

    return-object p0

    .line 291
    :cond_0
    iput-object v0, p0, Lio/grpc/internal/ServerImpl;->shutdownNowStatus:Lio/grpc/Status;

    .line 292
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lio/grpc/internal/ServerImpl;->transports:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 293
    .local v2, "transportsCopy":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/ServerTransport;>;"
    iget-boolean v3, p0, Lio/grpc/internal/ServerImpl;->serverShutdownCallbackInvoked:Z

    .line 294
    .local v3, "savedServerShutdownCallbackInvoked":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    if-eqz v3, :cond_1

    .line 300
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/internal/ServerTransport;

    .line 301
    .local v4, "transport":Lio/grpc/internal/ServerTransport;
    invoke-interface {v4, v0}, Lio/grpc/internal/ServerTransport;->shutdownNow(Lio/grpc/Status;)V

    .line 302
    .end local v4    # "transport":Lio/grpc/internal/ServerTransport;
    goto :goto_0

    .line 304
    :cond_1
    return-object p0

    .line 294
    .end local v2    # "transportsCopy":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/ServerTransport;>;"
    .end local v3    # "savedServerShutdownCallbackInvoked":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public bridge synthetic start()Lio/grpc/Server;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lio/grpc/internal/ServerImpl;->start()Lio/grpc/internal/ServerImpl;

    move-result-object v0

    return-object v0
.end method

.method public start()Lio/grpc/internal/ServerImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lio/grpc/internal/ServerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/ServerImpl;->started:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Already started"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 179
    iget-boolean v1, p0, Lio/grpc/internal/ServerImpl;->shutdown:Z

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    const-string v1, "Shutting down"

    invoke-static {v2, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 182
    new-instance v1, Lio/grpc/internal/ServerImpl$ServerListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/grpc/internal/ServerImpl$ServerListenerImpl;-><init>(Lio/grpc/internal/ServerImpl;Lio/grpc/internal/ServerImpl$1;)V

    .line 183
    .local v1, "listener":Lio/grpc/internal/ServerImpl$ServerListenerImpl;
    iget-object v2, p0, Lio/grpc/internal/ServerImpl;->transportServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/internal/InternalServer;

    .line 184
    .local v4, "ts":Lio/grpc/internal/InternalServer;
    invoke-interface {v4, v1}, Lio/grpc/internal/InternalServer;->start(Lio/grpc/internal/ServerListener;)V

    .line 185
    iget v5, p0, Lio/grpc/internal/ServerImpl;->activeTransportServers:I

    add-int/2addr v5, v3

    iput v5, p0, Lio/grpc/internal/ServerImpl;->activeTransportServers:I

    .line 186
    .end local v4    # "ts":Lio/grpc/internal/InternalServer;
    goto :goto_1

    .line 187
    :cond_2
    iget-object v2, p0, Lio/grpc/internal/ServerImpl;->executorPool:Lio/grpc/internal/ObjectPool;

    invoke-interface {v2}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "executor"

    invoke-static {v2, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lio/grpc/internal/ServerImpl;->executor:Ljava/util/concurrent/Executor;

    .line 188
    iput-boolean v3, p0, Lio/grpc/internal/ServerImpl;->started:Z

    .line 189
    monitor-exit v0

    return-object p0

    .line 190
    .end local v1    # "listener":Lio/grpc/internal/ServerImpl$ServerListenerImpl;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 680
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ServerImpl;->logId:Lio/grpc/InternalLogId;

    .line 681
    invoke-virtual {v1}, Lio/grpc/InternalLogId;->getId()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ServerImpl;->transportServers:Ljava/util/List;

    .line 682
    const-string v2, "transportServers"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 683
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    return-object v0
.end method
