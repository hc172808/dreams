.class public abstract Lio/grpc/stub/AbstractStub;
.super Ljava/lang/Object;
.source "AbstractStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/AbstractStub$StubFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lio/grpc/stub/AbstractStub<",
        "TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# instance fields
.field private final callOptions:Lio/grpc/CallOptions;

.field private final channel:Lio/grpc/Channel;


# direct methods
.method protected constructor <init>(Lio/grpc/Channel;)V
    .locals 1
    .param p1, "channel"    # Lio/grpc/Channel;

    .line 62
    .local p0, "this":Lio/grpc/stub/AbstractStub;, "Lio/grpc/stub/AbstractStub<TS;>;"
    sget-object v0, Lio/grpc/CallOptions;->DEFAULT:Lio/grpc/CallOptions;

    invoke-direct {p0, p1, v0}, Lio/grpc/stub/AbstractStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 1
    .param p1, "channel"    # Lio/grpc/Channel;
    .param p2, "callOptions"    # Lio/grpc/CallOptions;

    .line 72
    .local p0, "this":Lio/grpc/stub/AbstractStub;, "Lio/grpc/stub/AbstractStub<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "channel"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Channel;

    iput-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    .line 74
    const-string v0, "callOptions"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/CallOptions;

    iput-object v0, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    .line 75
    return-void
.end method

.method public static newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;
    .locals 1
    .param p1, "channel"    # Lio/grpc/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/grpc/stub/AbstractStub<",
            "TT;>;>(",
            "Lio/grpc/stub/AbstractStub$StubFactory<",
            "TT;>;",
            "Lio/grpc/Channel;",
            ")TT;"
        }
    .end annotation

    .line 113
    .local p0, "factory":Lio/grpc/stub/AbstractStub$StubFactory;, "Lio/grpc/stub/AbstractStub$StubFactory<TT;>;"
    sget-object v0, Lio/grpc/CallOptions;->DEFAULT:Lio/grpc/CallOptions;

    invoke-static {p0, p1, v0}, Lio/grpc/stub/AbstractStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    return-object v0
.end method

.method public static newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 1
    .param p1, "channel"    # Lio/grpc/Channel;
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/grpc/stub/AbstractStub<",
            "TT;>;>(",
            "Lio/grpc/stub/AbstractStub$StubFactory<",
            "TT;>;",
            "Lio/grpc/Channel;",
            "Lio/grpc/CallOptions;",
            ")TT;"
        }
    .end annotation

    .line 126
    .local p0, "factory":Lio/grpc/stub/AbstractStub$StubFactory;, "Lio/grpc/stub/AbstractStub$StubFactory<TT;>;"
    invoke-interface {p0, p1, p2}, Lio/grpc/stub/AbstractStub$StubFactory;->newStub(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Channel;",
            "Lio/grpc/CallOptions;",
            ")TS;"
        }
    .end annotation
.end method

.method public final getCallOptions()Lio/grpc/CallOptions;
    .locals 1

    .line 92
    .local p0, "this":Lio/grpc/stub/AbstractStub;, "Lio/grpc/stub/AbstractStub<TS;>;"
    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    return-object v0
.end method

.method public final getChannel()Lio/grpc/Channel;
    .locals 1

    .line 83
    .local p0, "this":Lio/grpc/stub/AbstractStub;, "Lio/grpc/stub/AbstractStub<TS;>;"
    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    return-object v0
.end method

.method public final withCallCredentials(Lio/grpc/CallCredentials;)Lio/grpc/stub/AbstractStub;
    .locals 2
    .param p1, "credentials"    # Lio/grpc/CallCredentials;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/CallCredentials;",
            ")TS;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lio/grpc/stub/AbstractStub;, "Lio/grpc/stub/AbstractStub<TS;>;"
    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1}, Lio/grpc/CallOptions;->withCallCredentials(Lio/grpc/CallCredentials;)Lio/grpc/CallOptions;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    return-object v0
.end method

.method public final withChannel(Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;
    .locals 1
    .param p1, "newChannel"    # Lio/grpc/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Channel;",
            ")TS;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    .local p0, "this":Lio/grpc/stub/AbstractStub;, "Lio/grpc/stub/AbstractStub<TS;>;"
    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {p0, p1, v0}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    return-object v0
.end method

.method public final withCompression(Ljava/lang/String;)Lio/grpc/stub/AbstractStub;
    .locals 2
    .param p1, "compressorName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lio/grpc/stub/AbstractStub;, "Lio/grpc/stub/AbstractStub<TS;>;"
    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1}, Lio/grpc/CallOptions;->withCompression(Ljava/lang/String;)Lio/grpc/CallOptions;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    return-object v0
.end method

.method public final withDeadline(Lio/grpc/Deadline;)Lio/grpc/stub/AbstractStub;
    .locals 2
    .param p1, "deadline"    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Deadline;",
            ")TS;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lio/grpc/stub/AbstractStub;, "Lio/grpc/stub/AbstractStub<TS;>;"
    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1}, Lio/grpc/CallOptions;->withDeadline(Lio/grpc/Deadline;)Lio/grpc/CallOptions;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    return-object v0
.end method

.method public final withDeadlineAfter(JLjava/util/concurrent/TimeUnit;)Lio/grpc/stub/AbstractStub;
    .locals 2
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TS;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lio/grpc/stub/AbstractStub;, "Lio/grpc/stub/AbstractStub<TS;>;"
    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1, p2, p3}, Lio/grpc/CallOptions;->withDeadlineAfter(JLjava/util/concurrent/TimeUnit;)Lio/grpc/CallOptions;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    return-object v0
.end method

.method public final withExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/stub/AbstractStub;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TS;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lio/grpc/stub/AbstractStub;, "Lio/grpc/stub/AbstractStub<TS;>;"
    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1}, Lio/grpc/CallOptions;->withExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/CallOptions;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    return-object v0
.end method

.method public final varargs withInterceptors([Lio/grpc/ClientInterceptor;)Lio/grpc/stub/AbstractStub;
    .locals 2
    .param p1, "interceptors"    # [Lio/grpc/ClientInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/grpc/ClientInterceptor;",
            ")TS;"
        }
    .end annotation

    .line 210
    .local p0, "this":Lio/grpc/stub/AbstractStub;, "Lio/grpc/stub/AbstractStub<TS;>;"
    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    invoke-static {v0, p1}, Lio/grpc/ClientInterceptors;->intercept(Lio/grpc/Channel;[Lio/grpc/ClientInterceptor;)Lio/grpc/Channel;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {p0, v0, v1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    return-object v0
.end method

.method public final withMaxInboundMessageSize(I)Lio/grpc/stub/AbstractStub;
    .locals 2
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lio/grpc/stub/AbstractStub;, "Lio/grpc/stub/AbstractStub<TS;>;"
    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1}, Lio/grpc/CallOptions;->withMaxInboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    return-object v0
.end method

.method public final withMaxOutboundMessageSize(I)Lio/grpc/stub/AbstractStub;
    .locals 2
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lio/grpc/stub/AbstractStub;, "Lio/grpc/stub/AbstractStub<TS;>;"
    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1}, Lio/grpc/CallOptions;->withMaxOutboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    return-object v0
.end method

.method public final withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/stub/AbstractStub;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/CallOptions$Key<",
            "TT;>;TT;)TS;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lio/grpc/stub/AbstractStub;, "Lio/grpc/stub/AbstractStub<TS;>;"
    .local p1, "key":Lio/grpc/CallOptions$Key;, "Lio/grpc/CallOptions$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1, p2}, Lio/grpc/CallOptions;->withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    return-object v0
.end method

.method public final withWaitForReady()Lio/grpc/stub/AbstractStub;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 228
    .local p0, "this":Lio/grpc/stub/AbstractStub;, "Lio/grpc/stub/AbstractStub<TS;>;"
    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1}, Lio/grpc/CallOptions;->withWaitForReady()Lio/grpc/CallOptions;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    return-object v0
.end method
