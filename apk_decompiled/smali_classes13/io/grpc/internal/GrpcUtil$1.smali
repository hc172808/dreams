.class Lio/grpc/internal/GrpcUtil$1;
.super Ljava/lang/Object;
.source "GrpcUtil.java"

# interfaces
.implements Lio/grpc/ProxyDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/GrpcUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public proxyFor(Ljava/net/SocketAddress;)Lio/grpc/ProxiedSocketAddress;
    .locals 1
    .param p1, "targetServerAddress"    # Ljava/net/SocketAddress;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 238
    const/4 v0, 0x0

    return-object v0
.end method
