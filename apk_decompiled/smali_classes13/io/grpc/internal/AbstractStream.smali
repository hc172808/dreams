.class public abstract Lio/grpc/internal/AbstractStream;
.super Ljava/lang/Object;
.source "AbstractStream.java"

# interfaces
.implements Lio/grpc/internal/Stream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/AbstractStream$TransportState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final endOfMessages()V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->framer()Lio/grpc/internal/Framer;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/Framer;->close()V

    .line 73
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->framer()Lio/grpc/internal/Framer;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/Framer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->framer()Lio/grpc/internal/Framer;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/Framer;->flush()V

    .line 65
    :cond_0
    return-void
.end method

.method protected abstract framer()Lio/grpc/internal/Framer;
.end method

.method public isReady()Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->framer()Lio/grpc/internal/Framer;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/Framer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    return v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->transportState()Lio/grpc/internal/AbstractStream$TransportState;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/internal/AbstractStream$TransportState;->access$000(Lio/grpc/internal/AbstractStream$TransportState;)Z

    move-result v0

    return v0
.end method

.method protected final onSendingBytes(I)V
    .locals 1
    .param p1, "numBytes"    # I

    .line 95
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->transportState()Lio/grpc/internal/AbstractStream$TransportState;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/internal/AbstractStream$TransportState;->access$100(Lio/grpc/internal/AbstractStream$TransportState;I)V

    .line 96
    return-void
.end method

.method public final setCompressor(Lio/grpc/Compressor;)V
    .locals 2
    .param p1, "compressor"    # Lio/grpc/Compressor;

    .line 77
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->framer()Lio/grpc/internal/Framer;

    move-result-object v0

    const-string v1, "compressor"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/Compressor;

    invoke-interface {v0, v1}, Lio/grpc/internal/Framer;->setCompressor(Lio/grpc/Compressor;)Lio/grpc/internal/Framer;

    .line 78
    return-void
.end method

.method public final setMessageCompression(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 45
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->framer()Lio/grpc/internal/Framer;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/Framer;->setMessageCompression(Z)Lio/grpc/internal/Framer;

    .line 46
    return-void
.end method

.method protected abstract transportState()Lio/grpc/internal/AbstractStream$TransportState;
.end method

.method public final writeMessage(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "message"    # Ljava/io/InputStream;

    .line 50
    const-string v0, "message"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->framer()Lio/grpc/internal/Framer;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/Framer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->framer()Lio/grpc/internal/Framer;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/Framer;->writePayload(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/InputStream;)V

    .line 57
    nop

    .line 58
    return-void

    .line 56
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method
