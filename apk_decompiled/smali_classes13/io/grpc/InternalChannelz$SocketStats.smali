.class public final Lio/grpc/InternalChannelz$SocketStats;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SocketStats"
.end annotation


# instance fields
.field public final data:Lio/grpc/InternalChannelz$TransportStats;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final local:Ljava/net/SocketAddress;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final remote:Ljava/net/SocketAddress;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final security:Lio/grpc/InternalChannelz$Security;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final socketOptions:Lio/grpc/InternalChannelz$SocketOptions;


# direct methods
.method public constructor <init>(Lio/grpc/InternalChannelz$TransportStats;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/InternalChannelz$SocketOptions;Lio/grpc/InternalChannelz$Security;)V
    .locals 1
    .param p1, "data"    # Lio/grpc/InternalChannelz$TransportStats;
    .param p2, "local"    # Ljava/net/SocketAddress;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "remote"    # Ljava/net/SocketAddress;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "socketOptions"    # Lio/grpc/InternalChannelz$SocketOptions;
    .param p5, "security"    # Lio/grpc/InternalChannelz$Security;

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    iput-object p1, p0, Lio/grpc/InternalChannelz$SocketStats;->data:Lio/grpc/InternalChannelz$TransportStats;

    .line 717
    const-string v0, "local socket"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    iput-object v0, p0, Lio/grpc/InternalChannelz$SocketStats;->local:Ljava/net/SocketAddress;

    .line 718
    iput-object p3, p0, Lio/grpc/InternalChannelz$SocketStats;->remote:Ljava/net/SocketAddress;

    .line 719
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalChannelz$SocketOptions;

    iput-object v0, p0, Lio/grpc/InternalChannelz$SocketStats;->socketOptions:Lio/grpc/InternalChannelz$SocketOptions;

    .line 720
    iput-object p5, p0, Lio/grpc/InternalChannelz$SocketStats;->security:Lio/grpc/InternalChannelz$Security;

    .line 721
    return-void
.end method
