.class final Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;
.super Lio/grpc/ClientCall$Listener;
.source "ClientCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamObserverToCallListenerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ClientCall$Listener<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field private final adapter:Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<",
            "TReqT;>;"
        }
    .end annotation
.end field

.field private firstResponseReceived:Z

.field private final observer:Lio/grpc/stub/StreamObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/StreamObserver<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field private final streamingResponse:Z


# direct methods
.method constructor <init>(Lio/grpc/stub/StreamObserver;Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;Z)V
    .locals 1
    .param p3, "streamingResponse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/StreamObserver<",
            "TRespT;>;",
            "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<",
            "TReqT;>;Z)V"
        }
    .end annotation

    .line 411
    .local p0, "this":Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;, "Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter<TReqT;TRespT;>;"
    .local p1, "observer":Lio/grpc/stub/StreamObserver;, "Lio/grpc/stub/StreamObserver<TRespT;>;"
    .local p2, "adapter":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TReqT;>;"
    invoke-direct {p0}, Lio/grpc/ClientCall$Listener;-><init>()V

    .line 412
    iput-object p1, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->observer:Lio/grpc/stub/StreamObserver;

    .line 413
    iput-boolean p3, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->streamingResponse:Z

    .line 414
    iput-object p2, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->adapter:Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    .line 415
    instance-of v0, p1, Lio/grpc/stub/ClientResponseObserver;

    if-eqz v0, :cond_0

    .line 417
    move-object v0, p1

    check-cast v0, Lio/grpc/stub/ClientResponseObserver;

    .line 419
    .local v0, "clientResponseObserver":Lio/grpc/stub/ClientResponseObserver;, "Lio/grpc/stub/ClientResponseObserver<TReqT;TRespT;>;"
    invoke-interface {v0, p2}, Lio/grpc/stub/ClientResponseObserver;->beforeStart(Lio/grpc/stub/ClientCallStreamObserver;)V

    .line 421
    .end local v0    # "clientResponseObserver":Lio/grpc/stub/ClientResponseObserver;, "Lio/grpc/stub/ClientResponseObserver<TReqT;TRespT;>;"
    :cond_0
    invoke-static {p2}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->access$000(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)V

    .line 422
    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 2
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 446
    .local p0, "this":Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;, "Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter<TReqT;TRespT;>;"
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->observer:Lio/grpc/stub/StreamObserver;

    invoke-interface {v0}, Lio/grpc/stub/StreamObserver;->onCompleted()V

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->observer:Lio/grpc/stub/StreamObserver;

    invoke-virtual {p1, p2}, Lio/grpc/Status;->asRuntimeException(Lio/grpc/Metadata;)Lio/grpc/StatusRuntimeException;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/stub/StreamObserver;->onError(Ljava/lang/Throwable;)V

    .line 451
    :goto_0
    return-void
.end method

.method public onHeaders(Lio/grpc/Metadata;)V
    .locals 0
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 426
    .local p0, "this":Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;, "Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter<TReqT;TRespT;>;"
    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 430
    .local p0, "this":Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;, "Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter<TReqT;TRespT;>;"
    .local p1, "message":Ljava/lang/Object;, "TRespT;"
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->firstResponseReceived:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->streamingResponse:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 432
    const-string v1, "More than one responses received for unary or client-streaming call"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 435
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->firstResponseReceived:Z

    .line 436
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->observer:Lio/grpc/stub/StreamObserver;

    invoke-interface {v1, p1}, Lio/grpc/stub/StreamObserver;->onNext(Ljava/lang/Object;)V

    .line 438
    iget-boolean v1, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->streamingResponse:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->adapter:Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    invoke-static {v1}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->access$100(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->adapter:Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    invoke-virtual {v1, v0}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->request(I)V

    .line 442
    :cond_2
    return-void
.end method

.method public onReady()V
    .locals 1

    .line 455
    .local p0, "this":Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;, "Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->adapter:Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->access$200(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->adapter:Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->access$200(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 458
    :cond_0
    return-void
.end method
