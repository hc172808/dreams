.class final Lio/grpc/internal/InternalSubchannel$CallTracingTransport;
.super Lio/grpc/internal/ForwardingConnectionClientTransport;
.source "InternalSubchannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/InternalSubchannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CallTracingTransport"
.end annotation


# instance fields
.field private final callTracer:Lio/grpc/internal/CallTracer;

.field private final delegate:Lio/grpc/internal/ConnectionClientTransport;


# direct methods
.method private constructor <init>(Lio/grpc/internal/ConnectionClientTransport;Lio/grpc/internal/CallTracer;)V
    .locals 0
    .param p1, "delegate"    # Lio/grpc/internal/ConnectionClientTransport;
    .param p2, "callTracer"    # Lio/grpc/internal/CallTracer;

    .line 622
    invoke-direct {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;-><init>()V

    .line 623
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$CallTracingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    .line 624
    iput-object p2, p0, Lio/grpc/internal/InternalSubchannel$CallTracingTransport;->callTracer:Lio/grpc/internal/CallTracer;

    .line 625
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ConnectionClientTransport;Lio/grpc/internal/CallTracer;Lio/grpc/internal/InternalSubchannel$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/ConnectionClientTransport;
    .param p2, "x1"    # Lio/grpc/internal/CallTracer;
    .param p3, "x2"    # Lio/grpc/internal/InternalSubchannel$1;

    .line 618
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/InternalSubchannel$CallTracingTransport;-><init>(Lio/grpc/internal/ConnectionClientTransport;Lio/grpc/internal/CallTracer;)V

    return-void
.end method

.method static synthetic access$2400(Lio/grpc/internal/InternalSubchannel$CallTracingTransport;)Lio/grpc/internal/CallTracer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel$CallTracingTransport;

    .line 618
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$CallTracingTransport;->callTracer:Lio/grpc/internal/CallTracer;

    return-object v0
.end method


# virtual methods
.method protected delegate()Lio/grpc/internal/ConnectionClientTransport;
    .locals 1

    .line 629
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$CallTracingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    return-object v0
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;
    .locals 2
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

    .line 635
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    invoke-super {p0, p1, p2, p3}, Lio/grpc/internal/ForwardingConnectionClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;

    move-result-object v0

    .line 636
    .local v0, "streamDelegate":Lio/grpc/internal/ClientStream;
    new-instance v1, Lio/grpc/internal/InternalSubchannel$CallTracingTransport$1;

    invoke-direct {v1, p0, v0}, Lio/grpc/internal/InternalSubchannel$CallTracingTransport$1;-><init>(Lio/grpc/internal/InternalSubchannel$CallTracingTransport;Lio/grpc/internal/ClientStream;)V

    return-object v1
.end method
