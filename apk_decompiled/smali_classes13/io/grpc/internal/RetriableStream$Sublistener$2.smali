.class Lio/grpc/internal/RetriableStream$Sublistener$2;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream$Sublistener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/RetriableStream$Sublistener;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream$Sublistener;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/internal/RetriableStream$Sublistener;

    .line 837
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener$2;, "Lio/grpc/internal/RetriableStream$Sublistener$2;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$Sublistener$2;->this$1:Lio/grpc/internal/RetriableStream$Sublistener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 840
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener$2;, "Lio/grpc/internal/RetriableStream$Sublistener$2;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener$2;->this$1:Lio/grpc/internal/RetriableStream$Sublistener;

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$1000(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/RetriableStream$Sublistener$2$1;

    invoke-direct {v1, p0}, Lio/grpc/internal/RetriableStream$Sublistener$2$1;-><init>(Lio/grpc/internal/RetriableStream$Sublistener$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 849
    return-void
.end method
