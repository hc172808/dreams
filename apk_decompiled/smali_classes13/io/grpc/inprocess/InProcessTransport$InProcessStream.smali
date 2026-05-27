.class Lio/grpc/inprocess/InProcessTransport$InProcessStream;
.super Ljava/lang/Object;
.source "InProcessTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/inprocess/InProcessTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InProcessStream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;,
        Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    }
.end annotation


# instance fields
.field private volatile authority:Ljava/lang/String;

.field private final callOptions:Lio/grpc/CallOptions;

.field private final clientStream:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

.field private final headers:Lio/grpc/Metadata;

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "**>;"
        }
    .end annotation
.end field

.field private final serverStream:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

.field final synthetic this$0:Lio/grpc/inprocess/InProcessTransport;


# direct methods
.method private constructor <init>(Lio/grpc/inprocess/InProcessTransport;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;Ljava/lang/String;)V
    .locals 0
    .param p3, "headers"    # Lio/grpc/Metadata;
    .param p4, "callOptions"    # Lio/grpc/CallOptions;
    .param p5, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 347
    .local p2, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    const-string p1, "method"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/MethodDescriptor;

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->method:Lio/grpc/MethodDescriptor;

    .line 349
    const-string p1, "headers"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Metadata;

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->headers:Lio/grpc/Metadata;

    .line 350
    const-string p1, "callOptions"

    invoke-static {p4, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/CallOptions;

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->callOptions:Lio/grpc/CallOptions;

    .line 351
    iput-object p5, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->authority:Ljava/lang/String;

    .line 352
    new-instance p1, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    invoke-direct {p1, p0, p4, p3}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream;Lio/grpc/CallOptions;Lio/grpc/Metadata;)V

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->clientStream:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    .line 353
    new-instance p1, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    invoke-direct {p1, p0, p2, p3}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;)V

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->serverStream:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    .line 354
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/inprocess/InProcessTransport;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;Ljava/lang/String;Lio/grpc/inprocess/InProcessTransport$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/inprocess/InProcessTransport;
    .param p2, "x1"    # Lio/grpc/MethodDescriptor;
    .param p3, "x2"    # Lio/grpc/Metadata;
    .param p4, "x3"    # Lio/grpc/CallOptions;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Lio/grpc/inprocess/InProcessTransport$1;

    .line 337
    invoke-direct/range {p0 .. p5}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;-><init>(Lio/grpc/inprocess/InProcessTransport;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    .line 337
    invoke-direct {p0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->streamClosed()V

    return-void
.end method

.method static synthetic access$2100(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    .line 337
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->authority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lio/grpc/inprocess/InProcessTransport$InProcessStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/grpc/inprocess/InProcessTransport$InProcessStream;
    .param p1, "x1"    # Ljava/lang/String;

    .line 337
    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->authority:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    .locals 1
    .param p0, "x0"    # Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    .line 337
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->serverStream:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    return-object v0
.end method

.method static synthetic access$2700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/MethodDescriptor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    .line 337
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->method:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method static synthetic access$2800(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/Metadata;
    .locals 1
    .param p0, "x0"    # Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    .line 337
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->headers:Lio/grpc/Metadata;

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;
    .locals 1
    .param p0, "x0"    # Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    .line 337
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->clientStream:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    return-object v0
.end method

.method private streamClosed()V
    .locals 4

    .line 358
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport;->access$800(Lio/grpc/inprocess/InProcessTransport;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 360
    .local v1, "justRemovedAnElement":Z
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->callOptions:Lio/grpc/CallOptions;

    invoke-static {v2}, Lio/grpc/internal/GrpcUtil;->shouldBeCountedForInUse(Lio/grpc/CallOptions;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v2}, Lio/grpc/inprocess/InProcessTransport;->access$900(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/internal/InUseStateAggregator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    .line 363
    :cond_0
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v2}, Lio/grpc/inprocess/InProcessTransport;->access$800(Lio/grpc/inprocess/InProcessTransport;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 364
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v2}, Lio/grpc/inprocess/InProcessTransport;->access$1000(Lio/grpc/inprocess/InProcessTransport;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v2}, Lio/grpc/inprocess/InProcessTransport;->access$200(Lio/grpc/inprocess/InProcessTransport;)V

    .line 368
    .end local v1    # "justRemovedAnElement":Z
    :cond_1
    monitor-exit v0

    .line 369
    return-void

    .line 368
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
