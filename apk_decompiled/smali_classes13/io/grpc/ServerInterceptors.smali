.class public final Lio/grpc/ServerInterceptors;
.super Ljava/lang/Object;
.source "ServerInterceptors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ServerInterceptors$InterceptCallHandler;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intercept(Lio/grpc/BindableService;Ljava/util/List;)Lio/grpc/ServerServiceDefinition;
    .locals 1
    .param p0, "bindableService"    # Lio/grpc/BindableService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/BindableService;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerInterceptor;",
            ">;)",
            "Lio/grpc/ServerServiceDefinition;"
        }
    .end annotation

    .line 121
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<+Lio/grpc/ServerInterceptor;>;"
    const-string v0, "bindableService"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-interface {p0}, Lio/grpc/BindableService;->bindService()Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/ServerInterceptors;->intercept(Lio/grpc/ServerServiceDefinition;Ljava/util/List;)Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public static varargs intercept(Lio/grpc/BindableService;[Lio/grpc/ServerInterceptor;)Lio/grpc/ServerServiceDefinition;
    .locals 2
    .param p0, "bindableService"    # Lio/grpc/BindableService;
    .param p1, "interceptors"    # [Lio/grpc/ServerInterceptor;

    .line 92
    const-string v0, "bindableService"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-interface {p0}, Lio/grpc/BindableService;->bindService()Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/ServerInterceptors;->intercept(Lio/grpc/ServerServiceDefinition;Ljava/util/List;)Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public static intercept(Lio/grpc/ServerServiceDefinition;Ljava/util/List;)Lio/grpc/ServerServiceDefinition;
    .locals 3
    .param p0, "serviceDef"    # Lio/grpc/ServerServiceDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerServiceDefinition;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerInterceptor;",
            ">;)",
            "Lio/grpc/ServerServiceDefinition;"
        }
    .end annotation

    .line 107
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<+Lio/grpc/ServerInterceptor;>;"
    const-string v0, "serviceDef"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    return-object p0

    .line 111
    :cond_0
    nop

    .line 112
    invoke-virtual {p0}, Lio/grpc/ServerServiceDefinition;->getServiceDescriptor()Lio/grpc/ServiceDescriptor;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/ServerServiceDefinition;->builder(Lio/grpc/ServiceDescriptor;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 113
    .local v0, "serviceDefBuilder":Lio/grpc/ServerServiceDefinition$Builder;
    invoke-virtual {p0}, Lio/grpc/ServerServiceDefinition;->getMethods()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/ServerMethodDefinition;

    .line 114
    .local v2, "method":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    invoke-static {v0, v2, p1}, Lio/grpc/ServerInterceptors;->wrapAndAddMethod(Lio/grpc/ServerServiceDefinition$Builder;Lio/grpc/ServerMethodDefinition;Ljava/util/List;)V

    .line 115
    .end local v2    # "method":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v0}, Lio/grpc/ServerServiceDefinition$Builder;->build()Lio/grpc/ServerServiceDefinition;

    move-result-object v1

    return-object v1
.end method

.method public static varargs intercept(Lio/grpc/ServerServiceDefinition;[Lio/grpc/ServerInterceptor;)Lio/grpc/ServerServiceDefinition;
    .locals 1
    .param p0, "serviceDef"    # Lio/grpc/ServerServiceDefinition;
    .param p1, "interceptors"    # [Lio/grpc/ServerInterceptor;

    .line 87
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lio/grpc/ServerInterceptors;->intercept(Lio/grpc/ServerServiceDefinition;Ljava/util/List;)Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public static interceptForward(Lio/grpc/BindableService;Ljava/util/List;)Lio/grpc/ServerServiceDefinition;
    .locals 1
    .param p0, "bindableService"    # Lio/grpc/BindableService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/BindableService;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerInterceptor;",
            ">;)",
            "Lio/grpc/ServerServiceDefinition;"
        }
    .end annotation

    .line 73
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<+Lio/grpc/ServerInterceptor;>;"
    invoke-interface {p0}, Lio/grpc/BindableService;->bindService()Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/ServerInterceptors;->interceptForward(Lio/grpc/ServerServiceDefinition;Ljava/util/List;)Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public static varargs interceptForward(Lio/grpc/BindableService;[Lio/grpc/ServerInterceptor;)Lio/grpc/ServerServiceDefinition;
    .locals 2
    .param p0, "bindableService"    # Lio/grpc/BindableService;
    .param p1, "interceptors"    # [Lio/grpc/ServerInterceptor;

    .line 50
    invoke-interface {p0}, Lio/grpc/BindableService;->bindService()Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/ServerInterceptors;->interceptForward(Lio/grpc/ServerServiceDefinition;Ljava/util/List;)Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public static interceptForward(Lio/grpc/ServerServiceDefinition;Ljava/util/List;)Lio/grpc/ServerServiceDefinition;
    .locals 2
    .param p0, "serviceDef"    # Lio/grpc/ServerServiceDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerServiceDefinition;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerInterceptor;",
            ">;)",
            "Lio/grpc/ServerServiceDefinition;"
        }
    .end annotation

    .line 65
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<+Lio/grpc/ServerInterceptor;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 66
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<+Lio/grpc/ServerInterceptor;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 67
    invoke-static {p0, v0}, Lio/grpc/ServerInterceptors;->intercept(Lio/grpc/ServerServiceDefinition;Ljava/util/List;)Lio/grpc/ServerServiceDefinition;

    move-result-object v1

    return-object v1
.end method

.method public static varargs interceptForward(Lio/grpc/ServerServiceDefinition;[Lio/grpc/ServerInterceptor;)Lio/grpc/ServerServiceDefinition;
    .locals 1
    .param p0, "serviceDef"    # Lio/grpc/ServerServiceDefinition;
    .param p1, "interceptors"    # [Lio/grpc/ServerInterceptor;

    .line 45
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lio/grpc/ServerInterceptors;->interceptForward(Lio/grpc/ServerServiceDefinition;Ljava/util/List;)Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public static useInputStreamMessages(Lio/grpc/ServerServiceDefinition;)Lio/grpc/ServerServiceDefinition;
    .locals 2
    .param p0, "serviceDef"    # Lio/grpc/ServerServiceDefinition;

    .line 140
    new-instance v0, Lio/grpc/ServerInterceptors$1;

    invoke-direct {v0}, Lio/grpc/ServerInterceptors$1;-><init>()V

    .line 157
    .local v0, "marshaller":Lio/grpc/MethodDescriptor$Marshaller;, "Lio/grpc/MethodDescriptor$Marshaller<Ljava/io/InputStream;>;"
    invoke-static {p0, v0}, Lio/grpc/ServerInterceptors;->useMarshalledMessages(Lio/grpc/ServerServiceDefinition;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/ServerServiceDefinition;

    move-result-object v1

    return-object v1
.end method

.method public static useMarshalledMessages(Lio/grpc/ServerServiceDefinition;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/ServerServiceDefinition;
    .locals 7
    .param p0, "serviceDef"    # Lio/grpc/ServerServiceDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ServerServiceDefinition;",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TT;>;)",
            "Lio/grpc/ServerServiceDefinition;"
        }
    .end annotation

    .line 177
    .local p1, "marshaller":Lio/grpc/MethodDescriptor$Marshaller;, "Lio/grpc/MethodDescriptor$Marshaller<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "wrappedMethods":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerMethodDefinition<**>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v1, "wrappedDescriptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/MethodDescriptor<**>;>;"
    invoke-virtual {p0}, Lio/grpc/ServerServiceDefinition;->getMethods()Ljava/util/Collection;

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

    .line 183
    .local v3, "definition":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    invoke-virtual {v3}, Lio/grpc/ServerMethodDefinition;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v4

    .line 184
    .local v4, "originalMethodDescriptor":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    nop

    .line 185
    invoke-virtual {v4, p1, p1}, Lio/grpc/MethodDescriptor;->toBuilder(Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v5

    .line 186
    .local v5, "wrappedMethodDescriptor":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TT;TT;>;"
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {v3, v5}, Lio/grpc/ServerInterceptors;->wrapMethod(Lio/grpc/ServerMethodDefinition;Lio/grpc/MethodDescriptor;)Lio/grpc/ServerMethodDefinition;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v3    # "definition":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    .end local v4    # "originalMethodDescriptor":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    .end local v5    # "wrappedMethodDescriptor":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TT;TT;>;"
    goto :goto_0

    .line 190
    :cond_0
    new-instance v2, Lio/grpc/ServiceDescriptor;

    .line 191
    invoke-virtual {p0}, Lio/grpc/ServerServiceDefinition;->getServiceDescriptor()Lio/grpc/ServiceDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/ServiceDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lio/grpc/ServiceDescriptor;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-static {v2}, Lio/grpc/ServerServiceDefinition;->builder(Lio/grpc/ServiceDescriptor;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v2

    .line 194
    .local v2, "serviceBuilder":Lio/grpc/ServerServiceDefinition$Builder;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/ServerMethodDefinition;

    .line 195
    .local v4, "definition":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    invoke-virtual {v2, v4}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/ServerMethodDefinition;)Lio/grpc/ServerServiceDefinition$Builder;

    .line 196
    .end local v4    # "definition":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    goto :goto_1

    .line 197
    :cond_1
    invoke-virtual {v2}, Lio/grpc/ServerServiceDefinition$Builder;->build()Lio/grpc/ServerServiceDefinition;

    move-result-object v3

    return-object v3
.end method

.method private static wrapAndAddMethod(Lio/grpc/ServerServiceDefinition$Builder;Lio/grpc/ServerMethodDefinition;Ljava/util/List;)V
    .locals 3
    .param p0, "serviceDefBuilder"    # Lio/grpc/ServerServiceDefinition$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ServerServiceDefinition$Builder;",
            "Lio/grpc/ServerMethodDefinition<",
            "TReqT;TRespT;>;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p1, "method":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<TReqT;TRespT;>;"
    .local p2, "interceptors":Ljava/util/List;, "Ljava/util/List<+Lio/grpc/ServerInterceptor;>;"
    invoke-virtual {p1}, Lio/grpc/ServerMethodDefinition;->getServerCallHandler()Lio/grpc/ServerCallHandler;

    move-result-object v0

    .line 204
    .local v0, "callHandler":Lio/grpc/ServerCallHandler;, "Lio/grpc/ServerCallHandler<TReqT;TRespT;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/ServerInterceptor;

    .line 205
    .local v2, "interceptor":Lio/grpc/ServerInterceptor;
    invoke-static {v2, v0}, Lio/grpc/ServerInterceptors$InterceptCallHandler;->create(Lio/grpc/ServerInterceptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerInterceptors$InterceptCallHandler;

    move-result-object v0

    .line 206
    .end local v2    # "interceptor":Lio/grpc/ServerInterceptor;
    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p1, v0}, Lio/grpc/ServerMethodDefinition;->withServerCallHandler(Lio/grpc/ServerCallHandler;)Lio/grpc/ServerMethodDefinition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/ServerMethodDefinition;)Lio/grpc/ServerServiceDefinition$Builder;

    .line 208
    return-void
.end method

.method private static wrapHandler(Lio/grpc/ServerCallHandler;Lio/grpc/MethodDescriptor;Lio/grpc/MethodDescriptor;)Lio/grpc/ServerCallHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OReqT:",
            "Ljava/lang/Object;",
            "ORespT:",
            "Ljava/lang/Object;",
            "WReqT:",
            "Ljava/lang/Object;",
            "WRespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ServerCallHandler<",
            "TOReqT;TORespT;>;",
            "Lio/grpc/MethodDescriptor<",
            "TOReqT;TORespT;>;",
            "Lio/grpc/MethodDescriptor<",
            "TWReqT;TWRespT;>;)",
            "Lio/grpc/ServerCallHandler<",
            "TWReqT;TWRespT;>;"
        }
    .end annotation

    .line 247
    .local p0, "originalHandler":Lio/grpc/ServerCallHandler;, "Lio/grpc/ServerCallHandler<TOReqT;TORespT;>;"
    .local p1, "originalMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TOReqT;TORespT;>;"
    .local p2, "wrappedMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TWReqT;TWRespT;>;"
    new-instance v0, Lio/grpc/ServerInterceptors$2;

    invoke-direct {v0, p1, p2, p0}, Lio/grpc/ServerInterceptors$2;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)V

    return-object v0
.end method

.method static wrapMethod(Lio/grpc/ServerMethodDefinition;Lio/grpc/MethodDescriptor;)Lio/grpc/ServerMethodDefinition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OReqT:",
            "Ljava/lang/Object;",
            "ORespT:",
            "Ljava/lang/Object;",
            "WReqT:",
            "Ljava/lang/Object;",
            "WRespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ServerMethodDefinition<",
            "TOReqT;TORespT;>;",
            "Lio/grpc/MethodDescriptor<",
            "TWReqT;TWRespT;>;)",
            "Lio/grpc/ServerMethodDefinition<",
            "TWReqT;TWRespT;>;"
        }
    .end annotation

    .line 236
    .local p0, "definition":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<TOReqT;TORespT;>;"
    .local p1, "wrappedMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TWReqT;TWRespT;>;"
    nop

    .line 237
    invoke-virtual {p0}, Lio/grpc/ServerMethodDefinition;->getServerCallHandler()Lio/grpc/ServerCallHandler;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Lio/grpc/ServerMethodDefinition;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v1

    .line 236
    invoke-static {v0, v1, p1}, Lio/grpc/ServerInterceptors;->wrapHandler(Lio/grpc/ServerCallHandler;Lio/grpc/MethodDescriptor;Lio/grpc/MethodDescriptor;)Lio/grpc/ServerCallHandler;

    move-result-object v0

    .line 240
    .local v0, "wrappedHandler":Lio/grpc/ServerCallHandler;, "Lio/grpc/ServerCallHandler<TWReqT;TWRespT;>;"
    invoke-static {p1, v0}, Lio/grpc/ServerMethodDefinition;->create(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerMethodDefinition;

    move-result-object v1

    return-object v1
.end method
