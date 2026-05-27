.class Lio/grpc/internal/AbstractManagedChannelImplBuilder$DirectAddressNameResolverFactory;
.super Lio/grpc/NameResolver$Factory;
.source "AbstractManagedChannelImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AbstractManagedChannelImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectAddressNameResolverFactory"
.end annotation


# instance fields
.field final address:Ljava/net/SocketAddress;

.field final authority:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "authority"    # Ljava/lang/String;

    .line 622
    invoke-direct {p0}, Lio/grpc/NameResolver$Factory;-><init>()V

    .line 623
    iput-object p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder$DirectAddressNameResolverFactory;->address:Ljava/net/SocketAddress;

    .line 624
    iput-object p2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder$DirectAddressNameResolverFactory;->authority:Ljava/lang/String;

    .line 625
    return-void
.end method


# virtual methods
.method public getDefaultScheme()Ljava/lang/String;
    .locals 1

    .line 651
    const-string v0, "directaddress"

    return-object v0
.end method

.method public newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;
    .locals 1
    .param p1, "notUsedUri"    # Ljava/net/URI;
    .param p2, "args"    # Lio/grpc/NameResolver$Args;

    .line 629
    new-instance v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder$DirectAddressNameResolverFactory$1;

    invoke-direct {v0, p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder$DirectAddressNameResolverFactory$1;-><init>(Lio/grpc/internal/AbstractManagedChannelImplBuilder$DirectAddressNameResolverFactory;)V

    return-object v0
.end method
