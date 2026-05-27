.class public final Lio/grpc/ServiceDescriptor$Builder;
.super Ljava/lang/Object;
.source "ServiceDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ServiceDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/MethodDescriptor<",
            "**>;>;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private schemaDescriptor:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/ServiceDescriptor$Builder;->methods:Ljava/util/List;

    .line 137
    invoke-virtual {p0, p1}, Lio/grpc/ServiceDescriptor$Builder;->setName(Ljava/lang/String;)Lio/grpc/ServiceDescriptor$Builder;

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/grpc/ServiceDescriptor$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lio/grpc/ServiceDescriptor$1;

    .line 135
    invoke-direct {p0, p1}, Lio/grpc/ServiceDescriptor$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lio/grpc/ServiceDescriptor$Builder;Ljava/util/Collection;)Lio/grpc/ServiceDescriptor$Builder;
    .locals 1
    .param p0, "x0"    # Lio/grpc/ServiceDescriptor$Builder;
    .param p1, "x1"    # Ljava/util/Collection;

    .line 135
    invoke-direct {p0, p1}, Lio/grpc/ServiceDescriptor$Builder;->addAllMethods(Ljava/util/Collection;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/ServiceDescriptor$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/ServiceDescriptor$Builder;

    .line 135
    iget-object v0, p0, Lio/grpc/ServiceDescriptor$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/ServiceDescriptor$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/grpc/ServiceDescriptor$Builder;

    .line 135
    iget-object v0, p0, Lio/grpc/ServiceDescriptor$Builder;->methods:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/ServiceDescriptor$Builder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/grpc/ServiceDescriptor$Builder;

    .line 135
    iget-object v0, p0, Lio/grpc/ServiceDescriptor$Builder;->schemaDescriptor:Ljava/lang/Object;

    return-object v0
.end method

.method private addAllMethods(Ljava/util/Collection;)Lio/grpc/ServiceDescriptor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/grpc/MethodDescriptor<",
            "**>;>;)",
            "Lio/grpc/ServiceDescriptor$Builder;"
        }
    .end annotation

    .line 176
    .local p1, "methods":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/MethodDescriptor<**>;>;"
    iget-object v0, p0, Lio/grpc/ServiceDescriptor$Builder;->methods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    return-object p0
.end method


# virtual methods
.method public addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;)",
            "Lio/grpc/ServiceDescriptor$Builder;"
        }
    .end annotation

    .line 165
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    iget-object v0, p0, Lio/grpc/ServiceDescriptor$Builder;->methods:Ljava/util/List;

    const-string v1, "method"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-object p0
.end method

.method public build()Lio/grpc/ServiceDescriptor;
    .locals 2

    .line 204
    new-instance v0, Lio/grpc/ServiceDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/ServiceDescriptor;-><init>(Lio/grpc/ServiceDescriptor$Builder;Lio/grpc/ServiceDescriptor$1;)V

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lio/grpc/ServiceDescriptor$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 153
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/ServiceDescriptor$Builder;->name:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public setSchemaDescriptor(Ljava/lang/Object;)Lio/grpc/ServiceDescriptor$Builder;
    .locals 0
    .param p1, "schemaDescriptor"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 192
    iput-object p1, p0, Lio/grpc/ServiceDescriptor$Builder;->schemaDescriptor:Ljava/lang/Object;

    .line 193
    return-object p0
.end method
