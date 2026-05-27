.class final Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;
.super Ljava/lang/Object;
.source "ServerImpl.java"

# interfaces
.implements Lio/grpc/internal/ServerStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JumpToApplicationThreadServerStreamListener"
.end annotation


# instance fields
.field private final callExecutor:Ljava/util/concurrent/Executor;

.field private final cancelExecutor:Ljava/util/concurrent/Executor;

.field private final context:Lio/grpc/Context$CancellableContext;

.field private listener:Lio/grpc/internal/ServerStreamListener;

.field private final stream:Lio/grpc/internal/ServerStream;

.field private final tag:Lio/perfmark/Tag;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lio/grpc/internal/ServerStream;Lio/grpc/Context$CancellableContext;Lio/perfmark/Tag;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "cancelExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "stream"    # Lio/grpc/internal/ServerStream;
    .param p4, "context"    # Lio/grpc/Context$CancellableContext;
    .param p5, "tag"    # Lio/perfmark/Tag;

    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput-object p1, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->callExecutor:Ljava/util/concurrent/Executor;

    .line 735
    iput-object p2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->cancelExecutor:Ljava/util/concurrent/Executor;

    .line 736
    iput-object p3, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->stream:Lio/grpc/internal/ServerStream;

    .line 737
    iput-object p4, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->context:Lio/grpc/Context$CancellableContext;

    .line 738
    iput-object p5, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->tag:Lio/perfmark/Tag;

    .line 739
    return-void
.end method

.method static synthetic access$2700(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/grpc/Context$CancellableContext;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    .line 723
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->context:Lio/grpc/Context$CancellableContext;

    return-object v0
.end method

.method static synthetic access$2800(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/perfmark/Tag;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    .line 723
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->tag:Lio/perfmark/Tag;

    return-object v0
.end method

.method static synthetic access$2900(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/grpc/internal/ServerStreamListener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    .line 723
    invoke-direct {p0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->getListener()Lio/grpc/internal/ServerStreamListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    .line 723
    invoke-direct {p0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->internalClose()V

    return-void
.end method

.method private closedInternal(Lio/grpc/Status;)V
    .locals 4
    .param p1, "status"    # Lio/grpc/Status;

    .line 850
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->cancelExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/ServerImpl$ContextCloser;

    iget-object v2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->context:Lio/grpc/Context$CancellableContext;

    invoke-virtual {p1}, Lio/grpc/Status;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/grpc/internal/ServerImpl$ContextCloser;-><init>(Lio/grpc/Context$CancellableContext;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 855
    :cond_0
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    .line 874
    .local v0, "link":Lio/perfmark/Link;
    iget-object v1, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1Closed;

    invoke-direct {v2, p0, v0, p1}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1Closed;-><init>(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;Lio/perfmark/Link;Lio/grpc/Status;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 875
    return-void
.end method

.method private getListener()Lio/grpc/internal/ServerStreamListener;
    .locals 2

    .line 745
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->listener:Lio/grpc/internal/ServerStreamListener;

    if-eqz v0, :cond_0

    .line 748
    return-object v0

    .line 746
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener unset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private internalClose()V
    .locals 3

    .line 763
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->stream:Lio/grpc/internal/ServerStream;

    sget-object v1, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {v0, v1, v2}, Lio/grpc/internal/ServerStream;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 764
    return-void
.end method


# virtual methods
.method public closed(Lio/grpc/Status;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 839
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->tag:Lio/perfmark/Tag;

    const-string v1, "ServerStreamListener.closed"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 841
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->closedInternal(Lio/grpc/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 844
    nop

    .line 845
    return-void

    .line 843
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method

.method public halfClosed()V
    .locals 4

    .line 804
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->tag:Lio/perfmark/Tag;

    const-string v1, "ServerStreamListener.halfClosed"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 805
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    .line 831
    .local v0, "link":Lio/perfmark/Link;
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1HalfClosed;

    invoke-direct {v3, p0, v0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1HalfClosed;-><init>(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;Lio/perfmark/Link;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 834
    nop

    .line 835
    return-void

    .line 833
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v3}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v2
.end method

.method public messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 4
    .param p1, "producer"    # Lio/grpc/internal/StreamListener$MessageProducer;

    .line 768
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->tag:Lio/perfmark/Tag;

    const-string v1, "ServerStreamListener.messagesAvailable"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 769
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    .line 796
    .local v0, "link":Lio/perfmark/Link;
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1MessagesAvailable;

    invoke-direct {v3, p0, v0, p1}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1MessagesAvailable;-><init>(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;Lio/perfmark/Link;Lio/grpc/internal/StreamListener$MessageProducer;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 799
    nop

    .line 800
    return-void

    .line 798
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v3}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v2
.end method

.method public onReady()V
    .locals 4

    .line 879
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->tag:Lio/perfmark/Tag;

    const-string v1, "ServerStreamListener.onReady"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 880
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    .line 905
    .local v0, "link":Lio/perfmark/Link;
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1OnReady;

    invoke-direct {v3, p0, v0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1OnReady;-><init>(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;Lio/perfmark/Link;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 908
    nop

    .line 909
    return-void

    .line 907
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v3}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v2
.end method

.method setListener(Lio/grpc/internal/ServerStreamListener;)V
    .locals 2
    .param p1, "listener"    # Lio/grpc/internal/ServerStreamListener;

    .line 753
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->listener:Lio/grpc/internal/ServerStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Listener already set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 755
    iput-object p1, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->listener:Lio/grpc/internal/ServerStreamListener;

    .line 756
    return-void
.end method
