.class public abstract Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;
.super Ljava/lang/Object;
.source "AbstractMapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;",
            "Ljavax/inject/Provider<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 50
    .local p0, "this":Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;, "Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder<TK;TV;TV2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/DaggerCollections;->newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;->map:Ljava/util/LinkedHashMap;

    .line 52
    return-void
.end method


# virtual methods
.method put(Ljava/lang/Object;Ljavax/inject/Provider;)Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljavax/inject/Provider<",
            "TV;>;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder<",
            "TK;TV;TV2;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;, "Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder<TK;TV;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "providerOfValue":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TV;>;"
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;->map:Ljava/util/LinkedHashMap;

    const-string v1, "key"

    invoke-static {p1, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "provider"

    invoke-static {p2, v2}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-object p0
.end method

.method putAll(Ljavax/inject/Provider;)Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "TK;TV2;>;>;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder<",
            "TK;TV;TV2;>;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;, "Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder<TK;TV;TV2;>;"
    .local p1, "mapOfProviders":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/util/Map<TK;TV2;>;>;"
    instance-of v0, p1, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;

    if-eqz v0, :cond_0

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;

    .line 72
    .local v0, "asDelegateFactory":Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;, "Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory<Ljava/util/Map<TK;TV2;>;>;"
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;->getDelegate()Ljavax/inject/Provider;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;->putAll(Ljavax/inject/Provider;)Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;

    move-result-object v1

    return-object v1

    .line 75
    .end local v0    # "asDelegateFactory":Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;, "Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory<Ljava/util/Map<TK;TV2;>;>;"
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;

    .line 77
    .local v0, "asAbstractMapFactory":Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;, "Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory<TK;TV;*>;"
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;->map:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;->access$000(Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 78
    return-object p0
.end method
