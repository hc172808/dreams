.class public Lcom/payumoney/core/utils/JsonUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 88
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 89
    return-object v0

    .line 91
    :cond_0
    instance-of v1, p0, Lorg/json/JSONArray;

    if-nez v1, :cond_8

    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    goto :goto_2

    .line 95
    :cond_1
    :try_start_0
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 96
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/payumoney/core/utils/JsonUtils;->collectionToJson(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    .line 97
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    invoke-static {p0}, Lcom/payumoney/core/utils/JsonUtils;->arrayToJson(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    .line 100
    :cond_3
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 101
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/payumoney/core/utils/JsonUtils;->mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 103
    :cond_4
    instance-of v1, p0, Ljava/lang/Boolean;

    if-nez v1, :cond_7

    instance-of v1, p0, Ljava/lang/Byte;

    if-nez v1, :cond_7

    instance-of v1, p0, Ljava/lang/Character;

    if-nez v1, :cond_7

    instance-of v1, p0, Ljava/lang/Double;

    if-nez v1, :cond_7

    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_7

    instance-of v1, p0, Ljava/lang/Integer;

    if-nez v1, :cond_7

    instance-of v1, p0, Ljava/lang/Long;

    if-nez v1, :cond_7

    instance-of v1, p0, Ljava/lang/Short;

    if-nez v1, :cond_7

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_0

    .line 114
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 118
    :cond_6
    goto :goto_1

    .line 112
    :cond_7
    :goto_0
    return-object p0

    .line 117
    :catch_0
    move-exception p0

    .line 119
    :goto_1
    return-object v0

    .line 92
    :cond_8
    :goto_2
    return-object p0
.end method

.method public static arrayToJson(Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 4
    .param p0, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 72
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 73
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 74
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/payumoney/core/utils/JsonUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-object v1

    .line 69
    :cond_1
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a primitive data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static collectionToJson(Ljava/util/Collection;)Lorg/json/JSONArray;
    .locals 3
    .param p0, "data"    # Ljava/util/Collection;

    .line 52
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 53
    if-eqz p0, :cond_0

    .line 54
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 55
    invoke-static {v2}, Lcom/payumoney/core/utils/JsonUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 56
    goto :goto_0

    .line 58
    :cond_0
    return-object v0
.end method

.method public static mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 24
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 26
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 32
    if-eqz v3, :cond_0

    .line 36
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/payumoney/core/utils/JsonUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_1

    .line 37
    :catch_0
    move-exception v2

    .line 38
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 40
    :goto_1
    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    return-object v0
.end method
