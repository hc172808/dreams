.class public abstract Lio/grpc/internal/BaseDnsNameResolverProvider;
.super Lio/grpc/NameResolverProvider;
.source "BaseDnsNameResolverProvider.java"


# static fields
.field public static final ENABLE_GRPCLB_PROPERTY_NAME:Ljava/lang/String; = "io.grpc.internal.DnsNameResolverProvider.enable_grpclb"

.field private static final SCHEME:Ljava/lang/String; = "dns"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/grpc/NameResolverProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultScheme()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "dns"

    return-object v0
.end method

.method protected isAvailable()Z
    .locals 1

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract isSrvEnabled()Z
.end method

.method public bridge synthetic newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/BaseDnsNameResolverProvider;->newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/internal/DnsNameResolver;

    move-result-object p1

    return-object p1
.end method

.method public newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/internal/DnsNameResolver;
    .locals 11
    .param p1, "targetUri"    # Ljava/net/URI;
    .param p2, "args"    # Lio/grpc/NameResolver$Args;

    .line 43
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dns"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetPath"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    .local v0, "targetPath":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "the path component (%s) of the target (%s) must start with \'/\'"

    invoke-static {v1, v2, v0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "name":Ljava/lang/String;
    new-instance v10, Lio/grpc/internal/DnsNameResolver;

    .line 49
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 53
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createUnstarted()Lcom/google/common/base/Stopwatch;

    move-result-object v7

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/InternalServiceProviders;->isAndroid(Ljava/lang/ClassLoader;)Z

    move-result v8

    .line 55
    invoke-virtual {p0}, Lio/grpc/internal/BaseDnsNameResolverProvider;->isSrvEnabled()Z

    move-result v9

    move-object v2, v10

    move-object v4, v1

    move-object v5, p2

    invoke-direct/range {v2 .. v9}, Lio/grpc/internal/DnsNameResolver;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/grpc/NameResolver$Args;Lio/grpc/internal/SharedResourceHolder$Resource;Lcom/google/common/base/Stopwatch;ZZ)V

    .line 48
    return-object v10

    .line 57
    .end local v0    # "targetPath":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
