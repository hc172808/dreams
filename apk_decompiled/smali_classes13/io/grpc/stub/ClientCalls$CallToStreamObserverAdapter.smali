.class final Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;
.super Lio/grpc/stub/ClientCallStreamObserver;
.source "ClientCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallToStreamObserverAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/stub/ClientCallStreamObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private aborted:Z

.field private autoFlowControlEnabled:Z

.field private final call:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "TT;*>;"
        }
    .end annotation
.end field

.field private completed:Z

.field private frozen:Z

.field private onReadyHandler:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/grpc/ClientCall;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "TT;*>;)V"
        }
    .end annotation

    .line 334
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TT;>;"
    .local p1, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TT;*>;"
    invoke-direct {p0}, Lio/grpc/stub/ClientCallStreamObserver;-><init>()V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->autoFlowControlEnabled:Z

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->aborted:Z

    .line 331
    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->completed:Z

    .line 335
    iput-object p1, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    .line 336
    return-void
.end method

.method static synthetic access$000(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    .line 325
    invoke-direct {p0}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->freeze()V

    return-void
.end method

.method static synthetic access$100(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    .line 325
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->autoFlowControlEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    .line 325
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->onReadyHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method private freeze()V
    .locals 1

    .line 339
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->frozen:Z

    .line 340
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 396
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 397
    return-void
.end method

.method public disableAutoInboundFlowControl()V
    .locals 2

    .line 377
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TT;>;"
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->frozen:Z

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->autoFlowControlEnabled:Z

    .line 382
    return-void

    .line 378
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot disable auto flow control after call started. Use ClientResponseObserver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isReady()Z
    .locals 1

    .line 363
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0}, Lio/grpc/ClientCall;->isReady()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 1

    .line 357
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0}, Lio/grpc/ClientCall;->halfClose()V

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->completed:Z

    .line 359
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 351
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    const-string v1, "Cancelled by client with StreamObserver.onError()"

    invoke-virtual {v0, v1, p1}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->aborted:Z

    .line 353
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 344
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->aborted:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Stream was terminated by error, no further calls are allowed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 345
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->completed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Stream is already completed, no further calls are allowed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->sendMessage(Ljava/lang/Object;)V

    .line 347
    return-void
.end method

.method public request(I)V
    .locals 1
    .param p1, "count"    # I

    .line 386
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->request(I)V

    .line 387
    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 391
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->setMessageCompression(Z)V

    .line 392
    return-void
.end method

.method public setOnReadyHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "onReadyHandler"    # Ljava/lang/Runnable;

    .line 368
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TT;>;"
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->frozen:Z

    if-nez v0, :cond_0

    .line 372
    iput-object p1, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->onReadyHandler:Ljava/lang/Runnable;

    .line 373
    return-void

    .line 369
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot alter onReadyHandler after call started. Use ClientResponseObserver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
