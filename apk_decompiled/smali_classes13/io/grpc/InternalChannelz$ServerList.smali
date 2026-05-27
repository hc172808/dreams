.class public final Lio/grpc/InternalChannelz$ServerList;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerList"
.end annotation


# instance fields
.field public final end:Z

.field public final servers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ServerStats;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p2, "end"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ServerStats;",
            ">;>;Z)V"
        }
    .end annotation

    .line 268
    .local p1, "servers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$ServerStats;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/grpc/InternalChannelz$ServerList;->servers:Ljava/util/List;

    .line 270
    iput-boolean p2, p0, Lio/grpc/InternalChannelz$ServerList;->end:Z

    .line 271
    return-void
.end method
