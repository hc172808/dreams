.class final Lio/grpc/stub/ClientCalls$ThreadlessExecutor;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;
.source "ClientCalls.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadlessExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentLinkedQueue<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 663
    const-class v0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 668
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-void
.end method

.method private static throwIfInterrupted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 698
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 701
    return-void

    .line 699
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 705
    invoke-virtual {p0, p1}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->add(Ljava/lang/Object;)Z

    .line 706
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->waiter:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 707
    return-void
.end method

.method public waitAndDrain()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 675
    invoke-static {}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->throwIfInterrupted()V

    .line 676
    invoke-virtual {p0}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 677
    .local v0, "runnable":Ljava/lang/Runnable;
    if-nez v0, :cond_1

    .line 678
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->waiter:Ljava/lang/Thread;

    .line 680
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object v0, v2

    if-nez v2, :cond_0

    .line 681
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 682
    invoke-static {}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->throwIfInterrupted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 685
    :cond_0
    iput-object v1, p0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->waiter:Ljava/lang/Thread;

    .line 686
    goto :goto_1

    .line 685
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->waiter:Ljava/lang/Thread;

    throw v2

    .line 690
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 693
    goto :goto_2

    .line 691
    :catchall_1
    move-exception v1

    .line 692
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Runnable threw exception"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 694
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {p0}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    move-object v0, v1

    if-nez v1, :cond_2

    .line 695
    return-void

    .line 694
    :cond_2
    goto :goto_1
.end method
