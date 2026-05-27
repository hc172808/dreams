.class public final Lio/grpc/inprocess/InProcessChannelBuilder;
.super Lio/grpc/internal/AbstractManagedChannelImplBuilder;
.source "InProcessChannelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/AbstractManagedChannelImplBuilder<",
        "Lio/grpc/inprocess/InProcessChannelBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private maxInboundMetadataSize:I

.field private final name:Ljava/lang/String;

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 75
    new-instance v0, Lio/grpc/inprocess/InProcessSocketAddress;

    invoke-direct {v0, p1}, Lio/grpc/inprocess/InProcessSocketAddress;-><init>(Ljava/lang/String;)V

    const-string v1, "localhost"

    invoke-direct {p0, v0, v1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;)V

    .line 72
    const v0, 0x7fffffff

    iput v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMetadataSize:I

    .line 76
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->name:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/grpc/inprocess/InProcessChannelBuilder;->setStatsRecordStartedRpcs(Z)V

    .line 80
    invoke-virtual {p0, v0}, Lio/grpc/inprocess/InProcessChannelBuilder;->setStatsRecordFinishedRpcs(Z)V

    .line 81
    return-void
.end method

.method public static forAddress(Ljava/lang/String;I)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "call forName() instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forName(Ljava/lang/String;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    new-instance v0, Lio/grpc/inprocess/InProcessChannelBuilder;

    invoke-direct {v0, p0}, Lio/grpc/inprocess/InProcessChannelBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static forTarget(Ljava/lang/String;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 2
    .param p0, "target"    # Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "call forName() instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected buildTransportFactory()Lio/grpc/internal/ClientTransportFactory;
    .locals 5

    .line 163
    new-instance v0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;

    iget-object v1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->name:Ljava/lang/String;

    iget-object v2, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget v3, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMetadataSize:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;-><init>(Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;ILio/grpc/inprocess/InProcessChannelBuilder$1;)V

    return-object v0
.end method

.method public bridge synthetic keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/inprocess/InProcessChannelBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0
    .param p1, "keepAliveTime"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 108
    return-object p0
.end method

.method public bridge synthetic keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/inprocess/InProcessChannelBuilder;->keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0
    .param p1, "keepAliveTimeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 114
    return-object p0
.end method

.method public bridge synthetic keepAliveWithoutCalls(Z)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->keepAliveWithoutCalls(Z)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveWithoutCalls(Z)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0
    .param p1, "enable"    # Z

    .line 120
    return-object p0
.end method

.method public bridge synthetic maxInboundMessageSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMessageSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final maxInboundMessageSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 1
    .param p1, "max"    # I

    .line 86
    invoke-super {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMessageSize(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    check-cast v0, Lio/grpc/inprocess/InProcessChannelBuilder;

    return-object v0
.end method

.method public bridge synthetic maxInboundMessageSize(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMessageSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic maxInboundMetadataSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMetadataSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMetadataSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 2
    .param p1, "bytes"    # I

    .line 155
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxInboundMetadataSize must be > 0"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 156
    iput p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMetadataSize:I

    .line 157
    return-object p0
.end method

.method public scheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 1
    .param p1, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 135
    nop

    .line 136
    const-string v0, "scheduledExecutorService"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 137
    return-object p0
.end method

.method public bridge synthetic usePlaintext()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/grpc/inprocess/InProcessChannelBuilder;->usePlaintext()Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public usePlaintext()Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0

    .line 102
    return-object p0
.end method

.method public bridge synthetic useTransportSecurity()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/grpc/inprocess/InProcessChannelBuilder;->useTransportSecurity()Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public useTransportSecurity()Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0

    .line 94
    return-object p0
.end method
