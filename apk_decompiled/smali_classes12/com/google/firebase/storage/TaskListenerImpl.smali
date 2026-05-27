.class Lcom/google/firebase/storage/TaskListenerImpl;
.super Ljava/lang/Object;
.source "TaskListenerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListenerTypeT:Ljava/lang/Object;",
        "ResultT::",
        "Lcom/google/firebase/storage/StorageTask$ProvideError;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final handlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "T",
            "ListenerTypeT;",
            "Lcom/google/firebase/storage/internal/SmartHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final listenerQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "T",
            "ListenerTypeT;",
            ">;"
        }
    .end annotation
.end field

.field private onRaise:Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl$OnRaise<",
            "T",
            "ListenerTypeT;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private targetStates:I

.field private task:Lcom/google/firebase/storage/StorageTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V
    .locals 1
    .param p2, "targetInternalStates"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;I",
            "Lcom/google/firebase/storage/TaskListenerImpl$OnRaise<",
            "T",
            "ListenerTypeT;",
            "TResultT;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/google/firebase/storage/TaskListenerImpl;, "Lcom/google/firebase/storage/TaskListenerImpl<TListenerTypeT;TResultT;>;"
    .local p1, "task":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p3, "onRaise":Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;, "Lcom/google/firebase/storage/TaskListenerImpl$OnRaise<TListenerTypeT;TResultT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->listenerQueue:Ljava/util/Queue;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->handlerMap:Ljava/util/HashMap;

    .line 43
    iput-object p1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    .line 44
    iput p2, p0, Lcom/google/firebase/storage/TaskListenerImpl;->targetStates:I

    .line 45
    iput-object p3, p0, Lcom/google/firebase/storage/TaskListenerImpl;->onRaise:Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    .line 46
    return-void
.end method


# virtual methods
.method public addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "T",
            "ListenerTypeT;",
            ")V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/google/firebase/storage/TaskListenerImpl;, "Lcom/google/firebase/storage/TaskListenerImpl<TListenerTypeT;TResultT;>;"
    .local p3, "listener":Ljava/lang/Object;, "TListenerTypeT;"
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "shouldFire":Z
    iget-object v1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageTask;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v2

    iget v3, p0, Lcom/google/firebase/storage/TaskListenerImpl;->targetStates:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/storage/TaskListenerImpl;->listenerQueue:Ljava/util/Queue;

    invoke-interface {v2, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v2, Lcom/google/firebase/storage/internal/SmartHandler;

    invoke-direct {v2, p2}, Lcom/google/firebase/storage/internal/SmartHandler;-><init>(Ljava/util/concurrent/Executor;)V

    .line 67
    .local v2, "handler":Lcom/google/firebase/storage/internal/SmartHandler;
    iget-object v3, p0, Lcom/google/firebase/storage/TaskListenerImpl;->handlerMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    if-eqz p1, :cond_3

    .line 69
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_2

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Activity is already destroyed!"

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 72
    :cond_2
    invoke-static {}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->getInstance()Lcom/google/firebase/storage/internal/ActivityLifecycleListener;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$9S735gSTLEjyjiLA9feZHcjz9nc;

    invoke-direct {v4, p0, p3}, Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$9S735gSTLEjyjiLA9feZHcjz9nc;-><init>(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v3, p1, p3, v4}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->runOnActivityStopped(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 75
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    iget-object v1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageTask;->snapState()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v1

    .line 79
    .local v1, "snappedState":Lcom/google/firebase/storage/StorageTask$ProvideError;, "TResultT;"
    new-instance v3, Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$jo6z-BgrthwDXSAznMNohfdE2VU;

    invoke-direct {v3, p0, p3, v1}, Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$jo6z-BgrthwDXSAznMNohfdE2VU;-><init>(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/storage/internal/SmartHandler;->callBack(Ljava/lang/Runnable;)V

    .line 81
    .end local v1    # "snappedState":Lcom/google/firebase/storage/StorageTask$ProvideError;, "TResultT;"
    :cond_4
    return-void

    .line 75
    .end local v2    # "handler":Lcom/google/firebase/storage/internal/SmartHandler;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getListenerCount()I
    .locals 2

    .line 50
    .local p0, "this":Lcom/google/firebase/storage/TaskListenerImpl;, "Lcom/google/firebase/storage/TaskListenerImpl<TListenerTypeT;TResultT;>;"
    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->listenerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->handlerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public synthetic lambda$addListener$0$TaskListenerImpl(Ljava/lang/Object;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Object;

    .line 73
    .local p0, "this":Lcom/google/firebase/storage/TaskListenerImpl;, "Lcom/google/firebase/storage/TaskListenerImpl<TListenerTypeT;TResultT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$addListener$1$TaskListenerImpl(Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "snappedState"    # Lcom/google/firebase/storage/StorageTask$ProvideError;

    .line 79
    .local p0, "this":Lcom/google/firebase/storage/TaskListenerImpl;, "Lcom/google/firebase/storage/TaskListenerImpl<TListenerTypeT;TResultT;>;"
    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->onRaise:Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;->raise(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onInternalStateChanged$2$TaskListenerImpl(Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 1
    .param p1, "finalCallback"    # Ljava/lang/Object;
    .param p2, "snappedState"    # Lcom/google/firebase/storage/StorageTask$ProvideError;

    .line 90
    .local p0, "this":Lcom/google/firebase/storage/TaskListenerImpl;, "Lcom/google/firebase/storage/TaskListenerImpl<TListenerTypeT;TResultT;>;"
    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->onRaise:Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;->raise(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onInternalStateChanged()V
    .locals 6

    .line 84
    .local p0, "this":Lcom/google/firebase/storage/TaskListenerImpl;, "Lcom/google/firebase/storage/TaskListenerImpl<TListenerTypeT;TResultT;>;"
    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    iget v1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->targetStates:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->snapState()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    .line 86
    .local v0, "snappedState":Lcom/google/firebase/storage/StorageTask$ProvideError;, "TResultT;"
    iget-object v1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->listenerQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 87
    .local v2, "c":Ljava/lang/Object;, "TListenerTypeT;"
    move-object v3, v2

    .line 88
    .local v3, "finalCallback":Ljava/lang/Object;, "TListenerTypeT;"
    iget-object v4, p0, Lcom/google/firebase/storage/TaskListenerImpl;->handlerMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/storage/internal/SmartHandler;

    .line 89
    .local v4, "handler":Lcom/google/firebase/storage/internal/SmartHandler;
    if-eqz v4, :cond_0

    .line 90
    new-instance v5, Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$S8elBxPWPDCBbbHv0Z6yA1jvX68;

    invoke-direct {v5, p0, v3, v0}, Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$S8elBxPWPDCBbbHv0Z6yA1jvX68;-><init>(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V

    invoke-virtual {v4, v5}, Lcom/google/firebase/storage/internal/SmartHandler;->callBack(Ljava/lang/Runnable;)V

    .line 92
    .end local v2    # "c":Ljava/lang/Object;, "TListenerTypeT;"
    .end local v3    # "finalCallback":Ljava/lang/Object;, "TListenerTypeT;"
    .end local v4    # "handler":Lcom/google/firebase/storage/internal/SmartHandler;
    :cond_0
    goto :goto_0

    .line 94
    .end local v0    # "snappedState":Lcom/google/firebase/storage/StorageTask$ProvideError;, "TResultT;"
    :cond_1
    return-void
.end method

.method public removeListener(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListenerTypeT;",
            ")V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/google/firebase/storage/TaskListenerImpl;, "Lcom/google/firebase/storage/TaskListenerImpl<TListenerTypeT;TResultT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TListenerTypeT;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->getSyncObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->handlerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->listenerQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 103
    invoke-static {}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->getInstance()Lcom/google/firebase/storage/internal/ActivityLifecycleListener;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->removeCookie(Ljava/lang/Object;)V

    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
