.class public final Lio/grpc/internal/SharedResourceHolder;
.super Ljava/lang/Object;
.source "SharedResourceHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/SharedResourceHolder$Instance;,
        Lio/grpc/internal/SharedResourceHolder$ScheduledExecutorFactory;,
        Lio/grpc/internal/SharedResourceHolder$Resource;
    }
.end annotation


# static fields
.field static final DESTROY_DELAY_SECONDS:J = 0x1L

.field private static final holder:Lio/grpc/internal/SharedResourceHolder;


# instance fields
.field private destroyer:Ljava/util/concurrent/ScheduledExecutorService;

.field private final destroyerFactory:Lio/grpc/internal/SharedResourceHolder$ScheduledExecutorFactory;

.field private final instances:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "*>;",
            "Lio/grpc/internal/SharedResourceHolder$Instance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lio/grpc/internal/SharedResourceHolder;

    new-instance v1, Lio/grpc/internal/SharedResourceHolder$1;

    invoke-direct {v1}, Lio/grpc/internal/SharedResourceHolder$1;-><init>()V

    invoke-direct {v0, v1}, Lio/grpc/internal/SharedResourceHolder;-><init>(Lio/grpc/internal/SharedResourceHolder$ScheduledExecutorFactory;)V

    sput-object v0, Lio/grpc/internal/SharedResourceHolder;->holder:Lio/grpc/internal/SharedResourceHolder;

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/SharedResourceHolder$ScheduledExecutorFactory;)V
    .locals 1
    .param p1, "destroyerFactory"    # Lio/grpc/internal/SharedResourceHolder$ScheduledExecutorFactory;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/SharedResourceHolder;->instances:Ljava/util/IdentityHashMap;

    .line 64
    iput-object p1, p0, Lio/grpc/internal/SharedResourceHolder;->destroyerFactory:Lio/grpc/internal/SharedResourceHolder$ScheduledExecutorFactory;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/SharedResourceHolder;)Ljava/util/IdentityHashMap;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/SharedResourceHolder;

    .line 42
    iget-object v0, p0, Lio/grpc/internal/SharedResourceHolder;->instances:Ljava/util/IdentityHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/SharedResourceHolder;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/SharedResourceHolder;

    .line 42
    iget-object v0, p0, Lio/grpc/internal/SharedResourceHolder;->destroyer:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$102(Lio/grpc/internal/SharedResourceHolder;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/SharedResourceHolder;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    iput-object p1, p0, Lio/grpc/internal/SharedResourceHolder;->destroyer:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1
.end method

.method public static get(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 74
    .local p0, "resource":Lio/grpc/internal/SharedResourceHolder$Resource;, "Lio/grpc/internal/SharedResourceHolder$Resource<TT;>;"
    sget-object v0, Lio/grpc/internal/SharedResourceHolder;->holder:Lio/grpc/internal/SharedResourceHolder;

    invoke-virtual {v0, p0}, Lio/grpc/internal/SharedResourceHolder;->getInternal(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static release(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 92
    .local p0, "resource":Lio/grpc/internal/SharedResourceHolder$Resource;, "Lio/grpc/internal/SharedResourceHolder$Resource<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    sget-object v0, Lio/grpc/internal/SharedResourceHolder;->holder:Lio/grpc/internal/SharedResourceHolder;

    invoke-virtual {v0, p0, p1}, Lio/grpc/internal/SharedResourceHolder;->releaseInternal(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized getInternal(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "TT;>;)TT;"
        }
    .end annotation

    .local p1, "resource":Lio/grpc/internal/SharedResourceHolder$Resource;, "Lio/grpc/internal/SharedResourceHolder$Resource<TT;>;"
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/SharedResourceHolder;->instances:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/SharedResourceHolder$Instance;

    .line 103
    .local v0, "instance":Lio/grpc/internal/SharedResourceHolder$Instance;
    if-nez v0, :cond_0

    .line 104
    new-instance v1, Lio/grpc/internal/SharedResourceHolder$Instance;

    invoke-interface {p1}, Lio/grpc/internal/SharedResourceHolder$Resource;->create()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/internal/SharedResourceHolder$Instance;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 105
    iget-object v1, p0, Lio/grpc/internal/SharedResourceHolder;->instances:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .end local p0    # "this":Lio/grpc/internal/SharedResourceHolder;
    :cond_0
    iget-object v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->destroyTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->destroyTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 109
    const/4 v1, 0x0

    iput-object v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->destroyTask:Ljava/util/concurrent/ScheduledFuture;

    .line 111
    :cond_1
    iget v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->refcount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->refcount:I

    .line 112
    iget-object v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->payload:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 101
    .end local v0    # "instance":Lio/grpc/internal/SharedResourceHolder$Instance;
    .end local p1    # "resource":Lio/grpc/internal/SharedResourceHolder$Resource;, "Lio/grpc/internal/SharedResourceHolder$Resource<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized releaseInternal(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .local p1, "resource":Lio/grpc/internal/SharedResourceHolder$Resource;, "Lio/grpc/internal/SharedResourceHolder$Resource<TT;>;"
    .local p2, "instance":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/SharedResourceHolder;->instances:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/SharedResourceHolder$Instance;

    .line 120
    .local v0, "cached":Lio/grpc/internal/SharedResourceHolder$Instance;
    if-eqz v0, :cond_5

    .line 123
    iget-object v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->payload:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Releasing the wrong instance"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 124
    iget v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->refcount:I

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v4, "Refcount has already reached zero"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 125
    iget v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->refcount:I

    sub-int/2addr v1, v3

    iput v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->refcount:I

    .line 126
    iget v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->refcount:I

    if-nez v1, :cond_4

    .line 127
    iget-object v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->destroyTask:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    const-string v1, "Destroy task already scheduled"

    invoke-static {v2, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lio/grpc/internal/SharedResourceHolder;->destroyer:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_3

    .line 130
    iget-object v1, p0, Lio/grpc/internal/SharedResourceHolder;->destroyerFactory:Lio/grpc/internal/SharedResourceHolder$ScheduledExecutorFactory;

    invoke-interface {v1}, Lio/grpc/internal/SharedResourceHolder$ScheduledExecutorFactory;->createScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/SharedResourceHolder;->destroyer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 132
    .end local p0    # "this":Lio/grpc/internal/SharedResourceHolder;
    :cond_3
    iget-object v1, p0, Lio/grpc/internal/SharedResourceHolder;->destroyer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lio/grpc/internal/LogExceptionRunnable;

    new-instance v3, Lio/grpc/internal/SharedResourceHolder$2;

    invoke-direct {v3, p0, v0, p1, p2}, Lio/grpc/internal/SharedResourceHolder$2;-><init>(Lio/grpc/internal/SharedResourceHolder;Lio/grpc/internal/SharedResourceHolder$Instance;Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lio/grpc/internal/LogExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->destroyTask:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_4
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 121
    :cond_5
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No cached instance found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v0    # "cached":Lio/grpc/internal/SharedResourceHolder$Instance;
    .end local p1    # "resource":Lio/grpc/internal/SharedResourceHolder$Resource;, "Lio/grpc/internal/SharedResourceHolder$Resource<TT;>;"
    .end local p2    # "instance":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
