.class public final Lio/grpc/internal/StatsTraceContext;
.super Ljava/lang/Object;
.source "StatsTraceContext.java"


# static fields
.field public static final NOOP:Lio/grpc/internal/StatsTraceContext;


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final tracers:[Lio/grpc/StreamTracer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lio/grpc/internal/StatsTraceContext;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/grpc/StreamTracer;

    invoke-direct {v0, v1}, Lio/grpc/internal/StatsTraceContext;-><init>([Lio/grpc/StreamTracer;)V

    sput-object v0, Lio/grpc/internal/StatsTraceContext;->NOOP:Lio/grpc/internal/StatsTraceContext;

    return-void
.end method

.method constructor <init>([Lio/grpc/StreamTracer;)V
    .locals 2
    .param p1, "tracers"    # [Lio/grpc/StreamTracer;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/grpc/internal/StatsTraceContext;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    iput-object p1, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    .line 88
    return-void
.end method

.method public static newClientContext(Lio/grpc/CallOptions;Lio/grpc/Attributes;Lio/grpc/Metadata;)Lio/grpc/internal/StatsTraceContext;
    .locals 5
    .param p0, "callOptions"    # Lio/grpc/CallOptions;
    .param p1, "transportAttrs"    # Lio/grpc/Attributes;
    .param p2, "headers"    # Lio/grpc/Metadata;

    .line 52
    invoke-virtual {p0}, Lio/grpc/CallOptions;->getStreamTracerFactories()Ljava/util/List;

    move-result-object v0

    .line 53
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientStreamTracer$Factory;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Lio/grpc/internal/StatsTraceContext;->NOOP:Lio/grpc/internal/StatsTraceContext;

    return-object v1

    .line 57
    :cond_0
    invoke-static {}, Lio/grpc/ClientStreamTracer$StreamInfo;->newBuilder()Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1, p1}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->setTransportAttrs(Lio/grpc/Attributes;)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->setCallOptions(Lio/grpc/CallOptions;)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->build()Lio/grpc/ClientStreamTracer$StreamInfo;

    move-result-object v1

    .line 61
    .local v1, "info":Lio/grpc/ClientStreamTracer$StreamInfo;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lio/grpc/StreamTracer;

    .line 62
    .local v2, "tracers":[Lio/grpc/StreamTracer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 63
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/ClientStreamTracer$Factory;

    invoke-virtual {v4, v1, p2}, Lio/grpc/ClientStreamTracer$Factory;->newClientStreamTracer(Lio/grpc/ClientStreamTracer$StreamInfo;Lio/grpc/Metadata;)Lio/grpc/ClientStreamTracer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Lio/grpc/internal/StatsTraceContext;

    invoke-direct {v3, v2}, Lio/grpc/internal/StatsTraceContext;-><init>([Lio/grpc/StreamTracer;)V

    return-object v3
.end method

.method public static newServerContext(Ljava/util/List;Ljava/lang/String;Lio/grpc/Metadata;)Lio/grpc/internal/StatsTraceContext;
    .locals 3
    .param p1, "fullMethodName"    # Ljava/lang/String;
    .param p2, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;",
            "Ljava/lang/String;",
            "Lio/grpc/Metadata;",
            ")",
            "Lio/grpc/internal/StatsTraceContext;"
        }
    .end annotation

    .line 75
    .local p0, "factories":Ljava/util/List;, "Ljava/util/List<+Lio/grpc/ServerStreamTracer$Factory;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lio/grpc/internal/StatsTraceContext;->NOOP:Lio/grpc/internal/StatsTraceContext;

    return-object v0

    .line 78
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lio/grpc/StreamTracer;

    .line 79
    .local v0, "tracers":[Lio/grpc/StreamTracer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 80
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/ServerStreamTracer$Factory;

    invoke-virtual {v2, p1, p2}, Lio/grpc/ServerStreamTracer$Factory;->newServerStreamTracer(Ljava/lang/String;Lio/grpc/Metadata;)Lio/grpc/ServerStreamTracer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lio/grpc/internal/StatsTraceContext;

    invoke-direct {v1, v0}, Lio/grpc/internal/StatsTraceContext;-><init>([Lio/grpc/StreamTracer;)V

    return-object v1
.end method


# virtual methods
.method public clientInboundHeaders()V
    .locals 5

    .line 115
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 116
    .local v3, "tracer":Lio/grpc/StreamTracer;
    move-object v4, v3

    check-cast v4, Lio/grpc/ClientStreamTracer;

    invoke-virtual {v4}, Lio/grpc/ClientStreamTracer;->inboundHeaders()V

    .line 115
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method public clientInboundTrailers(Lio/grpc/Metadata;)V
    .locals 5
    .param p1, "trailers"    # Lio/grpc/Metadata;

    .line 126
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 127
    .local v3, "tracer":Lio/grpc/StreamTracer;
    move-object v4, v3

    check-cast v4, Lio/grpc/ClientStreamTracer;

    invoke-virtual {v4, p1}, Lio/grpc/ClientStreamTracer;->inboundTrailers(Lio/grpc/Metadata;)V

    .line 126
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

.method public clientOutboundHeaders()V
    .locals 5

    .line 104
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 105
    .local v3, "tracer":Lio/grpc/StreamTracer;
    move-object v4, v3

    check-cast v4, Lio/grpc/ClientStreamTracer;

    invoke-virtual {v4}, Lio/grpc/ClientStreamTracer;->outboundHeaders()V

    .line 104
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public getTracersForTest()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/StreamTracer;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public inboundMessage(I)V
    .locals 4
    .param p1, "seqNo"    # I

    .line 187
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 188
    .local v3, "tracer":Lio/grpc/StreamTracer;
    invoke-virtual {v3, p1}, Lio/grpc/StreamTracer;->inboundMessage(I)V

    .line 187
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method public inboundMessageRead(IJJ)V
    .locals 10
    .param p1, "seqNo"    # I
    .param p2, "optionalWireSize"    # J
    .param p4, "optionalUncompressedSize"    # J

    .line 209
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v9, v0, v2

    .line 210
    .local v9, "tracer":Lio/grpc/StreamTracer;
    move-object v3, v9

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lio/grpc/StreamTracer;->inboundMessageRead(IJJ)V

    .line 209
    .end local v9    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method public inboundUncompressedSize(J)V
    .locals 4
    .param p1, "bytes"    # J

    .line 242
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 243
    .local v3, "tracer":Lio/grpc/StreamTracer;
    invoke-virtual {v3, p1, p2}, Lio/grpc/StreamTracer;->inboundUncompressedSize(J)V

    .line 242
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method public inboundWireSize(J)V
    .locals 4
    .param p1, "bytes"    # J

    .line 253
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 254
    .local v3, "tracer":Lio/grpc/StreamTracer;
    invoke-virtual {v3, p1, p2}, Lio/grpc/StreamTracer;->inboundWireSize(J)V

    .line 253
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_0
    return-void
.end method

.method public outboundMessage(I)V
    .locals 4
    .param p1, "seqNo"    # I

    .line 176
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 177
    .local v3, "tracer":Lio/grpc/StreamTracer;
    invoke-virtual {v3, p1}, Lio/grpc/StreamTracer;->outboundMessage(I)V

    .line 176
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method public outboundMessageSent(IJJ)V
    .locals 10
    .param p1, "seqNo"    # I
    .param p2, "optionalWireSize"    # J
    .param p4, "optionalUncompressedSize"    # J

    .line 198
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v9, v0, v2

    .line 199
    .local v9, "tracer":Lio/grpc/StreamTracer;
    move-object v3, v9

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lio/grpc/StreamTracer;->outboundMessageSent(IJJ)V

    .line 198
    .end local v9    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method

.method public outboundUncompressedSize(J)V
    .locals 4
    .param p1, "bytes"    # J

    .line 220
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 221
    .local v3, "tracer":Lio/grpc/StreamTracer;
    invoke-virtual {v3, p1, p2}, Lio/grpc/StreamTracer;->outboundUncompressedSize(J)V

    .line 220
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method public outboundWireSize(J)V
    .locals 4
    .param p1, "bytes"    # J

    .line 231
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 232
    .local v3, "tracer":Lio/grpc/StreamTracer;
    invoke-virtual {v3, p1, p2}, Lio/grpc/StreamTracer;->outboundWireSize(J)V

    .line 231
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method public serverCallStarted(Lio/grpc/ServerStreamTracer$ServerCallInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerStreamTracer$ServerCallInfo<",
            "**>;)V"
        }
    .end annotation

    .line 151
    .local p1, "callInfo":Lio/grpc/ServerStreamTracer$ServerCallInfo;, "Lio/grpc/ServerStreamTracer$ServerCallInfo<**>;"
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 152
    .local v3, "tracer":Lio/grpc/StreamTracer;
    move-object v4, v3

    check-cast v4, Lio/grpc/ServerStreamTracer;

    invoke-virtual {v4, p1}, Lio/grpc/ServerStreamTracer;->serverCallStarted(Lio/grpc/ServerStreamTracer$ServerCallInfo;)V

    .line 151
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method public serverFilterContext(Lio/grpc/Context;)Lio/grpc/Context;
    .locals 6
    .param p1, "context"    # Lio/grpc/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Context;",
            ")",
            "Lio/grpc/Context;"
        }
    .end annotation

    .line 137
    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Context;

    .line 138
    .local v0, "ctx":Lio/grpc/Context;
    iget-object v1, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 139
    .local v4, "tracer":Lio/grpc/StreamTracer;
    move-object v5, v4

    check-cast v5, Lio/grpc/ServerStreamTracer;

    invoke-virtual {v5, v0}, Lio/grpc/ServerStreamTracer;->filterContext(Lio/grpc/Context;)Lio/grpc/Context;

    move-result-object v0

    .line 140
    const-string v5, "%s returns null context"

    invoke-static {v0, v5, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v4    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-object v0
.end method

.method public streamClosed(Lio/grpc/Status;)V
    .locals 4
    .param p1, "status"    # Lio/grpc/Status;

    .line 163
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 165
    .local v3, "tracer":Lio/grpc/StreamTracer;
    invoke-virtual {v3, p1}, Lio/grpc/StreamTracer;->streamClosed(Lio/grpc/Status;)V

    .line 164
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method
