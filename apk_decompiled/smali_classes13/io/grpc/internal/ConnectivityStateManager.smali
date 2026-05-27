.class final Lio/grpc/internal/ConnectivityStateManager;
.super Ljava/lang/Object;
.source "ConnectivityStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ConnectivityStateManager$Listener;
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/grpc/internal/ConnectivityStateManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile state:Lio/grpc/ConnectivityState;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ConnectivityStateManager;->listeners:Ljava/util/ArrayList;

    .line 38
    sget-object v0, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    iput-object v0, p0, Lio/grpc/internal/ConnectivityStateManager;->state:Lio/grpc/ConnectivityState;

    return-void
.end method


# virtual methods
.method getState()Lio/grpc/ConnectivityState;
    .locals 3

    .line 83
    iget-object v0, p0, Lio/grpc/internal/ConnectivityStateManager;->state:Lio/grpc/ConnectivityState;

    .line 84
    .local v0, "stateCopy":Lio/grpc/ConnectivityState;
    if-eqz v0, :cond_0

    .line 87
    return-object v0

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Channel state API is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method gotoState(Lio/grpc/ConnectivityState;)V
    .locals 3
    .param p1, "newState"    # Lio/grpc/ConnectivityState;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 63
    const-string v0, "newState"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lio/grpc/internal/ConnectivityStateManager;->state:Lio/grpc/ConnectivityState;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lio/grpc/internal/ConnectivityStateManager;->state:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_1

    .line 65
    iput-object p1, p0, Lio/grpc/internal/ConnectivityStateManager;->state:Lio/grpc/ConnectivityState;

    .line 66
    iget-object v0, p0, Lio/grpc/internal/ConnectivityStateManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ConnectivityStateManager;->listeners:Ljava/util/ArrayList;

    .line 72
    .local v0, "savedListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/internal/ConnectivityStateManager$Listener;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/grpc/internal/ConnectivityStateManager;->listeners:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/ConnectivityStateManager$Listener;

    .line 74
    .local v2, "listener":Lio/grpc/internal/ConnectivityStateManager$Listener;
    invoke-virtual {v2}, Lio/grpc/internal/ConnectivityStateManager$Listener;->runInExecutor()V

    .line 75
    .end local v2    # "listener":Lio/grpc/internal/ConnectivityStateManager$Listener;
    goto :goto_0

    .line 77
    .end local v0    # "savedListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/internal/ConnectivityStateManager$Listener;>;"
    :cond_1
    return-void
.end method

.method notifyWhenStateChanged(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lio/grpc/ConnectivityState;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "source"    # Lio/grpc/ConnectivityState;

    .line 46
    const-string v0, "callback"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "executor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "source"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v0, Lio/grpc/internal/ConnectivityStateManager$Listener;

    invoke-direct {v0, p1, p2}, Lio/grpc/internal/ConnectivityStateManager$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 51
    .local v0, "stateChangeListener":Lio/grpc/internal/ConnectivityStateManager$Listener;
    iget-object v1, p0, Lio/grpc/internal/ConnectivityStateManager;->state:Lio/grpc/ConnectivityState;

    if-eq v1, p3, :cond_0

    .line 52
    invoke-virtual {v0}, Lio/grpc/internal/ConnectivityStateManager$Listener;->runInExecutor()V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/ConnectivityStateManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_0
    return-void
.end method
