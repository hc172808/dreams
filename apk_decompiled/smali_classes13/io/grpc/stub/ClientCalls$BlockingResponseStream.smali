.class final Lio/grpc/stub/ClientCalls$BlockingResponseStream;
.super Ljava/lang/Object;
.source "ClientCalls.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingResponseStream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final buffer:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final call:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "*TT;>;"
        }
    .end annotation
.end field

.field private last:Ljava/lang/Object;

.field private final listener:Lio/grpc/ClientCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final threadless:Lio/grpc/stub/ClientCalls$ThreadlessExecutor;


# direct methods
.method constructor <init>(Lio/grpc/ClientCall;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "*TT;>;)V"
        }
    .end annotation

    .line 550
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>;"
    .local p1, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<*TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;-><init>(Lio/grpc/ClientCall;Lio/grpc/stub/ClientCalls$ThreadlessExecutor;)V

    .line 551
    return-void
.end method

.method constructor <init>(Lio/grpc/ClientCall;Lio/grpc/stub/ClientCalls$ThreadlessExecutor;)V
    .locals 2
    .param p2, "threadless"    # Lio/grpc/stub/ClientCalls$ThreadlessExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "*TT;>;",
            "Lio/grpc/stub/ClientCalls$ThreadlessExecutor;",
            ")V"
        }
    .end annotation

    .line 554
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>;"
    .local p1, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<*TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->buffer:Ljava/util/concurrent/BlockingQueue;

    .line 541
    new-instance v0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;

    invoke-direct {v0, p0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;-><init>(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)V

    iput-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->listener:Lio/grpc/ClientCall$Listener;

    .line 555
    iput-object p1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    .line 556
    iput-object p2, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->threadless:Lio/grpc/stub/ClientCalls$ThreadlessExecutor;

    .line 557
    return-void
.end method

.method static synthetic access$300(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    .line 538
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->buffer:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private waitForNext()Ljava/lang/Object;
    .locals 5

    .line 564
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>;"
    const/4 v0, 0x0

    .line 566
    .local v0, "interrupt":Z
    :try_start_0
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->threadless:Lio/grpc/stub/ClientCalls$ThreadlessExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Thread interrupted"

    if-nez v1, :cond_1

    .line 569
    :goto_0
    :try_start_1
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->buffer:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    if-eqz v0, :cond_0

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 569
    :cond_0
    return-object v1

    .line 570
    :catch_0
    move-exception v1

    .line 571
    .local v1, "ie":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 572
    :try_start_2
    iget-object v3, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    invoke-virtual {v3, v2, v1}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 574
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 578
    :cond_1
    :goto_1
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->buffer:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v1

    .local v3, "next":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 580
    :try_start_3
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->threadless:Lio/grpc/stub/ClientCalls$ThreadlessExecutor;

    invoke-virtual {v1}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->waitAndDrain()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 585
    :goto_2
    goto :goto_1

    .line 581
    :catch_1
    move-exception v1

    .line 582
    .restart local v1    # "ie":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 583
    :try_start_4
    iget-object v4, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    invoke-virtual {v4, v2, v1}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "ie":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 587
    :cond_2
    nop

    .line 590
    if-eqz v0, :cond_3

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 587
    :cond_3
    return-object v3

    .line 590
    .end local v3    # "next":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 598
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 601
    invoke-direct {p0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->waitForNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    goto :goto_0

    .line 603
    :cond_0
    instance-of v1, v0, Lio/grpc/StatusRuntimeException;

    if-nez v1, :cond_2

    .line 608
    if-eq v0, p0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 605
    :cond_2
    check-cast v0, Lio/grpc/StatusRuntimeException;

    .line 606
    .local v0, "e":Lio/grpc/StatusRuntimeException;
    invoke-virtual {v0}, Lio/grpc/StatusRuntimeException;->getStatus()Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v0}, Lio/grpc/StatusRuntimeException;->getTrailers()Lio/grpc/Metadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/Status;->asRuntimeException(Lio/grpc/Metadata;)Lio/grpc/StatusRuntimeException;

    move-result-object v1

    throw v1
.end method

.method listener()Lio/grpc/ClientCall$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ClientCall$Listener<",
            "TT;>;"
        }
    .end annotation

    .line 560
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->listener:Lio/grpc/ClientCall$Listener;

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 613
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>;"
    invoke-virtual {p0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lio/grpc/ClientCall;->request(I)V

    .line 619
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    .local v1, "tmp":Ljava/lang/Object;, "TT;"
    nop

    .line 622
    iput-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    .line 620
    return-object v1

    .line 622
    .end local v1    # "tmp":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    throw v1

    .line 614
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 628
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
