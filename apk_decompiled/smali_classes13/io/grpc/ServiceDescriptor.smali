.class public final Lio/grpc/ServiceDescriptor;
.super Ljava/lang/Object;
.source "ServiceDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ServiceDescriptor$Builder;
    }
.end annotation


# instance fields
.field private final methods:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/MethodDescriptor<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final schemaDescriptor:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lio/grpc/ServiceDescriptor$Builder;)V
    .locals 2
    .param p1, "b"    # Lio/grpc/ServiceDescriptor$Builder;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lio/grpc/ServiceDescriptor$Builder;->access$100(Lio/grpc/ServiceDescriptor$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/ServiceDescriptor;->name:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lio/grpc/ServiceDescriptor$Builder;->access$200(Lio/grpc/ServiceDescriptor$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/ServiceDescriptor;->validateMethodNames(Ljava/lang/String;Ljava/util/Collection;)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/grpc/ServiceDescriptor$Builder;->access$200(Lio/grpc/ServiceDescriptor$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/ServiceDescriptor;->methods:Ljava/util/Collection;

    .line 71
    invoke-static {p1}, Lio/grpc/ServiceDescriptor$Builder;->access$300(Lio/grpc/ServiceDescriptor$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/ServiceDescriptor;->schemaDescriptor:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/ServiceDescriptor$Builder;Lio/grpc/ServiceDescriptor$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/ServiceDescriptor$Builder;
    .param p2, "x1"    # Lio/grpc/ServiceDescriptor$1;

    .line 37
    invoke-direct {p0, p1}, Lio/grpc/ServiceDescriptor;-><init>(Lio/grpc/ServiceDescriptor$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lio/grpc/MethodDescriptor<",
            "**>;>;)V"
        }
    .end annotation

    .line 64
    .local p2, "methods":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/MethodDescriptor<**>;>;"
    invoke-static {p1}, Lio/grpc/ServiceDescriptor;->newBuilder(Ljava/lang/String;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    const-string v1, "methods"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v0, v1}, Lio/grpc/ServiceDescriptor$Builder;->access$000(Lio/grpc/ServiceDescriptor$Builder;Ljava/util/Collection;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/ServiceDescriptor;-><init>(Lio/grpc/ServiceDescriptor$Builder;)V

    .line 65
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lio/grpc/MethodDescriptor;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lio/grpc/MethodDescriptor<",
            "**>;)V"
        }
    .end annotation

    .line 52
    .local p2, "methods":[Lio/grpc/MethodDescriptor;, "[Lio/grpc/MethodDescriptor<**>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/grpc/ServiceDescriptor;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 53
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lio/grpc/ServiceDescriptor$Builder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 127
    new-instance v0, Lio/grpc/ServiceDescriptor$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/ServiceDescriptor$Builder;-><init>(Ljava/lang/String;Lio/grpc/ServiceDescriptor$1;)V

    return-object v0
.end method

.method static validateMethodNames(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 7
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lio/grpc/MethodDescriptor<",
            "**>;>;)V"
        }
    .end annotation

    .line 110
    .local p1, "methods":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/MethodDescriptor<**>;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 111
    .local v0, "allNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/MethodDescriptor;

    .line 112
    .local v2, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    const-string v3, "method"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor;->getServiceName()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "methodServiceName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "service names %s != %s"

    invoke-static {v4, v5, v3, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 117
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v5

    .line 116
    const-string v6, "duplicate name %s"

    invoke-static {v4, v6, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 118
    .end local v2    # "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    .end local v3    # "methodServiceName":Ljava/lang/String;
    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public getMethods()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/grpc/MethodDescriptor<",
            "**>;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lio/grpc/ServiceDescriptor;->methods:Ljava/util/Collection;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lio/grpc/ServiceDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemaDescriptor()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 106
    iget-object v0, p0, Lio/grpc/ServiceDescriptor;->schemaDescriptor:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 210
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/ServiceDescriptor;->name:Ljava/lang/String;

    .line 211
    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/ServiceDescriptor;->schemaDescriptor:Ljava/lang/Object;

    .line 212
    const-string v2, "schemaDescriptor"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/ServiceDescriptor;->methods:Ljava/util/Collection;

    .line 213
    const-string v2, "methods"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues()Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    return-object v0
.end method
