.class public final Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion;
.super Ljava/lang/Object;
.source "CrashHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/instrument/crashreport/CrashHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrashHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrashHandler.kt\ncom/facebook/internal/instrument/crashreport/CrashHandler$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n11208#2:100\n11543#2,3:101\n714#3:104\n805#3,2:105\n1799#3,2:107\n*E\n*S KotlinDebug\n*F\n+ 1 CrashHandler.kt\ncom/facebook/internal/instrument/crashreport/CrashHandler$Companion\n*L\n77#1:100\n77#1,3:101\n78#1:104\n78#1,2:105\n83#1,2:107\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u000b\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion;",
        "",
        "()V",
        "MAX_CRASH_REPORT_NUM",
        "",
        "TAG",
        "",
        "instance",
        "Lcom/facebook/internal/instrument/crashreport/CrashHandler;",
        "enable",
        "",
        "sendExceptionReports",
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 45
    invoke-direct {p0}, Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion;-><init>()V

    return-void
.end method

.method private final sendExceptionReports()V
    .locals 12

    .line 71
    invoke-static {}, Lcom/facebook/internal/Utility;->isDataProcessingRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentUtility;->listExceptionReportFiles()[Ljava/io/File;

    move-result-object v0

    .line 75
    .local v0, "reports":[Ljava/io/File;
    nop

    .line 76
    nop

    .line 79
    nop

    .line 76
    nop

    .line 78
    nop

    .line 76
    nop

    .line 77
    nop

    .line 76
    move-object v1, v0

    .line 77
    .local v1, "$this$map$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 100
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 101
    .local v5, "$i$f$mapTo":I
    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_1

    aget-object v9, v4, v8

    .line 102
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it":Ljava/io/File;
    const/4 v11, 0x0

    .line 77
    .local v11, "$i$a$-map-CrashHandler$Companion$sendExceptionReports$validReports$1":I
    invoke-static {v10}, Lcom/facebook/internal/instrument/InstrumentData$Builder;->load(Ljava/io/File;)Lcom/facebook/internal/instrument/InstrumentData;

    move-result-object v10

    .end local v10    # "it":Ljava/io/File;
    .end local v11    # "$i$a$-map-CrashHandler$Companion$sendExceptionReports$validReports$1":I
    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 101
    nop

    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 103
    :cond_1
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$mapTo":I
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 100
    .end local v1    # "$this$map$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$map":I
    check-cast v1, Ljava/lang/Iterable;

    .line 78
    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 104
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .restart local v3    # "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 105
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lcom/facebook/internal/instrument/InstrumentData;

    .local v9, "it":Lcom/facebook/internal/instrument/InstrumentData;
    const/4 v10, 0x0

    .line 78
    .local v10, "$i$a$-filter-CrashHandler$Companion$sendExceptionReports$validReports$2":I
    invoke-virtual {v9}, Lcom/facebook/internal/instrument/InstrumentData;->isValid()Z

    move-result v9

    .end local v9    # "it":Lcom/facebook/internal/instrument/InstrumentData;
    .end local v10    # "$i$a$-filter-CrashHandler$Companion$sendExceptionReports$validReports$2":I
    if-eqz v9, :cond_2

    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterTo":I
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 104
    .end local v1    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter":I
    check-cast v1, Ljava/lang/Iterable;

    .line 79
    sget-object v2, Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion$sendExceptionReports$validReports$3;->INSTANCE:Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion$sendExceptionReports$validReports$3;

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 75
    nop

    .line 80
    .local v1, "validReports":Ljava/util/List;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 83
    .local v2, "crashLogs":Lorg/json/JSONArray;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v7, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 107
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v5

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    .local v6, "element$iv":I
    move v7, v6

    .local v7, "it":I
    const/4 v8, 0x0

    .line 84
    .local v8, "$i$a$-forEach-CrashHandler$Companion$sendExceptionReports$1":I
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 85
    .end local v7    # "it":I
    .end local v8    # "$i$a$-forEach-CrashHandler$Companion$sendExceptionReports$1":I
    nop

    .end local v6    # "element$iv":I
    goto :goto_2

    .line 108
    :cond_4
    nop

    .line 87
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    new-instance v3, Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion$sendExceptionReports$2;

    invoke-direct {v3, v1}, Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion$sendExceptionReports$2;-><init>(Ljava/util/List;)V

    check-cast v3, Lcom/facebook/GraphRequest$Callback;

    const-string v4, "crash_reports"

    invoke-static {v4, v2, v3}, Lcom/facebook/internal/instrument/InstrumentUtility;->sendReports(Ljava/lang/String;Lorg/json/JSONArray;Lcom/facebook/GraphRequest$Callback;)V

    .line 96
    return-void
.end method


# virtual methods
.method public final declared-synchronized enable()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p0

    check-cast v0, Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion;->sendExceptionReports()V

    .line 56
    .end local p0    # "this":Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion;
    :cond_0
    invoke-static {}, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->access$getInstance$cp()Lcom/facebook/internal/instrument/crashreport/CrashHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    invoke-static {}, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Already enabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 60
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 61
    .local v0, "oldHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lcom/facebook/internal/instrument/crashreport/CrashHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/facebook/internal/instrument/crashreport/CrashHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->access$setInstance$cp(Lcom/facebook/internal/instrument/crashreport/CrashHandler;)V

    .line 62
    invoke-static {}, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->access$getInstance$cp()Lcom/facebook/internal/instrument/crashreport/CrashHandler;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 52
    .end local v0    # "oldHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
