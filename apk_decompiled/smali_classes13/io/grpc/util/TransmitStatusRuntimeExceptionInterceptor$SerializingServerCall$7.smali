.class Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$7;
.super Ljava/lang/Object;
.source "TransmitStatusRuntimeExceptionInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->setMessageCompression(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Z)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;

    .line 214
    .local p0, "this":Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$7;, "Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$7;"
    iput-object p1, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$7;->this$0:Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;

    iput-boolean p2, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$7;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 217
    .local p0, "this":Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$7;, "Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$7;"
    iget-object v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$7;->this$0:Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;

    iget-boolean v1, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$7;->val$enabled:Z

    invoke-static {v0, v1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->access$701(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Z)V

    .line 218
    return-void
.end method
