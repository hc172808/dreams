.class abstract Lio/grpc/internal/ForwardingNameResolver;
.super Lio/grpc/NameResolver;
.source "ForwardingNameResolver.java"


# instance fields
.field private final delegate:Lio/grpc/NameResolver;


# direct methods
.method constructor <init>(Lio/grpc/NameResolver;)V
    .locals 1
    .param p1, "delegate"    # Lio/grpc/NameResolver;

    .line 30
    invoke-direct {p0}, Lio/grpc/NameResolver;-><init>()V

    .line 31
    const-string v0, "delegate can not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lio/grpc/internal/ForwardingNameResolver;->delegate:Lio/grpc/NameResolver;

    .line 33
    return-void
.end method


# virtual methods
.method public getServiceAuthority()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/grpc/internal/ForwardingNameResolver;->delegate:Lio/grpc/NameResolver;

    invoke-virtual {v0}, Lio/grpc/NameResolver;->getServiceAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public refresh()V
    .locals 1

    .line 58
    iget-object v0, p0, Lio/grpc/internal/ForwardingNameResolver;->delegate:Lio/grpc/NameResolver;

    invoke-virtual {v0}, Lio/grpc/NameResolver;->refresh()V

    .line 59
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 53
    iget-object v0, p0, Lio/grpc/internal/ForwardingNameResolver;->delegate:Lio/grpc/NameResolver;

    invoke-virtual {v0}, Lio/grpc/NameResolver;->shutdown()V

    .line 54
    return-void
.end method

.method public start(Lio/grpc/NameResolver$Listener2;)V
    .locals 1
    .param p1, "listener"    # Lio/grpc/NameResolver$Listener2;

    .line 48
    iget-object v0, p0, Lio/grpc/internal/ForwardingNameResolver;->delegate:Lio/grpc/NameResolver;

    invoke-virtual {v0, p1}, Lio/grpc/NameResolver;->start(Lio/grpc/NameResolver$Listener2;)V

    .line 49
    return-void
.end method

.method public start(Lio/grpc/NameResolver$Listener;)V
    .locals 1
    .param p1, "listener"    # Lio/grpc/NameResolver$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    iget-object v0, p0, Lio/grpc/internal/ForwardingNameResolver;->delegate:Lio/grpc/NameResolver;

    invoke-virtual {v0, p1}, Lio/grpc/NameResolver;->start(Lio/grpc/NameResolver$Listener;)V

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 63
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ForwardingNameResolver;->delegate:Lio/grpc/NameResolver;

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
