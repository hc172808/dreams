.class public abstract Lio/grpc/stub/AbstractBlockingStub;
.super Lio/grpc/stub/AbstractStub;
.source "AbstractBlockingStub.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lio/grpc/stub/AbstractBlockingStub<",
        "TS;>;>",
        "Lio/grpc/stub/AbstractStub<",
        "TS;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 33
    return-void
.end method

.method protected constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0
    .param p1, "channel"    # Lio/grpc/Channel;
    .param p2, "callOptions"    # Lio/grpc/CallOptions;

    .line 39
    .local p0, "this":Lio/grpc/stub/AbstractBlockingStub;, "Lio/grpc/stub/AbstractBlockingStub<TS;>;"
    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    .line 40
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

    .line 51
    .local p0, "factory":Lio/grpc/stub/AbstractStub$StubFactory;, "Lio/grpc/stub/AbstractStub$StubFactory<TT;>;"
    sget-object v0, Lio/grpc/CallOptions;->DEFAULT:Lio/grpc/CallOptions;

    invoke-static {p0, p1, v0}, Lio/grpc/stub/AbstractBlockingStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    return-object v0
.end method

.method public static newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 5
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

    .line 64
    .local p0, "factory":Lio/grpc/stub/AbstractStub$StubFactory;, "Lio/grpc/stub/AbstractStub$StubFactory<TT;>;"
    sget-object v0, Lio/grpc/stub/ClientCalls;->STUB_TYPE_OPTION:Lio/grpc/CallOptions$Key;

    sget-object v1, Lio/grpc/stub/ClientCalls$StubType;->BLOCKING:Lio/grpc/stub/ClientCalls$StubType;

    .line 65
    invoke-virtual {p2, v0, v1}, Lio/grpc/CallOptions;->withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;

    move-result-object v0

    .line 64
    invoke-interface {p0, p1, v0}, Lio/grpc/stub/AbstractStub$StubFactory;->newStub(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    .line 66
    .local v0, "stub":Lio/grpc/stub/AbstractStub;, "TT;"
    instance-of v1, v0, Lio/grpc/stub/AbstractBlockingStub;

    if-eqz v1, :cond_0

    .line 68
    return-object v0

    .line 66
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Expected AbstractBlockingStub, but got %s."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
