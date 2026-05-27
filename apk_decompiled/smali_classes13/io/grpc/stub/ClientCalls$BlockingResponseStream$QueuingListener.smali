.class final Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;
.super Lio/grpc/ClientCall$Listener;
.source "ClientCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls$BlockingResponseStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueuingListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ClientCall$Listener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private done:Z

.field final synthetic this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;


# direct methods
.method constructor <init>(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)V
    .locals 0

    .line 633
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>.QueuingListener;"
    iput-object p1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-direct {p0}, Lio/grpc/ClientCall$Listener;-><init>()V

    .line 635
    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->done:Z

    .line 633
    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 649
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>.QueuingListener;"
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->done:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "ClientCall already closed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 650
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->access$300(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v2, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 653
    :cond_0
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->access$300(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-virtual {p1, p2}, Lio/grpc/Status;->asRuntimeException(Lio/grpc/Metadata;)Lio/grpc/StatusRuntimeException;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 655
    :goto_0
    iput-boolean v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->done:Z

    .line 656
    return-void
.end method

.method public onHeaders(Lio/grpc/Metadata;)V
    .locals 0
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 639
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>.QueuingListener;"
    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 643
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>.QueuingListener;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->done:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ClientCall already closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 644
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->access$300(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 645
    return-void
.end method
