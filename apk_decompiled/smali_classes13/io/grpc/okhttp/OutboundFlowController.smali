.class Lio/grpc/okhttp/OutboundFlowController;
.super Ljava/lang/Object;
.source "OutboundFlowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;,
        Lio/grpc/okhttp/OutboundFlowController$WriteStatus;
    }
.end annotation


# instance fields
.field private final connectionState:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

.field private final frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

.field private initialWindowSize:I

.field private final transport:Lio/grpc/okhttp/OkHttpClientTransport;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/FrameWriter;)V
    .locals 3
    .param p1, "transport"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p2, "frameWriter"    # Lio/grpc/okhttp/internal/framed/FrameWriter;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "transport"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpClientTransport;

    iput-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    .line 44
    const-string v0, "frameWriter"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/framed/FrameWriter;

    iput-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    .line 45
    const v0, 0xffff

    iput v0, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    .line 46
    new-instance v1, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;-><init>(Lio/grpc/okhttp/OutboundFlowController;II)V

    iput-object v1, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OutboundFlowController;

    .line 35
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/internal/framed/FrameWriter;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OutboundFlowController;

    .line 35
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    return-object v0
.end method

.method private state(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    .locals 3
    .param p1, "stream"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 150
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->getOutboundFlowState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    .line 151
    .local v0, "state":Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    if-nez v0, :cond_0

    .line 152
    new-instance v1, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    iget v2, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    invoke-direct {v1, p0, p1, v2}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;-><init>(Lio/grpc/okhttp/OutboundFlowController;Lio/grpc/okhttp/OkHttpClientStream;I)V

    move-object v0, v1

    .line 153
    invoke-virtual {p1, v0}, Lio/grpc/okhttp/OkHttpClientStream;->setOutboundFlowState(Ljava/lang/Object;)V

    .line 155
    :cond_0
    return-object v0
.end method


# virtual methods
.method data(ZILokio/Buffer;Z)V
    .locals 8
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/Buffer;
    .param p4, "flush"    # Z

    .line 109
    const-string v0, "source"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0, p2}, Lio/grpc/okhttp/OkHttpClientTransport;->getStream(I)Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object v0

    .line 112
    .local v0, "stream":Lio/grpc/okhttp/OkHttpClientStream;
    if-nez v0, :cond_0

    .line 116
    return-void

    .line 119
    :cond_0
    invoke-direct {p0, v0}, Lio/grpc/okhttp/OutboundFlowController;->state(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    move-result-object v1

    .line 120
    .local v1, "state":Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    invoke-virtual {v1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->writableWindow()I

    move-result v2

    .line 121
    .local v2, "window":I
    invoke-virtual {v1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->hasPendingData()Z

    move-result v3

    .line 122
    .local v3, "framesAlreadyQueued":Z
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v4

    long-to-int v5, v4

    .line 124
    .local v5, "size":I
    if-nez v3, :cond_1

    if-lt v2, v5, :cond_1

    .line 126
    invoke-virtual {v1, p3, v5, p1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->write(Lokio/Buffer;IZ)V

    goto :goto_0

    .line 129
    :cond_1
    if-nez v3, :cond_2

    if-lez v2, :cond_2

    .line 130
    const/4 v4, 0x0

    invoke-virtual {v1, p3, v2, v4}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->write(Lokio/Buffer;IZ)V

    .line 133
    :cond_2
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v6

    long-to-int v4, v6

    invoke-virtual {v1, p3, v4, p1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->enqueue(Lokio/Buffer;IZ)V

    .line 136
    :goto_0
    if-eqz p4, :cond_3

    .line 137
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    .line 139
    :cond_3
    return-void
.end method

.method flush()V
    .locals 2

    .line 143
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lio/grpc/okhttp/internal/framed/FrameWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    nop

    .line 147
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method initialOutboundWindowSize(I)Z
    .locals 9
    .param p1, "newWindowSize"    # I

    .line 59
    if-ltz p1, :cond_3

    .line 63
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    sub-int v0, p1, v0

    .line 64
    .local v0, "delta":I
    iput p1, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    .line 65
    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->getActiveStreams()[Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 66
    .local v5, "stream":Lio/grpc/okhttp/OkHttpClientStream;
    invoke-virtual {v5}, Lio/grpc/okhttp/OkHttpClientStream;->getOutboundFlowState()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    .line 67
    .local v6, "state":Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    if-nez v6, :cond_0

    .line 69
    new-instance v7, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    iget v8, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    invoke-direct {v7, p0, v5, v8}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;-><init>(Lio/grpc/okhttp/OutboundFlowController;Lio/grpc/okhttp/OkHttpClientStream;I)V

    move-object v6, v7

    .line 70
    invoke-virtual {v5, v6}, Lio/grpc/okhttp/OkHttpClientStream;->setOutboundFlowState(Ljava/lang/Object;)V

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {v6, v0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->incrementStreamWindow(I)I

    .line 65
    .end local v5    # "stream":Lio/grpc/okhttp/OkHttpClientStream;
    .end local v6    # "state":Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    :cond_1
    if-lez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    .line 60
    .end local v0    # "delta":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid initial window size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method windowUpdate(Lio/grpc/okhttp/OkHttpClientStream;I)I
    .locals 4
    .param p1, "stream"    # Lio/grpc/okhttp/OkHttpClientStream;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "delta"    # I

    .line 87
    if-nez p1, :cond_0

    .line 89
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    invoke-virtual {v0, p2}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->incrementStreamWindow(I)I

    move-result v0

    .line 90
    .local v0, "updatedWindow":I
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->writeStreams()V

    goto :goto_0

    .line 93
    .end local v0    # "updatedWindow":I
    :cond_0
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OutboundFlowController;->state(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    move-result-object v0

    .line 94
    .local v0, "state":Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    invoke-virtual {v0, p2}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->incrementStreamWindow(I)I

    move-result v1

    .line 96
    .local v1, "updatedWindow":I
    new-instance v2, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;-><init>(Lio/grpc/okhttp/OutboundFlowController$1;)V

    .line 97
    .local v2, "writeStatus":Lio/grpc/okhttp/OutboundFlowController$WriteStatus;
    invoke-virtual {v0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->writableWindow()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->writeBytes(ILio/grpc/okhttp/OutboundFlowController$WriteStatus;)I

    .line 98
    invoke-virtual {v2}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->hasWritten()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    .line 102
    .end local v0    # "state":Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    .end local v2    # "writeStatus":Lio/grpc/okhttp/OutboundFlowController$WriteStatus;
    :cond_1
    move v0, v1

    .end local v1    # "updatedWindow":I
    .local v0, "updatedWindow":I
    :goto_0
    return v0
.end method

.method writeStreams()V
    .locals 10

    .line 164
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->getActiveStreams()[Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object v0

    .line 165
    .local v0, "streams":[Lio/grpc/okhttp/OkHttpClientStream;
    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    invoke-virtual {v1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->window()I

    move-result v1

    .line 166
    .local v1, "connectionWindow":I
    array-length v2, v0

    .local v2, "numStreams":I
    :goto_0
    if-lez v2, :cond_3

    if-lez v1, :cond_3

    .line 167
    const/4 v3, 0x0

    .line 168
    .local v3, "nextNumStreams":I
    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 169
    .local v4, "windowSlice":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_1
    if-ge v5, v2, :cond_2

    if-lez v1, :cond_2

    .line 170
    aget-object v6, v0, v5

    .line 171
    .local v6, "stream":Lio/grpc/okhttp/OkHttpClientStream;
    invoke-direct {p0, v6}, Lio/grpc/okhttp/OutboundFlowController;->state(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    move-result-object v7

    .line 173
    .local v7, "state":Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    invoke-virtual {v7}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->unallocatedBytes()I

    move-result v8

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 174
    .local v8, "bytesForStream":I
    if-lez v8, :cond_0

    .line 175
    invoke-virtual {v7, v8}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->allocateBytes(I)V

    .line 176
    sub-int/2addr v1, v8

    .line 179
    :cond_0
    invoke-virtual {v7}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->unallocatedBytes()I

    move-result v9

    if-lez v9, :cond_1

    .line 182
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "nextNumStreams":I
    .local v9, "nextNumStreams":I
    aput-object v6, v0, v3

    move v3, v9

    .line 169
    .end local v6    # "stream":Lio/grpc/okhttp/OkHttpClientStream;
    .end local v7    # "state":Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    .end local v8    # "bytesForStream":I
    .end local v9    # "nextNumStreams":I
    .restart local v3    # "nextNumStreams":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 185
    .end local v5    # "index":I
    :cond_2
    move v2, v3

    .line 186
    .end local v3    # "nextNumStreams":I
    .end local v4    # "windowSlice":I
    goto :goto_0

    .line 189
    .end local v2    # "numStreams":I
    :cond_3
    new-instance v2, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;-><init>(Lio/grpc/okhttp/OutboundFlowController$1;)V

    .line 190
    .local v2, "writeStatus":Lio/grpc/okhttp/OutboundFlowController$WriteStatus;
    iget-object v3, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v3}, Lio/grpc/okhttp/OkHttpClientTransport;->getActiveStreams()[Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 191
    .restart local v6    # "stream":Lio/grpc/okhttp/OkHttpClientStream;
    invoke-direct {p0, v6}, Lio/grpc/okhttp/OutboundFlowController;->state(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    move-result-object v7

    .line 192
    .restart local v7    # "state":Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    invoke-virtual {v7}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->allocatedBytes()I

    move-result v8

    invoke-virtual {v7, v8, v2}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->writeBytes(ILio/grpc/okhttp/OutboundFlowController$WriteStatus;)I

    .line 193
    invoke-virtual {v7}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->clearAllocatedBytes()V

    .line 190
    .end local v6    # "stream":Lio/grpc/okhttp/OkHttpClientStream;
    .end local v7    # "state":Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 196
    :cond_4
    invoke-virtual {v2}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->hasWritten()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 197
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    .line 199
    :cond_5
    return-void
.end method
