.class public final Lio/grpc/InternalMethodDescriptor;
.super Ljava/lang/Object;
.source "InternalMethodDescriptor.java"


# instance fields
.field private final transport:Lio/grpc/InternalKnownTransport;


# direct methods
.method public constructor <init>(Lio/grpc/InternalKnownTransport;)V
    .locals 1
    .param p1, "transport"    # Lio/grpc/InternalKnownTransport;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "transport"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalKnownTransport;

    iput-object v0, p0, Lio/grpc/InternalMethodDescriptor;->transport:Lio/grpc/InternalKnownTransport;

    .line 31
    return-void
.end method


# virtual methods
.method public geRawMethodName(Lio/grpc/MethodDescriptor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 34
    .local p1, "descriptor":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    iget-object v0, p0, Lio/grpc/InternalMethodDescriptor;->transport:Lio/grpc/InternalKnownTransport;

    invoke-virtual {v0}, Lio/grpc/InternalKnownTransport;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/grpc/MethodDescriptor;->getRawMethodName(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setRawMethodName(Lio/grpc/MethodDescriptor;Ljava/lang/Object;)V
    .locals 1
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 38
    .local p1, "descriptor":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    iget-object v0, p0, Lio/grpc/InternalMethodDescriptor;->transport:Lio/grpc/InternalKnownTransport;

    invoke-virtual {v0}, Lio/grpc/InternalKnownTransport;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lio/grpc/MethodDescriptor;->setRawMethodName(ILjava/lang/Object;)V

    .line 39
    return-void
.end method
