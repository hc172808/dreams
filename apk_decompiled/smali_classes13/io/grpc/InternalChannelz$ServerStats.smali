.class public final Lio/grpc/InternalChannelz$ServerStats;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/InternalChannelz$ServerStats$Builder;
    }
.end annotation


# instance fields
.field public final callsFailed:J

.field public final callsStarted:J

.field public final callsSucceeded:J

.field public final lastCallStartedNanos:J

.field public final listenSockets:Ljava/util/List;
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
.method public constructor <init>(JJJJLjava/util/List;)V
    .locals 1
    .param p1, "callsStarted"    # J
    .param p3, "callsSucceeded"    # J
    .param p5, "callsFailed"    # J
    .param p7, "lastCallStartedNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/List<",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;>;)V"
        }
    .end annotation

    .line 301
    .local p9, "listenSockets":Ljava/util/List;, "Ljava/util/List<Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$SocketStats;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-wide p1, p0, Lio/grpc/InternalChannelz$ServerStats;->callsStarted:J

    .line 303
    iput-wide p3, p0, Lio/grpc/InternalChannelz$ServerStats;->callsSucceeded:J

    .line 304
    iput-wide p5, p0, Lio/grpc/InternalChannelz$ServerStats;->callsFailed:J

    .line 305
    iput-wide p7, p0, Lio/grpc/InternalChannelz$ServerStats;->lastCallStartedNanos:J

    .line 306
    invoke-static {p9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/grpc/InternalChannelz$ServerStats;->listenSockets:Ljava/util/List;

    .line 307
    return-void
.end method
