.class public final Lio/grpc/InternalServiceProviders;
.super Ljava/lang/Object;
.source "InternalServiceProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/InternalServiceProviders$PriorityAccessor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getCandidatesViaHardCoded(Ljava/lang/Class;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 63
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "hardcoded":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<*>;>;"
    invoke-static {p0, p1}, Lio/grpc/ServiceProviders;->getCandidatesViaHardCoded(Ljava/lang/Class;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static getCandidatesViaServiceLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 54
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lio/grpc/ServiceProviders;->getCandidatesViaServiceLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static isAndroid(Ljava/lang/ClassLoader;)Z
    .locals 1
    .param p0, "cl"    # Ljava/lang/ClassLoader;

    .line 70
    invoke-static {p0}, Lio/grpc/ServiceProviders;->isAndroid(Ljava/lang/ClassLoader;)Z

    move-result v0

    return v0
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lio/grpc/InternalServiceProviders$PriorityAccessor;)Ljava/lang/Object;
    .locals 1
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/ClassLoader;",
            "Lio/grpc/InternalServiceProviders$PriorityAccessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 35
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "hardcoded":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<*>;>;"
    .local p3, "priorityAccessor":Lio/grpc/InternalServiceProviders$PriorityAccessor;, "Lio/grpc/InternalServiceProviders$PriorityAccessor<TT;>;"
    invoke-static {p0, p1, p2, p3}, Lio/grpc/ServiceProviders;->load(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lio/grpc/ServiceProviders$PriorityAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static loadAll(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lio/grpc/InternalServiceProviders$PriorityAccessor;)Ljava/util/List;
    .locals 1
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/ClassLoader;",
            "Lio/grpc/InternalServiceProviders$PriorityAccessor<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 46
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "hardCodedClasses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<*>;>;"
    .local p3, "priorityAccessor":Lio/grpc/InternalServiceProviders$PriorityAccessor;, "Lio/grpc/InternalServiceProviders$PriorityAccessor<TT;>;"
    invoke-static {p0, p1, p2, p3}, Lio/grpc/ServiceProviders;->loadAll(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lio/grpc/ServiceProviders$PriorityAccessor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
