.class public final Lcom/facebook/internal/instrument/ExceptionAnalyzer;
.super Ljava/lang/Object;
.source "ExceptionAnalyzer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExceptionAnalyzer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionAnalyzer.kt\ncom/facebook/internal/instrument/ExceptionAnalyzer\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,108:1\n13416#2,2:109\n*E\n*S KotlinDebug\n*F\n+ 1 ExceptionAnalyzer.kt\ncom/facebook/internal/instrument/ExceptionAnalyzer\n*L\n56#1,2:109\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007J\u0008\u0010\n\u001a\u00020\u0004H\u0007J\u0008\u0010\u000b\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/internal/instrument/ExceptionAnalyzer;",
        "",
        "()V",
        "enabled",
        "",
        "enable",
        "",
        "execute",
        "e",
        "",
        "isDebug",
        "sendExceptionAnalysisReports",
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
.field public static final INSTANCE:Lcom/facebook/internal/instrument/ExceptionAnalyzer;

.field private static enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/facebook/internal/instrument/ExceptionAnalyzer;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/ExceptionAnalyzer;-><init>()V

    sput-object v0, Lcom/facebook/internal/instrument/ExceptionAnalyzer;->INSTANCE:Lcom/facebook/internal/instrument/ExceptionAnalyzer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final enable()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/internal/instrument/ExceptionAnalyzer;->enabled:Z

    .line 45
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/facebook/internal/instrument/ExceptionAnalyzer;->INSTANCE:Lcom/facebook/internal/instrument/ExceptionAnalyzer;

    invoke-virtual {v0}, Lcom/facebook/internal/instrument/ExceptionAnalyzer;->sendExceptionAnalysisReports()V

    .line 48
    :cond_0
    return-void
.end method

.method public static final execute(Ljava/lang/Throwable;)V
    .locals 10
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 52
    sget-boolean v0, Lcom/facebook/internal/instrument/ExceptionAnalyzer;->enabled:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/facebook/internal/instrument/ExceptionAnalyzer;->isDebug()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 56
    .local v0, "disabledFeatures":Ljava/util/Set;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const-string v2, "e.stackTrace"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v1, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 109
    .local v2, "$i$f$forEach":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "it":Ljava/lang/StackTraceElement;
    const/4 v7, 0x0

    .line 57
    .local v7, "$i$a$-forEach-ExceptionAnalyzer$execute$1":I
    const-string v8, "it"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "it.className"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/facebook/internal/FeatureManager;->getFeature(Ljava/lang/String;)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v8

    .line 58
    .local v8, "feature":Lcom/facebook/internal/FeatureManager$Feature;
    sget-object v9, Lcom/facebook/internal/FeatureManager$Feature;->Unknown:Lcom/facebook/internal/FeatureManager$Feature;

    if-eq v8, v9, :cond_1

    .line 59
    invoke-static {v8}, Lcom/facebook/internal/FeatureManager;->disableFeature(Lcom/facebook/internal/FeatureManager$Feature;)V

    .line 60
    invoke-virtual {v8}, Lcom/facebook/internal/FeatureManager$Feature;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v8    # "feature":Lcom/facebook/internal/FeatureManager$Feature;
    :cond_1
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "it":Ljava/lang/StackTraceElement;
    .end local v7    # "$i$a$-forEach-ExceptionAnalyzer$execute$1":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    :cond_2
    nop

    .line 63
    .end local v1    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$forEach":I
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 64
    new-instance v1, Lorg/json/JSONArray;

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/facebook/internal/instrument/InstrumentData$Builder;->build(Lorg/json/JSONArray;)Lcom/facebook/internal/instrument/InstrumentData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/internal/instrument/InstrumentData;->save()V

    .line 66
    :cond_3
    return-void

    .line 53
    .end local v0    # "disabledFeatures":Ljava/util/Set;
    :cond_4
    :goto_1
    return-void
.end method

.method public static final isDebug()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final sendExceptionAnalysisReports()V
    .locals 14

    .line 70
    invoke-static {}, Lcom/facebook/internal/Utility;->isDataProcessingRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentUtility;->listExceptionAnalysisReportFiles()[Ljava/io/File;

    move-result-object v0

    .line 74
    .local v0, "reports":[Ljava/io/File;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 75
    .local v1, "requests":Ljava/util/List;
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 76
    .local v5, "report":Ljava/io/File;
    invoke-static {v5}, Lcom/facebook/internal/instrument/InstrumentData$Builder;->load(Ljava/io/File;)Lcom/facebook/internal/instrument/InstrumentData;

    move-result-object v6

    .line 77
    .local v6, "instrumentData":Lcom/facebook/internal/instrument/InstrumentData;
    invoke-virtual {v6}, Lcom/facebook/internal/instrument/InstrumentData;->isValid()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 78
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .local v7, "params":Lorg/json/JSONObject;
    nop

    .line 80
    :try_start_0
    const-string v8, "crash_shield"

    invoke-virtual {v6}, Lcom/facebook/internal/instrument/InstrumentData;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    nop

    .line 82
    sget-object v8, Lcom/facebook/GraphRequest;->Companion:Lcom/facebook/GraphRequest$Companion;

    .line 83
    const/4 v9, 0x0

    .line 84
    sget-object v10, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v10, "%s/instruments"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "java.lang.String.format(format, *args)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v11, Lcom/facebook/internal/instrument/ExceptionAnalyzer$sendExceptionAnalysisReports$request$1;

    invoke-direct {v11, v6}, Lcom/facebook/internal/instrument/ExceptionAnalyzer$sendExceptionAnalysisReports$request$1;-><init>(Lcom/facebook/internal/instrument/InstrumentData;)V

    check-cast v11, Lcom/facebook/GraphRequest$Callback;

    .line 82
    invoke-virtual {v8, v9, v10, v7, v11}, Lcom/facebook/GraphRequest$Companion;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v8

    .line 81
    nop

    .line 95
    .local v8, "request":Lcom/facebook/GraphRequest;
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 96
    .end local v8    # "request":Lcom/facebook/GraphRequest;
    :catch_0
    move-exception v8

    .line 98
    .end local v6    # "instrumentData":Lcom/facebook/internal/instrument/InstrumentData;
    .end local v7    # "params":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    nop

    .line 75
    nop

    .end local v5    # "report":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    return-void

    .line 104
    :cond_3
    new-instance v2, Lcom/facebook/GraphRequestBatch;

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    .line 105
    .local v2, "requestBatch":Lcom/facebook/GraphRequestBatch;
    invoke-virtual {v2}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 106
    return-void
.end method
