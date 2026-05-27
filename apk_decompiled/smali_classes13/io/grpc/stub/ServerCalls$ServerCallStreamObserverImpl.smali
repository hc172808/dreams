.class final Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;
.super Lio/grpc/stub/ServerCallStreamObserver;
.source "ServerCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ServerCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServerCallStreamObserverImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/stub/ServerCallStreamObserver<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field private aborted:Z

.field private autoFlowControlEnabled:Z

.field final call:Lio/grpc/ServerCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ServerCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field private completed:Z

.field private frozen:Z

.field private onCancelHandler:Ljava/lang/Runnable;

.field private onReadyHandler:Ljava/lang/Runnable;

.field private sentHeaders:Z


# direct methods
.method constructor <init>(Lio/grpc/ServerCall;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerCall<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 319
    .local p0, "this":Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;, "Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl<TReqT;TRespT;>;"
    .local p1, "call":Lio/grpc/ServerCall;, "Lio/grpc/ServerCall<TReqT;TRespT;>;"
    invoke-direct {p0}, Lio/grpc/stub/ServerCallStreamObserver;-><init>()V

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->autoFlowControlEnabled:Z

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->aborted:Z

    .line 316
    iput-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->completed:Z

    .line 320
    iput-object p1, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    .line 321
    return-void
.end method

.method static synthetic access$100(Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;

    .line 306
    invoke-direct {p0}, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->freeze()V

    return-void
.end method

.method static synthetic access$200(Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;

    .line 306
    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->onCancelHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;

    .line 306
    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->onReadyHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;

    .line 306
    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->autoFlowControlEnabled:Z

    return v0
.end method

.method private freeze()V
    .locals 1

    .line 324
    .local p0, "this":Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;, "Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl<TReqT;TRespT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->frozen:Z

    .line 325
    return-void
.end method


# virtual methods
.method public disableAutoInboundFlowControl()V
    .locals 2

    .line 404
    .local p0, "this":Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;, "Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->frozen:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot disable auto flow control after initialization"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->autoFlowControlEnabled:Z

    .line 406
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 391
    .local p0, "this":Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;, "Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    invoke-virtual {v0}, Lio/grpc/ServerCall;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 378
    .local p0, "this":Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;, "Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    invoke-virtual {v0}, Lio/grpc/ServerCall;->isReady()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 3

    .line 366
    .local p0, "this":Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;, "Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->cancelled:Z

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->onCancelHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    sget-object v0, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    const-string v1, "call already cancelled"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 371
    :cond_1
    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    sget-object v1, Lio/grpc/Status;->OK:Lio/grpc/Status;

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerCall;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->completed:Z

    .line 374
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 356
    .local p0, "this":Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;, "Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl<TReqT;TRespT;>;"
    invoke-static {p1}, Lio/grpc/Status;->trailersFromThrowable(Ljava/lang/Throwable;)Lio/grpc/Metadata;

    move-result-object v0

    .line 357
    .local v0, "metadata":Lio/grpc/Metadata;
    if-nez v0, :cond_0

    .line 358
    new-instance v1, Lio/grpc/Metadata;

    invoke-direct {v1}, Lio/grpc/Metadata;-><init>()V

    move-object v0, v1

    .line 360
    :cond_0
    iget-object v1, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    invoke-static {p1}, Lio/grpc/Status;->fromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/grpc/ServerCall;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 361
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->aborted:Z

    .line 362
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 339
    .local p0, "this":Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;, "Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl<TReqT;TRespT;>;"
    .local p1, "response":Ljava/lang/Object;, "TRespT;"
    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->cancelled:Z

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->onCancelHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 343
    return-void

    .line 341
    :cond_0
    sget-object v0, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    const-string v1, "call already cancelled"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 345
    :cond_1
    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->aborted:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Stream was terminated by error, no further calls are allowed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 346
    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->completed:Z

    xor-int/2addr v0, v1

    const-string v2, "Stream is already completed, no further calls are allowed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 347
    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->sentHeaders:Z

    if-nez v0, :cond_2

    .line 348
    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v0, v2}, Lio/grpc/ServerCall;->sendHeaders(Lio/grpc/Metadata;)V

    .line 349
    iput-boolean v1, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->sentHeaders:Z

    .line 351
    :cond_2
    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    invoke-virtual {v0, p1}, Lio/grpc/ServerCall;->sendMessage(Ljava/lang/Object;)V

    .line 352
    return-void
.end method

.method public request(I)V
    .locals 1
    .param p1, "count"    # I

    .line 410
    .local p0, "this":Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;, "Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    invoke-virtual {v0, p1}, Lio/grpc/ServerCall;->request(I)V

    .line 411
    return-void
.end method

.method public setCompression(Ljava/lang/String;)V
    .locals 1
    .param p1, "compression"    # Ljava/lang/String;

    .line 334
    .local p0, "this":Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;, "Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    invoke-virtual {v0, p1}, Lio/grpc/ServerCall;->setCompression(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 329
    .local p0, "this":Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;, "Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    invoke-virtual {v0, p1}, Lio/grpc/ServerCall;->setMessageCompression(Z)V

    .line 330
    return-void
.end method

.method public setOnCancelHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "onCancelHandler"    # Ljava/lang/Runnable;

    .line 396
    .local p0, "this":Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;, "Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->frozen:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot alter onCancelHandler after initialization. May only be called during the initial call to the application, before the service returns its StreamObserver"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 399
    iput-object p1, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->onCancelHandler:Ljava/lang/Runnable;

    .line 400
    return-void
.end method

.method public setOnReadyHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 383
    .local p0, "this":Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;, "Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->frozen:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot alter onReadyHandler after initialization. May only be called during the initial call to the application, before the service returns its StreamObserver"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 386
    iput-object p1, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->onReadyHandler:Ljava/lang/Runnable;

    .line 387
    return-void
.end method
