.class Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger$1;
.super Ljava/lang/Object;
.source "KeepAliveManager.java"

# interfaces
.implements Lio/grpc/internal/ClientTransport$PingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;->ping()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;


# direct methods
.method constructor <init>(Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;

    .line 273
    iput-object p1, p0, Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger$1;->this$0:Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 279
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger$1;->this$0:Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;

    invoke-static {v0}, Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;->access$1000(Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;)Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v2, "Keepalive failed. The connection is likely gone"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/ConnectionClientTransport;->shutdownNow(Lio/grpc/Status;)V

    .line 281
    return-void
.end method

.method public onSuccess(J)V
    .locals 0
    .param p1, "roundTripTimeNanos"    # J

    .line 275
    return-void
.end method
