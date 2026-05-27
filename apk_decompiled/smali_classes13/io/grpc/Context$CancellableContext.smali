.class public final Lio/grpc/Context$CancellableContext;
.super Lio/grpc/Context;
.source "Context.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CancellableContext"
.end annotation


# instance fields
.field private cancellationCause:Ljava/lang/Throwable;

.field private cancelled:Z

.field private final deadline:Lio/grpc/Deadline;

.field private pendingDeadline:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final uncancellableSurrogate:Lio/grpc/Context;


# direct methods
.method private constructor <init>(Lio/grpc/Context;)V
    .locals 3
    .param p1, "parent"    # Lio/grpc/Context;

    .line 743
    iget-object v0, p1, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;Lio/grpc/Context$1;)V

    .line 744
    invoke-virtual {p1}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/Context$CancellableContext;->deadline:Lio/grpc/Deadline;

    .line 747
    new-instance v0, Lio/grpc/Context;

    iget-object v2, p0, Lio/grpc/Context$CancellableContext;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;

    invoke-direct {v0, p0, v2, v1}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;Lio/grpc/Context$1;)V

    iput-object v0, p0, Lio/grpc/Context$CancellableContext;->uncancellableSurrogate:Lio/grpc/Context;

    .line 748
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Context;Lio/grpc/Context$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/Context;
    .param p2, "x1"    # Lio/grpc/Context$1;

    .line 730
    invoke-direct {p0, p1}, Lio/grpc/Context$CancellableContext;-><init>(Lio/grpc/Context;)V

    return-void
.end method

.method private constructor <init>(Lio/grpc/Context;Lio/grpc/Deadline;)V
    .locals 3
    .param p1, "parent"    # Lio/grpc/Context;
    .param p2, "deadline"    # Lio/grpc/Deadline;

    .line 754
    iget-object v0, p1, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;Lio/grpc/Context$1;)V

    .line 755
    iput-object p2, p0, Lio/grpc/Context$CancellableContext;->deadline:Lio/grpc/Deadline;

    .line 756
    new-instance v0, Lio/grpc/Context;

    iget-object v2, p0, Lio/grpc/Context$CancellableContext;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;

    invoke-direct {v0, p0, v2, v1}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;Lio/grpc/Context$1;)V

    iput-object v0, p0, Lio/grpc/Context$CancellableContext;->uncancellableSurrogate:Lio/grpc/Context;

    .line 757
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Context;Lio/grpc/Deadline;Lio/grpc/Context$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/Context;
    .param p2, "x1"    # Lio/grpc/Deadline;
    .param p3, "x2"    # Lio/grpc/Context$1;

    .line 730
    invoke-direct {p0, p1, p2}, Lio/grpc/Context$CancellableContext;-><init>(Lio/grpc/Context;Lio/grpc/Deadline;)V

    return-void
.end method

.method static synthetic access$300(Lio/grpc/Context$CancellableContext;Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/Context$CancellableContext;
    .param p1, "x1"    # Lio/grpc/Deadline;
    .param p2, "x2"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 730
    invoke-direct {p0, p1, p2}, Lio/grpc/Context$CancellableContext;->setUpDeadlineCancellation(Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method private setUpDeadlineCancellation(Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .param p1, "deadline"    # Lio/grpc/Deadline;
    .param p2, "scheduler"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 760
    invoke-virtual {p1}, Lio/grpc/Deadline;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    monitor-enter p0

    .line 773
    :try_start_0
    new-instance v0, Lio/grpc/Context$CancellableContext$1CancelOnExpiration;

    invoke-direct {v0, p0}, Lio/grpc/Context$CancellableContext$1CancelOnExpiration;-><init>(Lio/grpc/Context$CancellableContext;)V

    invoke-virtual {p1, v0, p2}, Lio/grpc/Deadline;->runOnExpiration(Ljava/lang/Runnable;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/Context$CancellableContext;->pendingDeadline:Ljava/util/concurrent/ScheduledFuture;

    .line 774
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 777
    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "context timed out"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    .line 779
    :goto_0
    return-void
.end method


# virtual methods
.method public attach()Lio/grpc/Context;
    .locals 1

    .line 783
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->uncancellableSurrogate:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v0

    return-object v0
.end method

.method canBeCancelled()Z
    .locals 1

    .line 881
    const/4 v0, 0x1

    return v0
.end method

.method public cancel(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, "triggeredCancel":Z
    monitor-enter p0

    .line 819
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/Context$CancellableContext;->cancelled:Z

    if-nez v1, :cond_1

    .line 820
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/Context$CancellableContext;->cancelled:Z

    .line 821
    iget-object v1, p0, Lio/grpc/Context$CancellableContext;->pendingDeadline:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    .line 823
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 824
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/Context$CancellableContext;->pendingDeadline:Ljava/util/concurrent/ScheduledFuture;

    .line 826
    :cond_0
    iput-object p1, p0, Lio/grpc/Context$CancellableContext;->cancellationCause:Ljava/lang/Throwable;

    .line 827
    const/4 v0, 0x1

    .line 829
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    if-eqz v0, :cond_2

    .line 831
    invoke-virtual {p0}, Lio/grpc/Context$CancellableContext;->notifyAndClearListeners()V

    .line 833
    :cond_2
    return v0

    .line 829
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public cancellationCause()Ljava/lang/Throwable;
    .locals 1

    .line 868
    invoke-virtual {p0}, Lio/grpc/Context$CancellableContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->cancellationCause:Ljava/lang/Throwable;

    return-object v0

    .line 871
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 889
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    .line 890
    return-void
.end method

.method public detach(Lio/grpc/Context;)V
    .locals 1
    .param p1, "toAttach"    # Lio/grpc/Context;

    .line 788
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->uncancellableSurrogate:Lio/grpc/Context;

    invoke-virtual {v0, p1}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 789
    return-void
.end method

.method public detachAndCancel(Lio/grpc/Context;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "toAttach"    # Lio/grpc/Context;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 844
    :try_start_0
    invoke-virtual {p0, p1}, Lio/grpc/Context$CancellableContext;->detach(Lio/grpc/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    invoke-virtual {p0, p2}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    .line 847
    nop

    .line 848
    return-void

    .line 846
    :catchall_0
    move-exception v0

    invoke-virtual {p0, p2}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    throw v0
.end method

.method public getDeadline()Lio/grpc/Deadline;
    .locals 1

    .line 876
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->deadline:Lio/grpc/Deadline;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 852
    monitor-enter p0

    .line 853
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/Context$CancellableContext;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 854
    monitor-exit p0

    return v1

    .line 856
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    invoke-super {p0}, Lio/grpc/Context;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    invoke-super {p0}, Lio/grpc/Context;->cancellationCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    .line 861
    return v1

    .line 863
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 856
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isCurrent()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 802
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->uncancellableSurrogate:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->isCurrent()Z

    move-result v0

    return v0
.end method
