.class Lio/grpc/internal/ProxyDetectorImpl;
.super Ljava/lang/Object;
.source "ProxyDetectorImpl.java"

# interfaces
.implements Lio/grpc/ProxyDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTHENTICATOR:Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;

.field private static final DEFAULT_PROXY_SELECTOR:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/net/ProxySelector;",
            ">;"
        }
    .end annotation
.end field

.field private static final GRPC_PROXY_ENV_VAR:Ljava/lang/String; = "GRPC_PROXY_EXP"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final PROXY_SCHEME:Ljava/lang/String; = "https"

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final authenticationProvider:Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;

.field private final overrideProxyAddress:Ljava/net/InetSocketAddress;

.field private final proxySelector:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/net/ProxySelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    const-class v0, Lio/grpc/internal/ProxyDetectorImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ProxyDetectorImpl;->log:Ljava/util/logging/Logger;

    .line 125
    new-instance v0, Lio/grpc/internal/ProxyDetectorImpl$1;

    invoke-direct {v0}, Lio/grpc/internal/ProxyDetectorImpl$1;-><init>()V

    sput-object v0, Lio/grpc/internal/ProxyDetectorImpl;->DEFAULT_AUTHENTICATOR:Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;

    .line 143
    new-instance v0, Lio/grpc/internal/ProxyDetectorImpl$2;

    invoke-direct {v0}, Lio/grpc/internal/ProxyDetectorImpl$2;-><init>()V

    sput-object v0, Lio/grpc/internal/ProxyDetectorImpl;->DEFAULT_PROXY_SELECTOR:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 171
    sget-object v0, Lio/grpc/internal/ProxyDetectorImpl;->DEFAULT_PROXY_SELECTOR:Lcom/google/common/base/Supplier;

    sget-object v1, Lio/grpc/internal/ProxyDetectorImpl;->DEFAULT_AUTHENTICATOR:Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;

    const-string v2, "GRPC_PROXY_EXP"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/grpc/internal/ProxyDetectorImpl;-><init>(Lcom/google/common/base/Supplier;Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method constructor <init>(Lcom/google/common/base/Supplier;Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;Ljava/lang/String;)V
    .locals 1
    .param p2, "authenticationProvider"    # Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;
    .param p3, "proxyEnvString"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Ljava/net/ProxySelector;",
            ">;",
            "Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 178
    .local p1, "proxySelector":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/net/ProxySelector;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    iput-object v0, p0, Lio/grpc/internal/ProxyDetectorImpl;->proxySelector:Lcom/google/common/base/Supplier;

    .line 180
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;

    iput-object v0, p0, Lio/grpc/internal/ProxyDetectorImpl;->authenticationProvider:Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;

    .line 181
    if-eqz p3, :cond_0

    .line 182
    invoke-static {p3}, Lio/grpc/internal/ProxyDetectorImpl;->overrideProxy(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ProxyDetectorImpl;->overrideProxyAddress:Ljava/net/InetSocketAddress;

    goto :goto_0

    .line 184
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/ProxyDetectorImpl;->overrideProxyAddress:Ljava/net/InetSocketAddress;

    .line 186
    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 48
    sget-object v0, Lio/grpc/internal/ProxyDetectorImpl;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private detectProxy(Ljava/net/InetSocketAddress;)Lio/grpc/ProxiedSocketAddress;
    .locals 16
    .param p1, "targetAddr"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 207
    const/4 v2, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lio/grpc/internal/GrpcUtil;->getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .local v6, "host":Ljava/lang/String;
    nop

    .line 214
    :try_start_1
    new-instance v0, Ljava/net/URI;

    const-string v4, "https"

    const/4 v5, 0x0

    .line 219
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    .local v0, "uri":Ljava/net/URI;
    nop

    .line 231
    iget-object v3, v1, Lio/grpc/internal/ProxyDetectorImpl;->proxySelector:Lcom/google/common/base/Supplier;

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/ProxySelector;

    .line 232
    .local v3, "proxySelector":Ljava/net/ProxySelector;
    if-nez v3, :cond_0

    .line 233
    sget-object v4, Lio/grpc/internal/ProxyDetectorImpl;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "proxy selector is null, so continuing without proxy lookup"

    invoke-virtual {v4, v5, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 234
    return-object v2

    .line 237
    :cond_0
    invoke-virtual {v3, v0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v4

    .line 238
    .local v4, "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_1

    .line 239
    sget-object v5, Lio/grpc/internal/ProxyDetectorImpl;->log:Ljava/util/logging/Logger;

    const-string v7, "More than 1 proxy detected, gRPC will select the first one"

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 241
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/Proxy;

    .line 243
    .local v5, "proxy":Ljava/net/Proxy;
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v7, v8, :cond_2

    .line 244
    return-object v2

    .line 246
    :cond_2
    invoke-virtual {v5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v7

    check-cast v7, Ljava/net/InetSocketAddress;

    .line 249
    .local v7, "proxyAddr":Ljava/net/InetSocketAddress;
    const-string v15, ""

    .line 250
    .local v15, "promptString":Ljava/lang/String;
    iget-object v8, v1, Lio/grpc/internal/ProxyDetectorImpl;->authenticationProvider:Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;

    .line 251
    invoke-static {v7}, Lio/grpc/internal/GrpcUtil;->getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v9

    .line 252
    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    .line 253
    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11

    const/4 v14, 0x0

    .line 250
    const-string v12, "https"

    move-object v13, v15

    invoke-interface/range {v8 .. v14}, Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v8

    .line 259
    .local v8, "auth":Ljava/net/PasswordAuthentication;
    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 260
    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 261
    .local v9, "resolvedAddress":Ljava/net/InetAddress;
    new-instance v10, Ljava/net/InetSocketAddress;

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11

    invoke-direct {v10, v9, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v9, v10

    .line 262
    .local v9, "resolvedProxyAddr":Ljava/net/InetSocketAddress;
    goto :goto_0

    .line 263
    .end local v9    # "resolvedProxyAddr":Ljava/net/InetSocketAddress;
    :cond_3
    move-object v9, v7

    .line 267
    .restart local v9    # "resolvedProxyAddr":Ljava/net/InetSocketAddress;
    :goto_0
    invoke-static {}, Lio/grpc/HttpConnectProxiedSocketAddress;->newBuilder()Lio/grpc/HttpConnectProxiedSocketAddress$Builder;

    move-result-object v10

    .line 268
    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->setTargetAddress(Ljava/net/InetSocketAddress;)Lio/grpc/HttpConnectProxiedSocketAddress$Builder;

    move-result-object v10

    .line 269
    invoke-virtual {v10, v9}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->setProxyAddress(Ljava/net/SocketAddress;)Lio/grpc/HttpConnectProxiedSocketAddress$Builder;

    move-result-object v10

    .line 271
    .local v10, "builder":Lio/grpc/HttpConnectProxiedSocketAddress$Builder;
    if-nez v8, :cond_4

    .line 272
    invoke-virtual {v10}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->build()Lio/grpc/HttpConnectProxiedSocketAddress;

    move-result-object v2

    return-object v2

    .line 275
    :cond_4
    nop

    .line 276
    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->setUsername(Ljava/lang/String;)Lio/grpc/HttpConnectProxiedSocketAddress$Builder;

    move-result-object v12

    .line 277
    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v13

    if-nez v13, :cond_5

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/lang/String;-><init>([C)V

    :goto_1
    invoke-virtual {v12, v2}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->setPassword(Ljava/lang/String;)Lio/grpc/HttpConnectProxiedSocketAddress$Builder;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->build()Lio/grpc/HttpConnectProxiedSocketAddress;

    move-result-object v2

    .line 275
    return-object v2

    .line 223
    .end local v0    # "uri":Ljava/net/URI;
    .end local v3    # "proxySelector":Ljava/net/ProxySelector;
    .end local v4    # "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v5    # "proxy":Ljava/net/Proxy;
    .end local v7    # "proxyAddr":Ljava/net/InetSocketAddress;
    .end local v8    # "auth":Ljava/net/PasswordAuthentication;
    .end local v9    # "resolvedProxyAddr":Ljava/net/InetSocketAddress;
    .end local v10    # "builder":Lio/grpc/HttpConnectProxiedSocketAddress$Builder;
    .end local v15    # "promptString":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v11, p1

    .line 224
    .local v0, "e":Ljava/net/URISyntaxException;
    sget-object v3, Lio/grpc/internal/ProxyDetectorImpl;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Failed to construct URI for proxy lookup, proceeding without proxy"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    return-object v2

    .line 208
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .end local v6    # "host":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v11, p1

    move-object v3, v0

    move-object v0, v3

    .line 210
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v3, Lio/grpc/internal/ProxyDetectorImpl;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Failed to get host for proxy lookup, proceeding without proxy"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    return-object v2
.end method

.method private static overrideProxy(Ljava/lang/String;)Ljava/net/InetSocketAddress;
    .locals 4
    .param p0, "proxyHostPort"    # Ljava/lang/String;

    .line 285
    if-nez p0, :cond_0

    .line 286
    const/4 v0, 0x0

    return-object v0

    .line 289
    :cond_0
    const/4 v0, 0x2

    const-string v1, ":"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "parts":[Ljava/lang/String;
    const/16 v1, 0x50

    .line 291
    .local v1, "port":I
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 292
    aget-object v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 294
    :cond_1
    sget-object v2, Lio/grpc/internal/ProxyDetectorImpl;->log:Ljava/util/logging/Logger;

    const-string v3, "Detected GRPC_PROXY_EXP and will honor it, but this feature will be removed in a future release. Use the JVM flags \"-Dhttps.proxyHost=HOST -Dhttps.proxyPort=PORT\" to set the https proxy for this JVM."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 299
    new-instance v2, Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-direct {v2, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method


# virtual methods
.method public proxyFor(Ljava/net/SocketAddress;)Lio/grpc/ProxiedSocketAddress;
    .locals 2
    .param p1, "targetServerAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 191
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    return-object v0

    .line 194
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ProxyDetectorImpl;->overrideProxyAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    .line 195
    invoke-static {}, Lio/grpc/HttpConnectProxiedSocketAddress;->newBuilder()Lio/grpc/HttpConnectProxiedSocketAddress$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ProxyDetectorImpl;->overrideProxyAddress:Ljava/net/InetSocketAddress;

    .line 196
    invoke-virtual {v0, v1}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->setProxyAddress(Ljava/net/SocketAddress;)Lio/grpc/HttpConnectProxiedSocketAddress$Builder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 197
    invoke-virtual {v0, v1}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->setTargetAddress(Ljava/net/InetSocketAddress;)Lio/grpc/HttpConnectProxiedSocketAddress$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->build()Lio/grpc/HttpConnectProxiedSocketAddress;

    move-result-object v0

    .line 195
    return-object v0

    .line 200
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-direct {p0, v0}, Lio/grpc/internal/ProxyDetectorImpl;->detectProxy(Ljava/net/InetSocketAddress;)Lio/grpc/ProxiedSocketAddress;

    move-result-object v0

    return-object v0
.end method
