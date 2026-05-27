.class final Lcom/facebook/appevents/suggestedevents/FeatureExtractor;
.super Ljava/lang/Object;
.source "FeatureExtractor.java"


# static fields
.field private static final NUM_OF_FEATURES:I = 0x1e

.field private static final REGEX_ADD_TO_CART_BUTTON_TEXT:Ljava/lang/String; = "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart"

.field private static final REGEX_ADD_TO_CART_PAGE_TITLE:Ljava/lang/String; = "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy"

.field private static final REGEX_CR_HAS_CONFIRM_PASSWORD_FIELD:Ljava/lang/String; = "(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)"

.field private static final REGEX_CR_HAS_LOG_IN_KEYWORDS:Ljava/lang/String; = "(?i)(sign in)|login|signIn"

.field private static final REGEX_CR_HAS_SIGN_ON_KEYWORDS:Ljava/lang/String; = "(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)"

.field private static final REGEX_CR_PASSWORD_FIELD:Ljava/lang/String; = "password"

.field private static eventInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Z

.field private static languageInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static rules:Lorg/json/JSONObject;

.field private static textTypeInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->initialized:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDenseFeatures(Lorg/json/JSONObject;Ljava/lang/String;)[F
    .locals 9

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 115
    .local p0, "viewHierarchy":Lorg/json/JSONObject;
    .local p1, "appName":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->initialized:Z

    if-nez v1, :cond_1

    .line 116
    return-object v2

    .line 118
    :cond_1
    const/16 v1, 0x1e

    new-array v1, v1, [F

    .line 119
    .local v1, "ret":[F
    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object p1, v3

    .line 122
    new-instance v3, Lorg/json/JSONObject;

    const-string/jumbo v4, "view"

    .line 123
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    .local v3, "viewTree":Lorg/json/JSONObject;
    const-string v4, "screenname"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "screenName":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 128
    .local v5, "siblings":Lorg/json/JSONArray;
    invoke-static {v3, v5}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->pruneTree(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    .line 129
    invoke-static {v3}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->parseFeatures(Lorg/json/JSONObject;)[F

    move-result-object v6

    .line 130
    .local v6, "parseResult":[F
    invoke-static {v1, v6}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->sum([F[F)V

    .line 132
    invoke-static {v3}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->getInteractedNode(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 133
    .local v7, "interactedNode":Lorg/json/JSONObject;
    if-nez v7, :cond_2

    .line 134
    return-object v2

    .line 136
    :cond_2
    nop

    .line 137
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v5, v4, v8, p1}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->nonparseFeatures(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[F

    move-result-object v8

    .line 138
    .local v8, "nonparseFeatures":[F
    invoke-static {v1, v8}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->sum([F[F)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    return-object v1

    .line 140
    .end local v3    # "viewTree":Lorg/json/JSONObject;
    .end local v4    # "screenName":Ljava/lang/String;
    .end local v5    # "siblings":Lorg/json/JSONArray;
    .end local v6    # "parseResult":[F
    .end local v7    # "interactedNode":Lorg/json/JSONObject;
    .end local v8    # "nonparseFeatures":[F
    :catch_0
    move-exception v0

    .line 144
    return-object v1

    .end local v1    # "ret":[F
    .end local p0    # "viewHierarchy":Lorg/json/JSONObject;
    .end local p1    # "appName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static getInteractedNode(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 392
    .local p0, "view":Lorg/json/JSONObject;
    :cond_0
    :try_start_0
    const-string v1, "is_interacted"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    return-object p0

    .line 396
    :cond_1
    const-string v1, "childviews"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 397
    .local v1, "children":Lorg/json/JSONArray;
    if-nez v1, :cond_2

    .line 398
    return-object v2

    .line 401
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 402
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->getInteractedNode(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .local v4, "sub":Lorg/json/JSONObject;
    if-eqz v4, :cond_3

    .line 404
    return-object v4

    .line 401
    .end local v4    # "sub":Lorg/json/JSONObject;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    .end local v1    # "children":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_4
    goto :goto_1

    .line 411
    .end local p0    # "view":Lorg/json/JSONObject;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2

    .line 407
    .restart local p0    # "view":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 411
    :goto_1
    return-object v2
.end method

.method static getTextFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 109
    .local p0, "buttonText":Ljava/lang/String;
    .local p1, "activityName":Ljava/lang/String;
    .local p2, "appName":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "buttonText":Ljava/lang/String;
    .end local p1    # "activityName":Ljava/lang/String;
    .end local p2    # "appName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static initialize(Ljava/io/File;)V
    .locals 11

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    const-string v1, "4"

    const-string v2, "3"

    const-string v3, "2"

    const-string v4, "1"

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 65
    .local p0, "file":Ljava/io/File;
    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    sput-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->rules:Lorg/json/JSONObject;

    .line 66
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 67
    .local v5, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 68
    .local v6, "size":I
    new-array v7, v6, [B

    .line 69
    .local v7, "buffer":[B
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    .line 70
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 71
    new-instance v8, Lorg/json/JSONObject;

    new-instance v9, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v9, v7, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->rules:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "size":I
    .end local v7    # "buffer":[B
    nop

    .line 77
    :try_start_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->languageInfo:Ljava/util/Map;

    .line 78
    const-string v6, "ENGLISH"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->languageInfo:Ljava/util/Map;

    const-string v6, "GERMAN"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->languageInfo:Ljava/util/Map;

    const-string v6, "SPANISH"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->languageInfo:Ljava/util/Map;

    const-string v6, "JAPANESE"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    .line 84
    const-string v6, "VIEW_CONTENT"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v6, "SEARCH"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v6, "ADD_TO_CART"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v6, "ADD_TO_WISHLIST"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v6, "INITIATE_CHECKOUT"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v6, "ADD_PAYMENT_INFO"

    const-string v7, "5"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v6, "PURCHASE"

    const-string v7, "6"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v6, "LEAD"

    const-string v7, "7"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v6, "COMPLETE_REGISTRATION"

    const-string v7, "8"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->textTypeInfo:Ljava/util/Map;

    .line 95
    const-string v6, "BUTTON_TEXT"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v4, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->textTypeInfo:Ljava/util/Map;

    const-string v5, "PAGE_TITLE"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v3, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->textTypeInfo:Ljava/util/Map;

    const-string v4, "RESOLVED_DOCUMENT_LINK"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v2, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->textTypeInfo:Ljava/util/Map;

    const-string v3, "BUTTON_ID"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/4 v1, 0x1

    sput-boolean v1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    return-void

    .end local p0    # "file":Ljava/io/File;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    .line 72
    .restart local p0    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ex":Ljava/lang/Exception;
    return-void
.end method

.method private static isButton(Lorg/json/JSONObject;)Z
    .locals 3

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 360
    .local p0, "node":Lorg/json/JSONObject;
    :cond_0
    :try_start_0
    const-string v1, "classtypebitmask"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    .local v0, "classTypeBitmask":I
    and-int/lit8 v1, v0, 0x20

    if-lez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .end local v0    # "classTypeBitmask":I
    .end local p0    # "node":Lorg/json/JSONObject;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method static isInitialized()Z
    .locals 3

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 104
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private static matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 297
    .local p0, "indicators":[Ljava/lang/String;
    .local p1, "values":[Ljava/lang/String;
    :cond_0
    :try_start_0
    array-length v1, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    .line 298
    .local v4, "indicator":Ljava/lang/String;
    array-length v5, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, p1, v6

    .line 299
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    .line 300
    const/4 v0, 0x1

    return v0

    .line 298
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 297
    .end local v4    # "indicator":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    :cond_3
    return v2

    .end local p0    # "indicators":[Ljava/lang/String;
    .end local p1    # "values":[Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private static nonparseFeatures(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[F
    .locals 20

    const-string v1, "LEAD"

    const-string v2, "PURCHASE"

    const-class v3, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    const-string v4, "PAGE_TITLE"

    const-string v5, "BUTTON_TEXT"

    const-string v6, "COMPLETE_REGISTRATION"

    const-string v7, "ENGLISH"

    invoke-static {v3}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    return-object v8

    :cond_0
    move-object/from16 v9, p0

    .local v9, "node":Lorg/json/JSONObject;
    move-object/from16 v10, p2

    .local v10, "screenName":Ljava/lang/String;
    move-object/from16 v11, p4

    .local v11, "appName":Ljava/lang/String;
    move-object/from16 v12, p1

    .local v12, "siblings":Lorg/json/JSONArray;
    move-object/from16 v13, p3

    .line 224
    .local v13, "formFieldsJSON":Ljava/lang/String;
    const/16 v0, 0x1e

    :try_start_0
    new-array v0, v0, [F

    move-object v14, v0

    .line 225
    .local v14, "densefeat":[F
    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/util/Arrays;->fill([FF)V

    .line 227
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v0

    move/from16 p0, v0

    .line 228
    .local p0, "siblingLen":I
    const/4 v0, 0x3

    const/4 v15, 0x1

    move/from16 v8, p0

    .end local p0    # "siblingLen":I
    .local v8, "siblingLen":I
    if-le v8, v15, :cond_1

    add-int/lit8 v15, v8, -0x1

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    :goto_0
    int-to-float v15, v15

    aput v15, v14, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v0, v15, :cond_3

    .line 232
    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-static {v15}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->isButton(Lorg/json/JSONObject;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 233
    const/16 v15, 0x9

    aget v16, v14, v15
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v16, v16, v17

    :try_start_2
    aput v16, v14, v15
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 236
    .end local v0    # "i":I
    :catch_0
    move-exception v0

    goto :goto_3

    .line 231
    .restart local v0    # "i":I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/high16 v17, 0x3f800000    # 1.0f

    .line 238
    .end local v0    # "i":I
    goto :goto_3

    .line 236
    :catch_1
    move-exception v0

    const/high16 v17, 0x3f800000    # 1.0f

    .line 240
    :goto_3
    const/16 v0, 0xd

    const/high16 v15, -0x40800000    # -1.0f

    :try_start_3
    aput v15, v14, v0

    .line 241
    const/16 v0, 0xe

    aput v15, v14, v0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x7c

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "pageTitle":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v15, "hintSB":Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p0, v16

    .line 247
    .local p0, "textSB":Ljava/lang/StringBuilder;
    move/from16 v16, v8

    move-object/from16 v8, p0

    .end local p0    # "textSB":Ljava/lang/StringBuilder;
    .local v8, "textSB":Ljava/lang/StringBuilder;
    .local v16, "siblingLen":I
    invoke-static {v9, v8, v15}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->updateHintAndTextRecursively(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 248
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 p0, v18

    .line 249
    .local p0, "buttonID":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 p2, v18

    .line 252
    .local p2, "buttonText":Ljava/lang/String;
    const/16 v18, 0xf

    move-object/from16 p3, v8

    move-object/from16 v8, p2

    .end local p2    # "buttonText":Ljava/lang/String;
    .local v8, "buttonText":Ljava/lang/String;
    .local p3, "textSB":Ljava/lang/StringBuilder;
    invoke-static {v7, v6, v5, v8}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const/16 v19, 0x0

    :goto_4
    aput v19, v14, v18

    .line 253
    const/16 v18, 0x10

    invoke-static {v7, v6, v4, v0}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_5
    const/16 v19, 0x0

    :goto_5
    aput v19, v14, v18

    .line 254
    const/16 v18, 0x11

    move-object/from16 v19, v9

    .end local v9    # "node":Lorg/json/JSONObject;
    .local v19, "node":Lorg/json/JSONObject;
    const-string v9, "BUTTON_ID"

    move-object/from16 p2, v10

    move-object/from16 v10, p0

    .end local p0    # "buttonID":Ljava/lang/String;
    .local v10, "buttonID":Ljava/lang/String;
    .local p2, "screenName":Ljava/lang/String;
    invoke-static {v7, v6, v9, v10}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    aput v6, v14, v18

    .line 257
    const/16 v6, 0x12

    const-string v9, "password"

    invoke-virtual {v13, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    :goto_7
    aput v9, v14, v6

    .line 259
    const/16 v6, 0x13

    const-string v9, "(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)"

    invoke-static {v9, v13}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_8
    const/4 v9, 0x0

    :goto_8
    aput v9, v14, v6

    .line 260
    const/16 v6, 0x14

    const-string v9, "(?i)(sign in)|login|signIn"

    invoke-static {v9, v13}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_9
    const/4 v9, 0x0

    :goto_9
    aput v9, v14, v6

    .line 261
    const/16 v6, 0x15

    const-string v9, "(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)"

    invoke-static {v9, v13}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_a
    const/4 v9, 0x0

    :goto_a
    aput v9, v14, v6

    .line 264
    const/16 v6, 0x16

    invoke-static {v7, v2, v5, v8}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_b
    const/4 v9, 0x0

    :goto_b
    aput v9, v14, v6

    .line 265
    const/16 v6, 0x18

    invoke-static {v7, v2, v4, v0}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    aput v2, v14, v6

    .line 268
    const/16 v2, 0x19

    const-string v6, "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart"

    invoke-static {v6, v8}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_d
    const/4 v6, 0x0

    :goto_d
    aput v6, v14, v2

    .line 269
    const/16 v2, 0x1b

    const-string v6, "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy"

    invoke-static {v6, v0}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_e
    const/4 v6, 0x0

    :goto_e
    aput v6, v14, v2

    .line 273
    const/16 v2, 0x1c

    invoke-static {v7, v1, v5, v8}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_f
    const/4 v5, 0x0

    :goto_f
    aput v5, v14, v2

    .line 274
    const/16 v2, 0x1d

    invoke-static {v7, v1, v4, v0}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_10

    :cond_10
    const/16 v17, 0x0

    :goto_10
    aput v17, v14, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    return-object v14

    .end local v0    # "pageTitle":Ljava/lang/String;
    .end local v8    # "buttonText":Ljava/lang/String;
    .end local v10    # "buttonID":Ljava/lang/String;
    .end local v11    # "appName":Ljava/lang/String;
    .end local v12    # "siblings":Lorg/json/JSONArray;
    .end local v13    # "formFieldsJSON":Ljava/lang/String;
    .end local v14    # "densefeat":[F
    .end local v15    # "hintSB":Ljava/lang/StringBuilder;
    .end local v16    # "siblingLen":I
    .end local v19    # "node":Lorg/json/JSONObject;
    .end local p2    # "screenName":Ljava/lang/String;
    .end local p3    # "textSB":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseFeatures(Lorg/json/JSONObject;)[F
    .locals 16

    const-class v1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v3, p0

    .line 148
    .local v3, "node":Lorg/json/JSONObject;
    const/16 v0, 0x1e

    :try_start_0
    new-array v0, v0, [F

    move-object v4, v0

    .line 149
    .local v4, "densefeat":[F
    const/4 v0, 0x0

    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 150
    const-string/jumbo v0, "text"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 151
    .local v5, "text":Ljava/lang/String;
    const-string v0, "hint"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 152
    .local v6, "hint":Ljava/lang/String;
    const-string v0, "classname"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 153
    .local v7, "className":Ljava/lang/String;
    const-string v0, "inputtype"

    const/4 v8, -0x1

    invoke-virtual {v3, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move v8, v0

    .line 155
    .local v8, "inputType":I
    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v11, 0x1

    aput-object v6, v9, v11

    .line 157
    .local v9, "textValues":[Ljava/lang/String;
    const-string v12, "$"

    const-string v13, "amount"

    const-string v14, "price"

    const-string/jumbo v15, "total"

    filled-new-array {v12, v13, v14, v15}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v12

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-eqz v12, :cond_1

    .line 158
    aget v12, v4, v10

    move-object/from16 p0, v3

    .end local v3    # "node":Lorg/json/JSONObject;
    .local p0, "node":Lorg/json/JSONObject;
    float-to-double v2, v12

    add-double/2addr v2, v13

    double-to-float v2, v2

    aput v2, v4, v10

    goto :goto_0

    .line 157
    .end local p0    # "node":Lorg/json/JSONObject;
    .restart local v3    # "node":Lorg/json/JSONObject;
    :cond_1
    move-object/from16 p0, v3

    .line 161
    .end local v3    # "node":Lorg/json/JSONObject;
    .restart local p0    # "node":Lorg/json/JSONObject;
    :goto_0
    const-string v2, "password"

    const-string v3, "pwd"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    aget v2, v4, v11

    float-to-double v2, v2

    add-double/2addr v2, v13

    double-to-float v2, v2

    aput v2, v4, v11

    .line 165
    :cond_2
    const-string/jumbo v2, "tel"

    const-string v3, "phone"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    aget v2, v4, v0

    float-to-double v2, v2

    add-double/2addr v2, v13

    double-to-float v2, v2

    aput v2, v4, v0

    .line 169
    :cond_3
    const-string v2, "search"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 170
    const/4 v2, 0x4

    aget v3, v4, v2

    float-to-double v10, v3

    add-double/2addr v10, v13

    double-to-float v3, v10

    aput v3, v4, v2

    .line 174
    :cond_4
    if-ltz v8, :cond_5

    .line 175
    const/4 v2, 0x5

    aget v3, v4, v2

    float-to-double v10, v3

    add-double/2addr v10, v13

    double-to-float v3, v10

    aput v3, v4, v2

    .line 179
    :cond_5
    const/4 v2, 0x3

    if-eq v8, v2, :cond_6

    if-ne v8, v0, :cond_7

    .line 180
    :cond_6
    const/4 v0, 0x6

    aget v2, v4, v0

    float-to-double v2, v2

    add-double/2addr v2, v13

    double-to-float v2, v2

    aput v2, v4, v0

    .line 184
    :cond_7
    const/16 v0, 0x20

    if-eq v8, v0, :cond_8

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 185
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 186
    :cond_8
    const/4 v0, 0x7

    aget v2, v4, v0

    float-to-double v2, v2

    add-double/2addr v2, v13

    double-to-float v2, v2

    aput v2, v4, v0

    .line 190
    :cond_9
    const-string v0, "checkbox"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 191
    const/16 v0, 0x8

    aget v2, v4, v0

    float-to-double v2, v2

    add-double/2addr v2, v13

    double-to-float v2, v2

    aput v2, v4, v0

    .line 194
    :cond_a
    const-string v0, "complete"

    const-string v2, "confirm"

    const-string v3, "done"

    const-string/jumbo v10, "submit"

    filled-new-array {v0, v2, v3, v10}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    invoke-static {v0, v2}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 196
    const/16 v0, 0xa

    aget v2, v4, v0

    float-to-double v2, v2

    add-double/2addr v2, v13

    double-to-float v2, v2

    aput v2, v4, v0

    .line 200
    :cond_b
    const-string v0, "radio"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "button"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 201
    const/16 v0, 0xc

    aget v2, v4, v0

    float-to-double v2, v2

    add-double/2addr v2, v13

    double-to-float v2, v2

    aput v2, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_c
    :try_start_1
    const-string v0, "childviews"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v2, p0

    .end local p0    # "node":Lorg/json/JSONObject;
    .local v2, "node":Lorg/json/JSONObject;
    :try_start_2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 206
    .local v0, "childViews":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 207
    .local v3, "len":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v3, :cond_d

    .line 208
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-static {v11}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->parseFeatures(Lorg/json/JSONObject;)[F

    move-result-object v11

    invoke-static {v4, v11}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->sum([F[F)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "childViews":Lorg/json/JSONArray;
    .end local v3    # "len":I
    .end local v10    # "i":I
    :cond_d
    goto :goto_2

    .line 210
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v2    # "node":Lorg/json/JSONObject;
    .restart local p0    # "node":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    .line 214
    .end local p0    # "node":Lorg/json/JSONObject;
    .restart local v2    # "node":Lorg/json/JSONObject;
    :goto_2
    return-object v4

    .end local v2    # "node":Lorg/json/JSONObject;
    .end local v4    # "densefeat":[F
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "hint":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "inputType":I
    .end local v9    # "textValues":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static pruneTree(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z
    .locals 11

    const-string v0, "childviews"

    const-string v1, "is_interacted"

    const-class v2, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    .line 310
    .local p0, "node":Lorg/json/JSONObject;
    .local p1, "siblings":Lorg/json/JSONArray;
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 311
    .local v3, "isInteracted":Z
    if-eqz v3, :cond_1

    .line 312
    const/4 v0, 0x1

    return v0

    .line 315
    :cond_1
    const/4 v5, 0x0

    .line 316
    .local v5, "isChildInteracted":Z
    const/4 v6, 0x0

    .line 318
    .local v6, "isDescendantInteracted":Z
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 319
    .local v7, "childViews":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 320
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 321
    .local v9, "child":Lorg/json/JSONObject;
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 322
    const/4 v5, 0x1

    .line 323
    const/4 v6, 0x1

    .line 324
    goto :goto_1

    .line 319
    .end local v9    # "child":Lorg/json/JSONObject;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 328
    .end local v8    # "i":I
    :cond_3
    :goto_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 329
    .local v1, "newChildren":Lorg/json/JSONArray;
    if-eqz v5, :cond_5

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 331
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 332
    .local v8, "child":Lorg/json/JSONObject;
    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 330
    nop

    .end local v8    # "child":Lorg/json/JSONObject;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_4
    goto :goto_4

    .line 335
    :cond_5
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 336
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 337
    .restart local v9    # "child":Lorg/json/JSONObject;
    invoke-static {v9, p1}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->pruneTree(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 338
    const/4 v6, 0x1

    .line 339
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 335
    .end local v9    # "child":Lorg/json/JSONObject;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 342
    .end local v8    # "i":I
    :cond_7
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :goto_4
    return v6

    .line 350
    .end local v1    # "newChildren":Lorg/json/JSONArray;
    .end local v3    # "isInteracted":Z
    .end local v5    # "isChildInteracted":Z
    .end local v6    # "isDescendantInteracted":Z
    .end local v7    # "childViews":Lorg/json/JSONArray;
    .end local p0    # "node":Lorg/json/JSONObject;
    .end local p1    # "siblings":Lorg/json/JSONArray;
    :catchall_0
    move-exception p0

    invoke-static {p0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v4

    .line 346
    .restart local p0    # "node":Lorg/json/JSONObject;
    .restart local p1    # "siblings":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 350
    return v4
.end method

.method private static regexMatched(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 293
    .local p0, "pattern":Ljava/lang/String;
    .local p1, "matchText":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .end local p0    # "pattern":Ljava/lang/String;
    .end local p1    # "matchText":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private static regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 281
    .local p0, "language":Ljava/lang/String;
    .local p1, "event":Ljava/lang/String;
    .local p2, "textType":Ljava/lang/String;
    .local p3, "matchText":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->rules:Lorg/json/JSONObject;

    const-string v3, "rulesForLanguage"

    .line 283
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v3, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->languageInfo:Ljava/util/Map;

    .line 284
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "rulesForEvent"

    .line 285
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v3, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    .line 286
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "positiveRules"

    .line 287
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v3, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->textTypeInfo:Ljava/util/Map;

    .line 288
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "regex":Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .end local v1    # "regex":Ljava/lang/String;
    .end local p0    # "language":Ljava/lang/String;
    .end local p1    # "event":Ljava/lang/String;
    .end local p2    # "textType":Ljava/lang/String;
    .end local p3    # "matchText":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private static sum([F[F)V
    .locals 4

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 354
    .local p0, "a":[F
    .local p1, "b":[F
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 355
    aget v2, p0, v1

    aget v3, p1, v1

    add-float/2addr v2, v3

    aput v2, p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v1    # "i":I
    :cond_1
    return-void

    .end local p0    # "a":[F
    .end local p1    # "b":[F
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static updateHintAndTextRecursively(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 6

    const-string v0, ""

    const-class v1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 366
    .local p0, "view":Lorg/json/JSONObject;
    .local p1, "textSB":Ljava/lang/StringBuilder;
    .local p2, "hintSB":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_0
    const-string/jumbo v2, "text"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "text":Ljava/lang/String;
    const-string v3, "hint"

    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "hint":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, " "

    if-nez v3, :cond_1

    .line 369
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 372
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_2
    const-string v3, "childviews"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 376
    .local v3, "children":Lorg/json/JSONArray;
    if-nez v3, :cond_3

    .line 377
    return-void

    .line 379
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v4, v5, :cond_4

    .line 381
    :try_start_2
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 382
    .local v5, "currentChildView":Lorg/json/JSONObject;
    invoke-static {v5, p1, p2}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->updateHintAndTextRecursively(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 385
    .end local v5    # "currentChildView":Lorg/json/JSONObject;
    goto :goto_1

    .line 383
    :catch_0
    move-exception v5

    .line 379
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 387
    .end local v4    # "i":I
    :cond_4
    return-void

    .end local v0    # "hint":Ljava/lang/String;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "children":Lorg/json/JSONArray;
    .end local p0    # "view":Lorg/json/JSONObject;
    .end local p1    # "textSB":Ljava/lang/StringBuilder;
    .end local p2    # "hintSB":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception p0

    invoke-static {p0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
