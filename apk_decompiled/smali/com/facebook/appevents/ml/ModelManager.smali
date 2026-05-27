.class public final Lcom/facebook/appevents/ml/ModelManager;
.super Ljava/lang/Object;
.source "ModelManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/ml/ModelManager$Task;,
        Lcom/facebook/appevents/ml/ModelManager$TaskHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModelManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelManager.kt\ncom/facebook/appevents/ml/ModelManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,382:1\n1497#2:383\n1568#2,2:384\n1570#2:389\n1497#2:392\n1568#2,2:393\n1570#2:398\n13531#3,3:386\n13531#3,3:395\n37#4,2:390\n37#4,2:399\n*E\n*S KotlinDebug\n*F\n+ 1 ModelManager.kt\ncom/facebook/appevents/ml/ModelManager\n*L\n265#1:383\n265#1,2:384\n265#1:389\n288#1:392\n288#1,2:393\n288#1:398\n267#1,3:386\n290#1,3:395\n274#1,2:390\n297#1,2:399\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u000289B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u001aH\u0007J\u0008\u0010\u001e\u001a\u00020\u001aH\u0002J\n\u0010\u001f\u001a\u0004\u0018\u00010\u001cH\u0002J\u0012\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&H\u0002J\u0014\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0002J\u0010\u0010+\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\u001cH\u0002J9\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010.2\u0006\u0010\"\u001a\u00020#2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020(0.2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00040.H\u0007\u00a2\u0006\u0002\u00101J%\u00102\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010.2\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020(H\u0002\u00a2\u0006\u0002\u00106J%\u00107\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010.2\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020(H\u0002\u00a2\u0006\u0002\u00106R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0015R\u001c\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lcom/facebook/appevents/ml/ModelManager;",
        "",
        "()V",
        "ASSET_URI_KEY",
        "",
        "CACHE_KEY_MODELS",
        "CACHE_KEY_REQUEST_TIMESTAMP",
        "MODEL_ASSERT_STORE",
        "MODEL_REQUEST_INTERVAL_MILLISECONDS",
        "",
        "MTML_INTEGRITY_DETECT_PREDICTION",
        "",
        "MTML_SUGGESTED_EVENTS_PREDICTION",
        "MTML_USE_CASE",
        "RULES_URI_KEY",
        "SDK_MODEL_ASSET",
        "THRESHOLD_KEY",
        "USE_CASE_KEY",
        "VERSION_ID_KEY",
        "isLocaleEnglish",
        "",
        "()Z",
        "taskHandlers",
        "",
        "Lcom/facebook/appevents/ml/ModelManager$TaskHandler;",
        "addModels",
        "",
        "models",
        "Lorg/json/JSONObject;",
        "enable",
        "enableMTML",
        "fetchModels",
        "getRuleFile",
        "Ljava/io/File;",
        "task",
        "Lcom/facebook/appevents/ml/ModelManager$Task;",
        "isValidTimestamp",
        "timestamp",
        "",
        "parseJsonArray",
        "",
        "jsonArray",
        "Lorg/json/JSONArray;",
        "parseRawJsonObject",
        "jsonObject",
        "predict",
        "",
        "denses",
        "texts",
        "(Lcom/facebook/appevents/ml/ModelManager$Task;[[F[Ljava/lang/String;)[Ljava/lang/String;",
        "processIntegrityDetectionResult",
        "res",
        "Lcom/facebook/appevents/ml/MTensor;",
        "thresholds",
        "(Lcom/facebook/appevents/ml/MTensor;[F)[Ljava/lang/String;",
        "processSuggestedEventResult",
        "Task",
        "TaskHandler",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final ASSET_URI_KEY:Ljava/lang/String; = "asset_uri"

.field private static final CACHE_KEY_MODELS:Ljava/lang/String; = "models"

.field private static final CACHE_KEY_REQUEST_TIMESTAMP:Ljava/lang/String; = "model_request_timestamp"

.field public static final INSTANCE:Lcom/facebook/appevents/ml/ModelManager;

.field private static final MODEL_ASSERT_STORE:Ljava/lang/String; = "com.facebook.internal.MODEL_STORE"

.field private static final MODEL_REQUEST_INTERVAL_MILLISECONDS:I = 0xf731400

.field private static final MTML_INTEGRITY_DETECT_PREDICTION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MTML_SUGGESTED_EVENTS_PREDICTION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MTML_USE_CASE:Ljava/lang/String; = "MTML"

.field private static final RULES_URI_KEY:Ljava/lang/String; = "rules_uri"

.field private static final SDK_MODEL_ASSET:Ljava/lang/String; = "%s/model_asset"

.field private static final THRESHOLD_KEY:Ljava/lang/String; = "thresholds"

.field private static final USE_CASE_KEY:Ljava/lang/String; = "use_case"

.field private static final VERSION_ID_KEY:Ljava/lang/String; = "version_id"

.field private static final taskHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/ml/ModelManager$TaskHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-direct {v0}, Lcom/facebook/appevents/ml/ModelManager;-><init>()V

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager;->INSTANCE:Lcom/facebook/appevents/ml/ModelManager;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager;->taskHandlers:Ljava/util/Map;

    .line 83
    nop

    .line 84
    nop

    .line 85
    nop

    .line 86
    nop

    .line 87
    nop

    .line 88
    const-string v0, "other"

    const-string v1, "fb_mobile_complete_registration"

    const-string v2, "fb_mobile_add_to_cart"

    const-string v3, "fb_mobile_purchase"

    const-string v4, "fb_mobile_initiated_checkout"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager;->MTML_SUGGESTED_EVENTS_PREDICTION:Ljava/util/List;

    .line 91
    nop

    .line 92
    nop

    .line 93
    nop

    .line 94
    const-string v0, "none"

    const-string v1, "address"

    const-string v2, "health"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager;->MTML_INTEGRITY_DETECT_PREDICTION:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$addModels(Lcom/facebook/appevents/ml/ModelManager;Lorg/json/JSONObject;)V
    .locals 2

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 48
    .local p0, "$this":Lcom/facebook/appevents/ml/ModelManager;
    .local p1, "models":Lorg/json/JSONObject;
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/appevents/ml/ModelManager;->addModels(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local p0    # "$this":Lcom/facebook/appevents/ml/ModelManager;
    .end local p1    # "models":Lorg/json/JSONObject;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$enableMTML(Lcom/facebook/appevents/ml/ModelManager;)V
    .locals 2

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 48
    .local p0, "$this":Lcom/facebook/appevents/ml/ModelManager;
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/appevents/ml/ModelManager;->enableMTML()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local p0    # "$this":Lcom/facebook/appevents/ml/ModelManager;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$fetchModels(Lcom/facebook/appevents/ml/ModelManager;)Lorg/json/JSONObject;
    .locals 3

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 48
    .local p0, "$this":Lcom/facebook/appevents/ml/ModelManager;
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/appevents/ml/ModelManager;->fetchModels()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "$this":Lcom/facebook/appevents/ml/ModelManager;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final synthetic access$isValidTimestamp(Lcom/facebook/appevents/ml/ModelManager;J)Z
    .locals 3

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 48
    .local p0, "$this":Lcom/facebook/appevents/ml/ModelManager;
    .local p1, "timestamp":J
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/appevents/ml/ModelManager;->isValidTimestamp(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .end local p0    # "$this":Lcom/facebook/appevents/ml/ModelManager;
    .end local p1    # "timestamp":J
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static final synthetic access$parseJsonArray(Lcom/facebook/appevents/ml/ModelManager;Lorg/json/JSONArray;)[F
    .locals 3

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 48
    .local p0, "$this":Lcom/facebook/appevents/ml/ModelManager;
    .local p1, "jsonArray":Lorg/json/JSONArray;
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/appevents/ml/ModelManager;->parseJsonArray(Lorg/json/JSONArray;)[F

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "$this":Lcom/facebook/appevents/ml/ModelManager;
    .end local p1    # "jsonArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final addModels(Lorg/json/JSONObject;)V
    .locals 6

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 133
    .local v0, "this":Lcom/facebook/appevents/ml/ModelManager;
    .local p1, "models":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .local v1, "keys":Ljava/util/Iterator;
    nop

    .line 135
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->Companion:Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;->build(Lorg/json/JSONObject;)Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 138
    .local v3, "handler":Lcom/facebook/appevents/ml/ModelManager$TaskHandler;
    sget-object v4, Lcom/facebook/appevents/ml/ModelManager;->taskHandlers:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->getUseCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    nop

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "handler":Lcom/facebook/appevents/ml/ModelManager$TaskHandler;
    goto :goto_0

    .line 140
    .end local v0    # "this":Lcom/facebook/appevents/ml/ModelManager;
    :catch_0
    move-exception v2

    .line 142
    :cond_2
    nop

    .line 143
    return-void

    .end local v1    # "keys":Ljava/util/Iterator;
    .end local p1    # "models":Lorg/json/JSONObject;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final enable()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 98
    :cond_0
    nop

    .line 99
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/ml/ModelManager$enable$1;->INSTANCE:Lcom/facebook/appevents/ml/ModelManager$enable$1;

    check-cast v1, Ljava/lang/Runnable;

    .line 98
    invoke-static {v1}, Lcom/facebook/internal/Utility;->runOnNonUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final enableMTML()V
    .locals 11

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 183
    .local v0, "this":Lcom/facebook/appevents/ml/ModelManager;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 184
    .local v1, "slaveTasks":Ljava/util/List;
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    .line 185
    .local v2, "mtmlAssetUri":Ljava/lang/String;
    const/4 v3, 0x0

    .line 186
    .local v3, "mtmlVersionId":I
    sget-object v4, Lcom/facebook/appevents/ml/ModelManager;->taskHandlers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    .line 187
    .local v5, "handler":Lcom/facebook/appevents/ml/ModelManager$TaskHandler;
    .local v6, "useCase":Ljava/lang/String;
    sget-object v7, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-virtual {v7}, Lcom/facebook/appevents/ml/ModelManager$Task;->toUseCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 188
    invoke-virtual {v5}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->getAssetUri()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 189
    invoke-virtual {v5}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->getVersionId()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v3, v7

    .line 190
    sget-object v7, Lcom/facebook/internal/FeatureManager$Feature;->SuggestedEvents:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v7}, Lcom/facebook/internal/FeatureManager;->isEnabled(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {v0}, Lcom/facebook/appevents/ml/ModelManager;->isLocaleEnglish()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 191
    sget-object v7, Lcom/facebook/appevents/ml/ModelManager$enableMTML$1;->INSTANCE:Lcom/facebook/appevents/ml/ModelManager$enableMTML$1;

    check-cast v7, Ljava/lang/Runnable;

    invoke-virtual {v5, v7}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->setOnPostExecute(Ljava/lang/Runnable;)Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v0    # "this":Lcom/facebook/appevents/ml/ModelManager;
    :cond_1
    sget-object v7, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_INTEGRITY_DETECT:Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-virtual {v7}, Lcom/facebook/appevents/ml/ModelManager$Task;->toUseCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 195
    invoke-virtual {v5}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->getAssetUri()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 196
    invoke-virtual {v5}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->getVersionId()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v3, v7

    .line 197
    sget-object v7, Lcom/facebook/internal/FeatureManager$Feature;->IntelligentIntegrity:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v7}, Lcom/facebook/internal/FeatureManager;->isEnabled(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 198
    sget-object v7, Lcom/facebook/appevents/ml/ModelManager$enableMTML$2;->INSTANCE:Lcom/facebook/appevents/ml/ModelManager$enableMTML$2;

    check-cast v7, Ljava/lang/Runnable;

    invoke-virtual {v5, v7}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->setOnPostExecute(Ljava/lang/Runnable;)Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v5    # "handler":Lcom/facebook/appevents/ml/ModelManager$TaskHandler;
    .end local v6    # "useCase":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 202
    :cond_3
    if-eqz v2, :cond_4

    if-lez v3, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 203
    new-instance v4, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    const-string v6, "MTML"

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v4

    move-object v7, v2

    move v9, v3

    invoke-direct/range {v5 .. v10}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[F)V

    .line 204
    .local v4, "mtmlHandler":Lcom/facebook/appevents/ml/ModelManager$TaskHandler;
    sget-object v5, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->Companion:Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;

    invoke-virtual {v5, v4, v1}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;->execute(Lcom/facebook/appevents/ml/ModelManager$TaskHandler;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v4    # "mtmlHandler":Lcom/facebook/appevents/ml/ModelManager$TaskHandler;
    :cond_4
    return-void

    .end local v1    # "slaveTasks":Ljava/util/List;
    .end local v2    # "mtmlAssetUri":Ljava/lang/String;
    .end local v3    # "mtmlVersionId":I
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final fetchModels()Lorg/json/JSONObject;
    .locals 10

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 169
    .local v0, "this":Lcom/facebook/appevents/ml/ModelManager;
    nop

    .line 170
    :try_start_0
    const-string/jumbo v2, "use_case"

    const-string/jumbo v3, "version_id"

    const-string v4, "asset_uri"

    const-string v5, "rules_uri"

    const-string/jumbo v6, "thresholds"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    .line 169
    nop

    .line 171
    .local v2, "appSettingFields":[Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v3, "appSettingsParams":Landroid/os/Bundle;
    const-string v4, "fields"

    const-string v5, ","

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    nop

    .line 174
    sget-object v4, Lcom/facebook/GraphRequest;->Companion:Lcom/facebook/GraphRequest$Companion;

    .line 175
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v5, "%s/model_asset"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "java.lang.String.format(format, *args)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v4, v1, v5, v1}, Lcom/facebook/GraphRequest$Companion;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v4

    .line 173
    nop

    .line 176
    .local v4, "graphRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v4, v6}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 177
    invoke-virtual {v4, v3}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {v4}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 179
    .local v5, "rawResponse":Lorg/json/JSONObject;
    invoke-direct {v0, v5}, Lcom/facebook/appevents/ml/ModelManager;->parseRawJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 178
    .end local v0    # "this":Lcom/facebook/appevents/ml/ModelManager;
    .end local v5    # "rawResponse":Lorg/json/JSONObject;
    :cond_1
    return-object v1

    .line 179
    .end local v2    # "appSettingFields":[Ljava/lang/String;
    .end local v3    # "appSettingsParams":Landroid/os/Bundle;
    .end local v4    # "graphRequest":Lcom/facebook/GraphRequest;
    :catchall_0
    move-exception v2

    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static final getRuleFile(Lcom/facebook/appevents/ml/ModelManager$Task;)Ljava/io/File;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "task":Lcom/facebook/appevents/ml/ModelManager$Task;
    :cond_0
    :try_start_0
    const-string/jumbo v1, "task"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    sget-object v1, Lcom/facebook/appevents/ml/ModelManager;->taskHandlers:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/facebook/appevents/ml/ModelManager$Task;->toUseCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    if-eqz v1, :cond_1

    .line 232
    .local v1, "handler":Lcom/facebook/appevents/ml/ModelManager$TaskHandler;
    invoke-virtual {v1}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->getRuleFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 231
    .end local v1    # "handler":Lcom/facebook/appevents/ml/ModelManager$TaskHandler;
    :cond_1
    return-object v2

    .line 232
    .end local p0    # "task":Lcom/facebook/appevents/ml/ModelManager$Task;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final isLocaleEnglish()Z
    .locals 7

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    .line 210
    .local v0, "this":Lcom/facebook/appevents/ml/ModelManager;
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/Utility;->getResourceLocale()Ljava/util/Locale;

    move-result-object v2

    .line 211
    .local v2, "locale":Ljava/util/Locale;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "locale.language"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "en"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v1, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .end local v0    # "this":Lcom/facebook/appevents/ml/ModelManager;
    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .end local v2    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception v2

    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private final isValidTimestamp(J)Z
    .locals 7

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    .line 127
    .local v0, "this":Lcom/facebook/appevents/ml/ModelManager;
    .local p1, "timestamp":J
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    .line 128
    goto :goto_0

    .line 129
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v2, p1

    const v4, 0xf731400

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    const/4 v1, 0x1

    .line 127
    :cond_2
    :goto_0
    return v1

    .end local v0    # "this":Lcom/facebook/appevents/ml/ModelManager;
    .end local p1    # "timestamp":J
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private final parseJsonArray(Lorg/json/JSONArray;)[F
    .locals 7

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 215
    .local v0, "this":Lcom/facebook/appevents/ml/ModelManager;
    .local p1, "jsonArray":Lorg/json/JSONArray;
    if-nez p1, :cond_1

    .line 216
    return-object v1

    .line 218
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [F

    .line 219
    .local v2, "thresholds":[F
    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-ge v3, v4, :cond_2

    .line 220
    .local v3, "i":I
    nop

    .line 221
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "jsonArray.getString(i)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v2, v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 222
    .end local v0    # "this":Lcom/facebook/appevents/ml/ModelManager;
    :catch_0
    move-exception v5

    .line 224
    :goto_1
    nop

    .line 219
    nop

    .end local v3    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    :cond_2
    return-object v2

    .end local v2    # "thresholds":[F
    .end local p1    # "jsonArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final parseRawJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 14

    const-string v0, "asset_uri"

    const-string/jumbo v1, "thresholds"

    const-string/jumbo v2, "version_id"

    const-string v3, "rules_uri"

    const-string/jumbo v4, "use_case"

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    return-object v6

    :cond_0
    move-object v5, p0

    .line 146
    .local v5, "this":Lcom/facebook/appevents/ml/ModelManager;
    .local p1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .local v7, "resultJsonObject":Lorg/json/JSONObject;
    nop

    .line 148
    :try_start_1
    const-string v8, "data"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 149
    .local v8, "jsonArray":Lorg/json/JSONArray;
    const/4 v9, 0x0

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    :goto_0
    if-ge v9, v10, :cond_2

    .line 150
    .local v9, "i":I
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 151
    .local v11, "curJsonObject":Lorg/json/JSONObject;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .local v12, "tempJsonObject":Lorg/json/JSONObject;
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v12, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 158
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    .end local v5    # "this":Lcom/facebook/appevents/ml/ModelManager;
    :cond_1
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    nop

    .end local v9    # "i":I
    .end local v11    # "curJsonObject":Lorg/json/JSONObject;
    .end local v12    # "tempJsonObject":Lorg/json/JSONObject;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 162
    :cond_2
    nop

    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    move-object v1, v7

    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "je":Lorg/json/JSONException;
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .end local v0    # "je":Lorg/json/JSONException;
    :goto_1
    return-object v1

    .end local v7    # "resultJsonObject":Lorg/json/JSONObject;
    .end local p1    # "jsonObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception p1

    invoke-static {p1, v5}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v6
.end method

.method public static final predict(Lcom/facebook/appevents/ml/ModelManager$Task;[[F[Ljava/lang/String;)[Ljava/lang/String;
    .locals 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v1, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v0, p0

    .local v0, "task":Lcom/facebook/appevents/ml/ModelManager$Task;
    move-object/from16 v3, p2

    .local v3, "texts":[Ljava/lang/String;
    move-object/from16 v4, p1

    .local v4, "denses":[[F
    :try_start_0
    const-string/jumbo v5, "task"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "denses"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "texts"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    sget-object v5, Lcom/facebook/appevents/ml/ModelManager;->taskHandlers:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/appevents/ml/ModelManager$Task;->toUseCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    .line 238
    .local v5, "handler":Lcom/facebook/appevents/ml/ModelManager$TaskHandler;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->getModel()Lcom/facebook/appevents/ml/Model;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 239
    .local v6, "model":Lcom/facebook/appevents/ml/Model;
    invoke-virtual {v5}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->getThresholds()[F

    move-result-object v7

    .line 241
    .local v7, "thresholds":[F
    array-length v8, v3

    .line 242
    .local v8, "exampleSize":I
    const/4 v9, 0x0

    aget-object v10, v4, v9

    array-length v10, v10

    .line 243
    .local v10, "denseSize":I
    new-instance v11, Lcom/facebook/appevents/ml/MTensor;

    const/4 v12, 0x2

    new-array v12, v12, [I

    aput v8, v12, v9

    const/4 v13, 0x1

    aput v10, v12, v13

    invoke-direct {v11, v12}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 244
    .local v11, "dense":Lcom/facebook/appevents/ml/MTensor;
    const/4 v12, 0x0

    :goto_0
    if-ge v12, v8, :cond_1

    .line 245
    .local v12, "n":I
    aget-object v14, v4, v12

    invoke-virtual {v11}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v15

    mul-int v13, v12, v10

    invoke-static {v14, v9, v15, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    nop

    .end local v12    # "n":I
    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/appevents/ml/ModelManager$Task;->toKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v3, v12}, Lcom/facebook/appevents/ml/Model;->predictOnMTML(Lcom/facebook/appevents/ml/MTensor;[Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v12

    .line 248
    .local v12, "res":Lcom/facebook/appevents/ml/MTensor;
    if-eqz v12, :cond_5

    if-eqz v7, :cond_5

    invoke-virtual {v12}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v13

    array-length v13, v13

    if-nez v13, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    if-nez v13, :cond_5

    array-length v13, v7

    if-nez v13, :cond_3

    const/4 v9, 0x1

    :cond_3
    if-eqz v9, :cond_4

    goto :goto_3

    .line 251
    :cond_4
    sget-object v9, Lcom/facebook/appevents/ml/ModelManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/facebook/appevents/ml/ModelManager$Task;->ordinal()I

    move-result v13

    aget v9, v9, v13

    packed-switch v9, :pswitch_data_0

    .line 253
    new-instance v9, Lkotlin/NoWhenBranchMatchedException;

    goto :goto_2

    :pswitch_0
    sget-object v9, Lcom/facebook/appevents/ml/ModelManager;->INSTANCE:Lcom/facebook/appevents/ml/ModelManager;

    invoke-direct {v9, v12, v7}, Lcom/facebook/appevents/ml/ModelManager;->processIntegrityDetectionResult(Lcom/facebook/appevents/ml/MTensor;[F)[Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 252
    :pswitch_1
    sget-object v9, Lcom/facebook/appevents/ml/ModelManager;->INSTANCE:Lcom/facebook/appevents/ml/ModelManager;

    invoke-direct {v9, v12, v7}, Lcom/facebook/appevents/ml/ModelManager;->processSuggestedEventResult(Lcom/facebook/appevents/ml/MTensor;[F)[Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 253
    :goto_2
    invoke-direct {v9}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_5
    :goto_3
    nop

    .line 251
    :goto_4
    nop

    .line 248
    return-object v2

    .line 238
    .end local v6    # "model":Lcom/facebook/appevents/ml/Model;
    .end local v7    # "thresholds":[F
    .end local v8    # "exampleSize":I
    .end local v10    # "denseSize":I
    .end local v11    # "dense":Lcom/facebook/appevents/ml/MTensor;
    .end local v12    # "res":Lcom/facebook/appevents/ml/MTensor;
    :cond_6
    return-object v2

    .line 248
    .end local v0    # "task":Lcom/facebook/appevents/ml/ModelManager$Task;
    .end local v3    # "texts":[Ljava/lang/String;
    .end local v4    # "denses":[[F
    .end local v5    # "handler":Lcom/facebook/appevents/ml/ModelManager$TaskHandler;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final processIntegrityDetectionResult(Lcom/facebook/appevents/ml/MTensor;[F)[Ljava/lang/String;
    .locals 26

    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object/from16 v2, p0

    .local v2, "this":Lcom/facebook/appevents/ml/ModelManager;
    move-object/from16 v0, p2

    .local v0, "thresholds":[F
    move-object/from16 v3, p1

    .line 281
    .local v3, "res":Lcom/facebook/appevents/ml/MTensor;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    .line 282
    .local v5, "exampleSize":I
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v6

    .line 283
    .local v6, "resSize":I
    invoke-virtual {v3}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v7

    .line 284
    .local v7, "resData":[F
    array-length v8, v0

    if-eq v6, v8, :cond_1

    .line 285
    return-object v1

    .line 287
    :cond_1
    nop

    .line 297
    nop

    .line 287
    nop

    .line 288
    nop

    .line 287
    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 288
    .local v8, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 392
    .local v9, "$i$f$map":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v8, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v8

    .local v11, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 393
    .local v12, "$i$f$mapTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v14, v13

    check-cast v14, Lkotlin/collections/IntIterator;

    invoke-virtual {v14}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v14

    .line 394
    .local v14, "item$iv$iv":I
    move v15, v14

    .local v15, "it":I
    const/16 v16, 0x0

    .line 289
    .local v16, "$i$a$-map-ModelManager$processIntegrityDetectionResult$1":I
    const-string v17, "none"

    .line 290
    .local v17, "resultItem":Ljava/lang/Object;
    move-object/from16 p1, v0

    .local p1, "$this$forEachIndexed$iv":[F
    const/16 v18, 0x0

    .line 395
    .local v18, "$i$f$forEachIndexed":I
    const/16 v19, 0x0

    .line 396
    .local v19, "index$iv":I
    move-object/from16 v1, p1

    .end local p1    # "$this$forEachIndexed$iv":[F
    .local v1, "$this$forEachIndexed$iv":[F
    array-length v4, v1

    move-object/from16 p2, v0

    move-object/from16 v0, v17

    move-object/from16 v17, v3

    const/4 v3, 0x0

    .end local v3    # "res":Lcom/facebook/appevents/ml/MTensor;
    .local v0, "resultItem":Ljava/lang/Object;
    .local v17, "res":Lcom/facebook/appevents/ml/MTensor;
    .local p2, "thresholds":[F
    :goto_1
    if-ge v3, v4, :cond_3

    aget v20, v1, v3

    .local v20, "item$iv":F
    add-int/lit8 v21, v19, 0x1

    .local v19, "idx":I
    .local v21, "index$iv":I
    move/from16 v22, v20

    .local v22, "threshold":F
    const/16 v23, 0x0

    .line 291
    .local v23, "$i$a$-forEachIndexed-ModelManager$processIntegrityDetectionResult$1$1":I
    mul-int v24, v15, v6

    move-object/from16 v25, v1

    move/from16 v1, v19

    .end local v19    # "idx":I
    .local v1, "idx":I
    .local v25, "$this$forEachIndexed$iv":[F
    add-int v24, v24, v1

    aget v19, v7, v24

    cmpl-float v19, v19, v22

    if-ltz v19, :cond_2

    .line 292
    move/from16 v24, v4

    sget-object v4, Lcom/facebook/appevents/ml/ModelManager;->MTML_INTEGRITY_DETECT_PREDICTION:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    goto :goto_2

    .line 291
    .end local v2    # "this":Lcom/facebook/appevents/ml/ModelManager;
    :cond_2
    move/from16 v24, v4

    .line 294
    .end local v1    # "idx":I
    .end local v22    # "threshold":F
    .end local v23    # "$i$a$-forEachIndexed-ModelManager$processIntegrityDetectionResult$1$1":I
    :goto_2
    nop

    .end local v20    # "item$iv":F
    add-int/lit8 v3, v3, 0x1

    move/from16 v19, v21

    move/from16 v4, v24

    move-object/from16 v1, v25

    goto :goto_1

    .line 397
    .end local v21    # "index$iv":I
    .end local v25    # "$this$forEachIndexed$iv":[F
    .local v1, "$this$forEachIndexed$iv":[F
    .local v19, "index$iv":I
    :cond_3
    move-object/from16 v25, v1

    .line 295
    .end local v1    # "$this$forEachIndexed$iv":[F
    .end local v18    # "$i$f$forEachIndexed":I
    .end local v19    # "index$iv":I
    nop

    .end local v0    # "resultItem":Ljava/lang/Object;
    .end local v15    # "it":I
    .end local v16    # "$i$a$-map-ModelManager$processIntegrityDetectionResult$1":I
    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 393
    move-object/from16 v0, p2

    move-object/from16 v3, v17

    const/4 v1, 0x0

    const/4 v4, 0x0

    .end local v14    # "item$iv$iv":I
    goto :goto_0

    .line 398
    .end local v17    # "res":Lcom/facebook/appevents/ml/MTensor;
    .end local p2    # "thresholds":[F
    .local v0, "thresholds":[F
    .restart local v3    # "res":Lcom/facebook/appevents/ml/MTensor;
    :cond_4
    move-object/from16 p2, v0

    move-object/from16 v17, v3

    .end local v0    # "thresholds":[F
    .end local v3    # "res":Lcom/facebook/appevents/ml/MTensor;
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$mapTo":I
    .restart local v17    # "res":Lcom/facebook/appevents/ml/MTensor;
    .restart local p2    # "thresholds":[F
    move-object v0, v10

    check-cast v0, Ljava/util/List;

    .line 392
    .end local v8    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$map":I
    check-cast v0, Ljava/util/Collection;

    .line 297
    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 399
    .local v1, "$i$f$toTypedArray":I
    move-object v3, v0

    .line 400
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v4, [Ljava/lang/String;

    .line 287
    return-object v4

    .line 400
    .restart local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v1    # "$i$f$toTypedArray":I
    .restart local v3    # "thisCollection$iv":Ljava/util/Collection;
    :cond_5
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v8, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v4, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    .end local v5    # "exampleSize":I
    .end local v6    # "resSize":I
    .end local v7    # "resData":[F
    .end local v17    # "res":Lcom/facebook/appevents/ml/MTensor;
    .end local p2    # "thresholds":[F
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private final processSuggestedEventResult(Lcom/facebook/appevents/ml/MTensor;[F)[Ljava/lang/String;
    .locals 26

    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object/from16 v2, p0

    .local v2, "this":Lcom/facebook/appevents/ml/ModelManager;
    move-object/from16 v0, p2

    .local v0, "thresholds":[F
    move-object/from16 v3, p1

    .line 258
    .local v3, "res":Lcom/facebook/appevents/ml/MTensor;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    .line 259
    .local v5, "exampleSize":I
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v6

    .line 260
    .local v6, "resSize":I
    invoke-virtual {v3}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v7

    .line 261
    .local v7, "resData":[F
    array-length v8, v0

    if-eq v6, v8, :cond_1

    .line 262
    return-object v1

    .line 264
    :cond_1
    nop

    .line 274
    nop

    .line 264
    nop

    .line 265
    nop

    .line 264
    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 265
    .local v8, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 383
    .local v9, "$i$f$map":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v8, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v8

    .local v11, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 384
    .local v12, "$i$f$mapTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v14, v13

    check-cast v14, Lkotlin/collections/IntIterator;

    invoke-virtual {v14}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v14

    .line 385
    .local v14, "item$iv$iv":I
    move v15, v14

    .local v15, "it":I
    const/16 v16, 0x0

    .line 266
    .local v16, "$i$a$-map-ModelManager$processSuggestedEventResult$1":I
    const-string v17, "other"

    .line 267
    .local v17, "resultItem":Ljava/lang/Object;
    move-object/from16 p1, v0

    .local p1, "$this$forEachIndexed$iv":[F
    const/16 v18, 0x0

    .line 386
    .local v18, "$i$f$forEachIndexed":I
    const/16 v19, 0x0

    .line 387
    .local v19, "index$iv":I
    move-object/from16 v1, p1

    .end local p1    # "$this$forEachIndexed$iv":[F
    .local v1, "$this$forEachIndexed$iv":[F
    array-length v4, v1

    move-object/from16 p2, v0

    move-object/from16 v0, v17

    move-object/from16 v17, v3

    const/4 v3, 0x0

    .end local v3    # "res":Lcom/facebook/appevents/ml/MTensor;
    .local v0, "resultItem":Ljava/lang/Object;
    .local v17, "res":Lcom/facebook/appevents/ml/MTensor;
    .local p2, "thresholds":[F
    :goto_1
    if-ge v3, v4, :cond_3

    aget v20, v1, v3

    .local v20, "item$iv":F
    add-int/lit8 v21, v19, 0x1

    .local v19, "idx":I
    .local v21, "index$iv":I
    move/from16 v22, v20

    .local v22, "threshold":F
    const/16 v23, 0x0

    .line 268
    .local v23, "$i$a$-forEachIndexed-ModelManager$processSuggestedEventResult$1$1":I
    mul-int v24, v15, v6

    move-object/from16 v25, v1

    move/from16 v1, v19

    .end local v19    # "idx":I
    .local v1, "idx":I
    .local v25, "$this$forEachIndexed$iv":[F
    add-int v24, v24, v1

    aget v19, v7, v24

    cmpl-float v19, v19, v22

    if-ltz v19, :cond_2

    .line 269
    move/from16 v24, v4

    sget-object v4, Lcom/facebook/appevents/ml/ModelManager;->MTML_SUGGESTED_EVENTS_PREDICTION:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    goto :goto_2

    .line 268
    .end local v2    # "this":Lcom/facebook/appevents/ml/ModelManager;
    :cond_2
    move/from16 v24, v4

    .line 271
    .end local v1    # "idx":I
    .end local v22    # "threshold":F
    .end local v23    # "$i$a$-forEachIndexed-ModelManager$processSuggestedEventResult$1$1":I
    :goto_2
    nop

    .end local v20    # "item$iv":F
    add-int/lit8 v3, v3, 0x1

    move/from16 v19, v21

    move/from16 v4, v24

    move-object/from16 v1, v25

    goto :goto_1

    .line 388
    .end local v21    # "index$iv":I
    .end local v25    # "$this$forEachIndexed$iv":[F
    .local v1, "$this$forEachIndexed$iv":[F
    .local v19, "index$iv":I
    :cond_3
    move-object/from16 v25, v1

    .line 272
    .end local v1    # "$this$forEachIndexed$iv":[F
    .end local v18    # "$i$f$forEachIndexed":I
    .end local v19    # "index$iv":I
    nop

    .end local v0    # "resultItem":Ljava/lang/Object;
    .end local v15    # "it":I
    .end local v16    # "$i$a$-map-ModelManager$processSuggestedEventResult$1":I
    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 384
    move-object/from16 v0, p2

    move-object/from16 v3, v17

    const/4 v1, 0x0

    const/4 v4, 0x0

    .end local v14    # "item$iv$iv":I
    goto :goto_0

    .line 389
    .end local v17    # "res":Lcom/facebook/appevents/ml/MTensor;
    .end local p2    # "thresholds":[F
    .local v0, "thresholds":[F
    .restart local v3    # "res":Lcom/facebook/appevents/ml/MTensor;
    :cond_4
    move-object/from16 p2, v0

    move-object/from16 v17, v3

    .end local v0    # "thresholds":[F
    .end local v3    # "res":Lcom/facebook/appevents/ml/MTensor;
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$mapTo":I
    .restart local v17    # "res":Lcom/facebook/appevents/ml/MTensor;
    .restart local p2    # "thresholds":[F
    move-object v0, v10

    check-cast v0, Ljava/util/List;

    .line 383
    .end local v8    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$map":I
    check-cast v0, Ljava/util/Collection;

    .line 274
    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 390
    .local v1, "$i$f$toTypedArray":I
    move-object v3, v0

    .line 391
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v4, [Ljava/lang/String;

    .line 264
    return-object v4

    .line 391
    .restart local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v1    # "$i$f$toTypedArray":I
    .restart local v3    # "thisCollection$iv":Ljava/util/Collection;
    :cond_5
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v8, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v4, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    .end local v5    # "exampleSize":I
    .end local v6    # "resSize":I
    .end local v7    # "resData":[F
    .end local v17    # "res":Lcom/facebook/appevents/ml/MTensor;
    .end local p2    # "thresholds":[F
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method
