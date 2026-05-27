.class public final Lcom/squareup/okhttp/internal/io/RealConnection;
.super Ljava/lang/Object;
.source "RealConnection.java"

# interfaces
.implements Lcom/squareup/okhttp/Connection;


# static fields
.field private static lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private static lastTrustRootIndex:Lcom/squareup/okhttp/internal/tls/TrustRootIndex;


# instance fields
.field public final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lcom/squareup/okhttp/internal/http/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile framedConnection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

.field private handshake:Lcom/squareup/okhttp/Handshake;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Lcom/squareup/okhttp/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Lcom/squareup/okhttp/Route;

.field public sink:Lokio/BufferedSink;

.field public socket:Ljava/net/Socket;

.field public source:Lokio/BufferedSource;

.field public streamCount:I


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Route;)V
    .locals 2
    .param p1, "route"    # Lcom/squareup/okhttp/Route;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    .line 86
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->idleAtNanos:J

    .line 89
    iput-object p1, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    .line 90
    return-void
.end method

.method private connectSocket(IIILcom/squareup/okhttp/internal/ConnectionSpecSelector;)V
    .locals 5
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionSpecSelector"    # Lcom/squareup/okhttp/internal/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 141
    :try_start_0
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/squareup/okhttp/internal/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    nop

    .line 145
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->source:Lokio/BufferedSource;

    .line 146
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    .line 148
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Route;->getAddress()Lcom/squareup/okhttp/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0, p2, p3, p4}, Lcom/squareup/okhttp/internal/io/RealConnection;->connectTls(IILcom/squareup/okhttp/internal/ConnectionSpecSelector;)V

    goto :goto_0

    .line 151
    :cond_0
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 152
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_2

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 158
    new-instance v0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;-><init>(Z)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    .line 159
    invoke-virtual {v2}, Lcom/squareup/okhttp/Route;->getAddress()Lcom/squareup/okhttp/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Address;->url()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->source:Lokio/BufferedSource;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 160
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->build()Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    .line 162
    .local v0, "framedConnection":Lcom/squareup/okhttp/internal/framed/FramedConnection;
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->sendConnectionPreface()V

    .line 165
    iput-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->framedConnection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 167
    .end local v0    # "framedConnection":Lcom/squareup/okhttp/internal/framed/FramedConnection;
    :cond_2
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/net/ConnectException;
    new-instance v1, Ljava/net/ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private connectTls(IILcom/squareup/okhttp/internal/ConnectionSpecSelector;)V
    .locals 10
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "connectionSpecSelector"    # Lcom/squareup/okhttp/internal/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Route;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/io/RealConnection;->createTunnel(II)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Route;->getAddress()Lcom/squareup/okhttp/Address;

    move-result-object v0

    .line 176
    .local v0, "address":Lcom/squareup/okhttp/Address;
    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 177
    .local v1, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v2, 0x0

    .line 178
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 181
    .local v3, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_0
    iget-object v4, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 182
    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getUriPort()I

    move-result v6

    const/4 v7, 0x1

    .line 181
    invoke-virtual {v1, v4, v5, v6, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    move-object v3, v4

    .line 185
    invoke-virtual {p3, v3}, Lcom/squareup/okhttp/internal/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v4

    .line 186
    .local v4, "connectionSpec":Lcom/squareup/okhttp/ConnectionSpec;
    invoke-virtual {v4}, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v5

    .line 188
    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getProtocols()Ljava/util/List;

    move-result-object v7

    .line 187
    invoke-virtual {v5, v3, v6, v7}, Lcom/squareup/okhttp/internal/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 192
    :cond_1
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 193
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/okhttp/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lcom/squareup/okhttp/Handshake;

    move-result-object v5

    .line 196
    .local v5, "unverifiedHandshake":Lcom/squareup/okhttp/Handshake;
    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 205
    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getCertificatePinner()Lcom/squareup/okhttp/CertificatePinner;

    move-result-object v6

    sget-object v7, Lcom/squareup/okhttp/CertificatePinner;->DEFAULT:Lcom/squareup/okhttp/CertificatePinner;

    if-eq v6, v7, :cond_2

    .line 206
    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/okhttp/internal/io/RealConnection;->trustRootIndex(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/internal/tls/TrustRootIndex;

    move-result-object v6

    .line 207
    .local v6, "trustRootIndex":Lcom/squareup/okhttp/internal/tls/TrustRootIndex;
    new-instance v7, Lcom/squareup/okhttp/internal/tls/CertificateChainCleaner;

    invoke-direct {v7, v6}, Lcom/squareup/okhttp/internal/tls/CertificateChainCleaner;-><init>(Lcom/squareup/okhttp/internal/tls/TrustRootIndex;)V

    .line 208
    invoke-virtual {v5}, Lcom/squareup/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/squareup/okhttp/internal/tls/CertificateChainCleaner;->clean(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 209
    .local v7, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getCertificatePinner()Lcom/squareup/okhttp/CertificatePinner;

    move-result-object v8

    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/squareup/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 213
    .end local v6    # "trustRootIndex":Lcom/squareup/okhttp/internal/tls/TrustRootIndex;
    .end local v7    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_2
    invoke-virtual {v4}, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 214
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/squareup/okhttp/internal/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 216
    .local v6, "maybeProtocol":Ljava/lang/String;
    :goto_0
    iput-object v3, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 217
    invoke-static {v3}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v7

    invoke-static {v7}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v7

    iput-object v7, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->source:Lokio/BufferedSource;

    .line 218
    iget-object v7, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v7}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v7

    invoke-static {v7}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v7

    iput-object v7, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    .line 219
    iput-object v5, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->handshake:Lcom/squareup/okhttp/Handshake;

    .line 220
    if-eqz v6, :cond_4

    .line 221
    invoke-static {v6}, Lcom/squareup/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/squareup/okhttp/Protocol;

    move-result-object v7

    goto :goto_1

    :cond_4
    sget-object v7, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    :goto_1
    iput-object v7, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->protocol:Lcom/squareup/okhttp/Protocol;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    const/4 v2, 0x1

    .line 228
    .end local v4    # "connectionSpec":Lcom/squareup/okhttp/ConnectionSpec;
    .end local v5    # "unverifiedHandshake":Lcom/squareup/okhttp/Handshake;
    .end local v6    # "maybeProtocol":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 229
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/squareup/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 231
    :cond_5
    if-nez v2, :cond_6

    .line 232
    invoke-static {v3}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 235
    :cond_6
    return-void

    .line 197
    .restart local v4    # "connectionSpec":Lcom/squareup/okhttp/ConnectionSpec;
    .restart local v5    # "unverifiedHandshake":Lcom/squareup/okhttp/Handshake;
    :cond_7
    :try_start_1
    invoke-virtual {v5}, Lcom/squareup/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 198
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    new-instance v7, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hostname "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " not verified:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n    certificate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {v6}, Lcom/squareup/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n    DN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    invoke-interface {v9}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n    subjectAltNames: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {v6}, Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "address":Lcom/squareup/okhttp/Address;
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "success":Z
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p1    # "readTimeout":I
    .end local p2    # "writeTimeout":I
    .end local p3    # "connectionSpecSelector":Lcom/squareup/okhttp/internal/ConnectionSpecSelector;
    throw v7
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    .end local v4    # "connectionSpec":Lcom/squareup/okhttp/ConnectionSpec;
    .end local v5    # "unverifiedHandshake":Lcom/squareup/okhttp/Handshake;
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "address":Lcom/squareup/okhttp/Address;
    .restart local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "success":Z
    .restart local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p1    # "readTimeout":I
    .restart local p2    # "writeTimeout":I
    .restart local p3    # "connectionSpecSelector":Lcom/squareup/okhttp/internal/ConnectionSpecSelector;
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 224
    :catch_0
    move-exception v4

    .line 225
    .local v4, "e":Ljava/lang/AssertionError;
    :try_start_2
    invoke-static {v4}, Lcom/squareup/okhttp/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "address":Lcom/squareup/okhttp/Address;
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "success":Z
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p1    # "readTimeout":I
    .end local p2    # "writeTimeout":I
    .end local p3    # "connectionSpecSelector":Lcom/squareup/okhttp/internal/ConnectionSpecSelector;
    throw v5

    .line 226
    .restart local v0    # "address":Lcom/squareup/okhttp/Address;
    .restart local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "success":Z
    .restart local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p1    # "readTimeout":I
    .restart local p2    # "writeTimeout":I
    .restart local p3    # "connectionSpecSelector":Lcom/squareup/okhttp/internal/ConnectionSpecSelector;
    :cond_8
    nop

    .end local v0    # "address":Lcom/squareup/okhttp/Address;
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "success":Z
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p1    # "readTimeout":I
    .end local p2    # "writeTimeout":I
    .end local p3    # "connectionSpecSelector":Lcom/squareup/okhttp/internal/ConnectionSpecSelector;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    .end local v4    # "e":Ljava/lang/AssertionError;
    .restart local v0    # "address":Lcom/squareup/okhttp/Address;
    .restart local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "success":Z
    .restart local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p1    # "readTimeout":I
    .restart local p2    # "writeTimeout":I
    .restart local p3    # "connectionSpecSelector":Lcom/squareup/okhttp/internal/ConnectionSpecSelector;
    :goto_2
    if-eqz v3, :cond_9

    .line 229
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/squareup/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 231
    :cond_9
    if-nez v2, :cond_a

    .line 232
    invoke-static {v3}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    :cond_a
    throw v4
.end method

.method private createTunnel(II)V
    .locals 11
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/io/RealConnection;->createTunnelRequest()Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 262
    .local v0, "tunnelRequest":Lcom/squareup/okhttp/Request;
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v1

    .line 263
    .local v1, "url":Lcom/squareup/okhttp/HttpUrl;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/squareup/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/squareup/okhttp/HttpUrl;->port()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " HTTP/1.1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "requestLine":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/squareup/okhttp/internal/http/Http1xStream;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->source:Lokio/BufferedSource;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    invoke-direct {v3, v4, v5, v6}, Lcom/squareup/okhttp/internal/http/Http1xStream;-><init>(Lcom/squareup/okhttp/internal/http/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 266
    .local v3, "tunnelConnection":Lcom/squareup/okhttp/internal/http/Http1xStream;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v4

    int-to-long v5, p1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 267
    iget-object v4, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v4

    int-to-long v5, p2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 268
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/squareup/okhttp/internal/http/Http1xStream;->writeRequest(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/Http1xStream;->finishRequest()V

    .line 270
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/Http1xStream;->readResponse()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v4

    .line 273
    .local v4, "response":Lcom/squareup/okhttp/Response;
    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/OkHeaders;->contentLength(Lcom/squareup/okhttp/Response;)J

    move-result-wide v5

    .line 274
    .local v5, "contentLength":J
    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    .line 275
    const-wide/16 v5, 0x0

    .line 277
    :cond_0
    invoke-virtual {v3, v5, v6}, Lcom/squareup/okhttp/internal/http/Http1xStream;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v7

    .line 278
    .local v7, "body":Lokio/Source;
    const v8, 0x7fffffff

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v7, v8, v9}, Lcom/squareup/okhttp/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 279
    invoke-interface {v7}, Lokio/Source;->close()V

    .line 281
    invoke-virtual {v4}, Lcom/squareup/okhttp/Response;->code()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 299
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected response code for CONNECT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v4}, Lcom/squareup/okhttp/Response;->code()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 293
    :sswitch_0
    iget-object v8, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    .line 294
    invoke-virtual {v8}, Lcom/squareup/okhttp/Route;->getAddress()Lcom/squareup/okhttp/Address;

    move-result-object v8

    invoke-virtual {v8}, Lcom/squareup/okhttp/Address;->getAuthenticator()Lcom/squareup/okhttp/Authenticator;

    move-result-object v8

    iget-object v9, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    invoke-virtual {v9}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v9

    .line 293
    invoke-static {v8, v4, v9}, Lcom/squareup/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/squareup/okhttp/Authenticator;Lcom/squareup/okhttp/Response;Ljava/net/Proxy;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 296
    :cond_1
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Failed to authenticate with proxy"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 287
    :sswitch_1
    iget-object v8, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Buffer;->exhausted()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v8}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Buffer;->exhausted()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 290
    return-void

    .line 288
    :cond_2
    new-instance v8, Ljava/io/IOException;

    const-string v9, "TLS tunnel buffered too many bytes!"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method

.method private createTunnelRequest()Lcom/squareup/okhttp/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    new-instance v0, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    .line 314
    invoke-virtual {v1}, Lcom/squareup/okhttp/Route;->getAddress()Lcom/squareup/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Address;->url()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Request$Builder;->url(Lcom/squareup/okhttp/HttpUrl;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    .line 315
    invoke-virtual {v1}, Lcom/squareup/okhttp/Route;->getAddress()Lcom/squareup/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Address;->url()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->hostHeader(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 316
    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 317
    invoke-static {}, Lcom/squareup/okhttp/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized trustRootIndex(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/internal/tls/TrustRootIndex;
    .locals 3
    .param p0, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    const-class v0, Lcom/squareup/okhttp/internal/io/RealConnection;

    monitor-enter v0

    .line 246
    :try_start_0
    sget-object v1, Lcom/squareup/okhttp/internal/io/RealConnection;->lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eq p0, v1, :cond_0

    .line 247
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/internal/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 248
    .local v1, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/Platform;->trustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lcom/squareup/okhttp/internal/tls/TrustRootIndex;

    move-result-object v2

    sput-object v2, Lcom/squareup/okhttp/internal/io/RealConnection;->lastTrustRootIndex:Lcom/squareup/okhttp/internal/tls/TrustRootIndex;

    .line 249
    sput-object p0, Lcom/squareup/okhttp/internal/io/RealConnection;->lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 251
    .end local v1    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    sget-object v1, Lcom/squareup/okhttp/internal/io/RealConnection;->lastTrustRootIndex:Lcom/squareup/okhttp/internal/tls/TrustRootIndex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 245
    .end local p0    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public allocationLimit()I
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->framedConnection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 341
    .local v0, "framedConnection":Lcom/squareup/okhttp/internal/framed/FramedConnection;
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->maxConcurrentStreams()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public cancel()V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 333
    return-void
.end method

.method public connect(IIILjava/util/List;Z)V
    .locals 8
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/ConnectionSpec;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    .line 94
    .local p4, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    if-nez v0, :cond_7

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "routeException":Lcom/squareup/okhttp/internal/http/RouteException;
    new-instance v1, Lcom/squareup/okhttp/internal/ConnectionSpecSelector;

    invoke-direct {v1, p4}, Lcom/squareup/okhttp/internal/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 98
    .local v1, "connectionSpecSelector":Lcom/squareup/okhttp/internal/ConnectionSpecSelector;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    .line 99
    .local v2, "proxy":Ljava/net/Proxy;
    iget-object v3, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Route;->getAddress()Lcom/squareup/okhttp/Address;

    move-result-object v3

    .line 101
    .local v3, "address":Lcom/squareup/okhttp/Address;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Route;->getAddress()Lcom/squareup/okhttp/Address;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/squareup/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/squareup/okhttp/ConnectionSpec;

    .line 102
    invoke-interface {p4, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance v4, Lcom/squareup/okhttp/internal/http/RouteException;

    new-instance v5, Ljava/net/UnknownServiceException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CLEARTEXT communication not supported: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v4

    .line 107
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    if-nez v4, :cond_6

    .line 109
    :try_start_0
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v4, v5, :cond_3

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 110
    :cond_2
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v3}, Lcom/squareup/okhttp/Address;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    :goto_2
    iput-object v4, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 112
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/squareup/okhttp/internal/io/RealConnection;->connectSocket(IIILcom/squareup/okhttp/internal/ConnectionSpecSelector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 113
    :catch_0
    move-exception v4

    .line 114
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v5}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 115
    iget-object v5, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v5}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 116
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 117
    iput-object v5, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 118
    iput-object v5, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->source:Lokio/BufferedSource;

    .line 119
    iput-object v5, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    .line 120
    iput-object v5, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->handshake:Lcom/squareup/okhttp/Handshake;

    .line 121
    iput-object v5, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 123
    if-nez v0, :cond_4

    .line 124
    new-instance v5, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {v5, v4}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    move-object v0, v5

    goto :goto_3

    .line 126
    :cond_4
    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/internal/http/RouteException;->addConnectException(Ljava/io/IOException;)V

    .line 129
    :goto_3
    if-eqz p5, :cond_5

    invoke-virtual {v1, v4}, Lcom/squareup/okhttp/internal/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 132
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    goto :goto_0

    .line 130
    .restart local v4    # "e":Ljava/io/IOException;
    :cond_5
    throw v0

    .line 134
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    return-void

    .line 94
    .end local v0    # "routeException":Lcom/squareup/okhttp/internal/http/RouteException;
    .end local v1    # "connectionSpecSelector":Lcom/squareup/okhttp/internal/ConnectionSpecSelector;
    .end local v2    # "proxy":Ljava/net/Proxy;
    .end local v3    # "address":Lcom/squareup/okhttp/Address;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHandshake()Lcom/squareup/okhttp/Handshake;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->handshake:Lcom/squareup/okhttp/Handshake;

    return-object v0
.end method

.method public getProtocol()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    :goto_0
    return-object v0
.end method

.method public getRoute()Lcom/squareup/okhttp/Route;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method isConnected()Z
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHealthy(Z)Z
    .locals 5
    .param p1, "doExtensiveChecks"    # Z

    .line 348
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->framedConnection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 353
    return v2

    .line 356
    :cond_1
    if-eqz p1, :cond_3

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .local v0, "readTimeout":I
    :try_start_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 361
    iget-object v3, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->exhausted()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 362
    nop

    .line 366
    :try_start_2
    iget-object v3, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    .line 364
    :cond_2
    nop

    .line 366
    iget-object v3, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .end local p1    # "doExtensiveChecks":Z
    throw v3
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 370
    .end local v0    # "readTimeout":I
    .restart local p1    # "doExtensiveChecks":Z
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/io/IOException;
    return v1

    .line 368
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 375
    :cond_3
    return v2

    .line 349
    :cond_4
    :goto_0
    return v1
.end method

.method public isMultiplexed()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->framedConnection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    .line 396
    invoke-virtual {v1}, Lcom/squareup/okhttp/Route;->getAddress()Lcom/squareup/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Address;->url()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Route;->getAddress()Lcom/squareup/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Address;->url()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    .line 398
    invoke-virtual {v1}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->route:Lcom/squareup/okhttp/Route;

    .line 400
    invoke-virtual {v1}, Lcom/squareup/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->handshake:Lcom/squareup/okhttp/Handshake;

    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {v1}, Lcom/squareup/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/io/RealConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
