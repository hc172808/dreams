.class public final Lio/grpc/inprocess/InProcessSocketAddress;
.super Ljava/net/SocketAddress;
.source "InProcessSocketAddress.java"


# static fields
.field private static final serialVersionUID:J = -0x26e7d2ec83c15532L


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 36
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/inprocess/InProcessSocketAddress;->name:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 69
    instance-of v0, p1, Lio/grpc/inprocess/InProcessSocketAddress;

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lio/grpc/inprocess/InProcessSocketAddress;->name:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lio/grpc/inprocess/InProcessSocketAddress;

    iget-object v1, v1, Lio/grpc/inprocess/InProcessSocketAddress;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/grpc/inprocess/InProcessSocketAddress;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 61
    iget-object v0, p0, Lio/grpc/inprocess/InProcessSocketAddress;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/grpc/inprocess/InProcessSocketAddress;->name:Ljava/lang/String;

    return-object v0
.end method
