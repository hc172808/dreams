.class public final Lio/grpc/HttpConnectProxiedSocketAddress$Builder;
.super Ljava/lang/Object;
.source "HttpConnectProxiedSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/HttpConnectProxiedSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private password:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private proxyAddress:Ljava/net/SocketAddress;

.field private targetAddress:Ljava/net/InetSocketAddress;

.field private username:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/HttpConnectProxiedSocketAddress$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/HttpConnectProxiedSocketAddress$1;

    .line 129
    invoke-direct {p0}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/grpc/HttpConnectProxiedSocketAddress;
    .locals 7

    .line 179
    new-instance v6, Lio/grpc/HttpConnectProxiedSocketAddress;

    iget-object v1, p0, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->proxyAddress:Ljava/net/SocketAddress;

    iget-object v2, p0, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->targetAddress:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->username:Ljava/lang/String;

    iget-object v4, p0, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->password:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/grpc/HttpConnectProxiedSocketAddress;-><init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/HttpConnectProxiedSocketAddress$1;)V

    return-object v6
.end method

.method public setPassword(Ljava/lang/String;)Lio/grpc/HttpConnectProxiedSocketAddress$Builder;
    .locals 0
    .param p1, "password"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 171
    iput-object p1, p0, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->password:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public setProxyAddress(Ljava/net/SocketAddress;)Lio/grpc/HttpConnectProxiedSocketAddress$Builder;
    .locals 1
    .param p1, "proxyAddress"    # Ljava/net/SocketAddress;

    .line 145
    const-string v0, "proxyAddress"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    iput-object v0, p0, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->proxyAddress:Ljava/net/SocketAddress;

    .line 146
    return-object p0
.end method

.method public setTargetAddress(Ljava/net/InetSocketAddress;)Lio/grpc/HttpConnectProxiedSocketAddress$Builder;
    .locals 1
    .param p1, "targetAddress"    # Ljava/net/InetSocketAddress;

    .line 153
    const-string v0, "targetAddress"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->targetAddress:Ljava/net/InetSocketAddress;

    .line 154
    return-object p0
.end method

.method public setUsername(Ljava/lang/String;)Lio/grpc/HttpConnectProxiedSocketAddress$Builder;
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 162
    iput-object p1, p0, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->username:Ljava/lang/String;

    .line 163
    return-object p0
.end method
