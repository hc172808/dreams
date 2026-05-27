.class public final Lcom/facebook/share/internal/OpenGraphJSONUtility;
.super Ljava/lang/Object;
.source "OpenGraphJSONUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toJSONArray(Ljava/util/List;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/OpenGraphJSONUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 77
    .local p0, "list":Ljava/util/List;
    .local p1, "photoJSONProcessor":Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 78
    .local v1, "result":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 79
    .local v4, "item":Ljava/lang/Object;
    invoke-static {v4, p1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONValue(Ljava/lang/Object;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    nop

    .end local v4    # "item":Ljava/lang/Object;
    goto :goto_0

    .line 81
    :cond_1
    return-object v1

    .end local v1    # "result":Lorg/json/JSONArray;
    .end local p0    # "list":Ljava/util/List;
    .end local p1    # "photoJSONProcessor":Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static toJSONObject(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/OpenGraphJSONUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 56
    .local p0, "action":Lcom/facebook/share/model/ShareOpenGraphAction;
    .local p1, "photoJSONProcessor":Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v1, "result":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphAction;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 58
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 59
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/facebook/share/model/ShareOpenGraphAction;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONValue(Ljava/lang/Object;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    nop

    .end local v5    # "key":Ljava/lang/String;
    goto :goto_0

    .line 61
    :cond_1
    return-object v1

    .end local v1    # "result":Lorg/json/JSONObject;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p0    # "action":Lcom/facebook/share/model/ShareOpenGraphAction;
    .end local p1    # "photoJSONProcessor":Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static toJSONObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/OpenGraphJSONUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 67
    .local p0, "object":Lcom/facebook/share/model/ShareOpenGraphObject;
    .local p1, "photoJSONProcessor":Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v1, "result":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphObject;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 69
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 70
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/facebook/share/model/ShareOpenGraphObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONValue(Ljava/lang/Object;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    nop

    .end local v5    # "key":Ljava/lang/String;
    goto :goto_0

    .line 72
    :cond_1
    return-object v1

    .end local v1    # "result":Lorg/json/JSONObject;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p0    # "object":Lcom/facebook/share/model/ShareOpenGraphObject;
    .end local p1    # "photoJSONProcessor":Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static toJSONValue(Ljava/lang/Object;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/OpenGraphJSONUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 87
    .local p0, "object":Ljava/lang/Object;
    .local p1, "photoJSONProcessor":Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    :cond_0
    if-nez p0, :cond_1

    .line 88
    :try_start_0
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object v0

    .line 90
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_7

    instance-of v1, p0, Ljava/lang/Boolean;

    if-nez v1, :cond_7

    instance-of v1, p0, Ljava/lang/Double;

    if-nez v1, :cond_7

    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_7

    instance-of v1, p0, Ljava/lang/Integer;

    if-nez v1, :cond_7

    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 98
    :cond_2
    instance-of v1, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v1, :cond_4

    .line 99
    if-eqz p1, :cond_3

    .line 100
    move-object v1, p0

    check-cast v1, Lcom/facebook/share/model/SharePhoto;

    invoke-interface {p1, v1}, Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;->toJSONObject(Lcom/facebook/share/model/SharePhoto;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 102
    :cond_3
    return-object v2

    .line 104
    :cond_4
    instance-of v1, p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v1, :cond_5

    .line 105
    move-object v1, p0

    check-cast v1, Lcom/facebook/share/model/ShareOpenGraphObject;

    invoke-static {v1, p1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 107
    :cond_5
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_6

    .line 108
    move-object v1, p0

    check-cast v1, Ljava/util/List;

    invoke-static {v1, p1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONArray(Ljava/util/List;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 110
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid object found for JSON serialization: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_7
    :goto_0
    return-object p0

    .line 111
    .end local p0    # "object":Ljava/lang/Object;
    .end local p1    # "photoJSONProcessor":Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method
