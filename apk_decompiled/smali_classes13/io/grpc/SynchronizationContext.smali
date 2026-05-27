.class public final Lio/grpc/SynchronizationContext;
.super Ljava/lang/Object;
.source "SynchronizationContext.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/SynchronizationContext$ScheduledHandle;,
        Lio/grpc/SynchronizationContext$ManagedRunnable;
    }
.end annotation


# instance fields
.field private final drainingThread:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1
    .param p1, "uncaughtExceptionHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lio/grpc/SynchronizationContext;->queue:Ljava/util/Queue;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/grpc/SynchronizationContext;->drainingThread:Ljava/util/concurrent/atomic/AtomicReference;

    .line 75
    nop

    .line 76
    const-string v0, "uncaughtExceptionHandler"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v0, p0, Lio/grpc/SynchronizationContext;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 77
    return-void
.end method


# virtual methods
.method public final drain()V
    .locals 5

    .line 88
    :cond_0
    iget-object v0, p0, Lio/grpc/SynchronizationContext;->drainingThread:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    return-void

    .line 93
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/grpc/SynchronizationContext;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v0

    .local v1, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_2

    .line 95
    :try_start_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :goto_1
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v3, p0, Lio/grpc/SynchronizationContext;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "t":Ljava/lang/Throwable;
    goto :goto_1

    .line 101
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_2
    iget-object v0, p0, Lio/grpc/SynchronizationContext;->drainingThread:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 102
    nop

    .line 104
    iget-object v0, p0, Lio/grpc/SynchronizationContext;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 101
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/grpc/SynchronizationContext;->drainingThread:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 126
    invoke-virtual {p0, p1}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {p0}, Lio/grpc/SynchronizationContext;->drain()V

    .line 128
    return-void
.end method

.method public final executeLater(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 115
    iget-object v0, p0, Lio/grpc/SynchronizationContext;->queue:Ljava/util/Queue;

    const-string v1, "runnable is null"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public final schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/SynchronizationContext$ScheduledHandle;
    .locals 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "timerService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 151
    new-instance v0, Lio/grpc/SynchronizationContext$ManagedRunnable;

    invoke-direct {v0, p1}, Lio/grpc/SynchronizationContext$ManagedRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 152
    .local v0, "runnable":Lio/grpc/SynchronizationContext$ManagedRunnable;
    new-instance v1, Lio/grpc/SynchronizationContext$1;

    invoke-direct {v1, p0, v0, p1}, Lio/grpc/SynchronizationContext$1;-><init>(Lio/grpc/SynchronizationContext;Lio/grpc/SynchronizationContext$ManagedRunnable;Ljava/lang/Runnable;)V

    invoke-interface {p5, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 163
    .local v1, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    new-instance v2, Lio/grpc/SynchronizationContext$ScheduledHandle;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lio/grpc/SynchronizationContext$ScheduledHandle;-><init>(Lio/grpc/SynchronizationContext$ManagedRunnable;Ljava/util/concurrent/ScheduledFuture;Lio/grpc/SynchronizationContext$1;)V

    return-object v2
.end method

.method public throwIfNotInThisSynchronizationContext()V
    .locals 2

    .line 135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/SynchronizationContext;->drainingThread:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not called from the SynchronizationContext"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 137
    return-void
.end method
