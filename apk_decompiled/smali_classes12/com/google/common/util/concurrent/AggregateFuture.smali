.class abstract Lcom/google/common/util/concurrent/AggregateFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "AggregateFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/AggregateFuture<",
            "TInputT;TOutputT;>.RunningState;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AggregateFuture;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    return-void
.end method

.method static synthetic access$400(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/Set;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 40
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/util/logging/Logger;
    .locals 1

    .line 40
    sget-object v0, Lcom/google/common/util/concurrent/AggregateFuture;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFuture;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .line 40
    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    return-object p1
.end method

.method private static addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .line 295
    .local p0, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 296
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 297
    .local v0, "firstTimeSeen":Z
    if-nez v0, :cond_0

    .line 304
    const/4 v1, 0x0

    return v1

    .line 295
    .end local v0    # "firstTimeSeen":Z
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 307
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected final afterDone()V
    .locals 0

    .line 51
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;->afterDone()V

    .line 52
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->releaseResources()V

    .line 53
    return-void
.end method

.method final init(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AggregateFuture<",
            "TInputT;TOutputT;>.RunningState;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    .local p1, "runningState":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .line 93
    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->access$100(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)V

    .line 94
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 4

    .line 78
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .line 79
    .local v0, "localRunningState":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    return-object v1

    .line 82
    :cond_0
    nop

    .line 83
    invoke-static {v0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->access$000(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object v2

    .line 84
    .local v2, "localFutures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;>;"
    if-eqz v2, :cond_1

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "futures=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 87
    :cond_1
    return-object v1
.end method

.method protected final releaseResources()V
    .locals 5

    .line 56
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .line 57
    .local v0, "localRunningState":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    if-eqz v0, :cond_2

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .line 60
    nop

    .line 61
    invoke-static {v0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->access$000(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    .line 62
    .local v1, "futures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->wasInterrupted()Z

    move-result v2

    .line 64
    .local v2, "wasInterrupted":Z
    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->interruptTask()V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->isCancelled()Z

    move-result v3

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 69
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 70
    .local v4, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    invoke-interface {v4, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 71
    .end local v4    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    goto :goto_1

    .line 74
    .end local v1    # "futures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;>;"
    .end local v2    # "wasInterrupted":Z
    :cond_2
    return-void
.end method
