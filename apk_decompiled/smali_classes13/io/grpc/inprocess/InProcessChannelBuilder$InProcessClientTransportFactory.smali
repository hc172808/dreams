.class final Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;
.super Ljava/lang/Object;
.source "InProcessChannelBuilder.java"

# interfaces
.implements Lio/grpc/internal/ClientTransportFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/inprocess/InProcessChannelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InProcessClientTransportFactory"
.end annotation


# instance fields
.field private closed:Z

.field private final maxInboundMetadataSize:I

.field private final name:Ljava/lang/String;

.field private final timerService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final useSharedTimer:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "maxInboundMetadataSize"    # I

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->name:Ljava/lang/String;

    .line 182
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->useSharedTimer:Z

    .line 183
    if-eqz v0, :cond_1

    .line 184
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {v0}, Lio/grpc/internal/SharedResourceHolder;->get(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 185
    iput p3, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->maxInboundMetadataSize:I

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;ILio/grpc/inprocess/InProcessChannelBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lio/grpc/inprocess/InProcessChannelBuilder$1;

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;-><init>(Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 207
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->closed:Z

    if-eqz v0, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->closed:Z

    .line 211
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->useSharedTimer:Z

    if-eqz v0, :cond_1

    .line 212
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    iget-object v1, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1}, Lio/grpc/internal/SharedResourceHolder;->release(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_1
    return-void
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 202
    iget-object v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public newClientTransport(Ljava/net/SocketAddress;Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;Lio/grpc/ChannelLogger;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 7
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .param p2, "options"    # Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;
    .param p3, "channelLogger"    # Lio/grpc/ChannelLogger;

    .line 191
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->closed:Z

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lio/grpc/inprocess/InProcessTransport;

    iget-object v2, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->name:Ljava/lang/String;

    iget v3, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->maxInboundMetadataSize:I

    .line 196
    invoke-virtual {p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-virtual {p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getEagAttributes()Lio/grpc/Attributes;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/grpc/inprocess/InProcessTransport;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/grpc/Attributes;)V

    .line 195
    return-object v0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The transport factory is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
