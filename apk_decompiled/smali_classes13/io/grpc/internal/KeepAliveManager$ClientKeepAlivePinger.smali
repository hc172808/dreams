.class public final Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;
.super Ljava/lang/Object;
.source "KeepAliveManager.java"

# interfaces
.implements Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/KeepAliveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientKeepAlivePinger"
.end annotation


# instance fields
.field private final transport:Lio/grpc/internal/ConnectionClientTransport;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ConnectionClientTransport;)V
    .locals 0
    .param p1, "transport"    # Lio/grpc/internal/ConnectionClientTransport;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;->transport:Lio/grpc/internal/ConnectionClientTransport;

    .line 269
    return-void
.end method

.method static synthetic access$1000(Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;

    .line 264
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;->transport:Lio/grpc/internal/ConnectionClientTransport;

    return-object v0
.end method


# virtual methods
.method public onPingTimeout()V
    .locals 3

    .line 287
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;->transport:Lio/grpc/internal/ConnectionClientTransport;

    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v2, "Keepalive failed. The connection is likely gone"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/ConnectionClientTransport;->shutdownNow(Lio/grpc/Status;)V

    .line 289
    return-void
.end method

.method public ping()V
    .locals 3

    .line 273
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;->transport:Lio/grpc/internal/ConnectionClientTransport;

    new-instance v1, Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger$1;

    invoke-direct {v1, p0}, Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger$1;-><init>(Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;)V

    .line 282
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 273
    invoke-interface {v0, v1, v2}, Lio/grpc/internal/ConnectionClientTransport;->ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V

    .line 283
    return-void
.end method
