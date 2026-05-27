.class public final Lio/grpc/SynchronizationContext$ScheduledHandle;
.super Ljava/lang/Object;
.source "SynchronizationContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/SynchronizationContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScheduledHandle"
.end annotation


# instance fields
.field private final future:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final runnable:Lio/grpc/SynchronizationContext$ManagedRunnable;


# direct methods
.method private constructor <init>(Lio/grpc/SynchronizationContext$ManagedRunnable;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 1
    .param p1, "runnable"    # Lio/grpc/SynchronizationContext$ManagedRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/SynchronizationContext$ManagedRunnable;",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    .line 197
    .local p2, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const-string v0, "runnable"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/SynchronizationContext$ManagedRunnable;

    iput-object v0, p0, Lio/grpc/SynchronizationContext$ScheduledHandle;->runnable:Lio/grpc/SynchronizationContext$ManagedRunnable;

    .line 199
    const-string v0, "future"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    iput-object v0, p0, Lio/grpc/SynchronizationContext$ScheduledHandle;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 200
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/SynchronizationContext$ManagedRunnable;Ljava/util/concurrent/ScheduledFuture;Lio/grpc/SynchronizationContext$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/SynchronizationContext$ManagedRunnable;
    .param p2, "x1"    # Ljava/util/concurrent/ScheduledFuture;
    .param p3, "x2"    # Lio/grpc/SynchronizationContext$1;

    .line 193
    invoke-direct {p0, p1, p2}, Lio/grpc/SynchronizationContext$ScheduledHandle;-><init>(Lio/grpc/SynchronizationContext$ManagedRunnable;Ljava/util/concurrent/ScheduledFuture;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 206
    iget-object v0, p0, Lio/grpc/SynchronizationContext$ScheduledHandle;->runnable:Lio/grpc/SynchronizationContext$ManagedRunnable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/grpc/SynchronizationContext$ManagedRunnable;->isCancelled:Z

    .line 207
    iget-object v0, p0, Lio/grpc/SynchronizationContext$ScheduledHandle;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 208
    return-void
.end method

.method public isPending()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lio/grpc/SynchronizationContext$ScheduledHandle;->runnable:Lio/grpc/SynchronizationContext$ManagedRunnable;

    iget-boolean v0, v0, Lio/grpc/SynchronizationContext$ManagedRunnable;->hasStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/SynchronizationContext$ScheduledHandle;->runnable:Lio/grpc/SynchronizationContext$ManagedRunnable;

    iget-boolean v0, v0, Lio/grpc/SynchronizationContext$ManagedRunnable;->isCancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
