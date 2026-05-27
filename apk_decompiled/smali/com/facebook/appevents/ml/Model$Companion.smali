.class public final Lcom/facebook/appevents/ml/Model$Companion;
.super Ljava/lang/Object;
.source "Model.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/ml/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bJ\u001e\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\r\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/facebook/appevents/ml/Model$Companion;",
        "",
        "()V",
        "SEQ_LEN",
        "",
        "mapping",
        "",
        "",
        "build",
        "Lcom/facebook/appevents/ml/Model;",
        "file",
        "Ljava/io/File;",
        "parse",
        "Lcom/facebook/appevents/ml/MTensor;",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 106
    invoke-direct {p0}, Lcom/facebook/appevents/ml/Model$Companion;-><init>()V

    return-void
.end method

.method private final parse(Ljava/io/File;)Ljava/util/Map;
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/ml/MTensor;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Lcom/facebook/appevents/ml/Utils;->parseModelWeights(Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    .line 120
    .local v0, "originalWeights":Ljava/util/Map;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 121
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 122
    .local v2, "weights":Ljava/util/Map;
    invoke-static {}, Lcom/facebook/appevents/ml/Model;->access$getMapping$cp()Ljava/util/Map;

    move-result-object v3

    .line 123
    .local v3, "mapping":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 124
    .local v5, "entry":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 125
    .local v6, "finalKey":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 126
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    move-object v6, v7

    goto :goto_1

    :cond_0
    return-object v1

    .line 128
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .end local v5    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "finalKey":Ljava/lang/String;
    goto :goto_0

    .line 130
    :cond_2
    return-object v2

    .line 132
    .end local v2    # "weights":Ljava/util/Map;
    .end local v3    # "mapping":Ljava/util/Map;
    :cond_3
    return-object v1
.end method


# virtual methods
.method public final build(Ljava/io/File;)Lcom/facebook/appevents/ml/Model;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    move-object v0, p0

    check-cast v0, Lcom/facebook/appevents/ml/Model$Companion;

    invoke-direct {v0, p1}, Lcom/facebook/appevents/ml/Model$Companion;->parse(Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    .local v0, "weights":Ljava/util/Map;
    nop

    .line 111
    :try_start_0
    new-instance v2, Lcom/facebook/appevents/ml/Model;

    invoke-direct {v2, v0, v1}, Lcom/facebook/appevents/ml/Model;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 112
    :catch_0
    move-exception v2

    .line 114
    nop

    .line 115
    return-object v1

    .line 109
    .end local v0    # "weights":Ljava/util/Map;
    :cond_0
    return-object v1
.end method
