.class Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$2;
.super Ljava/lang/Object;
.source "TransmitStatusRuntimeExceptionInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->request(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;

.field final synthetic val$numMessages:I


# direct methods
.method constructor <init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;I)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;

    .line 144
    .local p0, "this":Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$2;, "Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$2;"
    iput-object p1, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$2;->this$0:Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;

    iput p2, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$2;->val$numMessages:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 147
    .local p0, "this":Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$2;, "Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$2;"
    iget-object v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$2;->this$0:Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;

    iget v1, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$2;->val$numMessages:I

    invoke-static {v0, v1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->access$101(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;I)V

    .line 148
    return-void
.end method
