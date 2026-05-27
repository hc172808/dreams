.class final Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated$1ServerStreamCancellationListener;
.super Ljava/lang/Object;
.source "ServerImpl.java"

# interfaces
.implements Lio/grpc/Context$CancellationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->runInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServerStreamCancellationListener"
.end annotation


# instance fields
.field final synthetic this$2:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;


# direct methods
.method constructor <init>(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;)V
    .locals 0
    .param p1, "this$2"    # Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;

    .line 572
    iput-object p1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated$1ServerStreamCancellationListener;->this$2:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled(Lio/grpc/Context;)V
    .locals 3
    .param p1, "context"    # Lio/grpc/Context;

    .line 575
    invoke-static {p1}, Lio/grpc/Contexts;->statusFromCancelled(Lio/grpc/Context;)Lio/grpc/Status;

    move-result-object v0

    .line 576
    .local v0, "status":Lio/grpc/Status;
    sget-object v1, Lio/grpc/Status;->DEADLINE_EXCEEDED:Lio/grpc/Status;

    invoke-virtual {v1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v1

    invoke-virtual {v0}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/Status$Code;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated$1ServerStreamCancellationListener;->this$2:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;

    iget-object v1, v1, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v1, v0}, Lio/grpc/internal/ServerStream;->cancel(Lio/grpc/Status;)V

    .line 581
    :cond_0
    return-void
.end method
