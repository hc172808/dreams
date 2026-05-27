.class public final Lio/grpc/InternalChannelz$ChannelStats;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChannelStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/InternalChannelz$ChannelStats$Builder;
    }
.end annotation


# instance fields
.field public final callsFailed:J

.field public final callsStarted:J

.field public final callsSucceeded:J

.field public final channelTrace:Lio/grpc/InternalChannelz$ChannelTrace;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final lastCallStartedNanos:J

.field public final sockets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/InternalWithLogId;",
            ">;"
        }
    .end annotation
.end field

.field public final state:Lio/grpc/ConnectivityState;

.field public final subchannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/InternalWithLogId;",
            ">;"
        }
    .end annotation
.end field

.field public final target:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lio/grpc/ConnectivityState;Lio/grpc/InternalChannelz$ChannelTrace;JJJJLjava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "state"    # Lio/grpc/ConnectivityState;
    .param p3, "channelTrace"    # Lio/grpc/InternalChannelz$ChannelTrace;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "callsStarted"    # J
    .param p6, "callsSucceeded"    # J
    .param p8, "callsFailed"    # J
    .param p10, "lastCallStartedNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/grpc/ConnectivityState;",
            "Lio/grpc/InternalChannelz$ChannelTrace;",
            "JJJJ",
            "Ljava/util/List<",
            "Lio/grpc/InternalWithLogId;",
            ">;",
            "Ljava/util/List<",
            "Lio/grpc/InternalWithLogId;",
            ">;)V"
        }
    .end annotation

    .line 386
    .local p12, "subchannels":Ljava/util/List;, "Ljava/util/List<Lio/grpc/InternalWithLogId;>;"
    .local p13, "sockets":Ljava/util/List;, "Ljava/util/List<Lio/grpc/InternalWithLogId;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    nop

    .line 388
    invoke-interface {p12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 387
    :goto_1
    const-string v1, "channels can have subchannels only, subchannels can have either sockets OR subchannels, neither can have both"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 391
    iput-object p1, p0, Lio/grpc/InternalChannelz$ChannelStats;->target:Ljava/lang/String;

    .line 392
    iput-object p2, p0, Lio/grpc/InternalChannelz$ChannelStats;->state:Lio/grpc/ConnectivityState;

    .line 393
    iput-object p3, p0, Lio/grpc/InternalChannelz$ChannelStats;->channelTrace:Lio/grpc/InternalChannelz$ChannelTrace;

    .line 394
    iput-wide p4, p0, Lio/grpc/InternalChannelz$ChannelStats;->callsStarted:J

    .line 395
    iput-wide p6, p0, Lio/grpc/InternalChannelz$ChannelStats;->callsSucceeded:J

    .line 396
    iput-wide p8, p0, Lio/grpc/InternalChannelz$ChannelStats;->callsFailed:J

    .line 397
    iput-wide p10, p0, Lio/grpc/InternalChannelz$ChannelStats;->lastCallStartedNanos:J

    .line 398
    invoke-static {p12}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/grpc/InternalChannelz$ChannelStats;->subchannels:Ljava/util/List;

    .line 399
    invoke-static {p13}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/grpc/InternalChannelz$ChannelStats;->sockets:Ljava/util/List;

    .line 400
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/grpc/ConnectivityState;Lio/grpc/InternalChannelz$ChannelTrace;JJJJLjava/util/List;Ljava/util/List;Lio/grpc/InternalChannelz$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lio/grpc/ConnectivityState;
    .param p3, "x2"    # Lio/grpc/InternalChannelz$ChannelTrace;
    .param p4, "x3"    # J
    .param p6, "x4"    # J
    .param p8, "x5"    # J
    .param p10, "x6"    # J
    .param p12, "x7"    # Ljava/util/List;
    .param p13, "x8"    # Ljava/util/List;
    .param p14, "x9"    # Lio/grpc/InternalChannelz$1;

    .line 363
    invoke-direct/range {p0 .. p13}, Lio/grpc/InternalChannelz$ChannelStats;-><init>(Ljava/lang/String;Lio/grpc/ConnectivityState;Lio/grpc/InternalChannelz$ChannelTrace;JJJJLjava/util/List;Ljava/util/List;)V

    return-void
.end method
