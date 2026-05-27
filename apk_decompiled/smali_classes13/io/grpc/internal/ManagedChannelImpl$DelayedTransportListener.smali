.class final Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Lio/grpc/internal/ManagedClientTransport$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelayedTransportListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method private constructor <init>(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0

    .line 1732
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p2, "x1"    # Lio/grpc/internal/ManagedChannelImpl$1;

    .line 1732
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    return-void
.end method


# virtual methods
.method public transportInUse(Z)V
    .locals 2
    .param p1, "inUse"    # Z

    .line 1745
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$1500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/DelayedClientTransport;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    .line 1746
    return-void
.end method

.method public transportReady()V
    .locals 0

    .line 1741
    return-void
.end method

.method public transportShutdown(Lio/grpc/Status;)V
    .locals 2
    .param p1, "s"    # Lio/grpc/Status;

    .line 1735
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1400(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "Channel must have been shut down"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1736
    return-void
.end method

.method public transportTerminated()V
    .locals 2

    .line 1750
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1400(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "Channel must have been shut down"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1751
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$5502(Lio/grpc/internal/ManagedChannelImpl;Z)Z

    .line 1752
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$7100(Lio/grpc/internal/ManagedChannelImpl;Z)V

    .line 1756
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$3200(Lio/grpc/internal/ManagedChannelImpl;)V

    .line 1757
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$5000(Lio/grpc/internal/ManagedChannelImpl;)V

    .line 1758
    return-void
.end method
