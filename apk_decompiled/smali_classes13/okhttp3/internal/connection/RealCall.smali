.class public final Lokhttp3/internal/connection/RealCall;
.super Ljava/lang/Object;
.source "RealCall.kt"

# interfaces
.implements Lokhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/RealCall$AsyncCall;,
        Lokhttp3/internal/connection/RealCall$CallReference;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall\n+ 2 Util.kt\nokhttp3/internal/Util\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,536:1\n573#2,4:537\n573#2,4:541\n300#3,7:545\n*E\n*S KotlinDebug\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall\n*L\n258#1,4:537\n361#1,4:541\n363#1,7:545\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u009d\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001)\u0018\u00002\u00020\u0001:\u0002`aB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010,\u001a\u00020-2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010.\u001a\u00020-H\u0002J\u0008\u0010/\u001a\u00020-H\u0016J\u0008\u00100\u001a\u00020\u0000H\u0016J\u0010\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0002J\u0010\u00105\u001a\u00020-2\u0006\u00106\u001a\u000207H\u0016J\u0016\u00108\u001a\u00020-2\u0006\u00109\u001a\u00020\u00052\u0006\u0010:\u001a\u00020\u0007J\u0008\u0010;\u001a\u00020<H\u0016J\u0015\u0010=\u001a\u00020-2\u0006\u0010>\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008?J\r\u0010@\u001a\u00020<H\u0000\u00a2\u0006\u0002\u0008AJ\u0015\u0010B\u001a\u00020\u00192\u0006\u0010C\u001a\u00020DH\u0000\u00a2\u0006\u0002\u0008EJ\u0008\u0010F\u001a\u00020\u0007H\u0016J\u0008\u0010G\u001a\u00020\u0007H\u0016J)\u0010H\u001a\u0002HI\"\n\u0008\u0000\u0010I*\u0004\u0018\u00010J2\u0006\u0010K\u001a\u0002HI2\u0006\u0010L\u001a\u00020\u0007H\u0002\u00a2\u0006\u0002\u0010MJ;\u0010N\u001a\u0002HI\"\n\u0008\u0000\u0010I*\u0004\u0018\u00010J2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010O\u001a\u00020\u00072\u0006\u0010P\u001a\u00020\u00072\u0006\u0010K\u001a\u0002HIH\u0000\u00a2\u0006\u0004\u0008Q\u0010RJ\u0019\u0010%\u001a\u0004\u0018\u00010J2\u0008\u0010K\u001a\u0004\u0018\u00010JH\u0000\u00a2\u0006\u0002\u0008SJ\r\u0010T\u001a\u00020UH\u0000\u00a2\u0006\u0002\u0008VJ\u000f\u0010W\u001a\u0004\u0018\u00010XH\u0000\u00a2\u0006\u0002\u0008YJ\u0008\u00109\u001a\u00020\u0005H\u0016J\u0006\u0010Z\u001a\u00020\u0007J\u0008\u0010(\u001a\u00020[H\u0016J\u0006\u0010+\u001a\u00020-J!\u0010\\\u001a\u0002HI\"\n\u0008\u0000\u0010I*\u0004\u0018\u00010J2\u0006\u0010]\u001a\u0002HIH\u0002\u00a2\u0006\u0002\u0010^J\u0008\u0010_\u001a\u00020UH\u0002R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\"\u0010\"\u001a\u0004\u0018\u00010\u00192\u0008\u0010!\u001a\u0004\u0018\u00010\u0019@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u000e\u0010%\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0010\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010*R\u000e\u0010+\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006b"
    }
    d2 = {
        "Lokhttp3/internal/connection/RealCall;",
        "Lokhttp3/Call;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "originalRequest",
        "Lokhttp3/Request;",
        "forWebSocket",
        "",
        "(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V",
        "callStackTrace",
        "",
        "canceled",
        "getClient",
        "()Lokhttp3/OkHttpClient;",
        "connection",
        "Lokhttp3/internal/connection/RealConnection;",
        "getConnection",
        "()Lokhttp3/internal/connection/RealConnection;",
        "setConnection",
        "(Lokhttp3/internal/connection/RealConnection;)V",
        "connectionPool",
        "Lokhttp3/internal/connection/RealConnectionPool;",
        "eventListener",
        "Lokhttp3/EventListener;",
        "exchange",
        "Lokhttp3/internal/connection/Exchange;",
        "exchangeFinder",
        "Lokhttp3/internal/connection/ExchangeFinder;",
        "exchangeRequestDone",
        "exchangeResponseDone",
        "executed",
        "getForWebSocket",
        "()Z",
        "<set-?>",
        "interceptorScopedExchange",
        "getInterceptorScopedExchange$okhttp",
        "()Lokhttp3/internal/connection/Exchange;",
        "noMoreExchanges",
        "getOriginalRequest",
        "()Lokhttp3/Request;",
        "timeout",
        "okhttp3/internal/connection/RealCall$timeout$1",
        "Lokhttp3/internal/connection/RealCall$timeout$1;",
        "timeoutEarlyExit",
        "acquireConnectionNoEvents",
        "",
        "callStart",
        "cancel",
        "clone",
        "createAddress",
        "Lokhttp3/Address;",
        "url",
        "Lokhttp3/HttpUrl;",
        "enqueue",
        "responseCallback",
        "Lokhttp3/Callback;",
        "enterNetworkInterceptorExchange",
        "request",
        "newExchangeFinder",
        "execute",
        "Lokhttp3/Response;",
        "exitNetworkInterceptorExchange",
        "closeExchange",
        "exitNetworkInterceptorExchange$okhttp",
        "getResponseWithInterceptorChain",
        "getResponseWithInterceptorChain$okhttp",
        "initExchange",
        "chain",
        "Lokhttp3/internal/http/RealInterceptorChain;",
        "initExchange$okhttp",
        "isCanceled",
        "isExecuted",
        "maybeReleaseConnection",
        "E",
        "Ljava/io/IOException;",
        "e",
        "force",
        "(Ljava/io/IOException;Z)Ljava/io/IOException;",
        "messageDone",
        "requestDone",
        "responseDone",
        "messageDone$okhttp",
        "(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;",
        "noMoreExchanges$okhttp",
        "redactedUrl",
        "",
        "redactedUrl$okhttp",
        "releaseConnectionNoEvents",
        "Ljava/net/Socket;",
        "releaseConnectionNoEvents$okhttp",
        "retryAfterFailure",
        "Lokio/AsyncTimeout;",
        "timeoutExit",
        "cause",
        "(Ljava/io/IOException;)Ljava/io/IOException;",
        "toLoggableString",
        "AsyncCall",
        "CallReference",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private callStackTrace:Ljava/lang/Object;

.field private canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field private connection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

.field private final eventListener:Lokhttp3/EventListener;

.field private exchange:Lokhttp3/internal/connection/Exchange;

.field private exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

.field private exchangeRequestDone:Z

.field private exchangeResponseDone:Z

.field private executed:Z

.field private final forWebSocket:Z

.field private interceptorScopedExchange:Lokhttp3/internal/connection/Exchange;

.field private noMoreExchanges:Z

.field private final originalRequest:Lokhttp3/Request;

.field private final timeout:Lokhttp3/internal/connection/RealCall$timeout$1;

.field private timeoutEarlyExit:Z


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V
    .locals 6
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "originalRequest"    # Lokhttp3/Request;
    .param p3, "forWebSocket"    # Z

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Lokhttp3/internal/connection/RealCall;->originalRequest:Lokhttp3/Request;

    iput-boolean p3, p0, Lokhttp3/internal/connection/RealCall;->forWebSocket:Z

    .line 66
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->getDelegate$okhttp()Lokhttp3/internal/connection/RealConnectionPool;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/RealCall;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 68
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->eventListenerFactory()Lokhttp3/EventListener$Factory;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lokhttp3/Call;

    invoke-interface {v0, v1}, Lokhttp3/EventListener$Factory;->create(Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 70
    nop

    .line 74
    nop

    .line 70
    new-instance v0, Lokhttp3/internal/connection/RealCall$timeout$1;

    invoke-direct {v0, p0}, Lokhttp3/internal/connection/RealCall$timeout$1;-><init>(Lokhttp3/internal/connection/RealCall;)V

    .line 74
    move-object v1, v0

    .local v1, "$this$apply":Lokhttp3/internal/connection/RealCall$timeout$1;
    const/4 v2, 0x0

    .line 75
    .local v2, "$i$a$-apply-RealCall$timeout$2":I
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->callTimeoutMillis()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Lokhttp3/internal/connection/RealCall$timeout$1;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 76
    .end local v1    # "$this$apply":Lokhttp3/internal/connection/RealCall$timeout$1;
    .end local v2    # "$i$a$-apply-RealCall$timeout$2":I
    nop

    .line 74
    iput-object v0, p0, Lokhttp3/internal/connection/RealCall;->timeout:Lokhttp3/internal/connection/RealCall$timeout$1;

    return-void
.end method

.method public static final synthetic access$getTimeout$p(Lokhttp3/internal/connection/RealCall;)Lokhttp3/internal/connection/RealCall$timeout$1;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/connection/RealCall;

    .line 60
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->timeout:Lokhttp3/internal/connection/RealCall$timeout$1;

    return-object v0
.end method

.method public static final synthetic access$toLoggableString(Lokhttp3/internal/connection/RealCall;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/connection/RealCall;

    .line 60
    invoke-direct {p0}, Lokhttp3/internal/connection/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final callStart()V
    .locals 2

    .line 166
    sget-object v0, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lokhttp3/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/RealCall;->callStackTrace:Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    move-object v1, p0

    check-cast v1, Lokhttp3/Call;

    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    .line 168
    return-void
.end method

.method private final createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;
    .locals 18
    .param p1, "url"    # Lokhttp3/HttpUrl;

    .line 416
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/SSLSocketFactory;

    .line 417
    .local v2, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    move-object v3, v1

    check-cast v3, Ljavax/net/ssl/HostnameVerifier;

    .line 418
    .local v3, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    check-cast v1, Lokhttp3/CertificatePinner;

    .line 419
    .local v1, "certificatePinner":Lokhttp3/CertificatePinner;
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 420
    iget-object v4, v0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 421
    iget-object v4, v0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    .line 422
    iget-object v4, v0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v1

    .line 425
    :cond_0
    new-instance v17, Lokhttp3/Address;

    .line 426
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    .line 427
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->port()I

    move-result v6

    .line 428
    iget-object v4, v0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v7

    .line 429
    iget-object v4, v0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v8

    .line 430
    nop

    .line 431
    nop

    .line 432
    nop

    .line 433
    iget-object v4, v0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v12

    .line 434
    iget-object v4, v0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v13

    .line 435
    iget-object v4, v0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v14

    .line 436
    iget-object v4, v0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v15

    .line 437
    iget-object v4, v0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v16

    .line 425
    move-object/from16 v4, v17

    move-object v9, v2

    move-object v10, v3

    move-object v11, v1

    invoke-direct/range {v4 .. v16}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v17
.end method

.method private final maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;
    .locals 10
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;Z)TE;"
        }
    .end annotation

    .line 323
    move-object v0, p1

    .line 324
    .local v0, "result":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 325
    .local v1, "socket":Ljava/net/Socket;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 326
    .local v2, "releasedConnection":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v3, 0x0

    .line 327
    .local v3, "callEnd":Z
    iget-object v4, p0, Lokhttp3/internal/connection/RealCall;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v4

    const/4 v5, 0x0

    .line 328
    .local v5, "$i$a$-synchronized-RealCall$maybeReleaseConnection$1":I
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v8, p0, Lokhttp3/internal/connection/RealCall;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 327
    .end local v5    # "$i$a$-synchronized-RealCall$maybeReleaseConnection$1":I
    :catchall_0
    move-exception v5

    goto/16 :goto_5

    .line 328
    .restart local v5    # "$i$a$-synchronized-RealCall$maybeReleaseConnection$1":I
    :cond_1
    :goto_0
    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_d

    .line 329
    iget-object v8, p0, Lokhttp3/internal/connection/RealCall;->connection:Lokhttp3/internal/connection/RealConnection;

    check-cast v8, Lokhttp3/Connection;

    iput-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 330
    iget-object v8, p0, Lokhttp3/internal/connection/RealCall;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    iget-object v8, p0, Lokhttp3/internal/connection/RealCall;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v8, :cond_3

    if-nez p2, :cond_2

    iget-boolean v8, p0, Lokhttp3/internal/connection/RealCall;->noMoreExchanges:Z

    if-eqz v8, :cond_3

    .line 331
    :cond_2
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->releaseConnectionNoEvents$okhttp()Ljava/net/Socket;

    move-result-object v8

    goto :goto_2

    .line 333
    :cond_3
    move-object v8, v9

    .line 330
    :goto_2
    move-object v1, v8

    .line 335
    iget-object v8, p0, Lokhttp3/internal/connection/RealCall;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v8, :cond_4

    check-cast v9, Lokhttp3/Connection;

    iput-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 336
    :cond_4
    iget-boolean v8, p0, Lokhttp3/internal/connection/RealCall;->noMoreExchanges:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lokhttp3/internal/connection/RealCall;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    move v3, v8

    .line 337
    .end local v5    # "$i$a$-synchronized-RealCall$maybeReleaseConnection$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit v4

    .line 338
    if-eqz v1, :cond_6

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 340
    :cond_6
    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lokhttp3/Connection;

    if-eqz v4, :cond_8

    .line 341
    iget-object v4, p0, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    move-object v5, p0

    check-cast v5, Lokhttp3/Call;

    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lokhttp3/Connection;

    if-nez v8, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v4, v5, v8}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 344
    :cond_8
    if-eqz v3, :cond_c

    .line 345
    if-eqz v0, :cond_9

    const/4 v6, 0x1

    :cond_9
    move v4, v6

    .line 346
    .local v4, "callFailed":Z
    invoke-direct {p0, v0}, Lokhttp3/internal/connection/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 347
    if-eqz v4, :cond_b

    .line 348
    iget-object v5, p0, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    move-object v6, p0

    check-cast v6, Lokhttp3/Call;

    if-nez v0, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-virtual {v5, v6, v0}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_4

    .line 350
    :cond_b
    iget-object v5, p0, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    move-object v6, p0

    check-cast v6, Lokhttp3/Call;

    invoke-virtual {v5, v6}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    .line 351
    .end local v4    # "callFailed":Z
    :cond_c
    :goto_4
    nop

    .line 353
    return-object v0

    .line 328
    .restart local v5    # "$i$a$-synchronized-RealCall$maybeReleaseConnection$1":I
    :cond_d
    const/4 v6, 0x0

    .local v6, "$i$a$-check-RealCall$maybeReleaseConnection$1$1":I
    :try_start_1
    const-string v7, "cannot release connection while it is in use"

    .end local v6    # "$i$a$-check-RealCall$maybeReleaseConnection$1$1":I
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    .end local v0    # "result":Ljava/io/IOException;
    .end local v1    # "socket":Ljava/net/Socket;
    .end local v2    # "releasedConnection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v3    # "callEnd":Z
    .end local p1    # "e":Ljava/io/IOException;
    .end local p2    # "force":Z
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    .end local v5    # "$i$a$-synchronized-RealCall$maybeReleaseConnection$1":I
    .restart local v0    # "result":Ljava/io/IOException;
    .restart local v1    # "socket":Ljava/net/Socket;
    .restart local v2    # "releasedConnection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v3    # "callEnd":Z
    .restart local p1    # "e":Ljava/io/IOException;
    .restart local p2    # "force":Z
    :goto_5
    monitor-exit v4

    throw v5
.end method

.method private final timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1, "cause"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 381
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->timeoutEarlyExit:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 382
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->timeout:Lokhttp3/internal/connection/RealCall$timeout$1;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall$timeout$1;->exit()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 384
    :cond_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 386
    :cond_2
    nop

    .line 387
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    return-object v1
.end method

.method private final toLoggableString()Ljava/lang/String;
    .locals 2

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-boolean v1, p0, Lokhttp3/internal/connection/RealCall;->forWebSocket:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->redactedUrl$okhttp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final acquireConnectionNoEvents(Lokhttp3/internal/connection/RealConnection;)V
    .locals 6
    .param p1, "connection"    # Lokhttp3/internal/connection/RealConnection;

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .local v0, "$this$assertThreadHoldsLock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 537
    .local v1, "$i$f$assertThreadHoldsLock":I
    sget-boolean v2, Lokhttp3/internal/Util;->assertionsEnabled:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 538
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v5, "Thread.currentThread()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " MUST hold lock on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 540
    :cond_1
    :goto_0
    nop

    .line 260
    .end local v0    # "$this$assertThreadHoldsLock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$assertThreadHoldsLock":I
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 261
    iput-object p1, p0, Lokhttp3/internal/connection/RealCall;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 262
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->getCalls()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/connection/RealCall$CallReference;

    iget-object v2, p0, Lokhttp3/internal/connection/RealCall;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lokhttp3/internal/connection/RealCall$CallReference;-><init>(Lokhttp3/internal/connection/RealCall;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    return-void

    .line 260
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public cancel()V
    .locals 5

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "exchangeToCancel":Lokhttp3/internal/connection/Exchange;
    const/4 v1, 0x0

    .line 123
    .local v1, "connectionToCancel":Lokhttp3/internal/connection/RealConnection;
    iget-object v2, p0, Lokhttp3/internal/connection/RealCall;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v2

    const/4 v3, 0x0

    .line 124
    .local v3, "$i$a$-synchronized-RealCall$cancel$1":I
    :try_start_0
    iget-boolean v4, p0, Lokhttp3/internal/connection/RealCall;->canceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .end local v3    # "$i$a$-synchronized-RealCall$cancel$1":I
    monitor-exit v2

    return-void

    .line 125
    .restart local v3    # "$i$a$-synchronized-RealCall$cancel$1":I
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lokhttp3/internal/connection/RealCall;->canceled:Z

    .line 126
    iget-object v4, p0, Lokhttp3/internal/connection/RealCall;->exchange:Lokhttp3/internal/connection/Exchange;

    move-object v0, v4

    .line 127
    iget-object v4, p0, Lokhttp3/internal/connection/RealCall;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lokhttp3/internal/connection/RealCall;->connection:Lokhttp3/internal/connection/RealConnection;

    :goto_0
    move-object v1, v4

    .line 128
    .end local v3    # "$i$a$-synchronized-RealCall$cancel$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    monitor-exit v2

    .line 129
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->cancel()V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    .line 130
    :cond_3
    :goto_1
    iget-object v2, p0, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    move-object v3, p0

    check-cast v3, Lokhttp3/Call;

    invoke-virtual {v2, v3}, Lokhttp3/EventListener;->canceled(Lokhttp3/Call;)V

    .line 131
    return-void

    .line 123
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->clone()Lokhttp3/internal/connection/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lokhttp3/Call;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->clone()Lokhttp3/internal/connection/RealCall;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    return-object v0
.end method

.method public clone()Lokhttp3/internal/connection/RealCall;
    .locals 4

    .line 107
    new-instance v0, Lokhttp3/internal/connection/RealCall;

    iget-object v1, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    iget-object v2, p0, Lokhttp3/internal/connection/RealCall;->originalRequest:Lokhttp3/Request;

    iget-boolean v3, p0, Lokhttp3/internal/connection/RealCall;->forWebSocket:Z

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    return-object v0
.end method

.method public enqueue(Lokhttp3/Callback;)V
    .locals 3
    .param p1, "responseCallback"    # Lokhttp3/Callback;

    const-string v0, "responseCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    monitor-enter p0

    const/4 v0, 0x0

    .line 156
    .local v0, "$i$a$-synchronized-RealCall$enqueue$1":I
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/connection/RealCall;->executed:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 157
    iput-boolean v2, p0, Lokhttp3/internal/connection/RealCall;->executed:Z

    .line 158
    .end local v0    # "$i$a$-synchronized-RealCall$enqueue$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    .line 159
    invoke-direct {p0}, Lokhttp3/internal/connection/RealCall;->callStart()V

    .line 160
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/connection/RealCall$AsyncCall;

    invoke-direct {v1, p0, p1}, Lokhttp3/internal/connection/RealCall$AsyncCall;-><init>(Lokhttp3/internal/connection/RealCall;Lokhttp3/Callback;)V

    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->enqueue$okhttp(Lokhttp3/internal/connection/RealCall$AsyncCall;)V

    .line 161
    return-void

    .line 156
    .restart local v0    # "$i$a$-synchronized-RealCall$enqueue$1":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "$i$a$-check-RealCall$enqueue$1$1":I
    :try_start_1
    const-string v2, "Already Executed"

    .end local v1    # "$i$a$-check-RealCall$enqueue$1$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    .end local p1    # "responseCallback":Lokhttp3/Callback;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .end local v0    # "$i$a$-synchronized-RealCall$enqueue$1":I
    .restart local p1    # "responseCallback":Lokhttp3/Callback;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final enterNetworkInterceptorExchange(Lokhttp3/Request;Z)V
    .locals 4
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "newExchangeFinder"    # Z

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->interceptorScopedExchange:Lokhttp3/internal/connection/Exchange;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 223
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 228
    if-eqz p2, :cond_2

    .line 229
    new-instance v0, Lokhttp3/internal/connection/ExchangeFinder;

    .line 230
    iget-object v1, p0, Lokhttp3/internal/connection/RealCall;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 231
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-direct {p0, v2}, Lokhttp3/internal/connection/RealCall;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v2

    .line 232
    nop

    .line 233
    iget-object v3, p0, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 229
    invoke-direct {v0, v1, v2, p0, v3}, Lokhttp3/internal/connection/ExchangeFinder;-><init>(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener;)V

    iput-object v0, p0, Lokhttp3/internal/connection/RealCall;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    .line 236
    :cond_2
    return-void

    .line 223
    :cond_3
    const/4 v0, 0x0

    .line 224
    .local v0, "$i$a$-check-RealCall$enterNetworkInterceptorExchange$1":I
    nop

    .line 225
    nop

    .line 223
    .end local v0    # "$i$a$-check-RealCall$enterNetworkInterceptorExchange$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot make a new request because the previous response is still open: please call response.close()"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 222
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public execute()Lokhttp3/Response;
    .locals 3

    .line 140
    monitor-enter p0

    const/4 v0, 0x0

    .line 141
    .local v0, "$i$a$-synchronized-RealCall$execute$1":I
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/connection/RealCall;->executed:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 142
    iput-boolean v2, p0, Lokhttp3/internal/connection/RealCall;->executed:Z

    .line 143
    .end local v0    # "$i$a$-synchronized-RealCall$execute$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    monitor-exit p0

    .line 144
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->timeout:Lokhttp3/internal/connection/RealCall$timeout$1;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall$timeout$1;->enter()V

    .line 145
    invoke-direct {p0}, Lokhttp3/internal/connection/RealCall;->callStart()V

    .line 146
    nop

    .line 147
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/Dispatcher;->executed$okhttp(Lokhttp3/internal/connection/RealCall;)V

    .line 148
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->getResponseWithInterceptorChain$okhttp()Lokhttp3/Response;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    iget-object v1, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished$okhttp(Lokhttp3/internal/connection/RealCall;)V

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    .line 150
    iget-object v1, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished$okhttp(Lokhttp3/internal/connection/RealCall;)V

    throw v0

    .line 141
    .restart local v0    # "$i$a$-synchronized-RealCall$execute$1":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "$i$a$-check-RealCall$execute$1$1":I
    :try_start_2
    const-string v2, "Already Executed"

    .end local v1    # "$i$a$-check-RealCall$execute$1$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    .end local v0    # "$i$a$-synchronized-RealCall$execute$1":I
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final exitNetworkInterceptorExchange$okhttp(Z)V
    .locals 2
    .param p1, "closeExchange"    # Z

    .line 405
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->noMoreExchanges:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 407
    if-eqz p1, :cond_3

    .line 408
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->exchange:Lokhttp3/internal/connection/Exchange;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->detachWithViolence()V

    .line 409
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 412
    :cond_3
    :goto_1
    const/4 v0, 0x0

    check-cast v0, Lokhttp3/internal/connection/Exchange;

    iput-object v0, p0, Lokhttp3/internal/connection/RealCall;->interceptorScopedExchange:Lokhttp3/internal/connection/Exchange;

    .line 413
    return-void

    .line 405
    :cond_4
    const/4 v0, 0x0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "released"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final getClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 61
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public final getConnection()Lokhttp3/internal/connection/RealConnection;
    .locals 1

    .line 85
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->connection:Lokhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public final getForWebSocket()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->forWebSocket:Z

    return v0
.end method

.method public final getInterceptorScopedExchange$okhttp()Lokhttp3/internal/connection/Exchange;
    .locals 1

    .line 101
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->interceptorScopedExchange:Lokhttp3/internal/connection/Exchange;

    return-object v0
.end method

.method public final getOriginalRequest()Lokhttp3/Request;
    .locals 1

    .line 63
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public final getResponseWithInterceptorChain$okhttp()Lokhttp3/Response;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 174
    .local v0, "interceptors":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 175
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    iget-object v3, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-direct {v2, v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 176
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lokhttp3/internal/http/BridgeInterceptor;

    iget-object v3, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v3

    invoke-direct {v2, v3}, Lokhttp3/internal/http/BridgeInterceptor;-><init>(Lokhttp3/CookieJar;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 177
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lokhttp3/internal/cache/CacheInterceptor;

    iget-object v3, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v3

    invoke-direct {v2, v3}, Lokhttp3/internal/cache/CacheInterceptor;-><init>(Lokhttp3/Cache;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 178
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    sget-object v2, Lokhttp3/internal/connection/ConnectInterceptor;->INSTANCE:Lokhttp3/internal/connection/ConnectInterceptor;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    iget-boolean v1, p0, Lokhttp3/internal/connection/RealCall;->forWebSocket:Z

    if-nez v1, :cond_0

    .line 180
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 182
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lokhttp3/internal/http/CallServerInterceptor;

    iget-boolean v3, p0, Lokhttp3/internal/connection/RealCall;->forWebSocket:Z

    invoke-direct {v2, v3}, Lokhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v10, Lokhttp3/internal/http/RealInterceptorChain;

    .line 185
    nop

    .line 186
    nop

    .line 187
    const/4 v4, 0x0

    .line 188
    const/4 v5, 0x0

    .line 189
    iget-object v6, p0, Lokhttp3/internal/connection/RealCall;->originalRequest:Lokhttp3/Request;

    .line 190
    iget-object v1, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v7

    .line 191
    iget-object v1, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v8

    .line 192
    iget-object v1, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v9

    .line 184
    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v9}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Lokhttp3/internal/connection/RealCall;Ljava/util/List;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;III)V

    .line 195
    .local v1, "chain":Lokhttp3/internal/http/RealInterceptorChain;
    const/4 v2, 0x0

    .line 196
    .local v2, "calledNoMoreExchanges":Z
    nop

    .line 197
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lokhttp3/internal/connection/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v1, v4}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v4

    .line 198
    .local v4, "response":Lokhttp3/Response;
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->isCanceled()Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 202
    nop

    .line 207
    nop

    .line 208
    invoke-virtual {p0, v3}, Lokhttp3/internal/connection/RealCall;->noMoreExchanges$okhttp(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v4

    .line 199
    :cond_1
    :try_start_1
    move-object v5, v4

    check-cast v5, Ljava/io/Closeable;

    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 200
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Canceled"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    .end local v0    # "interceptors":Ljava/util/List;
    .end local v1    # "chain":Lokhttp3/internal/http/RealInterceptorChain;
    .end local v2    # "calledNoMoreExchanges":Z
    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .end local v4    # "response":Lokhttp3/Response;
    .restart local v0    # "interceptors":Ljava/util/List;
    .restart local v1    # "chain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v2    # "calledNoMoreExchanges":Z
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 203
    :catch_0
    move-exception v4

    .line 204
    .local v4, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    .line 205
    :try_start_2
    invoke-virtual {p0, v4}, Lokhttp3/internal/connection/RealCall;->noMoreExchanges$okhttp(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .end local v0    # "interceptors":Ljava/util/List;
    .end local v1    # "chain":Lokhttp3/internal/http/RealInterceptorChain;
    .end local v2    # "calledNoMoreExchanges":Z
    :goto_0
    throw v5

    .restart local v0    # "interceptors":Ljava/util/List;
    .restart local v1    # "chain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v2    # "calledNoMoreExchanges":Z
    :cond_2
    check-cast v5, Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 207
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    if-nez v2, :cond_3

    .line 208
    invoke-virtual {p0, v3}, Lokhttp3/internal/connection/RealCall;->noMoreExchanges$okhttp(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_3
    throw v4
.end method

.method public final initExchange$okhttp(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/internal/connection/Exchange;
    .locals 5
    .param p1, "chain"    # Lokhttp3/internal/http/RealInterceptorChain;

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    const/4 v1, 0x0

    .line 241
    .local v1, "$i$a$-synchronized-RealCall$initExchange$1":I
    :try_start_0
    iget-boolean v2, p0, Lokhttp3/internal/connection/RealCall;->noMoreExchanges:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_4

    .line 242
    iget-object v2, p0, Lokhttp3/internal/connection/RealCall;->exchange:Lokhttp3/internal/connection/Exchange;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 243
    .end local v1    # "$i$a$-synchronized-RealCall$initExchange$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 240
    monitor-exit v0

    .line 245
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v1, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/connection/ExchangeFinder;->find(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/internal/http/ExchangeCodec;

    move-result-object v0

    .line 246
    .local v0, "codec":Lokhttp3/internal/http/ExchangeCodec;
    new-instance v1, Lokhttp3/internal/connection/Exchange;

    iget-object v2, p0, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    iget-object v3, p0, Lokhttp3/internal/connection/RealCall;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-direct {v1, p0, v2, v3, v0}, Lokhttp3/internal/connection/Exchange;-><init>(Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V

    .line 247
    .local v1, "result":Lokhttp3/internal/connection/Exchange;
    iput-object v1, p0, Lokhttp3/internal/connection/RealCall;->interceptorScopedExchange:Lokhttp3/internal/connection/Exchange;

    .line 249
    iget-object v2, p0, Lokhttp3/internal/connection/RealCall;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v2

    const/4 v3, 0x0

    .line 250
    .local v3, "$i$a$-synchronized-RealCall$initExchange$2":I
    :try_start_1
    iput-object v1, p0, Lokhttp3/internal/connection/RealCall;->exchange:Lokhttp3/internal/connection/Exchange;

    .line 251
    iput-boolean v4, p0, Lokhttp3/internal/connection/RealCall;->exchangeRequestDone:Z

    .line 252
    iput-boolean v4, p0, Lokhttp3/internal/connection/RealCall;->exchangeResponseDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    nop

    .end local v3    # "$i$a$-synchronized-RealCall$initExchange$2":I
    monitor-exit v2

    return-object v1

    .line 249
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 242
    .end local v0    # "codec":Lokhttp3/internal/http/ExchangeCodec;
    .local v1, "$i$a$-synchronized-RealCall$initExchange$1":I
    :cond_3
    :try_start_2
    const-string v2, "Check failed."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    .end local p1    # "chain":Lokhttp3/internal/http/RealInterceptorChain;
    throw v3

    .line 241
    .restart local p1    # "chain":Lokhttp3/internal/http/RealInterceptorChain;
    :cond_4
    const/4 v2, 0x0

    .local v2, "$i$a$-check-RealCall$initExchange$1$1":I
    const-string v3, "released"

    .end local v2    # "$i$a$-check-RealCall$initExchange$1$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    .end local p1    # "chain":Lokhttp3/internal/http/RealInterceptorChain;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    .end local v1    # "$i$a$-synchronized-RealCall$initExchange$1":I
    .restart local p1    # "chain":Lokhttp3/internal/http/RealInterceptorChain;
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isCanceled()Z
    .locals 3

    .line 134
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    const/4 v1, 0x0

    .line 135
    .local v1, "$i$a$-synchronized-RealCall$isCanceled$1":I
    :try_start_0
    iget-boolean v2, p0, Lokhttp3/internal/connection/RealCall;->canceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "$i$a$-synchronized-RealCall$isCanceled$1":I
    monitor-exit v0

    return v2

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    .line 163
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 163
    .end local p0    # "this":Lokhttp3/internal/connection/RealCall;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final messageDone$okhttp(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 8
    .param p1, "exchange"    # Lokhttp3/internal/connection/Exchange;
    .param p2, "requestDone"    # Z
    .param p3, "responseDone"    # Z
    .param p4, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(",
            "Lokhttp3/internal/connection/Exchange;",
            "ZZTE;)TE;"
        }
    .end annotation

    const-string v0, "exchange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    move-object v0, p4

    .line 280
    .local v0, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 281
    .local v1, "exchangeDone":Z
    iget-object v2, p0, Lokhttp3/internal/connection/RealCall;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v2

    const/4 v3, 0x0

    .line 282
    .local v3, "$i$a$-synchronized-RealCall$messageDone$1":I
    :try_start_0
    iget-object v4, p0, Lokhttp3/internal/connection/RealCall;->exchange:Lokhttp3/internal/connection/Exchange;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 283
    nop

    .end local v3    # "$i$a$-synchronized-RealCall$messageDone$1":I
    monitor-exit v2

    return-object v0

    .line 285
    .restart local v3    # "$i$a$-synchronized-RealCall$messageDone$1":I
    :cond_0
    const/4 v4, 0x0

    .line 286
    .local v4, "changed":Z
    if-eqz p2, :cond_2

    .line 287
    :try_start_1
    iget-boolean v6, p0, Lokhttp3/internal/connection/RealCall;->exchangeRequestDone:Z

    if-nez v6, :cond_1

    const/4 v4, 0x1

    .line 288
    :cond_1
    iput-boolean v5, p0, Lokhttp3/internal/connection/RealCall;->exchangeRequestDone:Z

    .line 290
    :cond_2
    if-eqz p3, :cond_4

    .line 291
    iget-boolean v6, p0, Lokhttp3/internal/connection/RealCall;->exchangeResponseDone:Z

    if-nez v6, :cond_3

    const/4 v4, 0x1

    .line 292
    :cond_3
    iput-boolean v5, p0, Lokhttp3/internal/connection/RealCall;->exchangeResponseDone:Z

    .line 294
    :cond_4
    iget-boolean v6, p0, Lokhttp3/internal/connection/RealCall;->exchangeRequestDone:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lokhttp3/internal/connection/RealCall;->exchangeResponseDone:Z

    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    .line 295
    const/4 v1, 0x1

    .line 296
    iget-object v6, p0, Lokhttp3/internal/connection/RealCall;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v6, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v6}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/internal/connection/RealConnection;->getSuccessCount$okhttp()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Lokhttp3/internal/connection/RealConnection;->setSuccessCount$okhttp(I)V

    .line 297
    const/4 v5, 0x0

    check-cast v5, Lokhttp3/internal/connection/Exchange;

    iput-object v5, p0, Lokhttp3/internal/connection/RealCall;->exchange:Lokhttp3/internal/connection/Exchange;

    .line 299
    .end local v4    # "changed":Z
    :cond_6
    nop

    .end local v3    # "$i$a$-synchronized-RealCall$messageDone$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    monitor-exit v2

    .line 300
    if-eqz v1, :cond_7

    .line 301
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lokhttp3/internal/connection/RealCall;->maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;

    move-result-object v0

    .line 303
    :cond_7
    return-object v0

    .line 281
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public final noMoreExchanges$okhttp(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;

    .line 307
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    const/4 v1, 0x0

    .line 308
    .local v1, "$i$a$-synchronized-RealCall$noMoreExchanges$1":I
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lokhttp3/internal/connection/RealCall;->noMoreExchanges:Z

    .line 309
    .end local v1    # "$i$a$-synchronized-RealCall$noMoreExchanges$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit v0

    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/connection/RealCall;->maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;

    move-result-object v0

    return-object v0

    .line 307
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final redactedUrl$okhttp()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final releaseConnectionNoEvents$okhttp()Ljava/net/Socket;
    .locals 10

    .line 361
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .local v0, "$this$assertThreadHoldsLock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 541
    .local v1, "$i$f$assertThreadHoldsLock":I
    sget-boolean v2, Lokhttp3/internal/Util;->assertionsEnabled:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v5, "Thread.currentThread()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " MUST hold lock on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 544
    :cond_1
    :goto_0
    nop

    .line 363
    .end local v0    # "$this$assertThreadHoldsLock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$assertThreadHoldsLock":I
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->getCalls()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 545
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .line 546
    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 547
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Ljava/lang/ref/Reference;

    .local v6, "it":Ljava/lang/ref/Reference;
    const/4 v7, 0x0

    .line 363
    .local v7, "$i$a$-indexOfFirst-RealCall$releaseConnectionNoEvents$index$1":I
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lokhttp3/internal/connection/RealCall;

    move-object v9, p0

    check-cast v9, Lokhttp3/internal/connection/RealCall;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .end local v6    # "it":Ljava/lang/ref/Reference;
    .end local v7    # "$i$a$-indexOfFirst-RealCall$releaseConnectionNoEvents$index$1":I
    if-eqz v6, :cond_3

    .line 548
    goto :goto_2

    .line 549
    :cond_3
    nop

    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    .line 546
    goto :goto_1

    .line 551
    :cond_4
    const/4 v2, -0x1

    .line 363
    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfFirst":I
    .end local v2    # "index$iv":I
    :goto_2
    move v0, v2

    .line 364
    .local v0, "index":I
    if-eq v0, v5, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_8

    .line 366
    iget-object v1, p0, Lokhttp3/internal/connection/RealCall;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 367
    .local v1, "released":Lokhttp3/internal/connection/RealConnection;
    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->getCalls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 368
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lokhttp3/internal/connection/RealConnection;

    iput-object v3, p0, Lokhttp3/internal/connection/RealCall;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 370
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->getCalls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 371
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lokhttp3/internal/connection/RealConnection;->setIdleAtNs$okhttp(J)V

    .line 372
    iget-object v3, p0, Lokhttp3/internal/connection/RealCall;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v3, v1}, Lokhttp3/internal/connection/RealConnectionPool;->connectionBecameIdle(Lokhttp3/internal/connection/RealConnection;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 373
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v2

    return-object v2

    .line 377
    :cond_7
    return-object v2

    .line 364
    .end local v1    # "released":Lokhttp3/internal/connection/RealConnection;
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public request()Lokhttp3/Request;
    .locals 1

    .line 109
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public final retryAfterFailure()Z
    .locals 1

    .line 441
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/ExchangeFinder;->retryAfterFailure()Z

    move-result v0

    return v0
.end method

.method public final setConnection(Lokhttp3/internal/connection/RealConnection;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/internal/connection/RealConnection;

    .line 85
    iput-object p1, p0, Lokhttp3/internal/connection/RealCall;->connection:Lokhttp3/internal/connection/RealConnection;

    return-void
.end method

.method public timeout()Lokio/AsyncTimeout;
    .locals 1

    .line 104
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->timeout:Lokhttp3/internal/connection/RealCall$timeout$1;

    check-cast v0, Lokio/AsyncTimeout;

    return-object v0
.end method

.method public bridge synthetic timeout()Lokio/Timeout;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->timeout()Lokio/AsyncTimeout;

    move-result-object v0

    check-cast v0, Lokio/Timeout;

    return-object v0
.end method

.method public final timeoutEarlyExit()V
    .locals 2

    .line 395
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->timeoutEarlyExit:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 396
    iput-boolean v1, p0, Lokhttp3/internal/connection/RealCall;->timeoutEarlyExit:Z

    .line 397
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->timeout:Lokhttp3/internal/connection/RealCall$timeout$1;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall$timeout$1;->exit()Z

    .line 398
    return-void

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
