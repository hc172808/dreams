.class final Lio/grpc/okhttp/AsyncSink;
.super Ljava/lang/Object;
.source "AsyncSink.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/AsyncSink$WriteRunnable;
    }
.end annotation


# instance fields
.field private final buffer:Lokio/Buffer;

.field private closed:Z

.field private flushEnqueued:Z

.field private final lock:Ljava/lang/Object;

.field private final serializingExecutor:Lio/grpc/internal/SerializingExecutor;

.field private sink:Lokio/Sink;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private socket:Ljava/net/Socket;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final transportExceptionHandler:Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

.field private writeEnqueued:Z


# direct methods
.method private constructor <init>(Lio/grpc/internal/SerializingExecutor;Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;)V
    .locals 1
    .param p1, "executor"    # Lio/grpc/internal/SerializingExecutor;
    .param p2, "exceptionHandler"    # Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/AsyncSink;->lock:Ljava/lang/Object;

    .line 41
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/AsyncSink;->buffer:Lokio/Buffer;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->writeEnqueued:Z

    .line 47
    iput-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->flushEnqueued:Z

    .line 49
    iput-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->closed:Z

    .line 56
    const-string v0, "executor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/SerializingExecutor;

    iput-object v0, p0, Lio/grpc/okhttp/AsyncSink;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    .line 57
    const-string v0, "exceptionHandler"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

    iput-object v0, p0, Lio/grpc/okhttp/AsyncSink;->transportExceptionHandler:Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

    .line 58
    return-void
.end method

.method static synthetic access$100(Lio/grpc/okhttp/AsyncSink;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;

    .line 38
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/AsyncSink;)Lokio/Buffer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;

    .line 38
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->buffer:Lokio/Buffer;

    return-object v0
.end method

.method static synthetic access$302(Lio/grpc/okhttp/AsyncSink;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lio/grpc/okhttp/AsyncSink;->writeEnqueued:Z

    return p1
.end method

.method static synthetic access$400(Lio/grpc/okhttp/AsyncSink;)Lokio/Sink;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;

    .line 38
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->sink:Lokio/Sink;

    return-object v0
.end method

.method static synthetic access$502(Lio/grpc/okhttp/AsyncSink;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lio/grpc/okhttp/AsyncSink;->flushEnqueued:Z

    return p1
.end method

.method static synthetic access$600(Lio/grpc/okhttp/AsyncSink;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;

    .line 38
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->transportExceptionHandler:Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/okhttp/AsyncSink;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;

    .line 38
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static sink(Lio/grpc/internal/SerializingExecutor;Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;)Lio/grpc/okhttp/AsyncSink;
    .locals 1
    .param p0, "executor"    # Lio/grpc/internal/SerializingExecutor;
    .param p1, "exceptionHandler"    # Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

    .line 62
    new-instance v0, Lio/grpc/okhttp/AsyncSink;

    invoke-direct {v0, p0, p1}, Lio/grpc/okhttp/AsyncSink;-><init>(Lio/grpc/internal/SerializingExecutor;Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;)V

    return-object v0
.end method


# virtual methods
.method becomeConnected(Lokio/Sink;Ljava/net/Socket;)V
    .locals 2
    .param p1, "sink"    # Lokio/Sink;
    .param p2, "socket"    # Ljava/net/Socket;

    .line 72
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->sink:Lokio/Sink;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "AsyncSink\'s becomeConnected should only be called once."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 73
    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/Sink;

    iput-object v0, p0, Lio/grpc/okhttp/AsyncSink;->sink:Lokio/Sink;

    .line 74
    const-string v0, "socket"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    iput-object v0, p0, Lio/grpc/okhttp/AsyncSink;->socket:Ljava/net/Socket;

    .line 75
    return-void
.end method

.method public close()V
    .locals 2

    .line 159
    iget-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->closed:Z

    if-eqz v0, :cond_0

    .line 160
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->closed:Z

    .line 163
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/okhttp/AsyncSink$3;

    invoke-direct {v1, p0}, Lio/grpc/okhttp/AsyncSink$3;-><init>(Lio/grpc/okhttp/AsyncSink;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->closed:Z

    if-nez v0, :cond_1

    .line 120
    const-string v0, "AsyncSink.flush"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 122
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    iget-boolean v1, p0, Lio/grpc/okhttp/AsyncSink;->flushEnqueued:Z

    if-eqz v1, :cond_0

    .line 124
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    const-string v0, "AsyncSink.flush"

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 124
    return-void

    .line 126
    :cond_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lio/grpc/okhttp/AsyncSink;->flushEnqueued:Z

    .line 127
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :try_start_3
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/okhttp/AsyncSink$2;

    invoke-direct {v1, p0}, Lio/grpc/okhttp/AsyncSink$2;-><init>(Lio/grpc/okhttp/AsyncSink;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    const-string v0, "AsyncSink.flush"

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 149
    nop

    .line 150
    return-void

    .line 127
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 148
    :catchall_1
    move-exception v0

    const-string v1, "AsyncSink.flush"

    invoke-static {v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 154
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 6
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->closed:Z

    if-nez v0, :cond_2

    .line 83
    const-string v0, "AsyncSink.write"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 85
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    :try_start_1
    iget-object v1, p0, Lio/grpc/okhttp/AsyncSink;->buffer:Lokio/Buffer;

    invoke-virtual {v1, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 87
    iget-boolean v1, p0, Lio/grpc/okhttp/AsyncSink;->writeEnqueued:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lio/grpc/okhttp/AsyncSink;->flushEnqueued:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/grpc/okhttp/AsyncSink;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/okhttp/AsyncSink;->writeEnqueued:Z

    .line 91
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/okhttp/AsyncSink$1;

    invoke-direct {v1, p0}, Lio/grpc/okhttp/AsyncSink$1;-><init>(Lio/grpc/okhttp/AsyncSink;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    const-string v0, "AsyncSink.write"

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 112
    nop

    .line 113
    return-void

    .line 88
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    const-string v0, "AsyncSink.write"

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 88
    return-void

    .line 91
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p1    # "source":Lokio/Buffer;
    .end local p2    # "byteCount":J
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 111
    .restart local p1    # "source":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_1
    move-exception v0

    const-string v1, "AsyncSink.write"

    invoke-static {v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
