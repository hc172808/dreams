.class Lio/grpc/NameResolver$Factory$1;
.super Lio/grpc/NameResolver$ServiceConfigParser;
.source "NameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/NameResolver$Factory;->newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Helper;)Lio/grpc/NameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/NameResolver$Factory;

.field final synthetic val$helper:Lio/grpc/NameResolver$Helper;


# direct methods
.method constructor <init>(Lio/grpc/NameResolver$Factory;Lio/grpc/NameResolver$Helper;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/NameResolver$Factory;

    .line 213
    iput-object p1, p0, Lio/grpc/NameResolver$Factory$1;->this$0:Lio/grpc/NameResolver$Factory;

    iput-object p2, p0, Lio/grpc/NameResolver$Factory$1;->val$helper:Lio/grpc/NameResolver$Helper;

    invoke-direct {p0}, Lio/grpc/NameResolver$ServiceConfigParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parseServiceConfig(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/NameResolver$ConfigOrError;"
        }
    .end annotation

    .line 216
    .local p1, "rawServiceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v0, p0, Lio/grpc/NameResolver$Factory$1;->val$helper:Lio/grpc/NameResolver$Helper;

    invoke-virtual {v0, p1}, Lio/grpc/NameResolver$Helper;->parseServiceConfig(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v0

    return-object v0
.end method
