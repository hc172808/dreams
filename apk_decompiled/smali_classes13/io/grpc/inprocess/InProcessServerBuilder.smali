.class public final Lio/grpc/inprocess/InProcessServerBuilder;
.super Lio/grpc/internal/AbstractServerImplBuilder;
.source "InProcessServerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/AbstractServerImplBuilder<",
        "Lio/grpc/inprocess/InProcessServerBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field maxInboundMetadataSize:I

.field final name:Ljava/lang/String;

.field schedulerPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lio/grpc/internal/AbstractServerImplBuilder;-><init>()V

    .line 97
    const v0, 0x7fffffff

    iput v0, p0, Lio/grpc/inprocess/InProcessServerBuilder;->maxInboundMetadataSize:I

    .line 98
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 99
    invoke-static {v0}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/inprocess/InProcessServerBuilder;->schedulerPool:Lio/grpc/internal/ObjectPool;

    .line 102
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/inprocess/InProcessServerBuilder;->name:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/grpc/inprocess/InProcessServerBuilder;->setStatsRecordStartedRpcs(Z)V

    .line 106
    invoke-virtual {p0, v0}, Lio/grpc/inprocess/InProcessServerBuilder;->setStatsRecordFinishedRpcs(Z)V

    .line 109
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v1, v2, v0}, Lio/grpc/inprocess/InProcessServerBuilder;->handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/AbstractServerImplBuilder;

    .line 110
    return-void
.end method

.method public static forName(Ljava/lang/String;)Lio/grpc/inprocess/InProcessServerBuilder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 79
    new-instance v0, Lio/grpc/inprocess/InProcessServerBuilder;

    invoke-direct {v0, p0}, Lio/grpc/inprocess/InProcessServerBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static forPort(I)Lio/grpc/inprocess/InProcessServerBuilder;
    .locals 2
    .param p0, "port"    # I

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "call forName() instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateName()Ljava/lang/String;
    .locals 1

    .line 93
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected buildTransportServers(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;)",
            "Ljava/util/List<",
            "Lio/grpc/inprocess/InProcessServer;",
            ">;"
        }
    .end annotation

    .line 170
    .local p1, "streamTracerFactories":Ljava/util/List;, "Ljava/util/List<+Lio/grpc/ServerStreamTracer$Factory;>;"
    new-instance v0, Lio/grpc/inprocess/InProcessServer;

    invoke-direct {v0, p0, p1}, Lio/grpc/inprocess/InProcessServer;-><init>(Lio/grpc/inprocess/InProcessServerBuilder;Ljava/util/List;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public deadlineTicker(Lio/grpc/Deadline$Ticker;)Lio/grpc/inprocess/InProcessServerBuilder;
    .locals 0
    .param p1, "ticker"    # Lio/grpc/Deadline$Ticker;

    .line 143
    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessServerBuilder;->setDeadlineTicker(Lio/grpc/Deadline$Ticker;)V

    .line 144
    return-object p0
.end method

.method public bridge synthetic maxInboundMetadataSize(I)Lio/grpc/ServerBuilder;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessServerBuilder;->maxInboundMetadataSize(I)Lio/grpc/inprocess/InProcessServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMetadataSize(I)Lio/grpc/inprocess/InProcessServerBuilder;
    .locals 2
    .param p1, "bytes"    # I

    .line 162
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxInboundMetadataSize must be > 0"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 163
    iput p1, p0, Lio/grpc/inprocess/InProcessServerBuilder;->maxInboundMetadataSize:I

    .line 164
    return-object p0
.end method

.method public scheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/inprocess/InProcessServerBuilder;
    .locals 2
    .param p1, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 124
    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    .line 125
    const-string v1, "scheduledExecutorService"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/inprocess/InProcessServerBuilder;->schedulerPool:Lio/grpc/internal/ObjectPool;

    .line 126
    return-object p0
.end method

.method public bridge synthetic useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2}, Lio/grpc/inprocess/InProcessServerBuilder;->useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/inprocess/InProcessServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/inprocess/InProcessServerBuilder;
    .locals 2
    .param p1, "certChain"    # Ljava/io/File;
    .param p2, "privateKey"    # Ljava/io/File;

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TLS not supported in InProcessServer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
