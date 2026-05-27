.class public final Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;
.super Ljava/lang/Object;
.source "MapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final contributions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 31
    .local p0, "this":Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;, "Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/DaggerCollections;->newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;->contributions:Ljava/util/Map;

    .line 33
    return-void
.end method

.method public static newMapBuilder(I)Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;
    .locals 1
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public build()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;, "Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;->contributions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 57
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;->contributions:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 55
    :pswitch_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;, "Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;->contributions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;, "Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;->contributions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 49
    return-object p0
.end method
