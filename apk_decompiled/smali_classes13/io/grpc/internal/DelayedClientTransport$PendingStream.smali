.class Lio/grpc/internal/DelayedClientTransport$PendingStream;
.super Lio/grpc/internal/DelayedStream;
.source "DelayedClientTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DelayedClientTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingStream"
.end annotation


# instance fields
.field private final args:Lio/grpc/LoadBalancer$PickSubchannelArgs;

.field private final context:Lio/grpc/Context;

.field final synthetic this$0:Lio/grpc/internal/DelayedClientTransport;


# direct methods
.method private constructor <init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/LoadBalancer$PickSubchannelArgs;)V
    .locals 0
    .param p2, "args"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 345
    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-direct {p0}, Lio/grpc/internal/DelayedStream;-><init>()V

    .line 343
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->context:Lio/grpc/Context;

    .line 346
    iput-object p2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->args:Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 347
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/LoadBalancer$PickSubchannelArgs;Lio/grpc/internal/DelayedClientTransport$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/DelayedClientTransport;
    .param p2, "x1"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;
    .param p3, "x2"    # Lio/grpc/internal/DelayedClientTransport$1;

    .line 341
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/DelayedClientTransport$PendingStream;-><init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/LoadBalancer$PickSubchannelArgs;)V

    return-void
.end method

.method static synthetic access$200(Lio/grpc/internal/DelayedClientTransport$PendingStream;)Lio/grpc/LoadBalancer$PickSubchannelArgs;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientTransport$PendingStream;

    .line 341
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->args:Lio/grpc/LoadBalancer$PickSubchannelArgs;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/internal/DelayedClientTransport$PendingStream;Lio/grpc/internal/ClientTransport;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientTransport$PendingStream;
    .param p1, "x1"    # Lio/grpc/internal/ClientTransport;

    .line 341
    invoke-direct {p0, p1}, Lio/grpc/internal/DelayedClientTransport$PendingStream;->createRealStream(Lio/grpc/internal/ClientTransport;)V

    return-void
.end method

.method private createRealStream(Lio/grpc/internal/ClientTransport;)V
    .locals 4
    .param p1, "transport"    # Lio/grpc/internal/ClientTransport;

    .line 351
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->context:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v0

    .line 353
    .local v0, "origContext":Lio/grpc/Context;
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->args:Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 354
    invoke-virtual {v1}, Lio/grpc/LoadBalancer$PickSubchannelArgs;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->args:Lio/grpc/LoadBalancer$PickSubchannelArgs;

    invoke-virtual {v2}, Lio/grpc/LoadBalancer$PickSubchannelArgs;->getHeaders()Lio/grpc/Metadata;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->args:Lio/grpc/LoadBalancer$PickSubchannelArgs;

    invoke-virtual {v3}, Lio/grpc/LoadBalancer$PickSubchannelArgs;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v3

    .line 353
    invoke-interface {p1, v1, v2, v3}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    .local v1, "realStream":Lio/grpc/internal/ClientStream;
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->context:Lio/grpc/Context;

    invoke-virtual {v2, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 357
    nop

    .line 358
    invoke-virtual {p0, v1}, Lio/grpc/internal/DelayedClientTransport$PendingStream;->setStream(Lio/grpc/internal/ClientStream;)V

    .line 359
    return-void

    .line 356
    .end local v1    # "realStream":Lio/grpc/internal/ClientStream;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->context:Lio/grpc/Context;

    invoke-virtual {v2, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw v1
.end method


# virtual methods
.method public cancel(Lio/grpc/Status;)V
    .locals 4
    .param p1, "reason"    # Lio/grpc/Status;

    .line 363
    invoke-super {p0, p1}, Lio/grpc/internal/DelayedStream;->cancel(Lio/grpc/Status;)V

    .line 364
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v0}, Lio/grpc/internal/DelayedClientTransport;->access$400(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 365
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v1}, Lio/grpc/internal/DelayedClientTransport;->access$500(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v1}, Lio/grpc/internal/DelayedClientTransport;->access$600(Lio/grpc/internal/DelayedClientTransport;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 367
    .local v1, "justRemovedAnElement":Z
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-virtual {v2}, Lio/grpc/internal/DelayedClientTransport;->hasPendingStreams()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 368
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v2}, Lio/grpc/internal/DelayedClientTransport;->access$800(Lio/grpc/internal/DelayedClientTransport;)Lio/grpc/SynchronizationContext;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v3}, Lio/grpc/internal/DelayedClientTransport;->access$700(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 369
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v2}, Lio/grpc/internal/DelayedClientTransport;->access$900(Lio/grpc/internal/DelayedClientTransport;)Lio/grpc/Status;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 370
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v2}, Lio/grpc/internal/DelayedClientTransport;->access$800(Lio/grpc/internal/DelayedClientTransport;)Lio/grpc/SynchronizationContext;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v3}, Lio/grpc/internal/DelayedClientTransport;->access$500(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 371
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/grpc/internal/DelayedClientTransport;->access$502(Lio/grpc/internal/DelayedClientTransport;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 375
    .end local v1    # "justRemovedAnElement":Z
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v0}, Lio/grpc/internal/DelayedClientTransport;->access$800(Lio/grpc/internal/DelayedClientTransport;)Lio/grpc/SynchronizationContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->drain()V

    .line 377
    return-void

    .line 375
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
