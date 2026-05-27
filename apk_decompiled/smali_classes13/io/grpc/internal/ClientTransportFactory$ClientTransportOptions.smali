.class public final Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;
.super Ljava/lang/Object;
.source "ClientTransportFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ClientTransportFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientTransportOptions"
.end annotation


# instance fields
.field private authority:Ljava/lang/String;

.field private channelLogger:Lio/grpc/ChannelLogger;

.field private connectProxiedSocketAddr:Lio/grpc/HttpConnectProxiedSocketAddress;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private eagAttributes:Lio/grpc/Attributes;

.field private userAgent:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "unknown-authority"

    iput-object v0, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->authority:Ljava/lang/String;

    .line 74
    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    iput-object v0, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->eagAttributes:Lio/grpc/Attributes;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 136
    instance-of v0, p1, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 137
    return v1

    .line 139
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;

    .line 140
    .local v0, "that":Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;
    iget-object v2, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->authority:Ljava/lang/String;

    iget-object v3, v0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->eagAttributes:Lio/grpc/Attributes;

    iget-object v3, v0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->eagAttributes:Lio/grpc/Attributes;

    .line 141
    invoke-virtual {v2, v3}, Lio/grpc/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->userAgent:Ljava/lang/String;

    iget-object v3, v0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->userAgent:Ljava/lang/String;

    .line 142
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->connectProxiedSocketAddr:Lio/grpc/HttpConnectProxiedSocketAddress;

    iget-object v3, v0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->connectProxiedSocketAddr:Lio/grpc/HttpConnectProxiedSocketAddress;

    .line 143
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 140
    :goto_0
    return v1
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelLogger()Lio/grpc/ChannelLogger;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->channelLogger:Lio/grpc/ChannelLogger;

    return-object v0
.end method

.method public getEagAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->eagAttributes:Lio/grpc/Attributes;

    return-object v0
.end method

.method public getHttpConnectProxiedSocketAddress()Lio/grpc/HttpConnectProxiedSocketAddress;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 120
    iget-object v0, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->connectProxiedSocketAddr:Lio/grpc/HttpConnectProxiedSocketAddress;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 110
    iget-object v0, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 131
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->authority:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->eagAttributes:Lio/grpc/Attributes;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->userAgent:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->connectProxiedSocketAddr:Lio/grpc/HttpConnectProxiedSocketAddress;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAuthority(Ljava/lang/String;)Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .line 93
    const-string v0, "authority"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->authority:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public setChannelLogger(Lio/grpc/ChannelLogger;)Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;
    .locals 0
    .param p1, "channelLogger"    # Lio/grpc/ChannelLogger;

    .line 83
    iput-object p1, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->channelLogger:Lio/grpc/ChannelLogger;

    .line 84
    return-object p0
.end method

.method public setEagAttributes(Lio/grpc/Attributes;)Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;
    .locals 1
    .param p1, "eagAttributes"    # Lio/grpc/Attributes;

    .line 103
    const-string v0, "eagAttributes"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->eagAttributes:Lio/grpc/Attributes;

    .line 105
    return-object p0
.end method

.method public setHttpConnectProxiedSocketAddress(Lio/grpc/HttpConnectProxiedSocketAddress;)Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;
    .locals 0
    .param p1, "connectProxiedSocketAddr"    # Lio/grpc/HttpConnectProxiedSocketAddress;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 125
    iput-object p1, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->connectProxiedSocketAddr:Lio/grpc/HttpConnectProxiedSocketAddress;

    .line 126
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 114
    iput-object p1, p0, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->userAgent:Ljava/lang/String;

    .line 115
    return-object p0
.end method
