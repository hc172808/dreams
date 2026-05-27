.class public final Lio/grpc/InternalChannelz$ServerStats$Builder;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz$ServerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private callsFailed:J

.field private callsStarted:J

.field private callsSucceeded:J

.field private lastCallStartedNanos:J

.field public listenSockets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/InternalChannelz$ServerStats$Builder;->listenSockets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListenSockets(Ljava/util/List;)Lio/grpc/InternalChannelz$ServerStats$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;>;)",
            "Lio/grpc/InternalChannelz$ServerStats$Builder;"
        }
    .end annotation

    .line 338
    .local p1, "listenSockets":Ljava/util/List;, "Ljava/util/List<Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$SocketStats;>;>;"
    const-string v0, "listenSockets"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/InternalInstrumented;

    .line 340
    .local v1, "ss":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$SocketStats;>;"
    iget-object v2, p0, Lio/grpc/InternalChannelz$ServerStats$Builder;->listenSockets:Ljava/util/List;

    const-string v3, "null listen socket"

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v1    # "ss":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$SocketStats;>;"
    goto :goto_0

    .line 342
    :cond_0
    return-object p0
.end method

.method public build()Lio/grpc/InternalChannelz$ServerStats;
    .locals 11

    .line 349
    new-instance v10, Lio/grpc/InternalChannelz$ServerStats;

    iget-wide v1, p0, Lio/grpc/InternalChannelz$ServerStats$Builder;->callsStarted:J

    iget-wide v3, p0, Lio/grpc/InternalChannelz$ServerStats$Builder;->callsSucceeded:J

    iget-wide v5, p0, Lio/grpc/InternalChannelz$ServerStats$Builder;->callsFailed:J

    iget-wide v7, p0, Lio/grpc/InternalChannelz$ServerStats$Builder;->lastCallStartedNanos:J

    iget-object v9, p0, Lio/grpc/InternalChannelz$ServerStats$Builder;->listenSockets:Ljava/util/List;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/grpc/InternalChannelz$ServerStats;-><init>(JJJJLjava/util/List;)V

    return-object v10
.end method

.method public setCallsFailed(J)Lio/grpc/InternalChannelz$ServerStats$Builder;
    .locals 0
    .param p1, "callsFailed"    # J

    .line 327
    iput-wide p1, p0, Lio/grpc/InternalChannelz$ServerStats$Builder;->callsFailed:J

    .line 328
    return-object p0
.end method

.method public setCallsStarted(J)Lio/grpc/InternalChannelz$ServerStats$Builder;
    .locals 0
    .param p1, "callsStarted"    # J

    .line 317
    iput-wide p1, p0, Lio/grpc/InternalChannelz$ServerStats$Builder;->callsStarted:J

    .line 318
    return-object p0
.end method

.method public setCallsSucceeded(J)Lio/grpc/InternalChannelz$ServerStats$Builder;
    .locals 0
    .param p1, "callsSucceeded"    # J

    .line 322
    iput-wide p1, p0, Lio/grpc/InternalChannelz$ServerStats$Builder;->callsSucceeded:J

    .line 323
    return-object p0
.end method

.method public setLastCallStartedNanos(J)Lio/grpc/InternalChannelz$ServerStats$Builder;
    .locals 0
    .param p1, "lastCallStartedNanos"    # J

    .line 332
    iput-wide p1, p0, Lio/grpc/InternalChannelz$ServerStats$Builder;->lastCallStartedNanos:J

    .line 333
    return-object p0
.end method
