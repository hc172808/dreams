.class Lio/grpc/okhttp/OkHttpProtocolNegotiator;
.super Ljava/lang/Object;
.source "OkHttpProtocolNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;
    }
.end annotation


# static fields
.field private static final DEFAULT_PLATFORM:Lio/grpc/okhttp/internal/Platform;

.field private static NEGOTIATOR:Lio/grpc/okhttp/OkHttpProtocolNegotiator;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected final platform:Lio/grpc/okhttp/internal/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-class v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->logger:Ljava/util/logging/Logger;

    .line 40
    invoke-static {}, Lio/grpc/okhttp/internal/Platform;->get()Lio/grpc/okhttp/internal/Platform;

    move-result-object v1

    sput-object v1, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->DEFAULT_PLATFORM:Lio/grpc/okhttp/internal/Platform;

    .line 41
    nop

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->createNegotiator(Ljava/lang/ClassLoader;)Lio/grpc/okhttp/OkHttpProtocolNegotiator;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->NEGOTIATOR:Lio/grpc/okhttp/OkHttpProtocolNegotiator;

    .line 41
    return-void
.end method

.method constructor <init>(Lio/grpc/okhttp/internal/Platform;)V
    .locals 1
    .param p1, "platform"    # Lio/grpc/okhttp/internal/Platform;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "platform"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/Platform;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->platform:Lio/grpc/okhttp/internal/Platform;

    .line 49
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 38
    sget-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static createNegotiator(Ljava/lang/ClassLoader;)Lio/grpc/okhttp/OkHttpProtocolNegotiator;
    .locals 6
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .line 60
    const/4 v0, 0x1

    .line 63
    .local v0, "android":Z
    :try_start_0
    const-string v1, "com.android.org.conscrypt.OpenSSLSocketImpl"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e1":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to find Conscrypt. Skipping"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :try_start_1
    const-string v2, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    goto :goto_0

    .line 69
    :catch_1
    move-exception v2

    .line 70
    .local v2, "e2":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Unable to find any OpenSSLSocketImpl. Skipping"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    const/4 v0, 0x0

    .line 74
    .end local v1    # "e1":Ljava/lang/ClassNotFoundException;
    .end local v2    # "e2":Ljava/lang/ClassNotFoundException;
    :goto_0
    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;

    sget-object v2, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->DEFAULT_PLATFORM:Lio/grpc/okhttp/internal/Platform;

    invoke-direct {v1, v2}, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;-><init>(Lio/grpc/okhttp/internal/Platform;)V

    goto :goto_1

    .line 76
    :cond_0
    new-instance v1, Lio/grpc/okhttp/OkHttpProtocolNegotiator;

    sget-object v2, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->DEFAULT_PLATFORM:Lio/grpc/okhttp/internal/Platform;

    invoke-direct {v1, v2}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;-><init>(Lio/grpc/okhttp/internal/Platform;)V

    .line 74
    :goto_1
    return-object v1
.end method

.method public static get()Lio/grpc/okhttp/OkHttpProtocolNegotiator;
    .locals 1

    .line 52
    sget-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->NEGOTIATOR:Lio/grpc/okhttp/OkHttpProtocolNegotiator;

    return-object v0
.end method


# virtual methods
.method protected configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/Protocol;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/Protocol;>;"
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->platform:Lio/grpc/okhttp/internal/Platform;

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/okhttp/internal/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 108
    return-void
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 112
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->platform:Lio/grpc/okhttp/internal/Platform;

    invoke-virtual {v0, p1}, Lio/grpc/okhttp/internal/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public negotiate(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/Protocol;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/Protocol;>;"
    if-eqz p3, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 92
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 94
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .local v0, "negotiatedProtocol":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 98
    nop

    .line 100
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->platform:Lio/grpc/okhttp/internal/Platform;

    invoke-virtual {v1, p1}, Lio/grpc/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 98
    return-object v0

    .line 96
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TLS ALPN negotiation failed with protocols: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p2    # "hostname":Ljava/lang/String;
    .end local p3    # "protocols":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/Protocol;>;"
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local v0    # "negotiatedProtocol":Ljava/lang/String;
    .restart local p1    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p2    # "hostname":Ljava/lang/String;
    .restart local p3    # "protocols":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/Protocol;>;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->platform:Lio/grpc/okhttp/internal/Platform;

    invoke-virtual {v1, p1}, Lio/grpc/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    throw v0
.end method
