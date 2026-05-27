.class final Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;
.super Ljava/lang/Object;
.source "MetadataUtils.java"

# interfaces
.implements Lio/grpc/ClientInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/MetadataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MetadataCapturingClientInterceptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall;
    }
.end annotation


# instance fields
.field final headersCapture:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/Metadata;",
            ">;"
        }
    .end annotation
.end field

.field final trailersCapture:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/Metadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/Metadata;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/Metadata;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p1, "headersCapture":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/grpc/Metadata;>;"
    .local p2, "trailersCapture":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/grpc/Metadata;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const-string v0, "headersCapture"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v0, p0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;->headersCapture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 132
    const-string v0, "trailersCapture"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v0, p0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;->trailersCapture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 133
    return-void
.end method


# virtual methods
.method public interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
    .locals 2
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .param p3, "next"    # Lio/grpc/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/Channel;",
            ")",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 138
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    new-instance v0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall;

    invoke-virtual {p3, p1, p2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall;-><init>(Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;Lio/grpc/ClientCall;)V

    return-object v0
.end method
