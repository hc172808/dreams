.class Lio/grpc/okhttp/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final CONNECTION_STREAM_ID:I = 0x0

.field static final DEFAULT_WINDOW_SIZE:I = 0xffff

.field static final DEFAULT_WINDOW_UPDATE_RATIO:F = 0.5f

.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lio/grpc/okhttp/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/Utils;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method public static convertHeaders(Ljava/util/List;)Lio/grpc/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)",
            "Lio/grpc/Metadata;"
        }
    .end annotation

    .line 49
    .local p0, "http2Headers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    invoke-static {p0}, Lio/grpc/okhttp/Utils;->convertHeadersToArray(Ljava/util/List;)[[B

    move-result-object v0

    invoke-static {v0}, Lio/grpc/InternalMetadata;->newMetadata([[B)Lio/grpc/Metadata;

    move-result-object v0

    return-object v0
.end method

.method private static convertHeadersToArray(Ljava/util/List;)[[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)[[B"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 58
    .local p0, "http2Headers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [[B

    .line 59
    .local v0, "headerValues":[[B
    const/4 v1, 0x0

    .line 60
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/internal/framed/Header;

    .line 61
    .local v3, "header":Lio/grpc/okhttp/internal/framed/Header;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    iget-object v5, v3, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->toByteArray()[B

    move-result-object v5

    aput-object v5, v0, v1

    .line 62
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "i":I
    .restart local v1    # "i":I
    iget-object v5, v3, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->toByteArray()[B

    move-result-object v5

    aput-object v5, v0, v4

    .line 63
    .end local v3    # "header":Lio/grpc/okhttp/internal/framed/Header;
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v0}, Lio/grpc/internal/TransportFrameUtil;->toRawSerializedHeaders([[B)[[B

    move-result-object v2

    return-object v2
.end method

.method static convertSpec(Lcom/squareup/okhttp/ConnectionSpec;)Lio/grpc/okhttp/internal/ConnectionSpec;
    .locals 6
    .param p0, "spec"    # Lcom/squareup/okhttp/ConnectionSpec;

    .line 75
    invoke-virtual {p0}, Lcom/squareup/okhttp/ConnectionSpec;->isTls()Z

    move-result v0

    const-string v1, "plaintext ConnectionSpec is not accepted"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, "tlsVersionList":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/TlsVersion;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 79
    .local v1, "tlsVersions":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 80
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/okhttp/TlsVersion;

    invoke-virtual {v3}, Lcom/squareup/okhttp/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v2

    .line 84
    .local v2, "cipherSuiteList":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/CipherSuite;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lio/grpc/okhttp/internal/CipherSuite;

    .line 85
    .local v3, "cipherSuites":[Lio/grpc/okhttp/internal/CipherSuite;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 86
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/okhttp/CipherSuite;

    invoke-virtual {v5}, Lcom/squareup/okhttp/CipherSuite;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/grpc/okhttp/internal/CipherSuite;->valueOf(Ljava/lang/String;)Lio/grpc/okhttp/internal/CipherSuite;

    move-result-object v5

    aput-object v5, v3, v4

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 89
    .end local v4    # "i":I
    :cond_1
    new-instance v4, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    invoke-virtual {p0}, Lcom/squareup/okhttp/ConnectionSpec;->isTls()Z

    move-result v5

    invoke-direct {v4, v5}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;-><init>(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v5

    invoke-virtual {v4, v5}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v4

    .line 91
    invoke-virtual {v4, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v4

    .line 92
    invoke-virtual {v4, v3}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->cipherSuites([Lio/grpc/okhttp/internal/CipherSuite;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v4

    .line 93
    invoke-virtual {v4}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->build()Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v4

    .line 89
    return-object v4
.end method

.method public static convertTrailers(Ljava/util/List;)Lio/grpc/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)",
            "Lio/grpc/Metadata;"
        }
    .end annotation

    .line 53
    .local p0, "http2Headers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    invoke-static {p0}, Lio/grpc/okhttp/Utils;->convertHeadersToArray(Ljava/util/List;)[[B

    move-result-object v0

    invoke-static {v0}, Lio/grpc/InternalMetadata;->newMetadata([[B)Lio/grpc/Metadata;

    move-result-object v0

    return-object v0
.end method

.method static getSocketOptions(Ljava/net/Socket;)Lio/grpc/InternalChannelz$SocketOptions;
    .locals 13
    .param p0, "socket"    # Ljava/net/Socket;

    .line 102
    const-string v0, "IP_TOS"

    const-string v1, "SO_OOBINLINE"

    const-string v2, "SO_KEEPALIVE"

    const-string v3, "SO_RECVBUF"

    const-string v4, "SO_SNDBUF"

    const-string v5, "SO_REUSEADDR"

    const-string v6, "TCP_NODELAY"

    const-string v7, "channelz_internal_error"

    const-string v8, "Exception caught while reading socket option"

    new-instance v9, Lio/grpc/InternalChannelz$SocketOptions$Builder;

    invoke-direct {v9}, Lio/grpc/InternalChannelz$SocketOptions$Builder;-><init>()V

    .line 104
    .local v9, "builder":Lio/grpc/InternalChannelz$SocketOptions$Builder;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getSoLinger()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->setSocketOptionLingerSeconds(Ljava/lang/Integer;)Lio/grpc/InternalChannelz$SocketOptions$Builder;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 105
    :catch_0
    move-exception v10

    .line 106
    .local v10, "e":Ljava/net/SocketException;
    sget-object v11, Lio/grpc/okhttp/Utils;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12, v8, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    const-string v11, "SO_LINGER"

    invoke-virtual {v9, v11, v7}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalChannelz$SocketOptions$Builder;

    .line 111
    .end local v10    # "e":Ljava/net/SocketException;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->setSocketOptionTimeoutMillis(Ljava/lang/Integer;)Lio/grpc/InternalChannelz$SocketOptions$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    goto :goto_1

    .line 112
    :catch_1
    move-exception v10

    .line 113
    .local v10, "e":Ljava/lang/Exception;
    sget-object v11, Lio/grpc/okhttp/Utils;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12, v8, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    const-string v11, "SO_TIMEOUT"

    invoke-virtual {v9, v11, v7}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalChannelz$SocketOptions$Builder;

    .line 118
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v10

    invoke-virtual {v9, v6, v10}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;Z)Lio/grpc/InternalChannelz$SocketOptions$Builder;
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2

    .line 122
    goto :goto_2

    .line 119
    :catch_2
    move-exception v10

    .line 120
    .local v10, "e":Ljava/net/SocketException;
    sget-object v11, Lio/grpc/okhttp/Utils;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12, v8, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    invoke-virtual {v9, v6, v7}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalChannelz$SocketOptions$Builder;

    .line 125
    .end local v10    # "e":Ljava/net/SocketException;
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v6

    invoke-virtual {v9, v5, v6}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;Z)Lio/grpc/InternalChannelz$SocketOptions$Builder;
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3

    .line 129
    goto :goto_3

    .line 126
    :catch_3
    move-exception v6

    .line 127
    .local v6, "e":Ljava/net/SocketException;
    sget-object v10, Lio/grpc/okhttp/Utils;->log:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v10, v11, v8, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    invoke-virtual {v9, v5, v7}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalChannelz$SocketOptions$Builder;

    .line 132
    .end local v6    # "e":Ljava/net/SocketException;
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v5

    invoke-virtual {v9, v4, v5}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;I)Lio/grpc/InternalChannelz$SocketOptions$Builder;
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_4

    .line 136
    goto :goto_4

    .line 133
    :catch_4
    move-exception v5

    .line 134
    .local v5, "e":Ljava/net/SocketException;
    sget-object v6, Lio/grpc/okhttp/Utils;->log:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v10, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    invoke-virtual {v9, v4, v7}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalChannelz$SocketOptions$Builder;

    .line 139
    .end local v5    # "e":Ljava/net/SocketException;
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v4

    invoke-virtual {v9, v3, v4}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;I)Lio/grpc/InternalChannelz$SocketOptions$Builder;
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_5

    .line 143
    goto :goto_5

    .line 140
    :catch_5
    move-exception v4

    .line 141
    .local v4, "e":Ljava/net/SocketException;
    sget-object v5, Lio/grpc/okhttp/Utils;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v8, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    invoke-virtual {v9, v3, v7}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalChannelz$SocketOptions$Builder;

    .line 146
    .end local v4    # "e":Ljava/net/SocketException;
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v3

    invoke-virtual {v9, v2, v3}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;Z)Lio/grpc/InternalChannelz$SocketOptions$Builder;
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_6

    .line 150
    goto :goto_6

    .line 147
    :catch_6
    move-exception v3

    .line 148
    .local v3, "e":Ljava/net/SocketException;
    sget-object v4, Lio/grpc/okhttp/Utils;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v8, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    invoke-virtual {v9, v2, v7}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalChannelz$SocketOptions$Builder;

    .line 153
    .end local v3    # "e":Ljava/net/SocketException;
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Ljava/net/Socket;->getOOBInline()Z

    move-result v2

    invoke-virtual {v9, v1, v2}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;Z)Lio/grpc/InternalChannelz$SocketOptions$Builder;
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_7

    .line 157
    goto :goto_7

    .line 154
    :catch_7
    move-exception v2

    .line 155
    .local v2, "e":Ljava/net/SocketException;
    sget-object v3, Lio/grpc/okhttp/Utils;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v8, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    invoke-virtual {v9, v1, v7}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalChannelz$SocketOptions$Builder;

    .line 160
    .end local v2    # "e":Ljava/net/SocketException;
    :goto_7
    :try_start_8
    invoke-virtual {p0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;I)Lio/grpc/InternalChannelz$SocketOptions$Builder;
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_8

    .line 164
    goto :goto_8

    .line 161
    :catch_8
    move-exception v1

    .line 162
    .local v1, "e":Ljava/net/SocketException;
    sget-object v2, Lio/grpc/okhttp/Utils;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    invoke-virtual {v9, v0, v7}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalChannelz$SocketOptions$Builder;

    .line 165
    .end local v1    # "e":Ljava/net/SocketException;
    :goto_8
    invoke-virtual {v9}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->build()Lio/grpc/InternalChannelz$SocketOptions;

    move-result-object v0

    return-object v0
.end method
