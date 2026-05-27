.class public final Lio/grpc/ServerServiceDefinition$Builder;
.super Ljava/lang/Object;
.source "ServerServiceDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ServerServiceDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/ServerMethodDefinition<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final serviceDescriptor:Lio/grpc/ServiceDescriptor;

.field private final serviceName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/grpc/ServiceDescriptor;)V
    .locals 1
    .param p1, "serviceDescriptor"    # Lio/grpc/ServiceDescriptor;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/ServerServiceDefinition$Builder;->methods:Ljava/util/Map;

    .line 88
    const-string v0, "serviceDescriptor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ServiceDescriptor;

    iput-object v0, p0, Lio/grpc/ServerServiceDefinition$Builder;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    .line 89
    invoke-virtual {p1}, Lio/grpc/ServiceDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/ServerServiceDefinition$Builder;->serviceName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/ServiceDescriptor;Lio/grpc/ServerServiceDefinition$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/ServiceDescriptor;
    .param p2, "x1"    # Lio/grpc/ServerServiceDefinition$1;

    .line 77
    invoke-direct {p0, p1}, Lio/grpc/ServerServiceDefinition$Builder;-><init>(Lio/grpc/ServiceDescriptor;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/ServerServiceDefinition$Builder;->methods:Ljava/util/Map;

    .line 83
    const-string v0, "serviceName"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/ServerServiceDefinition$Builder;->serviceName:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/ServerServiceDefinition$Builder;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/grpc/ServerServiceDefinition$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lio/grpc/ServerServiceDefinition$1;

    .line 77
    invoke-direct {p0, p1}, Lio/grpc/ServerServiceDefinition$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerServiceDefinition$Builder;"
        }
    .end annotation

    .line 100
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    .local p2, "handler":Lio/grpc/ServerCallHandler;, "Lio/grpc/ServerCallHandler<TReqT;TRespT;>;"
    nop

    .line 101
    const-string v0, "method must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/MethodDescriptor;

    .line 102
    const-string v1, "handler must not be null"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerCallHandler;

    .line 100
    invoke-static {v0, v1}, Lio/grpc/ServerMethodDefinition;->create(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerMethodDefinition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/ServerMethodDefinition;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addMethod(Lio/grpc/ServerMethodDefinition;)Lio/grpc/ServerServiceDefinition$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ServerMethodDefinition<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerServiceDefinition$Builder;"
        }
    .end annotation

    .line 107
    .local p1, "def":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<TReqT;TRespT;>;"
    invoke-virtual {p1}, Lio/grpc/ServerMethodDefinition;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v0

    .line 108
    .local v0, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v1, p0, Lio/grpc/ServerServiceDefinition$Builder;->serviceName:Ljava/lang/String;

    .line 109
    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lio/grpc/ServerServiceDefinition$Builder;->serviceName:Ljava/lang/String;

    .line 112
    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v3

    .line 108
    const-string v4, "Method name should be prefixed with service name and separated with \'/\'. Expected service name: \'%s\'. Actual fully qualifed method name: \'%s\'."

    invoke-static {v1, v4, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lio/grpc/ServerServiceDefinition$Builder;->methods:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "Method by same name already registered: %s"

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 115
    iget-object v2, p0, Lio/grpc/ServerServiceDefinition$Builder;->methods:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-object p0
.end method

.method public build()Lio/grpc/ServerServiceDefinition;
    .locals 7

    .line 123
    iget-object v0, p0, Lio/grpc/ServerServiceDefinition$Builder;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    .line 124
    .local v0, "serviceDescriptor":Lio/grpc/ServiceDescriptor;
    if-nez v0, :cond_1

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/ServerServiceDefinition$Builder;->methods:Ljava/util/Map;

    .line 126
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v1, "methodDescriptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/MethodDescriptor<**>;>;"
    iget-object v2, p0, Lio/grpc/ServerServiceDefinition$Builder;->methods:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/ServerMethodDefinition;

    .line 128
    .local v3, "serverMethod":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    invoke-virtual {v3}, Lio/grpc/ServerMethodDefinition;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v3    # "serverMethod":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    goto :goto_0

    .line 130
    :cond_0
    new-instance v2, Lio/grpc/ServiceDescriptor;

    iget-object v3, p0, Lio/grpc/ServerServiceDefinition$Builder;->serviceName:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lio/grpc/ServiceDescriptor;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    move-object v0, v2

    .line 132
    .end local v1    # "methodDescriptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/MethodDescriptor<**>;>;"
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lio/grpc/ServerServiceDefinition$Builder;->methods:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 133
    .local v1, "tmpMethods":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/grpc/ServerMethodDefinition<**>;>;"
    invoke-virtual {v0}, Lio/grpc/ServiceDescriptor;->getMethods()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/MethodDescriptor;

    .line 134
    .local v3, "descriptorMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    nop

    .line 135
    invoke-virtual {v3}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/ServerMethodDefinition;

    .line 136
    .local v4, "removed":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    if-eqz v4, :cond_3

    .line 140
    invoke-virtual {v4}, Lio/grpc/ServerMethodDefinition;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v5

    if-ne v5, v3, :cond_2

    .line 145
    .end local v3    # "descriptorMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    .end local v4    # "removed":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    goto :goto_1

    .line 141
    .restart local v3    # "descriptorMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    .restart local v4    # "removed":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bound method for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v3}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not same instance as method in service descriptor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No method bound for descriptor entry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v3}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    .end local v3    # "descriptorMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    .end local v4    # "removed":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_5

    .line 151
    new-instance v2, Lio/grpc/ServerServiceDefinition;

    iget-object v3, p0, Lio/grpc/ServerServiceDefinition$Builder;->methods:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lio/grpc/ServerServiceDefinition;-><init>(Lio/grpc/ServiceDescriptor;Ljava/util/Map;Lio/grpc/ServerServiceDefinition$1;)V

    return-object v2

    .line 147
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No entry in descriptor matching bound method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/ServerMethodDefinition;

    invoke-virtual {v4}, Lio/grpc/ServerMethodDefinition;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
