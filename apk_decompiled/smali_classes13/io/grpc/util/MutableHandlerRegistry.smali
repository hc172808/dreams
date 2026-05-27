.class public final Lio/grpc/util/MutableHandlerRegistry;
.super Lio/grpc/HandlerRegistry;
.source "MutableHandlerRegistry.java"


# instance fields
.field private final services:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lio/grpc/ServerServiceDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lio/grpc/HandlerRegistry;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/util/MutableHandlerRegistry;->services:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public addService(Lio/grpc/BindableService;)Lio/grpc/ServerServiceDefinition;
    .locals 1
    .param p1, "bindableService"    # Lio/grpc/BindableService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 64
    invoke-interface {p1}, Lio/grpc/BindableService;->bindService()Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/util/MutableHandlerRegistry;->addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/ServerServiceDefinition;
    .locals 2
    .param p1, "service"    # Lio/grpc/ServerServiceDefinition;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 53
    iget-object v0, p0, Lio/grpc/util/MutableHandlerRegistry;->services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lio/grpc/ServerServiceDefinition;->getServiceDescriptor()Lio/grpc/ServiceDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/ServiceDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ServerServiceDefinition;

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ServerServiceDefinition;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/util/MutableHandlerRegistry;->services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lookupMethod(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/ServerMethodDefinition;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/ServerMethodDefinition<",
            "**>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 91
    invoke-static {p1}, Lio/grpc/MethodDescriptor;->extractFullServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "serviceName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    return-object v1

    .line 95
    :cond_0
    iget-object v2, p0, Lio/grpc/util/MutableHandlerRegistry;->services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/ServerServiceDefinition;

    .line 96
    .local v2, "service":Lio/grpc/ServerServiceDefinition;
    if-nez v2, :cond_1

    .line 97
    return-object v1

    .line 99
    :cond_1
    invoke-virtual {v2, p1}, Lio/grpc/ServerServiceDefinition;->getMethod(Ljava/lang/String;)Lio/grpc/ServerMethodDefinition;

    move-result-object v1

    return-object v1
.end method

.method public removeService(Lio/grpc/ServerServiceDefinition;)Z
    .locals 2
    .param p1, "service"    # Lio/grpc/ServerServiceDefinition;

    .line 73
    iget-object v0, p0, Lio/grpc/util/MutableHandlerRegistry;->services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lio/grpc/ServerServiceDefinition;->getServiceDescriptor()Lio/grpc/ServiceDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/ServiceDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
