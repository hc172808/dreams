.class final Lio/grpc/internal/DelayedClientTransport;
.super Ljava/lang/Object;
.source "DelayedClientTransport.java"

# interfaces
.implements Lio/grpc/internal/ManagedClientTransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/DelayedClientTransport$PendingStream;
    }
.end annotation


# instance fields
.field private final defaultAppExecutor:Ljava/util/concurrent/Executor;

.field private lastPicker:Lio/grpc/LoadBalancer$SubchannelPicker;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private lastPickerVersion:J

.field private listener:Lio/grpc/internal/ManagedClientTransport$Listener;

.field private final lock:Ljava/lang/Object;

.field private final logId:Lio/grpc/InternalLogId;

.field private pendingStreams:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/internal/DelayedClientTransport$PendingStream;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private reportTransportInUse:Ljava/lang/Runnable;

.field private reportTransportNotInUse:Ljava/lang/Runnable;

.field private reportTransportTerminated:Ljava/lang/Runnable;

.field private shutdownStatus:Lio/grpc/Status;

.field private final syncContext:Lio/grpc/SynchronizationContext;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lio/grpc/SynchronizationContext;)V
    .locals 2
    .param p1, "defaultAppExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "syncContext"    # Lio/grpc/SynchronizationContext;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-class v0, Lio/grpc/internal/DelayedClientTransport;

    .line 54
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->logId:Lio/grpc/InternalLogId;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    .line 98
    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport;->defaultAppExecutor:Ljava/util/concurrent/Executor;

    .line 99
    iput-object p2, p0, Lio/grpc/internal/DelayedClientTransport;->syncContext:Lio/grpc/SynchronizationContext;

    .line 100
    return-void
.end method

.method static synthetic access$100(Lio/grpc/internal/DelayedClientTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientTransport;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientTransport;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientTransport;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->reportTransportTerminated:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lio/grpc/internal/DelayedClientTransport;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientTransport;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport;->reportTransportTerminated:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lio/grpc/internal/DelayedClientTransport;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientTransport;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientTransport;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->reportTransportNotInUse:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lio/grpc/internal/DelayedClientTransport;)Lio/grpc/SynchronizationContext;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientTransport;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->syncContext:Lio/grpc/SynchronizationContext;

    return-object v0
.end method

.method static synthetic access$900(Lio/grpc/internal/DelayedClientTransport;)Lio/grpc/Status;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientTransport;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->shutdownStatus:Lio/grpc/Status;

    return-object v0
.end method

.method private createPendingStream(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/internal/DelayedClientTransport$PendingStream;
    .locals 3
    .param p1, "args"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 176
    new-instance v0, Lio/grpc/internal/DelayedClientTransport$PendingStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/internal/DelayedClientTransport$PendingStream;-><init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/LoadBalancer$PickSubchannelArgs;Lio/grpc/internal/DelayedClientTransport$1;)V

    .line 177
    .local v0, "pendingStream":Lio/grpc/internal/DelayedClientTransport$PendingStream;
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {p0}, Lio/grpc/internal/DelayedClientTransport;->getPendingStreamsCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 179
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->syncContext:Lio/grpc/SynchronizationContext;

    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport;->reportTransportInUse:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 181
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    .line 338
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->logId:Lio/grpc/InternalLogId;

    return-object v0
.end method

.method final getPendingStreamsCount()I
    .locals 2

    .line 257
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStats()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    .line 191
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 192
    .local v0, "ret":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lio/grpc/InternalChannelz$SocketStats;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 193
    return-object v0
.end method

.method public final hasPendingStreams()Z
    .locals 2

    .line 250
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;
    .locals 9
    .param p2, "headers"    # Lio/grpc/Metadata;
    .param p3, "callOptions"    # Lio/grpc/CallOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    .line 137
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    :try_start_0
    new-instance v0, Lio/grpc/internal/PickSubchannelArgsImpl;

    invoke-direct {v0, p1, p2, p3}, Lio/grpc/internal/PickSubchannelArgsImpl;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)V

    .line 138
    .local v0, "args":Lio/grpc/LoadBalancer$PickSubchannelArgs;
    const/4 v1, 0x0

    .line 139
    .local v1, "picker":Lio/grpc/LoadBalancer$SubchannelPicker;
    const-wide/16 v2, -0x1

    .line 141
    .local v2, "pickerVersion":J
    :goto_0
    iget-object v4, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :try_start_1
    iget-object v5, p0, Lio/grpc/internal/DelayedClientTransport;->shutdownStatus:Lio/grpc/Status;

    if-eqz v5, :cond_0

    .line 143
    new-instance v5, Lio/grpc/internal/FailingClientStream;

    iget-object v6, p0, Lio/grpc/internal/DelayedClientTransport;->shutdownStatus:Lio/grpc/Status;

    invoke-direct {v5, v6}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    iget-object v4, p0, Lio/grpc/internal/DelayedClientTransport;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v4}, Lio/grpc/SynchronizationContext;->drain()V

    .line 143
    return-object v5

    .line 145
    :cond_0
    :try_start_2
    iget-object v5, p0, Lio/grpc/internal/DelayedClientTransport;->lastPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    if-nez v5, :cond_1

    .line 146
    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientTransport;->createPendingStream(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/internal/DelayedClientTransport$PendingStream;

    move-result-object v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    iget-object v4, p0, Lio/grpc/internal/DelayedClientTransport;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v4}, Lio/grpc/SynchronizationContext;->drain()V

    .line 146
    return-object v5

    .line 149
    :cond_1
    if-eqz v1, :cond_2

    :try_start_3
    iget-wide v6, p0, Lio/grpc/internal/DelayedClientTransport;->lastPickerVersion:J

    cmp-long v8, v2, v6

    if-nez v8, :cond_2

    .line 150
    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientTransport;->createPendingStream(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/internal/DelayedClientTransport$PendingStream;

    move-result-object v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    iget-object v4, p0, Lio/grpc/internal/DelayedClientTransport;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v4}, Lio/grpc/SynchronizationContext;->drain()V

    .line 150
    return-object v5

    .line 152
    :cond_2
    move-object v1, v5

    .line 153
    :try_start_4
    iget-wide v5, p0, Lio/grpc/internal/DelayedClientTransport;->lastPickerVersion:J

    move-wide v2, v5

    .line 154
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 155
    :try_start_5
    invoke-virtual {v1, v0}, Lio/grpc/LoadBalancer$SubchannelPicker;->pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v4

    .line 156
    .local v4, "pickResult":Lio/grpc/LoadBalancer$PickResult;
    nop

    .line 157
    invoke-virtual {p3}, Lio/grpc/CallOptions;->isWaitForReady()Z

    move-result v5

    .line 156
    invoke-static {v4, v5}, Lio/grpc/internal/GrpcUtil;->getTransportFromPickResult(Lio/grpc/LoadBalancer$PickResult;Z)Lio/grpc/internal/ClientTransport;

    move-result-object v5

    .line 158
    .local v5, "transport":Lio/grpc/internal/ClientTransport;
    if-eqz v5, :cond_3

    .line 159
    nop

    .line 160
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$PickSubchannelArgs;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v6

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$PickSubchannelArgs;->getHeaders()Lio/grpc/Metadata;

    move-result-object v7

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$PickSubchannelArgs;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v8

    .line 159
    invoke-interface {v5, v6, v7, v8}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 166
    iget-object v7, p0, Lio/grpc/internal/DelayedClientTransport;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v7}, Lio/grpc/SynchronizationContext;->drain()V

    .line 159
    return-object v6

    .line 164
    .end local v4    # "pickResult":Lio/grpc/LoadBalancer$PickResult;
    .end local v5    # "transport":Lio/grpc/internal/ClientTransport;
    :cond_3
    goto :goto_0

    .line 154
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local p1    # "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    .end local p2    # "headers":Lio/grpc/Metadata;
    .end local p3    # "callOptions":Lio/grpc/CallOptions;
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 166
    .end local v0    # "args":Lio/grpc/LoadBalancer$PickSubchannelArgs;
    .end local v1    # "picker":Lio/grpc/LoadBalancer$SubchannelPicker;
    .end local v2    # "pickerVersion":J
    .restart local p1    # "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    .restart local p2    # "headers":Lio/grpc/Metadata;
    .restart local p3    # "callOptions":Lio/grpc/CallOptions;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v1}, Lio/grpc/SynchronizationContext;->drain()V

    throw v0
.end method

.method public final ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "callback"    # Lio/grpc/internal/ClientTransport$PingCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not expected to be called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final reprocess(Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 9
    .param p1, "picker"    # Lio/grpc/LoadBalancer$SubchannelPicker;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 274
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport;->lastPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 276
    iget-wide v1, p0, Lio/grpc/internal/DelayedClientTransport;->lastPickerVersion:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/grpc/internal/DelayedClientTransport;->lastPickerVersion:J

    .line 277
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lio/grpc/internal/DelayedClientTransport;->hasPendingStreams()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 280
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    .local v1, "toProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/internal/DelayedClientTransport$PendingStream;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 284
    .local v2, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/internal/DelayedClientTransport$PendingStream;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/internal/DelayedClientTransport$PendingStream;

    .line 285
    .local v3, "stream":Lio/grpc/internal/DelayedClientTransport$PendingStream;
    invoke-static {v3}, Lio/grpc/internal/DelayedClientTransport$PendingStream;->access$200(Lio/grpc/internal/DelayedClientTransport$PendingStream;)Lio/grpc/LoadBalancer$PickSubchannelArgs;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/grpc/LoadBalancer$SubchannelPicker;->pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v4

    .line 286
    .local v4, "pickResult":Lio/grpc/LoadBalancer$PickResult;
    invoke-static {v3}, Lio/grpc/internal/DelayedClientTransport$PendingStream;->access$200(Lio/grpc/internal/DelayedClientTransport$PendingStream;)Lio/grpc/LoadBalancer$PickSubchannelArgs;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/LoadBalancer$PickSubchannelArgs;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v5

    .line 287
    .local v5, "callOptions":Lio/grpc/CallOptions;
    nop

    .line 288
    invoke-virtual {v5}, Lio/grpc/CallOptions;->isWaitForReady()Z

    move-result v6

    .line 287
    invoke-static {v4, v6}, Lio/grpc/internal/GrpcUtil;->getTransportFromPickResult(Lio/grpc/LoadBalancer$PickResult;Z)Lio/grpc/internal/ClientTransport;

    move-result-object v6

    .line 289
    .local v6, "transport":Lio/grpc/internal/ClientTransport;
    if-eqz v6, :cond_2

    .line 290
    iget-object v7, p0, Lio/grpc/internal/DelayedClientTransport;->defaultAppExecutor:Ljava/util/concurrent/Executor;

    .line 294
    .local v7, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual {v5}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 295
    invoke-virtual {v5}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    .line 297
    :cond_1
    new-instance v8, Lio/grpc/internal/DelayedClientTransport$5;

    invoke-direct {v8, p0, v3, v6}, Lio/grpc/internal/DelayedClientTransport$5;-><init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/internal/DelayedClientTransport$PendingStream;Lio/grpc/internal/ClientTransport;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 303
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .end local v3    # "stream":Lio/grpc/internal/DelayedClientTransport$PendingStream;
    .end local v4    # "pickResult":Lio/grpc/LoadBalancer$PickResult;
    .end local v5    # "callOptions":Lio/grpc/CallOptions;
    .end local v6    # "transport":Lio/grpc/internal/ClientTransport;
    .end local v7    # "executor":Ljava/util/concurrent/Executor;
    :cond_2
    goto :goto_0

    .line 307
    :cond_3
    iget-object v3, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 311
    :try_start_1
    invoke-virtual {p0}, Lio/grpc/internal/DelayedClientTransport;->hasPendingStreams()Z

    move-result v0

    if-nez v0, :cond_4

    .line 312
    monitor-exit v3

    return-void

    .line 314
    :cond_4
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 317
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 318
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    .line 320
    :cond_5
    invoke-virtual {p0}, Lio/grpc/internal/DelayedClientTransport;->hasPendingStreams()Z

    move-result v0

    if-nez v0, :cond_6

    .line 326
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->syncContext:Lio/grpc/SynchronizationContext;

    iget-object v4, p0, Lio/grpc/internal/DelayedClientTransport;->reportTransportNotInUse:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 327
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->shutdownStatus:Lio/grpc/Status;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->reportTransportTerminated:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 328
    iget-object v4, p0, Lio/grpc/internal/DelayedClientTransport;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v4, v0}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->reportTransportTerminated:Ljava/lang/Runnable;

    .line 332
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->drain()V

    .line 334
    return-void

    .line 332
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 278
    .end local v1    # "toProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/internal/DelayedClientTransport$PendingStream;>;"
    .end local v2    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/internal/DelayedClientTransport$PendingStream;>;"
    :cond_7
    :goto_1
    :try_start_3
    monitor-exit v0

    return-void

    .line 281
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final shutdown(Lio/grpc/Status;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 203
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->shutdownStatus:Lio/grpc/Status;

    if-eqz v1, :cond_0

    .line 205
    monitor-exit v0

    return-void

    .line 207
    :cond_0
    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport;->shutdownStatus:Lio/grpc/Status;

    .line 208
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v2, Lio/grpc/internal/DelayedClientTransport$4;

    invoke-direct {v2, p0, p1}, Lio/grpc/internal/DelayedClientTransport$4;-><init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/Status;)V

    invoke-virtual {v1, v2}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 214
    invoke-virtual {p0}, Lio/grpc/internal/DelayedClientTransport;->hasPendingStreams()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->reportTransportTerminated:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 215
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v2, v1}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->reportTransportTerminated:Ljava/lang/Runnable;

    .line 218
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->drain()V

    .line 220
    return-void

    .line 218
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final shutdownNow(Lio/grpc/Status;)V
    .locals 5
    .param p1, "status"    # Lio/grpc/Status;

    .line 228
    invoke-virtual {p0, p1}, Lio/grpc/internal/DelayedClientTransport;->shutdown(Lio/grpc/Status;)V

    .line 231
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    move-object v2, v1

    .line 233
    .local v2, "savedPendingStreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/DelayedClientTransport$PendingStream;>;"
    iget-object v3, p0, Lio/grpc/internal/DelayedClientTransport;->reportTransportTerminated:Ljava/lang/Runnable;

    .line 234
    .local v3, "savedReportTransportTerminated":Ljava/lang/Runnable;
    const/4 v4, 0x0

    iput-object v4, p0, Lio/grpc/internal/DelayedClientTransport;->reportTransportTerminated:Ljava/lang/Runnable;

    .line 235
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    .line 238
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    if-eqz v3, :cond_2

    .line 240
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/DelayedClientTransport$PendingStream;

    .line 241
    .local v1, "stream":Lio/grpc/internal/DelayedClientTransport$PendingStream;
    invoke-virtual {v1, p1}, Lio/grpc/internal/DelayedClientTransport$PendingStream;->cancel(Lio/grpc/Status;)V

    .line 242
    .end local v1    # "stream":Lio/grpc/internal/DelayedClientTransport$PendingStream;
    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0, v3}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 247
    :cond_2
    return-void

    .line 238
    .end local v2    # "savedPendingStreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/DelayedClientTransport$PendingStream;>;"
    .end local v3    # "savedReportTransportTerminated":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "listener"    # Lio/grpc/internal/ManagedClientTransport$Listener;

    .line 104
    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    .line 105
    new-instance v0, Lio/grpc/internal/DelayedClientTransport$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedClientTransport$1;-><init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/internal/ManagedClientTransport$Listener;)V

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->reportTransportInUse:Ljava/lang/Runnable;

    .line 111
    new-instance v0, Lio/grpc/internal/DelayedClientTransport$2;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedClientTransport$2;-><init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/internal/ManagedClientTransport$Listener;)V

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->reportTransportNotInUse:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lio/grpc/internal/DelayedClientTransport$3;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedClientTransport$3;-><init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/internal/ManagedClientTransport$Listener;)V

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->reportTransportTerminated:Ljava/lang/Runnable;

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method
