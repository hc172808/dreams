.class Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;
.super Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;
.source "TransmitStatusRuntimeExceptionInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializingServerCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# static fields
.field private static final ERROR_MSG:Ljava/lang/String; = "Encountered error during serialized access"


# instance fields
.field private closeCalled:Z

.field private final serializingExecutor:Lio/grpc/internal/SerializingExecutor;


# direct methods
.method constructor <init>(Lio/grpc/ServerCall;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerCall<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 129
    .local p0, "this":Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;, "Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall<TReqT;TRespT;>;"
    .local p1, "delegate":Lio/grpc/ServerCall;, "Lio/grpc/ServerCall<TReqT;TRespT;>;"
    invoke-direct {p0, p1}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;-><init>(Lio/grpc/ServerCall;)V

    .line 124
    new-instance v0, Lio/grpc/internal/SerializingExecutor;

    .line 125
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/internal/SerializingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->closeCalled:Z

    .line 130
    return-void
.end method

.method static synthetic access$001(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 121
    invoke-super {p0, p1}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->sendMessage(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1001(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;

    .line 121
    invoke-super {p0}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$101(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;I)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;
    .param p1, "x1"    # I

    .line 121
    invoke-super {p0, p1}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->request(I)V

    return-void
.end method

.method static synthetic access$201(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Lio/grpc/Metadata;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;
    .param p1, "x1"    # Lio/grpc/Metadata;

    .line 121
    invoke-super {p0, p1}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->sendHeaders(Lio/grpc/Metadata;)V

    return-void
.end method

.method static synthetic access$300(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;

    .line 121
    iget-boolean v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->closeCalled:Z

    return v0
.end method

.method static synthetic access$302(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;
    .param p1, "x1"    # Z

    .line 121
    iput-boolean p1, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->closeCalled:Z

    return p1
.end method

.method static synthetic access$401(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;
    .param p1, "x1"    # Lio/grpc/Status;
    .param p2, "x2"    # Lio/grpc/Metadata;

    .line 121
    invoke-super {p0, p1, p2}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-void
.end method

.method static synthetic access$501(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;

    .line 121
    invoke-super {p0}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->isReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$601(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;

    .line 121
    invoke-super {p0}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->isCancelled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$701(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Z)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;
    .param p1, "x1"    # Z

    .line 121
    invoke-super {p0, p1}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->setMessageCompression(Z)V

    return-void
.end method

.method static synthetic access$801(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-super {p0, p1}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->setCompression(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$901(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;)Lio/grpc/Attributes;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;

    .line 121
    invoke-super {p0}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 2
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 164
    .local p0, "this":Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;, "Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$4;

    invoke-direct {v1, p0, p1, p2}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$4;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Lio/grpc/Status;Lio/grpc/Metadata;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 4

    .line 234
    .local p0, "this":Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;, "Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall<TReqT;TRespT;>;"
    const-string v0, "Encountered error during serialized access"

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 235
    .local v1, "retVal":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lio/grpc/Attributes;>;"
    iget-object v2, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v3, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$9;

    invoke-direct {v3, p0, v1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$9;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v2, v3}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 242
    :try_start_0
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/Attributes;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 245
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 243
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 253
    .local p0, "this":Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;, "Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall<TReqT;TRespT;>;"
    const-string v0, "Encountered error during serialized access"

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 254
    .local v1, "retVal":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/String;>;"
    iget-object v2, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v3, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$10;

    invoke-direct {v3, p0, v1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$10;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v2, v3}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 261
    :try_start_0
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 264
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 262
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v2

    .line 263
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isCancelled()Z
    .locals 4

    .line 196
    .local p0, "this":Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;, "Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall<TReqT;TRespT;>;"
    const-string v0, "Encountered error during serialized access"

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 197
    .local v1, "retVal":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v3, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$6;

    invoke-direct {v3, p0, v1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$6;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v2, v3}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 204
    :try_start_0
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 207
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 205
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v2

    .line 206
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isReady()Z
    .locals 4

    .line 178
    .local p0, "this":Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;, "Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall<TReqT;TRespT;>;"
    const-string v0, "Encountered error during serialized access"

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 179
    .local v1, "retVal":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v3, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$5;

    invoke-direct {v3, p0, v1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$5;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v2, v3}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 186
    :try_start_0
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 189
    :catch_0
    move-exception v2

    .line 190
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 187
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public request(I)V
    .locals 2
    .param p1, "numMessages"    # I

    .line 144
    .local p0, "this":Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;, "Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$2;

    invoke-direct {v1, p0, p1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$2;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;I)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public sendHeaders(Lio/grpc/Metadata;)V
    .locals 2
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 154
    .local p0, "this":Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;, "Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$3;

    invoke-direct {v1, p0, p1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$3;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Lio/grpc/Metadata;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 134
    .local p0, "this":Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;, "Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall<TReqT;TRespT;>;"
    .local p1, "message":Ljava/lang/Object;, "TRespT;"
    iget-object v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$1;

    invoke-direct {v1, p0, p1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$1;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public setCompression(Ljava/lang/String;)V
    .locals 2
    .param p1, "compressor"    # Ljava/lang/String;

    .line 224
    .local p0, "this":Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;, "Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$8;

    invoke-direct {v1, p0, p1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$8;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 214
    .local p0, "this":Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;, "Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$7;

    invoke-direct {v1, p0, p1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$7;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Z)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method
