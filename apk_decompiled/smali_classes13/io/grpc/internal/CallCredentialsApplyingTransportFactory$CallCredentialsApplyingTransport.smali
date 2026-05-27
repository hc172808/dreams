.class Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;
.super Lio/grpc/internal/ForwardingConnectionClientTransport;
.source "CallCredentialsApplyingTransportFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/CallCredentialsApplyingTransportFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallCredentialsApplyingTransport"
.end annotation


# instance fields
.field private final authority:Ljava/lang/String;

.field private final delegate:Lio/grpc/internal/ConnectionClientTransport;

.field final synthetic this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;


# direct methods
.method constructor <init>(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;Lio/grpc/internal/ConnectionClientTransport;Ljava/lang/String;)V
    .locals 0
    .param p2, "delegate"    # Lio/grpc/internal/ConnectionClientTransport;
    .param p3, "authority"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    invoke-direct {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;-><init>()V

    .line 67
    const-string p1, "delegate"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ConnectionClientTransport;

    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    .line 68
    const-string p1, "authority"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->authority:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;

    .line 62
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;

    .line 62
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->authority:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected delegate()Lio/grpc/internal/ConnectionClientTransport;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    return-object v0
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;
    .locals 6
    .param p2, "headers"    # Lio/grpc/Metadata;
    .param p3, "callOptions"    # Lio/grpc/CallOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    .line 80
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    invoke-virtual {p3}, Lio/grpc/CallOptions;->getCredentials()Lio/grpc/CallCredentials;

    move-result-object v0

    .line 81
    .local v0, "creds":Lio/grpc/CallCredentials;
    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Lio/grpc/internal/MetadataApplierImpl;

    iget-object v2, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    invoke-direct {v1, v2, p1, p2, p3}, Lio/grpc/internal/MetadataApplierImpl;-><init>(Lio/grpc/internal/ClientTransport;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)V

    .line 84
    .local v1, "applier":Lio/grpc/internal/MetadataApplierImpl;
    new-instance v2, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport$1;

    invoke-direct {v2, p0, p1, p3}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport$1;-><init>(Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)V

    .line 108
    .local v2, "requestInfo":Lio/grpc/CallCredentials$RequestInfo;
    nop

    .line 109
    :try_start_0
    invoke-virtual {p3}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    invoke-static {v4}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->access$200(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;)Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 108
    invoke-virtual {v0, v2, v3, v1}, Lio/grpc/CallCredentials;->applyRequestMetadata(Lio/grpc/CallCredentials$RequestInfo;Ljava/util/concurrent/Executor;Lio/grpc/CallCredentials$MetadataApplier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v3

    .line 111
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v4, Lio/grpc/Status;->UNAUTHENTICATED:Lio/grpc/Status;

    .line 112
    const-string v5, "Credentials should use fail() instead of throwing exceptions"

    invoke-virtual {v4, v5}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v4

    .line 113
    invoke-virtual {v4, v3}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v4

    .line 111
    invoke-virtual {v1, v4}, Lio/grpc/internal/MetadataApplierImpl;->fail(Lio/grpc/Status;)V

    .line 115
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v1}, Lio/grpc/internal/MetadataApplierImpl;->returnStream()Lio/grpc/internal/ClientStream;

    move-result-object v3

    return-object v3

    .line 117
    .end local v1    # "applier":Lio/grpc/internal/MetadataApplierImpl;
    .end local v2    # "requestInfo":Lio/grpc/CallCredentials$RequestInfo;
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    invoke-interface {v1, p1, p2, p3}, Lio/grpc/internal/ConnectionClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;

    move-result-object v1

    return-object v1
.end method
