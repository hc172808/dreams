.class final Lio/grpc/NameResolverRegistry$NameResolverFactory;
.super Lio/grpc/NameResolver$Factory;
.source "NameResolverRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/NameResolverRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NameResolverFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/NameResolverRegistry;


# direct methods
.method private constructor <init>(Lio/grpc/NameResolverRegistry;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lio/grpc/NameResolverRegistry$NameResolverFactory;->this$0:Lio/grpc/NameResolverRegistry;

    invoke-direct {p0}, Lio/grpc/NameResolver$Factory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/NameResolverRegistry;Lio/grpc/NameResolverRegistry$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/NameResolverRegistry;
    .param p2, "x1"    # Lio/grpc/NameResolverRegistry$1;

    .line 148
    invoke-direct {p0, p1}, Lio/grpc/NameResolverRegistry$NameResolverFactory;-><init>(Lio/grpc/NameResolverRegistry;)V

    return-void
.end method


# virtual methods
.method public getDefaultScheme()Ljava/lang/String;
    .locals 2

    .line 164
    iget-object v0, p0, Lio/grpc/NameResolverRegistry$NameResolverFactory;->this$0:Lio/grpc/NameResolverRegistry;

    invoke-virtual {v0}, Lio/grpc/NameResolverRegistry;->providers()Ljava/util/List;

    move-result-object v0

    .line 165
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/NameResolverProvider;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "unknown"

    return-object v1

    .line 168
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/NameResolverProvider;

    invoke-virtual {v1}, Lio/grpc/NameResolverProvider;->getDefaultScheme()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;
    .locals 4
    .param p1, "targetUri"    # Ljava/net/URI;
    .param p2, "args"    # Lio/grpc/NameResolver$Args;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 152
    iget-object v0, p0, Lio/grpc/NameResolverRegistry$NameResolverFactory;->this$0:Lio/grpc/NameResolverRegistry;

    invoke-virtual {v0}, Lio/grpc/NameResolverRegistry;->providers()Ljava/util/List;

    move-result-object v0

    .line 153
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/NameResolverProvider;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/NameResolverProvider;

    .line 154
    .local v2, "provider":Lio/grpc/NameResolverProvider;
    invoke-virtual {v2, p1, p2}, Lio/grpc/NameResolverProvider;->newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;

    move-result-object v3

    .line 155
    .local v3, "resolver":Lio/grpc/NameResolver;
    if-eqz v3, :cond_0

    .line 156
    return-object v3

    .line 158
    .end local v2    # "provider":Lio/grpc/NameResolverProvider;
    .end local v3    # "resolver":Lio/grpc/NameResolver;
    :cond_0
    goto :goto_0

    .line 159
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
