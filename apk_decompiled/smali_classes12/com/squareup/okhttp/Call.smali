.class public Lcom/squareup/okhttp/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;,
        Lcom/squareup/okhttp/Call$AsyncCall;
    }
.end annotation


# instance fields
.field volatile canceled:Z

.field private final client:Lcom/squareup/okhttp/OkHttpClient;

.field engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

.field private executed:Z

.field originalRequest:Lcom/squareup/okhttp/Request;


# direct methods
.method protected constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V
    .locals 1
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p2, "originalRequest"    # Lcom/squareup/okhttp/Request;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->copyWithDefaults()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 50
    iput-object p2, p0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    .line 51
    return-void
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/Call;Z)Lcom/squareup/okhttp/Response;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Call;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/squareup/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Call;

    .line 35
    invoke-direct {p0}, Lcom/squareup/okhttp/Call;->toLoggableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Call;

    .line 35
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-object v0
.end method

.method private getResponseWithInterceptorChain(Z)Lcom/squareup/okhttp/Response;
    .locals 3
    .param p1, "forWebSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;

    iget-object v1, p0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;-><init>(Lcom/squareup/okhttp/Call;ILcom/squareup/okhttp/Request;Z)V

    .line 205
    .local v0, "chain":Lcom/squareup/okhttp/Interceptor$Chain;
    iget-object v1, p0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    return-object v1
.end method

.method private toLoggableString()Ljava/lang/String;
    .locals 4

    .line 198
    iget-boolean v0, p0, Lcom/squareup/okhttp/Call;->canceled:Z

    if-eqz v0, :cond_0

    const-string v0, "canceled call"

    goto :goto_0

    :cond_0
    const-string v0, "call"

    .line 199
    .local v0, "string":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v1

    const-string v2, "/..."

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl;

    move-result-object v1

    .line 200
    .local v1, "redactedUrl":Lcom/squareup/okhttp/HttpUrl;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/Call;->canceled:Z

    .line 123
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->cancel()V

    .line 124
    :cond_0
    return-void
.end method

.method public enqueue(Lcom/squareup/okhttp/Callback;)V
    .locals 1
    .param p1, "responseCallback"    # Lcom/squareup/okhttp/Callback;

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;Z)V

    .line 107
    return-void
.end method

.method enqueue(Lcom/squareup/okhttp/Callback;Z)V
    .locals 3
    .param p1, "responseCallback"    # Lcom/squareup/okhttp/Callback;
    .param p2, "forWebSocket"    # Z

    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/Call;->executed:Z

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/Call;->executed:Z

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/Call$AsyncCall;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/squareup/okhttp/Call$AsyncCall;-><init>(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;ZLcom/squareup/okhttp/Call$1;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Dispatcher;->enqueue(Lcom/squareup/okhttp/Call$AsyncCall;)V

    .line 115
    return-void

    .line 111
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "responseCallback":Lcom/squareup/okhttp/Callback;
    .end local p2    # "forWebSocket":Z
    throw v0

    .line 113
    .restart local p1    # "responseCallback":Lcom/squareup/okhttp/Callback;
    .restart local p2    # "forWebSocket":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public execute()Lcom/squareup/okhttp/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/Call;->executed:Z

    if-nez v0, :cond_1

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/Call;->executed:Z

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/Dispatcher;->executed(Lcom/squareup/okhttp/Call;)V

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/squareup/okhttp/Response;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .local v0, "result":Lcom/squareup/okhttp/Response;
    if-eqz v0, :cond_0

    .line 82
    nop

    .line 84
    iget-object v1, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/Dispatcher;->finished(Lcom/squareup/okhttp/Call;)V

    return-object v0

    .line 81
    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .end local v0    # "result":Lcom/squareup/okhttp/Response;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/Dispatcher;->finished(Lcom/squareup/okhttp/Call;)V

    throw v0

    .line 75
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method getResponse(Lcom/squareup/okhttp/Request;Z)Lcom/squareup/okhttp/Response;
    .locals 17
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .param p2, "forWebSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v2

    .line 254
    .local v2, "body":Lcom/squareup/okhttp/RequestBody;
    if-eqz v2, :cond_2

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 257
    .local v0, "requestBuilder":Lcom/squareup/okhttp/Request$Builder;
    invoke-virtual {v2}, Lcom/squareup/okhttp/RequestBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v3

    .line 258
    .local v3, "contentType":Lcom/squareup/okhttp/MediaType;
    if-eqz v3, :cond_0

    .line 259
    invoke-virtual {v3}, Lcom/squareup/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-virtual {v0, v5, v4}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 262
    :cond_0
    invoke-virtual {v2}, Lcom/squareup/okhttp/RequestBody;->contentLength()J

    move-result-wide v4

    .line 263
    .local v4, "contentLength":J
    const-wide/16 v6, -0x1

    const-string v8, "Content-Length"

    const-string v9, "Transfer-Encoding"

    cmp-long v10, v4, v6

    if-eqz v10, :cond_1

    .line 264
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 265
    invoke-virtual {v0, v9}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_0

    .line 267
    :cond_1
    const-string v6, "chunked"

    invoke-virtual {v0, v9, v6}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 268
    invoke-virtual {v0, v8}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 271
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v6

    .end local p1    # "request":Lcom/squareup/okhttp/Request;
    .local v6, "request":Lcom/squareup/okhttp/Request;
    goto :goto_1

    .line 254
    .end local v0    # "requestBuilder":Lcom/squareup/okhttp/Request$Builder;
    .end local v3    # "contentType":Lcom/squareup/okhttp/MediaType;
    .end local v4    # "contentLength":J
    .end local v6    # "request":Lcom/squareup/okhttp/Request;
    .restart local p1    # "request":Lcom/squareup/okhttp/Request;
    :cond_2
    move-object/from16 v6, p1

    .line 275
    .end local p1    # "request":Lcom/squareup/okhttp/Request;
    .restart local v6    # "request":Lcom/squareup/okhttp/Request;
    :goto_1
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v8, v1, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v7, v0

    move-object v9, v6

    move/from16 v12, p2

    invoke-direct/range {v7 .. v15}, Lcom/squareup/okhttp/internal/http/HttpEngine;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;ZZZLcom/squareup/okhttp/internal/http/StreamAllocation;Lcom/squareup/okhttp/internal/http/RetryableSink;Lcom/squareup/okhttp/Response;)V

    iput-object v0, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 277
    const/4 v0, 0x0

    move v3, v0

    .line 279
    .local v3, "followUpCount":I
    :cond_3
    :goto_2
    iget-boolean v0, v1, Lcom/squareup/okhttp/Call;->canceled:Z

    if-nez v0, :cond_c

    .line 284
    const/4 v4, 0x1

    .line 286
    .local v4, "releaseConnection":Z
    :try_start_0
    iget-object v0, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 287
    iget-object v0, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    const/4 v0, 0x0

    .line 315
    .end local v4    # "releaseConnection":Z
    .local v0, "releaseConnection":Z
    if-eqz v0, :cond_4

    .line 316
    iget-object v4, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->close()Lcom/squareup/okhttp/internal/http/StreamAllocation;

    move-result-object v4

    .line 317
    .local v4, "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->release()V

    .line 321
    .end local v4    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    :cond_4
    iget-object v4, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v4

    .line 322
    .local v4, "response":Lcom/squareup/okhttp/Response;
    iget-object v5, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->followUpRequest()Lcom/squareup/okhttp/Request;

    move-result-object v5

    .line 324
    .local v5, "followUp":Lcom/squareup/okhttp/Request;
    if-nez v5, :cond_6

    .line 325
    if-nez p2, :cond_5

    .line 326
    iget-object v7, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v7}, Lcom/squareup/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 328
    :cond_5
    return-object v4

    .line 331
    :cond_6
    iget-object v7, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v7}, Lcom/squareup/okhttp/internal/http/HttpEngine;->close()Lcom/squareup/okhttp/internal/http/StreamAllocation;

    move-result-object v7

    .line 333
    .local v7, "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    add-int/lit8 v3, v3, 0x1

    const/16 v8, 0x14

    if-gt v3, v8, :cond_8

    .line 338
    iget-object v8, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v5}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/squareup/okhttp/internal/http/HttpEngine;->sameConnection(Lcom/squareup/okhttp/HttpUrl;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 339
    invoke-virtual {v7}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->release()V

    .line 340
    const/4 v7, 0x0

    move-object/from16 v16, v7

    goto :goto_3

    .line 338
    :cond_7
    move-object/from16 v16, v7

    .line 343
    .end local v7    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    .local v16, "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    :goto_3
    move-object v9, v5

    .line 344
    .end local v6    # "request":Lcom/squareup/okhttp/Request;
    .local v9, "request":Lcom/squareup/okhttp/Request;
    new-instance v6, Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v8, v1, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v7, v6

    move/from16 v12, p2

    move-object/from16 v13, v16

    move-object v15, v4

    invoke-direct/range {v7 .. v15}, Lcom/squareup/okhttp/internal/http/HttpEngine;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;ZZZLcom/squareup/okhttp/internal/http/StreamAllocation;Lcom/squareup/okhttp/internal/http/RetryableSink;Lcom/squareup/okhttp/Response;)V

    iput-object v6, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 346
    .end local v0    # "releaseConnection":Z
    .end local v4    # "response":Lcom/squareup/okhttp/Response;
    .end local v5    # "followUp":Lcom/squareup/okhttp/Request;
    .end local v16    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    move-object v6, v9

    goto :goto_2

    .line 334
    .end local v9    # "request":Lcom/squareup/okhttp/Request;
    .restart local v0    # "releaseConnection":Z
    .restart local v4    # "response":Lcom/squareup/okhttp/Response;
    .restart local v5    # "followUp":Lcom/squareup/okhttp/Request;
    .restart local v6    # "request":Lcom/squareup/okhttp/Request;
    .restart local v7    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    :cond_8
    invoke-virtual {v7}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->release()V

    .line 335
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Too many follow-up requests: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 315
    .end local v0    # "releaseConnection":Z
    .end local v5    # "followUp":Lcom/squareup/okhttp/Request;
    .end local v7    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    .local v4, "releaseConnection":Z
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 302
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v5, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7}, Lcom/squareup/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lokio/Sink;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v5

    .line 305
    .local v5, "retryEngine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    if-eqz v5, :cond_9

    .line 306
    const/4 v4, 0x0

    .line 307
    iput-object v5, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    if-eqz v4, :cond_3

    .line 316
    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->close()Lcom/squareup/okhttp/internal/http/StreamAllocation;

    move-result-object v7

    .line 317
    .restart local v7    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v7}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->release()V

    .line 318
    .end local v7    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    goto/16 :goto_2

    .line 312
    :cond_9
    nop

    .end local v2    # "body":Lcom/squareup/okhttp/RequestBody;
    .end local v3    # "followUpCount":I
    .end local v4    # "releaseConnection":Z
    .end local v6    # "request":Lcom/squareup/okhttp/Request;
    .end local p2    # "forWebSocket":Z
    :try_start_2
    throw v0

    .line 292
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "retryEngine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    .restart local v2    # "body":Lcom/squareup/okhttp/RequestBody;
    .restart local v3    # "followUpCount":I
    .restart local v4    # "releaseConnection":Z
    .restart local v6    # "request":Lcom/squareup/okhttp/Request;
    .restart local p2    # "forWebSocket":Z
    :catch_1
    move-exception v0

    .line 294
    .local v0, "e":Lcom/squareup/okhttp/internal/http/RouteException;
    iget-object v5, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v5, v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->recover(Lcom/squareup/okhttp/internal/http/RouteException;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v5

    .line 295
    .restart local v5    # "retryEngine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    if-eqz v5, :cond_a

    .line 296
    const/4 v4, 0x0

    .line 297
    iput-object v5, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    if-eqz v4, :cond_3

    .line 316
    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->close()Lcom/squareup/okhttp/internal/http/StreamAllocation;

    move-result-object v7

    .line 317
    .restart local v7    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v7}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->release()V

    .line 318
    .end local v7    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    goto/16 :goto_2

    .line 301
    :cond_a
    :try_start_3
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v7

    .end local v2    # "body":Lcom/squareup/okhttp/RequestBody;
    .end local v3    # "followUpCount":I
    .end local v4    # "releaseConnection":Z
    .end local v6    # "request":Lcom/squareup/okhttp/Request;
    .end local p2    # "forWebSocket":Z
    throw v7

    .line 289
    .end local v0    # "e":Lcom/squareup/okhttp/internal/http/RouteException;
    .end local v5    # "retryEngine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    .restart local v2    # "body":Lcom/squareup/okhttp/RequestBody;
    .restart local v3    # "followUpCount":I
    .restart local v4    # "releaseConnection":Z
    .restart local v6    # "request":Lcom/squareup/okhttp/Request;
    .restart local p2    # "forWebSocket":Z
    :catch_2
    move-exception v0

    .line 291
    .local v0, "e":Lcom/squareup/okhttp/internal/http/RequestException;
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object v5

    .end local v2    # "body":Lcom/squareup/okhttp/RequestBody;
    .end local v3    # "followUpCount":I
    .end local v4    # "releaseConnection":Z
    .end local v6    # "request":Lcom/squareup/okhttp/Request;
    .end local p2    # "forWebSocket":Z
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    .end local v0    # "e":Lcom/squareup/okhttp/internal/http/RequestException;
    .restart local v2    # "body":Lcom/squareup/okhttp/RequestBody;
    .restart local v3    # "followUpCount":I
    .restart local v4    # "releaseConnection":Z
    .restart local v6    # "request":Lcom/squareup/okhttp/Request;
    .restart local p2    # "forWebSocket":Z
    :goto_4
    if-eqz v4, :cond_b

    .line 316
    iget-object v5, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->close()Lcom/squareup/okhttp/internal/http/StreamAllocation;

    move-result-object v5

    .line 317
    .local v5, "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->release()V

    .line 318
    .end local v5    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    :cond_b
    throw v0

    .line 280
    .end local v4    # "releaseConnection":Z
    :cond_c
    iget-object v0, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 281
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/squareup/okhttp/Call;->canceled:Z

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/Call;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 131
    .end local p0    # "this":Lcom/squareup/okhttp/Call;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method tag()Ljava/lang/Object;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
