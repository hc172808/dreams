.class final Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;
.super Ljava/lang/Object;
.source "ClientCallImpl.java"

# interfaces
.implements Lio/grpc/Context$CancellationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ClientCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContextCancellationListener"
.end annotation


# instance fields
.field private observer:Lio/grpc/ClientCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/grpc/internal/ClientCallImpl;


# direct methods
.method private constructor <init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 131
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>.ContextCancellationListener;"
    .local p2, "observer":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;->observer:Lio/grpc/ClientCall$Listener;

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;Lio/grpc/internal/ClientCallImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/ClientCallImpl;
    .param p2, "x1"    # Lio/grpc/ClientCall$Listener;
    .param p3, "x2"    # Lio/grpc/internal/ClientCallImpl$1;

    .line 128
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>.ContextCancellationListener;"
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;-><init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;)V

    return-void
.end method


# virtual methods
.method public cancelled(Lio/grpc/Context;)V
    .locals 3
    .param p1, "context"    # Lio/grpc/Context;

    .line 137
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>.ContextCancellationListener;"
    invoke-virtual {p1}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Deadline;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {p1}, Lio/grpc/Contexts;->statusFromCancelled(Lio/grpc/Context;)Lio/grpc/Status;

    move-result-object v0

    .line 141
    .local v0, "status":Lio/grpc/Status;
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;->this$0:Lio/grpc/internal/ClientCallImpl;

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;->observer:Lio/grpc/ClientCall$Listener;

    invoke-static {v1, v0, v2}, Lio/grpc/internal/ClientCallImpl;->access$100(Lio/grpc/internal/ClientCallImpl;Lio/grpc/Status;Lio/grpc/ClientCall$Listener;)V

    goto :goto_1

    .line 138
    .end local v0    # "status":Lio/grpc/Status;
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$000(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-static {p1}, Lio/grpc/Contexts;->statusFromCancelled(Lio/grpc/Context;)Lio/grpc/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 143
    :goto_1
    return-void
.end method
