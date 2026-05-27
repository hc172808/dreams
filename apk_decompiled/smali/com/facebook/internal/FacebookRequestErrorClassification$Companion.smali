.class public final Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;
.super Ljava/lang/Object;
.source "FacebookRequestErrorClassification.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FacebookRequestErrorClassification;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007J&\u0010\u001f\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!\u0018\u00010 2\u0006\u0010\"\u001a\u00020#H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u00020\u00158FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0016\u0010\u0002\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00158BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0018R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;",
        "",
        "()V",
        "EC_APP_NOT_INSTALLED",
        "",
        "EC_APP_TOO_MANY_CALLS",
        "EC_INVALID_SESSION",
        "EC_INVALID_TOKEN",
        "EC_RATE",
        "EC_SERVICE_UNAVAILABLE",
        "EC_TOO_MANY_USER_ACTION_CALLS",
        "EC_USER_TOO_MANY_CALLS",
        "ESC_APP_INACTIVE",
        "ESC_APP_NOT_INSTALLED",
        "KEY_LOGIN_RECOVERABLE",
        "",
        "KEY_NAME",
        "KEY_OTHER",
        "KEY_RECOVERY_MESSAGE",
        "KEY_TRANSIENT",
        "defaultErrorClassification",
        "Lcom/facebook/internal/FacebookRequestErrorClassification;",
        "getDefaultErrorClassification$annotations",
        "getDefaultErrorClassification",
        "()Lcom/facebook/internal/FacebookRequestErrorClassification;",
        "defaultErrorClassificationImpl",
        "getDefaultErrorClassificationImpl",
        "defaultInstance",
        "createFromJSON",
        "jsonArray",
        "Lorg/json/JSONArray;",
        "parseJSONDefinition",
        "",
        "",
        "definition",
        "Lorg/json/JSONObject;",
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

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 79
    invoke-direct {p0}, Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getDefaultErrorClassification$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final getDefaultErrorClassificationImpl()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .locals 10

    .line 109
    nop

    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    .line 111
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    .line 112
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v0, v6

    .line 113
    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v0, v1

    .line 114
    const/16 v5, 0x11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v0, v7

    .line 115
    const/16 v5, 0x155

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v0, v2

    .line 110
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    .line 109
    nop

    .line 117
    .local v0, "transientErrors":Ljava/util/HashMap;
    nop

    .line 118
    new-array v2, v7, [Lkotlin/Pair;

    .line 119
    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v2, v4

    .line 120
    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v6

    .line 121
    const/16 v4, 0x19c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v1

    .line 118
    invoke-static {v2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 117
    check-cast v1, Ljava/util/Map;

    .line 123
    .local v1, "loginRecoverableErrors":Ljava/util/Map;
    new-instance v9, Lcom/facebook/internal/FacebookRequestErrorClassification;

    .line 124
    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    .line 123
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/internal/FacebookRequestErrorClassification;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method private final parseJSONDefinition(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 14
    .param p1, "definition"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 128
    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 129
    .local v0, "itemsArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 130
    return-object v2

    .line 132
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 133
    .local v1, "items":Ljava/util/Map;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    .line 134
    .local v5, "i":I
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 135
    .local v6, "item":Lorg/json/JSONObject;
    const-string v7, "code"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 136
    .local v7, "code":I
    if-nez v7, :cond_1

    .line 137
    goto :goto_2

    .line 139
    :cond_1
    move-object v8, v2

    check-cast v8, Ljava/util/Set;

    .line 140
    .local v8, "subcodes":Ljava/util/Set;
    const-string/jumbo v9, "subcodes"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 141
    .local v9, "subcodesArray":Lorg/json/JSONArray;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 142
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move-object v8, v10

    check-cast v8, Ljava/util/Set;

    .line 143
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_3

    .line 144
    .local v11, "j":I
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->optInt(I)I

    move-result v12

    .line 145
    .local v12, "subCode":I
    if-eqz v12, :cond_2

    .line 146
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v12    # "subCode":I
    :cond_2
    nop

    .end local v11    # "j":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 150
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .end local v6    # "item":Lorg/json/JSONObject;
    .end local v7    # "code":I
    .end local v8    # "subcodes":Ljava/util/Set;
    .end local v9    # "subcodesArray":Lorg/json/JSONArray;
    :cond_4
    :goto_2
    nop

    .end local v5    # "i":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 152
    :cond_5
    return-object v1
.end method


# virtual methods
.method public final createFromJSON(Lorg/json/JSONArray;)Lcom/facebook/internal/FacebookRequestErrorClassification;
    .locals 17
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 157
    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 158
    return-object v1

    .line 160
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    .line 161
    .local v2, "otherErrors":Ljava/util/Map;
    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    .line 162
    .local v3, "transientErrors":Ljava/util/Map;
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    .line 163
    .local v4, "loginRecoverableErrors":Ljava/util/Map;
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 164
    .local v5, "otherRecoveryMessage":Ljava/lang/String;
    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 165
    .local v6, "transientRecoveryMessage":Ljava/lang/String;
    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 166
    .local v7, "loginRecoverableRecoveryMessage":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_4

    .line 167
    .local v8, "i":I
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 168
    .local v10, "definition":Lorg/json/JSONObject;
    const-string v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 169
    .local v11, "name":Ljava/lang/String;
    const-string v12, "other"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    const-string v14, "recovery_message"

    if-eqz v12, :cond_1

    .line 170
    invoke-virtual {v10, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    move-object/from16 v12, p0

    check-cast v12, Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;

    invoke-direct {v12, v10}, Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;->parseJSONDefinition(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    goto :goto_1

    .line 172
    :cond_1
    const-string/jumbo v12, "transient"

    invoke-static {v11, v12, v13}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 173
    invoke-virtual {v10, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 174
    move-object/from16 v12, p0

    check-cast v12, Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;

    invoke-direct {v12, v10}, Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;->parseJSONDefinition(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    goto :goto_1

    .line 175
    :cond_2
    const-string v12, "login_recoverable"

    invoke-static {v11, v12, v13}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 176
    invoke-virtual {v10, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 177
    move-object/from16 v12, p0

    check-cast v12, Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;

    invoke-direct {v12, v10}, Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;->parseJSONDefinition(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    .line 178
    .end local v10    # "definition":Lorg/json/JSONObject;
    .end local v11    # "name":Ljava/lang/String;
    :cond_3
    :goto_1
    nop

    .line 166
    nop

    .end local v8    # "i":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 180
    :cond_4
    new-instance v1, Lcom/facebook/internal/FacebookRequestErrorClassification;

    .line 181
    nop

    .line 182
    nop

    .line 183
    nop

    .line 184
    nop

    .line 185
    nop

    .line 186
    nop

    .line 180
    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    invoke-direct/range {v10 .. v16}, Lcom/facebook/internal/FacebookRequestErrorClassification;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final declared-synchronized getDefaultErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .locals 2

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/FacebookRequestErrorClassification;->access$getDefaultInstance$cp()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lcom/facebook/internal/FacebookRequestErrorClassification;->Companion:Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;

    invoke-direct {v0}, Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;->getDefaultErrorClassificationImpl()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/FacebookRequestErrorClassification;->access$setDefaultInstance$cp(Lcom/facebook/internal/FacebookRequestErrorClassification;)V

    .line 104
    .end local p0    # "this":Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;
    :cond_0
    invoke-static {}, Lcom/facebook/internal/FacebookRequestErrorClassification;->access$getDefaultInstance$cp()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.facebook.internal.FacebookRequestErrorClassification"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
