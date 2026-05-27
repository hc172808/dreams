.class public abstract Lio/grpc/internal/AbstractClientStream;
.super Lio/grpc/internal/AbstractStream;
.source "AbstractClientStream.java"

# interfaces
.implements Lio/grpc/internal/ClientStream;
.implements Lio/grpc/internal/MessageFramer$Sink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/AbstractClientStream$GetFramer;,
        Lio/grpc/internal/AbstractClientStream$TransportState;,
        Lio/grpc/internal/AbstractClientStream$Sink;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile cancelled:Z

.field private final framer:Lio/grpc/internal/Framer;

.field private headers:Lio/grpc/Metadata;

.field private shouldBeCountedForInUse:Z

.field private final transportTracer:Lio/grpc/internal/TransportTracer;

.field private useGet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lio/grpc/internal/AbstractClientStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractClientStream;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lio/grpc/internal/WritableBufferAllocator;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Lio/grpc/Metadata;Lio/grpc/CallOptions;Z)V
    .locals 1
    .param p1, "bufferAllocator"    # Lio/grpc/internal/WritableBufferAllocator;
    .param p2, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;
    .param p3, "transportTracer"    # Lio/grpc/internal/TransportTracer;
    .param p4, "headers"    # Lio/grpc/Metadata;
    .param p5, "callOptions"    # Lio/grpc/CallOptions;
    .param p6, "useGet"    # Z

    .line 118
    invoke-direct {p0}, Lio/grpc/internal/AbstractStream;-><init>()V

    .line 119
    const-string v0, "headers"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "transportTracer"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/TransportTracer;

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream;->transportTracer:Lio/grpc/internal/TransportTracer;

    .line 121
    invoke-static {p5}, Lio/grpc/internal/GrpcUtil;->shouldBeCountedForInUse(Lio/grpc/CallOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lio/grpc/internal/AbstractClientStream;->shouldBeCountedForInUse:Z

    .line 122
    iput-boolean p6, p0, Lio/grpc/internal/AbstractClientStream;->useGet:Z

    .line 123
    if-nez p6, :cond_0

    .line 124
    new-instance v0, Lio/grpc/internal/MessageFramer;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/internal/MessageFramer;-><init>(Lio/grpc/internal/MessageFramer$Sink;Lio/grpc/internal/WritableBufferAllocator;Lio/grpc/internal/StatsTraceContext;)V

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream;->framer:Lio/grpc/internal/Framer;

    .line 125
    iput-object p4, p0, Lio/grpc/internal/AbstractClientStream;->headers:Lio/grpc/Metadata;

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Lio/grpc/internal/AbstractClientStream$GetFramer;

    invoke-direct {v0, p0, p4, p2}, Lio/grpc/internal/AbstractClientStream$GetFramer;-><init>(Lio/grpc/internal/AbstractClientStream;Lio/grpc/Metadata;Lio/grpc/internal/StatsTraceContext;)V

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream;->framer:Lio/grpc/internal/Framer;

    .line 129
    :goto_0
    return-void
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .line 51
    sget-object v0, Lio/grpc/internal/AbstractClientStream;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected abstract abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;
.end method

.method public final appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V
    .locals 3
    .param p1, "insight"    # Lio/grpc/internal/InsightBuilder;

    .line 224
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    .line 225
    .local v0, "attrs":Lio/grpc/Attributes;
    sget-object v1, Lio/grpc/Grpc;->TRANSPORT_ATTR_REMOTE_ADDR:Lio/grpc/Attributes$Key;

    invoke-virtual {v0, v1}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "remote_addr"

    invoke-virtual {p1, v2, v1}, Lio/grpc/internal/InsightBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 226
    return-void
.end method

.method public final cancel(Lio/grpc/Status;)V
    .locals 3
    .param p1, "reason"    # Lio/grpc/Status;

    .line 212
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Should not cancel with OK status"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 213
    iput-boolean v1, p0, Lio/grpc/internal/AbstractClientStream;->cancelled:Z

    .line 214
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/AbstractClientStream$Sink;->cancel(Lio/grpc/Status;)V

    .line 215
    return-void
.end method

.method public final deliverFrame(Lio/grpc/internal/WritableBuffer;ZZI)V
    .locals 2
    .param p1, "frame"    # Lio/grpc/internal/WritableBuffer;
    .param p2, "endOfStream"    # Z
    .param p3, "flush"    # Z
    .param p4, "numMessages"    # I

    .line 198
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "null frame before EOS"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 199
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/internal/AbstractClientStream$Sink;->writeFrame(Lio/grpc/internal/WritableBuffer;ZZI)V

    .line 200
    return-void
.end method

.method protected final framer()Lio/grpc/internal/Framer;
    .locals 1

    .line 179
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->framer:Lio/grpc/internal/Framer;

    return-object v0
.end method

.method protected getTransportTracer()Lio/grpc/internal/TransportTracer;
    .locals 1

    .line 229
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->transportTracer:Lio/grpc/internal/TransportTracer;

    return-object v0
.end method

.method public final halfClose()V
    .locals 1

    .line 204
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/AbstractClientStream$TransportState;->isOutboundClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/internal/AbstractClientStream$TransportState;->access$200(Lio/grpc/internal/AbstractClientStream$TransportState;)V

    .line 206
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->endOfMessages()V

    .line 208
    :cond_0
    return-void
.end method

.method public final isReady()Z
    .locals 1

    .line 219
    invoke-super {p0}, Lio/grpc/internal/AbstractStream;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final request(I)V
    .locals 1
    .param p1, "numMessages"    # I

    .line 192
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/AbstractClientStream$Sink;->request(I)V

    .line 193
    return-void
.end method

.method public setDeadline(Lio/grpc/Deadline;)V
    .locals 5
    .param p1, "deadline"    # Lio/grpc/Deadline;

    .line 133
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->headers:Lio/grpc/Metadata;

    sget-object v1, Lio/grpc/internal/GrpcUtil;->TIMEOUT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v0, v1}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 134
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 135
    .local v0, "effectiveTimeout":J
    iget-object v2, p0, Lio/grpc/internal/AbstractClientStream;->headers:Lio/grpc/Metadata;

    sget-object v3, Lio/grpc/internal/GrpcUtil;->TIMEOUT_KEY:Lio/grpc/Metadata$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public final setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V
    .locals 1
    .param p1, "decompressorRegistry"    # Lio/grpc/DecompressorRegistry;

    .line 155
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/internal/AbstractClientStream$TransportState;->access$100(Lio/grpc/internal/AbstractClientStream$TransportState;Lio/grpc/DecompressorRegistry;)V

    .line 156
    return-void
.end method

.method public final setFullStreamDecompression(Z)V
    .locals 1
    .param p1, "fullStreamDecompression"    # Z

    .line 150
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/internal/AbstractClientStream$TransportState;->access$000(Lio/grpc/internal/AbstractClientStream$TransportState;Z)V

    .line 151
    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 145
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/AbstractClientStream$TransportState;->setMaxInboundMessageSize(I)V

    .line 146
    return-void
.end method

.method public setMaxOutboundMessageSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 140
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->framer:Lio/grpc/internal/Framer;

    invoke-interface {v0, p1}, Lio/grpc/internal/Framer;->setMaxOutboundMessageSize(I)V

    .line 141
    return-void
.end method

.method public final shouldBeCountedForInUse()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream;->shouldBeCountedForInUse:Z

    return v0
.end method

.method public final start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 3
    .param p1, "listener"    # Lio/grpc/internal/ClientStreamListener;

    .line 164
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/AbstractClientStream$TransportState;->setListener(Lio/grpc/internal/ClientStreamListener;)V

    .line 165
    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream;->useGet:Z

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/AbstractClientStream;->headers:Lio/grpc/Metadata;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lio/grpc/internal/AbstractClientStream$Sink;->writeHeaders(Lio/grpc/Metadata;[B)V

    .line 167
    iput-object v2, p0, Lio/grpc/internal/AbstractClientStream;->headers:Lio/grpc/Metadata;

    .line 169
    :cond_0
    return-void
.end method

.method protected abstract transportState()Lio/grpc/internal/AbstractClientStream$TransportState;
.end method

.method protected bridge synthetic transportState()Lio/grpc/internal/AbstractStream$TransportState;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    return-object v0
.end method
