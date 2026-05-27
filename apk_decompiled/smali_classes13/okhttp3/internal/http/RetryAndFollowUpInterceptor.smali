.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRetryAndFollowUpInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetryAndFollowUpInterceptor.kt\nokhttp3/internal/http/RetryAndFollowUpInterceptor\n*L\n1#1,352:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0002J(\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0012H\u0002J\u0018\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lokhttp3/internal/http/RetryAndFollowUpInterceptor;",
        "Lokhttp3/Interceptor;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "(Lokhttp3/OkHttpClient;)V",
        "buildRedirectRequest",
        "Lokhttp3/Request;",
        "userResponse",
        "Lokhttp3/Response;",
        "method",
        "",
        "followUpRequest",
        "exchange",
        "Lokhttp3/internal/connection/Exchange;",
        "intercept",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "isRecoverable",
        "",
        "e",
        "Ljava/io/IOException;",
        "requestSendStarted",
        "recover",
        "call",
        "Lokhttp3/internal/connection/RealCall;",
        "userRequest",
        "requestIsOneShot",
        "retryAfter",
        "",
        "defaultDelay",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;

.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->Companion:Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 1
    .param p1, "client"    # Lokhttp3/OkHttpClient;

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private final buildRedirectRequest(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Request;
    .locals 7
    .param p1, "userResponse"    # Lokhttp3/Response;
    .param p2, "method"    # Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 298
    :cond_0
    const/4 v0, 0x2

    const-string v2, "Location"

    invoke-static {p1, v2, v1, v0, v1}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 300
    .local v0, "location":Ljava/lang/String;
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 303
    .local v2, "url":Lokhttp3/HttpUrl;
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 304
    .local v3, "sameScheme":Z
    if-nez v3, :cond_1

    iget-object v4, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v1

    .line 307
    :cond_1
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v4

    .line 308
    .local v4, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-static {p2}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 309
    sget-object v5, Lokhttp3/internal/http/HttpMethod;->INSTANCE:Lokhttp3/internal/http/HttpMethod;

    invoke-virtual {v5, p2}, Lokhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v5

    .line 310
    .local v5, "maintainBody":Z
    sget-object v6, Lokhttp3/internal/http/HttpMethod;->INSTANCE:Lokhttp3/internal/http/HttpMethod;

    invoke-virtual {v6, p2}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 311
    const-string v6, "GET"

    invoke-virtual {v4, v6, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 313
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    .line 314
    .local v1, "requestBody":Lokhttp3/RequestBody;
    :cond_3
    invoke-virtual {v4, p2, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 315
    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    :goto_0
    nop

    .line 316
    if-nez v5, :cond_4

    .line 317
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 318
    const-string v1, "Content-Length"

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 319
    const-string v1, "Content-Type"

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 326
    .end local v5    # "maintainBody":Z
    :cond_4
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->canReuseConnectionFor(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 327
    const-string v1, "Authorization"

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 330
    :cond_5
    invoke-virtual {v4, v2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    return-object v1

    .line 300
    .end local v2    # "url":Lokhttp3/HttpUrl;
    .end local v3    # "sameScheme":Z
    .end local v4    # "requestBuilder":Lokhttp3/Request$Builder;
    :cond_6
    return-object v1

    .line 298
    .end local v0    # "location":Ljava/lang/String;
    :cond_7
    return-object v1
.end method

.method private final followUpRequest(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Request;
    .locals 8
    .param p1, "userResponse"    # Lokhttp3/Response;
    .param p2, "exchange"    # Lokhttp3/internal/connection/Exchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 205
    .local v1, "route":Lokhttp3/Route;
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    .line 207
    .local v2, "responseCode":I
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "method":Ljava/lang/String;
    sparse-switch v2, :sswitch_data_0

    .line 290
    return-object v0

    .line 259
    :sswitch_0
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v4

    .line 260
    .local v4, "priorResponse":Lokhttp3/Response;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0x1f7

    if-ne v5, v6, :cond_1

    .line 262
    return-object v0

    .line 265
    :cond_1
    const v5, 0x7fffffff

    invoke-direct {p0, p1, v5}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result v5

    if-nez v5, :cond_2

    .line 267
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    return-object v0

    .line 270
    :cond_2
    return-object v0

    .line 277
    .end local v4    # "priorResponse":Lokhttp3/Response;
    :sswitch_1
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    .line 278
    .local v4, "requestBody":Lokhttp3/RequestBody;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 279
    return-object v0

    .line 282
    :cond_3
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lokhttp3/internal/connection/Exchange;->isCoalescedConnection$okhttp()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 286
    :cond_4
    invoke-virtual {p2}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->noCoalescedConnections()V

    .line 287
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    return-object v0

    .line 283
    :cond_5
    :goto_1
    return-object v0

    .line 236
    .end local v4    # "requestBody":Lokhttp3/RequestBody;
    :sswitch_2
    iget-object v4, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v4

    if-nez v4, :cond_6

    .line 238
    return-object v0

    .line 241
    :cond_6
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    .line 242
    .restart local v4    # "requestBody":Lokhttp3/RequestBody;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 243
    return-object v0

    .line 245
    :cond_7
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v5

    .line 246
    .local v5, "priorResponse":Lokhttp3/Response;
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v6

    const/16 v7, 0x198

    if-ne v6, v7, :cond_8

    .line 248
    return-object v0

    .line 251
    :cond_8
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result v6

    if-lez v6, :cond_9

    .line 252
    return-object v0

    .line 255
    :cond_9
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    return-object v0

    .line 210
    .end local v4    # "requestBody":Lokhttp3/RequestBody;
    .end local v5    # "priorResponse":Lokhttp3/Response;
    :sswitch_3
    if-nez v1, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-virtual {v1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    .line 211
    .local v0, "selectedProxy":Ljava/net/Proxy;
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_b

    .line 214
    iget-object v4, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v4

    invoke-interface {v4, v1, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v4

    return-object v4

    .line 212
    :cond_b
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 217
    .end local v0    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_4
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v0

    return-object v0

    .line 222
    :sswitch_5
    const-string v4, "GET"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_c

    const-string v4, "HEAD"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_c

    .line 223
    return-object v0

    .line 225
    :cond_c
    invoke-direct {p0, p1, v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->buildRedirectRequest(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v0

    return-object v0

    .line 229
    :sswitch_6
    invoke-direct {p0, p1, v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->buildRedirectRequest(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_6
        0x12d -> :sswitch_6
        0x12e -> :sswitch_6
        0x12f -> :sswitch_6
        0x133 -> :sswitch_5
        0x134 -> :sswitch_5
        0x191 -> :sswitch_4
        0x197 -> :sswitch_3
        0x198 -> :sswitch_2
        0x1a5 -> :sswitch_1
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method private final isRecoverable(Ljava/io/IOException;Z)Z
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestSendStarted"    # Z

    .line 168
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 169
    return v1

    .line 174
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 175
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 180
    :cond_2
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_3

    .line 184
    return v1

    .line 187
    :cond_3
    instance-of v0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_4

    .line 189
    return v1

    .line 194
    :cond_4
    return v2
.end method

.method private final recover(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;Z)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "call"    # Lokhttp3/internal/connection/RealCall;
    .param p3, "userRequest"    # Lokhttp3/Request;
    .param p4, "requestSendStarted"    # Z

    .line 145
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 148
    :cond_0
    if-eqz p4, :cond_1

    invoke-direct {p0, p1, p3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->requestIsOneShot(Ljava/io/IOException;Lokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 151
    :cond_1
    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 154
    :cond_2
    invoke-virtual {p2}, Lokhttp3/internal/connection/RealCall;->retryAfterFailure()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 157
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private final requestIsOneShot(Ljava/io/IOException;Lokhttp3/Request;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "userRequest"    # Lokhttp3/Request;

    .line 161
    invoke-virtual {p2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    .line 162
    .local v0, "requestBody":Lokhttp3/RequestBody;
    nop

    .line 163
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    :cond_0
    instance-of v1, p1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final retryAfter(Lokhttp3/Response;I)I
    .locals 4
    .param p1, "userResponse"    # Lokhttp3/Response;
    .param p2, "defaultDelay"    # I

    .line 334
    const-string v0, "Retry-After"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 338
    .local v0, "header":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "\\d+"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Integer.valueOf(header)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 341
    :cond_0
    const v1, 0x7fffffff

    return v1

    .line 334
    .end local v0    # "header":Ljava/lang/String;
    :cond_1
    return p2
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 14
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    move-object v0, p1

    check-cast v0, Lokhttp3/internal/http/RealInterceptorChain;

    .line 58
    .local v0, "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    move-object v1, p1

    check-cast v1, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v1}, Lokhttp3/internal/http/RealInterceptorChain;->getRequest$okhttp()Lokhttp3/Request;

    move-result-object v1

    .line 59
    .local v1, "request":Lokhttp3/Request;
    invoke-virtual {v0}, Lokhttp3/internal/http/RealInterceptorChain;->getCall$okhttp()Lokhttp3/internal/connection/RealCall;

    move-result-object v2

    .line 60
    .local v2, "call":Lokhttp3/internal/connection/RealCall;
    const/4 v3, 0x0

    .line 61
    .local v3, "followUpCount":I
    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Lokhttp3/Response;

    .line 62
    .local v5, "priorResponse":Lokhttp3/Response;
    const/4 v6, 0x1

    .line 63
    .local v6, "newExchangeFinder":Z
    :goto_0
    nop

    .line 64
    invoke-virtual {v2, v1, v6}, Lokhttp3/internal/connection/RealCall;->enterNetworkInterceptorExchange(Lokhttp3/Request;Z)V

    .line 66
    const/4 v7, 0x0

    .line 67
    .local v7, "response":Lokhttp3/Response;
    const/4 v8, 0x1

    .line 68
    .local v8, "closeActiveExchange":Z
    nop

    .line 69
    :try_start_0
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealCall;->isCanceled()Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_9

    .line 73
    nop

    .line 74
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v9
    :try_end_1
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v9

    .line 75
    const/4 v6, 0x1

    .line 90
    nop

    .line 93
    if-eqz v5, :cond_0

    .line 94
    nop

    .line 98
    nop

    .line 94
    nop

    .line 95
    nop

    .line 94
    :try_start_2
    invoke-virtual {v7}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v9

    .line 95
    nop

    .line 97
    nop

    .line 95
    nop

    .line 96
    nop

    .line 95
    invoke-virtual {v5}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v10

    .line 96
    invoke-virtual {v10, v4}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v10

    .line 97
    invoke-virtual {v10}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v10

    .line 95
    invoke-virtual {v9, v10}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 98
    invoke-virtual {v9}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v9

    move-object v7, v9

    .line 101
    :cond_0
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealCall;->getInterceptorScopedExchange$okhttp()Lokhttp3/internal/connection/Exchange;

    move-result-object v9

    .line 102
    .local v9, "exchange":Lokhttp3/internal/connection/Exchange;
    invoke-direct {p0, v7, v9}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Request;

    move-result-object v10

    .line 104
    .local v10, "followUp":Lokhttp3/Request;
    if-nez v10, :cond_2

    .line 105
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lokhttp3/internal/connection/Exchange;->isDuplex$okhttp()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealCall;->timeoutEarlyExit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :cond_1
    const/4 v4, 0x0

    .line 109
    .end local v8    # "closeActiveExchange":Z
    .local v4, "closeActiveExchange":Z
    nop

    .line 127
    invoke-virtual {v2, v4}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    return-object v7

    .line 112
    .end local v4    # "closeActiveExchange":Z
    .restart local v8    # "closeActiveExchange":Z
    :cond_2
    :try_start_3
    invoke-virtual {v10}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v11

    .line 113
    .local v11, "followUpBody":Lokhttp3/RequestBody;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_3

    .line 114
    const/4 v4, 0x0

    .line 115
    .end local v8    # "closeActiveExchange":Z
    .restart local v4    # "closeActiveExchange":Z
    nop

    .line 127
    invoke-virtual {v2, v4}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    return-object v7

    .line 118
    .end local v4    # "closeActiveExchange":Z
    .restart local v8    # "closeActiveExchange":Z
    :cond_3
    :try_start_4
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v12

    if-eqz v12, :cond_4

    check-cast v12, Ljava/io/Closeable;

    invoke-static {v12}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :cond_4
    add-int/lit8 v3, v3, 0x1

    const/16 v12, 0x14

    if-gt v3, v12, :cond_5

    .line 124
    move-object v1, v10

    .line 125
    move-object v5, v7

    .line 127
    .end local v9    # "exchange":Lokhttp3/internal/connection/Exchange;
    .end local v10    # "followUp":Lokhttp3/Request;
    .end local v11    # "followUpBody":Lokhttp3/RequestBody;
    invoke-virtual {v2, v8}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    .line 128
    nop

    .end local v7    # "response":Lokhttp3/Response;
    .end local v8    # "closeActiveExchange":Z
    nop

    .line 63
    goto :goto_0

    .line 121
    .restart local v7    # "response":Lokhttp3/Response;
    .restart local v8    # "closeActiveExchange":Z
    .restart local v9    # "exchange":Lokhttp3/internal/connection/Exchange;
    .restart local v10    # "followUp":Lokhttp3/Request;
    .restart local v11    # "followUpBody":Lokhttp3/RequestBody;
    :cond_5
    :try_start_5
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Too many follow-up requests: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    .end local v0    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .end local v1    # "request":Lokhttp3/Request;
    .end local v2    # "call":Lokhttp3/internal/connection/RealCall;
    .end local v3    # "followUpCount":I
    .end local v5    # "priorResponse":Lokhttp3/Response;
    .end local v6    # "newExchangeFinder":Z
    .end local v7    # "response":Lokhttp3/Response;
    .end local v8    # "closeActiveExchange":Z
    .end local p1    # "chain":Lokhttp3/Interceptor$Chain;
    throw v4

    .line 83
    .end local v9    # "exchange":Lokhttp3/internal/connection/Exchange;
    .end local v10    # "followUp":Lokhttp3/Request;
    .end local v11    # "followUpBody":Lokhttp3/RequestBody;
    .restart local v0    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v1    # "request":Lokhttp3/Request;
    .restart local v2    # "call":Lokhttp3/internal/connection/RealCall;
    .restart local v3    # "followUpCount":I
    .restart local v5    # "priorResponse":Lokhttp3/Response;
    .restart local v6    # "newExchangeFinder":Z
    .restart local v7    # "response":Lokhttp3/Response;
    .restart local v8    # "closeActiveExchange":Z
    .restart local p1    # "chain":Lokhttp3/Interceptor$Chain;
    :catch_0
    move-exception v10

    .line 85
    .local v10, "e":Ljava/io/IOException;
    instance-of v11, v10, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v11, :cond_6

    const/4 v9, 0x1

    :cond_6
    invoke-direct {p0, v10, v2, v1, v9}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;Z)Z

    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v9, :cond_7

    .line 88
    const/4 v6, 0x0

    .line 89
    nop

    .line 127
    invoke-virtual {v2, v8}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    goto/16 :goto_0

    .line 86
    :cond_7
    :try_start_6
    move-object v4, v10

    check-cast v4, Ljava/lang/Throwable;

    .end local v0    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .end local v1    # "request":Lokhttp3/Request;
    .end local v2    # "call":Lokhttp3/internal/connection/RealCall;
    .end local v3    # "followUpCount":I
    .end local v5    # "priorResponse":Lokhttp3/Response;
    .end local v6    # "newExchangeFinder":Z
    .end local v7    # "response":Lokhttp3/Response;
    .end local v8    # "closeActiveExchange":Z
    .end local p1    # "chain":Lokhttp3/Interceptor$Chain;
    throw v4

    .line 76
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v0    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v1    # "request":Lokhttp3/Request;
    .restart local v2    # "call":Lokhttp3/internal/connection/RealCall;
    .restart local v3    # "followUpCount":I
    .restart local v5    # "priorResponse":Lokhttp3/Response;
    .restart local v6    # "newExchangeFinder":Z
    .restart local v7    # "response":Lokhttp3/Response;
    .restart local v8    # "closeActiveExchange":Z
    .restart local p1    # "chain":Lokhttp3/Interceptor$Chain;
    :catch_1
    move-exception v10

    .line 78
    .local v10, "e":Lokhttp3/internal/connection/RouteException;
    invoke-virtual {v10}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v11

    invoke-direct {p0, v11, v2, v1, v9}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;Z)Z

    move-result v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v9, :cond_8

    .line 81
    const/4 v6, 0x0

    .line 82
    nop

    .line 127
    invoke-virtual {v2, v8}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    goto/16 :goto_0

    .line 79
    :cond_8
    :try_start_7
    invoke-virtual {v10}, Lokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .end local v0    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .end local v1    # "request":Lokhttp3/Request;
    .end local v2    # "call":Lokhttp3/internal/connection/RealCall;
    .end local v3    # "followUpCount":I
    .end local v5    # "priorResponse":Lokhttp3/Response;
    .end local v6    # "newExchangeFinder":Z
    .end local v7    # "response":Lokhttp3/Response;
    .end local v8    # "closeActiveExchange":Z
    .end local p1    # "chain":Lokhttp3/Interceptor$Chain;
    throw v4

    .line 70
    .end local v10    # "e":Lokhttp3/internal/connection/RouteException;
    .restart local v0    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v1    # "request":Lokhttp3/Request;
    .restart local v2    # "call":Lokhttp3/internal/connection/RealCall;
    .restart local v3    # "followUpCount":I
    .restart local v5    # "priorResponse":Lokhttp3/Response;
    .restart local v6    # "newExchangeFinder":Z
    .restart local v7    # "response":Lokhttp3/Response;
    .restart local v8    # "closeActiveExchange":Z
    .restart local p1    # "chain":Lokhttp3/Interceptor$Chain;
    :cond_9
    new-instance v4, Ljava/io/IOException;

    const-string v9, "Canceled"

    invoke-direct {v4, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    .end local v0    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .end local v1    # "request":Lokhttp3/Request;
    .end local v2    # "call":Lokhttp3/internal/connection/RealCall;
    .end local v3    # "followUpCount":I
    .end local v5    # "priorResponse":Lokhttp3/Response;
    .end local v6    # "newExchangeFinder":Z
    .end local v7    # "response":Lokhttp3/Response;
    .end local v8    # "closeActiveExchange":Z
    .end local p1    # "chain":Lokhttp3/Interceptor$Chain;
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 128
    .restart local v0    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v1    # "request":Lokhttp3/Request;
    .restart local v2    # "call":Lokhttp3/internal/connection/RealCall;
    .restart local v3    # "followUpCount":I
    .restart local v5    # "priorResponse":Lokhttp3/Response;
    .restart local v6    # "newExchangeFinder":Z
    .restart local v7    # "response":Lokhttp3/Response;
    .restart local v8    # "closeActiveExchange":Z
    .restart local p1    # "chain":Lokhttp3/Interceptor$Chain;
    :catchall_0
    move-exception v4

    .line 127
    invoke-virtual {v2, v8}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    throw v4
.end method
