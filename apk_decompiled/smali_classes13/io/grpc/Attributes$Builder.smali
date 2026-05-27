.class public final Lio/grpc/Attributes$Builder;
.super Ljava/lang/Object;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private base:Lio/grpc/Attributes;

.field private newdata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/Attributes$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 214
    const-class v0, Lio/grpc/Attributes;

    return-void
.end method

.method private constructor <init>(Lio/grpc/Attributes;)V
    .locals 1
    .param p1, "base"    # Lio/grpc/Attributes;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    if-eqz p1, :cond_0

    .line 220
    iput-object p1, p0, Lio/grpc/Attributes$Builder;->base:Lio/grpc/Attributes;

    .line 221
    return-void

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method synthetic constructor <init>(Lio/grpc/Attributes;Lio/grpc/Attributes$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/Attributes;
    .param p2, "x1"    # Lio/grpc/Attributes$1;

    .line 214
    invoke-direct {p0, p1}, Lio/grpc/Attributes$Builder;-><init>(Lio/grpc/Attributes;)V

    return-void
.end method

.method private data(I)Ljava/util/Map;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Lio/grpc/Attributes$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0, p1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/Map;

    .line 227
    :cond_0
    iget-object v0, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public build()Lio/grpc/Attributes;
    .locals 5

    .line 264
    iget-object v0, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lio/grpc/Attributes$Builder;->base:Lio/grpc/Attributes;

    invoke-static {v0}, Lio/grpc/Attributes;->access$100(Lio/grpc/Attributes;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 266
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/grpc/Attributes$Key<*>;Ljava/lang/Object;>;"
    iget-object v2, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    iget-object v2, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/grpc/Attributes$Key<*>;Ljava/lang/Object;>;"
    :cond_0
    goto :goto_0

    .line 270
    :cond_1
    new-instance v0, Lio/grpc/Attributes;

    iget-object v1, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/Attributes;-><init>(Ljava/util/Map;Lio/grpc/Attributes$1;)V

    iput-object v0, p0, Lio/grpc/Attributes$Builder;->base:Lio/grpc/Attributes;

    .line 271
    iput-object v2, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/Map;

    .line 273
    :cond_2
    iget-object v0, p0, Lio/grpc/Attributes$Builder;->base:Lio/grpc/Attributes;

    return-object v0
.end method

.method public discard(Lio/grpc/Attributes$Key;)Lio/grpc/Attributes$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Attributes$Key<",
            "TT;>;)",
            "Lio/grpc/Attributes$Builder;"
        }
    .end annotation

    .line 244
    .local p1, "key":Lio/grpc/Attributes$Key;, "Lio/grpc/Attributes$Key<TT;>;"
    iget-object v0, p0, Lio/grpc/Attributes$Builder;->base:Lio/grpc/Attributes;

    invoke-static {v0}, Lio/grpc/Attributes;->access$100(Lio/grpc/Attributes;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lio/grpc/Attributes$Builder;->base:Lio/grpc/Attributes;

    invoke-static {v1}, Lio/grpc/Attributes;->access$100(Lio/grpc/Attributes;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    .line 246
    .local v0, "newBaseData":Ljava/util/Map;, "Ljava/util/Map<Lio/grpc/Attributes$Key<*>;Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v1, Lio/grpc/Attributes;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/grpc/Attributes;-><init>(Ljava/util/Map;Lio/grpc/Attributes$1;)V

    iput-object v1, p0, Lio/grpc/Attributes$Builder;->base:Lio/grpc/Attributes;

    .line 249
    .end local v0    # "newBaseData":Ljava/util/Map;, "Ljava/util/Map<Lio/grpc/Attributes$Key<*>;Ljava/lang/Object;>;"
    :cond_0
    iget-object v0, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 250
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_1
    return-object p0
.end method

.method public set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Attributes$Key<",
            "TT;>;TT;)",
            "Lio/grpc/Attributes$Builder;"
        }
    .end annotation

    .line 231
    .local p1, "key":Lio/grpc/Attributes$Key;, "Lio/grpc/Attributes$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/grpc/Attributes$Builder;->data(I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-object p0
.end method

.method public setAll(Lio/grpc/Attributes;)Lio/grpc/Attributes$Builder;
    .locals 2
    .param p1, "other"    # Lio/grpc/Attributes;

    .line 256
    invoke-static {p1}, Lio/grpc/Attributes;->access$100(Lio/grpc/Attributes;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lio/grpc/Attributes$Builder;->data(I)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lio/grpc/Attributes;->access$100(Lio/grpc/Attributes;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 257
    return-object p0
.end method
