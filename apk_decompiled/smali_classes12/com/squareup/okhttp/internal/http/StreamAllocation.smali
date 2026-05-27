.class public final Lcom/squareup/okhttp/internal/http/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# instance fields
.field public final address:Lcom/squareup/okhttp/Address;

.field private canceled:Z

.field private connection:Lcom/squareup/okhttp/internal/io/RealConnection;

.field private final connectionPool:Lcom/squareup/okhttp/ConnectionPool;

.field private released:Z

.field private routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

.field private stream:Lcom/squareup/okhttp/internal/http/HttpStream;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Address;)V
    .locals 0
    .param p1, "connectionPool"    # Lcom/squareup/okhttp/ConnectionPool;
    .param p2, "address"    # Lcom/squareup/okhttp/Address;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    .line 88
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->address:Lcom/squareup/okhttp/Address;

    .line 89
    return-void
.end method

.method private connectionFailed(Ljava/io/IOException;)V
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;

    .line 276
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;

    iget v1, v1, Lcom/squareup/okhttp/internal/io/RealConnection;->streamCount:I

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/io/RealConnection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v1

    .line 281
    .local v1, "failedRoute":Lcom/squareup/okhttp/Route;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    invoke-virtual {v2, v1, p1}, Lcom/squareup/okhttp/internal/http/RouteSelector;->connectFailed(Lcom/squareup/okhttp/Route;Ljava/io/IOException;)V

    .line 282
    .end local v1    # "failedRoute":Lcom/squareup/okhttp/Route;
    goto :goto_0

    .line 284
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    .line 287
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionFailed()V

    .line 289
    return-void

    .line 287
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private deallocate(ZZZ)V
    .locals 6
    .param p1, "noNewStreams"    # Z
    .param p2, "released"    # Z
    .param p3, "streamFinished"    # Z

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "connectionToClose":Lcom/squareup/okhttp/internal/io/RealConnection;
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v1

    .line 230
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 231
    :try_start_0
    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->stream:Lcom/squareup/okhttp/internal/http/HttpStream;

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 233
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-eqz p2, :cond_1

    .line 234
    iput-boolean v3, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->released:Z

    .line 236
    :cond_1
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;

    if-eqz v4, :cond_6

    .line 237
    if-eqz p1, :cond_2

    .line 238
    iput-boolean v3, v4, Lcom/squareup/okhttp/internal/io/RealConnection;->noNewStreams:Z

    .line 240
    :cond_2
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->stream:Lcom/squareup/okhttp/internal/http/HttpStream;

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->released:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;

    iget-boolean v3, v3, Lcom/squareup/okhttp/internal/io/RealConnection;->noNewStreams:Z

    if-eqz v3, :cond_6

    .line 241
    :cond_3
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;

    invoke-direct {p0, v3}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->release(Lcom/squareup/okhttp/internal/io/RealConnection;)V

    .line 242
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;

    iget v3, v3, Lcom/squareup/okhttp/internal/io/RealConnection;->streamCount:I

    if-lez v3, :cond_4

    .line 243
    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    .line 245
    :cond_4
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;

    iget-object v3, v3, Lcom/squareup/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 246
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/squareup/okhttp/internal/io/RealConnection;->idleAtNanos:J

    .line 247
    sget-object v3, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/internal/Internal;->connectionBecameIdle(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/internal/io/RealConnection;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 248
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;

    move-object v0, v3

    .line 251
    :cond_5
    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;

    .line 254
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    if-eqz v0, :cond_7

    .line 256
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 258
    :cond_7
    return-void

    .line 254
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private findConnection(IIIZ)Lcom/squareup/okhttp/internal/io/RealConnection;
    .locals 9
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->released:Z

    if-nez v1, :cond_6

    .line 153
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->stream:Lcom/squareup/okhttp/internal/http/HttpStream;

    if-nez v1, :cond_5

    .line 154
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->canceled:Z

    if-nez v1, :cond_4

    .line 156
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;

    .line 157
    .local v1, "allocatedConnection":Lcom/squareup/okhttp/internal/io/RealConnection;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/squareup/okhttp/internal/io/RealConnection;->noNewStreams:Z

    if-nez v2, :cond_0

    .line 158
    monitor-exit v0

    return-object v1

    .line 162
    :cond_0
    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v2, v3, v4, p0}, Lcom/squareup/okhttp/internal/Internal;->get(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Address;Lcom/squareup/okhttp/internal/http/StreamAllocation;)Lcom/squareup/okhttp/internal/io/RealConnection;

    move-result-object v2

    .line 163
    .local v2, "pooledConnection":Lcom/squareup/okhttp/internal/io/RealConnection;
    if-eqz v2, :cond_1

    .line 164
    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;

    .line 165
    monitor-exit v0

    return-object v2

    .line 169
    :cond_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    if-nez v3, :cond_2

    .line 170
    new-instance v3, Lcom/squareup/okhttp/internal/http/RouteSelector;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->address:Lcom/squareup/okhttp/Address;

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->routeDatabase()Lcom/squareup/okhttp/internal/RouteDatabase;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/squareup/okhttp/internal/http/RouteSelector;-><init>(Lcom/squareup/okhttp/Address;Lcom/squareup/okhttp/internal/RouteDatabase;)V

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    .line 172
    .end local v1    # "allocatedConnection":Lcom/squareup/okhttp/internal/io/RealConnection;
    .end local v2    # "pooledConnection":Lcom/squareup/okhttp/internal/io/RealConnection;
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->next()Lcom/squareup/okhttp/Route;

    move-result-object v1

    .line 175
    .local v1, "route":Lcom/squareup/okhttp/Route;
    new-instance v0, Lcom/squareup/okhttp/internal/io/RealConnection;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/io/RealConnection;-><init>(Lcom/squareup/okhttp/Route;)V

    move-object v8, v0

    .line 176
    .local v8, "newConnection":Lcom/squareup/okhttp/internal/io/RealConnection;
    invoke-virtual {p0, v8}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->acquire(Lcom/squareup/okhttp/internal/io/RealConnection;)V

    .line 178
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v2

    .line 179
    :try_start_1
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    invoke-virtual {v0, v3, v8}, Lcom/squareup/okhttp/internal/Internal;->put(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/internal/io/RealConnection;)V

    .line 180
    iput-object v8, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;

    .line 181
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->canceled:Z

    if-nez v0, :cond_3

    .line 182
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getConnectionSpecs()Ljava/util/List;

    move-result-object v6

    move-object v2, v8

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/squareup/okhttp/internal/io/RealConnection;->connect(IIILjava/util/List;Z)V

    .line 186
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->routeDatabase()Lcom/squareup/okhttp/internal/RouteDatabase;

    move-result-object v0

    invoke-virtual {v8}, Lcom/squareup/okhttp/internal/io/RealConnection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/internal/RouteDatabase;->connected(Lcom/squareup/okhttp/Route;)V

    .line 188
    return-object v8

    .line 181
    :cond_3
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "route":Lcom/squareup/okhttp/Route;
    .end local v8    # "newConnection":Lcom/squareup/okhttp/internal/io/RealConnection;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    throw v0

    .line 182
    .restart local v1    # "route":Lcom/squareup/okhttp/Route;
    .restart local v8    # "newConnection":Lcom/squareup/okhttp/internal/io/RealConnection;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 154
    .end local v1    # "route":Lcom/squareup/okhttp/Route;
    .end local v8    # "newConnection":Lcom/squareup/okhttp/internal/io/RealConnection;
    :cond_4
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    throw v1

    .line 153
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "stream != null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    throw v1

    .line 152
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "released"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    throw v1

    .line 172
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private findHealthyConnection(IIIZZ)Lcom/squareup/okhttp/internal/io/RealConnection;
    .locals 3
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .param p5, "doExtensiveHealthChecks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    .line 126
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->findConnection(IIIZ)Lcom/squareup/okhttp/internal/io/RealConnection;

    move-result-object v0

    .line 130
    .local v0, "candidate":Lcom/squareup/okhttp/internal/io/RealConnection;
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v1

    .line 131
    :try_start_0
    iget v2, v0, Lcom/squareup/okhttp/internal/io/RealConnection;->streamCount:I

    if-nez v2, :cond_0

    .line 132
    monitor-exit v1

    return-object v0

    .line 134
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v0, p5}, Lcom/squareup/okhttp/internal/io/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    return-object v0

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionFailed()V

    .line 142
    .end local v0    # "candidate":Lcom/squareup/okhttp/internal/io/RealConnection;
    goto :goto_0

    .line 134
    .restart local v0    # "candidate":Lcom/squareup/okhttp/internal/io/RealConnection;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private isRecoverable(Lcom/squareup/okhttp/internal/http/RouteException;)Z
    .locals 3
    .param p1, "e"    # Lcom/squareup/okhttp/internal/http/RouteException;

    .line 370
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    .line 373
    .local v0, "ioe":Ljava/io/IOException;
    instance-of v1, v0, Ljava/net/ProtocolException;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 374
    return v2

    .line 379
    :cond_0
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_1

    .line 380
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    return v1

    .line 385
    :cond_1
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_2

    .line 388
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_2

    .line 389
    return v2

    .line 392
    :cond_2
    instance-of v1, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v1, :cond_3

    .line 394
    return v2

    .line 400
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private isRecoverable(Ljava/io/IOException;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .line 353
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 354
    return v1

    .line 358
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_1

    .line 359
    return v1

    .line 362
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private release(Lcom/squareup/okhttp/internal/io/RealConnection;)V
    .locals 4
    .param p1, "connection"    # Lcom/squareup/okhttp/internal/io/RealConnection;

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p1, Lcom/squareup/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 307
    iget-object v2, p1, Lcom/squareup/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 308
    .local v2, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/squareup/okhttp/internal/http/StreamAllocation;>;"
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 309
    iget-object v3, p1, Lcom/squareup/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 310
    return-void

    .line 306
    .end local v2    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/squareup/okhttp/internal/http/StreamAllocation;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private routeDatabase()Lcom/squareup/okhttp/internal/RouteDatabase;
    .locals 2

    .line 207
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/Internal;->routeDatabase(Lcom/squareup/okhttp/ConnectionPool;)Lcom/squareup/okhttp/internal/RouteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquire(Lcom/squareup/okhttp/internal/io/RealConnection;)V
    .locals 2
    .param p1, "connection"    # Lcom/squareup/okhttp/internal/io/RealConnection;

    .line 301
    iget-object v0, p1, Lcom/squareup/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method public cancel()V
    .locals 5

    .line 263
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v0

    .line 264
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->canceled:Z

    .line 265
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->stream:Lcom/squareup/okhttp/internal/http/HttpStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 266
    .local v1, "streamToCancel":Lcom/squareup/okhttp/internal/http/HttpStream;
    :try_start_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    .local v2, "connectionToCancel":Lcom/squareup/okhttp/internal/io/RealConnection;
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 268
    if-eqz v1, :cond_0

    .line 269
    invoke-interface {v1}, Lcom/squareup/okhttp/internal/http/HttpStream;->cancel()V

    goto :goto_0

    .line 270
    :cond_0
    if-eqz v2, :cond_1

    .line 271
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/io/RealConnection;->cancel()V

    .line 273
    :cond_1
    :goto_0
    return-void

    .line 267
    .end local v2    # "connectionToCancel":Lcom/squareup/okhttp/internal/io/RealConnection;
    :catchall_0
    move-exception v3

    .restart local v2    # "connectionToCancel":Lcom/squareup/okhttp/internal/io/RealConnection;
    goto :goto_1

    .end local v1    # "streamToCancel":Lcom/squareup/okhttp/internal/http/HttpStream;
    .end local v2    # "connectionToCancel":Lcom/squareup/okhttp/internal/io/RealConnection;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .local v1, "connectionToCancel":Lcom/squareup/okhttp/internal/io/RealConnection;
    move-object v4, v2

    move-object v1, v4

    .local v1, "streamToCancel":Lcom/squareup/okhttp/internal/http/HttpStream;
    .restart local v2    # "connectionToCancel":Lcom/squareup/okhttp/internal/io/RealConnection;
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3

    :catchall_2
    move-exception v3

    goto :goto_1
.end method

.method public declared-synchronized connection()Lcom/squareup/okhttp/internal/io/RealConnection;
    .locals 1

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 211
    .end local p0    # "this":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connectionFailed()V
    .locals 2

    .line 293
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v0}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 294
    return-void
.end method

.method public newStream(IIIZZ)Lcom/squareup/okhttp/internal/http/HttpStream;
    .locals 5
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .param p5, "doExtensiveHealthChecks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/okhttp/internal/http/RouteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->findHealthyConnection(IIIZZ)Lcom/squareup/okhttp/internal/io/RealConnection;

    move-result-object v0

    .line 99
    .local v0, "resultConnection":Lcom/squareup/okhttp/internal/io/RealConnection;
    iget-object v1, v0, Lcom/squareup/okhttp/internal/io/RealConnection;->framedConnection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Lcom/squareup/okhttp/internal/http/Http2xStream;

    iget-object v2, v0, Lcom/squareup/okhttp/internal/io/RealConnection;->framedConnection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-direct {v1, p0, v2}, Lcom/squareup/okhttp/internal/http/Http2xStream;-><init>(Lcom/squareup/okhttp/internal/http/StreamAllocation;Lcom/squareup/okhttp/internal/framed/FramedConnection;)V

    .local v1, "resultStream":Lcom/squareup/okhttp/internal/http/HttpStream;
    goto :goto_0

    .line 102
    .end local v1    # "resultStream":Lcom/squareup/okhttp/internal/http/HttpStream;
    :cond_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 103
    iget-object v1, v0, Lcom/squareup/okhttp/internal/io/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v1

    int-to-long v2, p2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 104
    iget-object v1, v0, Lcom/squareup/okhttp/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v1

    int-to-long v2, p3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 105
    new-instance v1, Lcom/squareup/okhttp/internal/http/Http1xStream;

    iget-object v2, v0, Lcom/squareup/okhttp/internal/io/RealConnection;->source:Lokio/BufferedSource;

    iget-object v3, v0, Lcom/squareup/okhttp/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    invoke-direct {v1, p0, v2, v3}, Lcom/squareup/okhttp/internal/http/Http1xStream;-><init>(Lcom/squareup/okhttp/internal/http/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 108
    .restart local v1    # "resultStream":Lcom/squareup/okhttp/internal/http/HttpStream;
    :goto_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :try_start_1
    iget v3, v0, Lcom/squareup/okhttp/internal/io/RealConnection;->streamCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/squareup/okhttp/internal/io/RealConnection;->streamCount:I

    .line 110
    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->stream:Lcom/squareup/okhttp/internal/http/HttpStream;

    .line 111
    monitor-exit v2

    return-object v1

    .line 112
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    .end local p5    # "doExtensiveHealthChecks":Z
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    .end local v0    # "resultConnection":Lcom/squareup/okhttp/internal/io/RealConnection;
    .end local v1    # "resultStream":Lcom/squareup/okhttp/internal/http/HttpStream;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    .restart local p5    # "doExtensiveHealthChecks":Z
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {v1, v0}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public noNewStreams()V
    .locals 2

    .line 220
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 221
    return-void
.end method

.method public recover(Lcom/squareup/okhttp/internal/http/RouteException;)Z
    .locals 1
    .param p1, "e"    # Lcom/squareup/okhttp/internal/http/RouteException;

    .line 317
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionFailed(Ljava/io/IOException;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    :cond_1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->isRecoverable(Lcom/squareup/okhttp/internal/http/RouteException;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 323
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 326
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public recover(Ljava/io/IOException;Lokio/Sink;)Z
    .locals 4
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestBodyOut"    # Lokio/Sink;

    .line 330
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection:Lcom/squareup/okhttp/internal/io/RealConnection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 331
    iget v0, v0, Lcom/squareup/okhttp/internal/io/RealConnection;->streamCount:I

    .line 332
    .local v0, "streamCount":I
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionFailed(Ljava/io/IOException;)V

    .line 334
    if-ne v0, v2, :cond_0

    .line 337
    return v1

    .line 341
    .end local v0    # "streamCount":I
    :cond_0
    if-eqz p2, :cond_2

    instance-of v0, p2, Lcom/squareup/okhttp/internal/http/RetryableSink;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 342
    .local v0, "canRetryRequestBody":Z
    :goto_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 343
    :cond_3
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->isRecoverable(Ljava/io/IOException;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v0, :cond_4

    goto :goto_2

    .line 348
    :cond_4
    return v2

    .line 345
    :cond_5
    :goto_2
    return v1
.end method

.method public release()V
    .locals 2

    .line 215
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 216
    return-void
.end method

.method public stream()Lcom/squareup/okhttp/internal/http/HttpStream;
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->stream:Lcom/squareup/okhttp/internal/http/HttpStream;

    monitor-exit v0

    return-object v1

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public streamFinished(Lcom/squareup/okhttp/internal/http/HttpStream;)V
    .locals 4
    .param p1, "stream"    # Lcom/squareup/okhttp/internal/http/HttpStream;

    .line 192
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v0

    .line 193
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->stream:Lcom/squareup/okhttp/internal/http/HttpStream;

    if-ne p1, v1, :cond_0

    .line 196
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 198
    return-void

    .line 194
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->stream:Lcom/squareup/okhttp/internal/http/HttpStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "stream":Lcom/squareup/okhttp/internal/http/HttpStream;
    throw v1

    .line 196
    .restart local p1    # "stream":Lcom/squareup/okhttp/internal/http/HttpStream;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/StreamAllocation;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
