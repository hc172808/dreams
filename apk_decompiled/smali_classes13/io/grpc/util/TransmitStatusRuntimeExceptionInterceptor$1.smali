.class Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$1;
.super Lio/grpc/ForwardingServerCallListener$SimpleForwardingServerCallListener;
.source "TransmitStatusRuntimeExceptionInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor;->interceptCall(Lio/grpc/ServerCall;Lio/grpc/Metadata;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerCall$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ForwardingServerCallListener$SimpleForwardingServerCallListener<",
        "TReqT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor;

.field final synthetic val$serverCall:Lio/grpc/ServerCall;


# direct methods
.method constructor <init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor;Lio/grpc/ServerCall$Listener;Lio/grpc/ServerCall;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor;

    .line 61
    .local p2, "arg0":Lio/grpc/ServerCall$Listener;, "Lio/grpc/ServerCall$Listener<TReqT;>;"
    iput-object p1, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$1;->this$0:Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor;

    iput-object p3, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$1;->val$serverCall:Lio/grpc/ServerCall;

    invoke-direct {p0, p2}, Lio/grpc/ForwardingServerCallListener$SimpleForwardingServerCallListener;-><init>(Lio/grpc/ServerCall$Listener;)V

    return-void
.end method

.method private closeWithException(Lio/grpc/StatusRuntimeException;)V
    .locals 3
    .param p1, "t"    # Lio/grpc/StatusRuntimeException;

    .line 108
    invoke-virtual {p1}, Lio/grpc/StatusRuntimeException;->getTrailers()Lio/grpc/Metadata;

    move-result-object v0

    .line 109
    .local v0, "metadata":Lio/grpc/Metadata;
    if-nez v0, :cond_0

    .line 110
    new-instance v1, Lio/grpc/Metadata;

    invoke-direct {v1}, Lio/grpc/Metadata;-><init>()V

    move-object v0, v1

    .line 112
    :cond_0
    iget-object v1, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$1;->val$serverCall:Lio/grpc/ServerCall;

    invoke-virtual {p1}, Lio/grpc/StatusRuntimeException;->getStatus()Lio/grpc/Status;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/grpc/ServerCall;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 113
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 83
    :try_start_0
    invoke-super {p0}, Lio/grpc/ForwardingServerCallListener$SimpleForwardingServerCallListener;->onCancel()V
    :try_end_0
    .catch Lio/grpc/StatusRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lio/grpc/StatusRuntimeException;
    invoke-direct {p0, v0}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$1;->closeWithException(Lio/grpc/StatusRuntimeException;)V

    .line 87
    .end local v0    # "e":Lio/grpc/StatusRuntimeException;
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 92
    :try_start_0
    invoke-super {p0}, Lio/grpc/ForwardingServerCallListener$SimpleForwardingServerCallListener;->onComplete()V
    :try_end_0
    .catch Lio/grpc/StatusRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lio/grpc/StatusRuntimeException;
    invoke-direct {p0, v0}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$1;->closeWithException(Lio/grpc/StatusRuntimeException;)V

    .line 96
    .end local v0    # "e":Lio/grpc/StatusRuntimeException;
    :goto_0
    return-void
.end method

.method public onHalfClose()V
    .locals 1

    .line 74
    :try_start_0
    invoke-super {p0}, Lio/grpc/ForwardingServerCallListener$SimpleForwardingServerCallListener;->onHalfClose()V
    :try_end_0
    .catch Lio/grpc/StatusRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lio/grpc/StatusRuntimeException;
    invoke-direct {p0, v0}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$1;->closeWithException(Lio/grpc/StatusRuntimeException;)V

    .line 78
    .end local v0    # "e":Lio/grpc/StatusRuntimeException;
    :goto_0
    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 65
    .local p1, "message":Ljava/lang/Object;, "TReqT;"
    :try_start_0
    invoke-super {p0, p1}, Lio/grpc/ForwardingServerCallListener$SimpleForwardingServerCallListener;->onMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Lio/grpc/StatusRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lio/grpc/StatusRuntimeException;
    invoke-direct {p0, v0}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$1;->closeWithException(Lio/grpc/StatusRuntimeException;)V

    .line 69
    .end local v0    # "e":Lio/grpc/StatusRuntimeException;
    :goto_0
    return-void
.end method

.method public onReady()V
    .locals 1

    .line 101
    :try_start_0
    invoke-super {p0}, Lio/grpc/ForwardingServerCallListener$SimpleForwardingServerCallListener;->onReady()V
    :try_end_0
    .catch Lio/grpc/StatusRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lio/grpc/StatusRuntimeException;
    invoke-direct {p0, v0}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$1;->closeWithException(Lio/grpc/StatusRuntimeException;)V

    .line 105
    .end local v0    # "e":Lio/grpc/StatusRuntimeException;
    :goto_0
    return-void
.end method
