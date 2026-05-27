.class public final Lcom/facebook/internal/instrument/anrreport/ANRHandler;
.super Ljava/lang/Object;
.source "ANRHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nANRHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ANRHandler.kt\ncom/facebook/internal/instrument/anrreport/ANRHandler\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n11208#2:89\n11543#2,3:90\n714#3:93\n805#3,2:94\n1799#3,2:96\n*E\n*S KotlinDebug\n*F\n+ 1 ANRHandler.kt\ncom/facebook/internal/instrument/anrreport/ANRHandler\n*L\n69#1:89\n69#1,3:90\n70#1:93\n70#1,2:94\n74#1,2:96\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0007J\u0008\u0010\t\u001a\u00020\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/internal/instrument/anrreport/ANRHandler;",
        "",
        "()V",
        "MAX_ANR_REPORT_NUM",
        "",
        "enabled",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "enable",
        "",
        "sendANRReports",
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
.field public static final INSTANCE:Lcom/facebook/internal/instrument/anrreport/ANRHandler;

.field private static final MAX_ANR_REPORT_NUM:I = 0x5

.field private static final enabled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/facebook/internal/instrument/anrreport/ANRHandler;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/anrreport/ANRHandler;-><init>()V

    sput-object v0, Lcom/facebook/internal/instrument/anrreport/ANRHandler;->INSTANCE:Lcom/facebook/internal/instrument/anrreport/ANRHandler;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/internal/instrument/anrreport/ANRHandler;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized enable()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/instrument/anrreport/ANRHandler;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 46
    :cond_0
    :try_start_1
    sget-object v1, Lcom/facebook/internal/instrument/anrreport/ANRHandler;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 47
    monitor-exit v0

    return-void

    .line 49
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    invoke-static {}, Lcom/facebook/internal/instrument/anrreport/ANRHandler;->sendANRReports()V

    .line 52
    :cond_2
    invoke-static {}, Lcom/facebook/internal/instrument/anrreport/ANRDetector;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 45
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final sendANRReports()V
    .locals 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/instrument/anrreport/ANRHandler;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 63
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/Utility;->isDataProcessingRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    return-void

    .line 66
    :cond_1
    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentUtility;->listAnrReportFiles()[Ljava/io/File;

    move-result-object v1

    .line 67
    .local v1, "reports":[Ljava/io/File;
    nop

    .line 68
    nop

    .line 71
    nop

    .line 68
    nop

    .line 70
    nop

    .line 68
    nop

    .line 69
    nop

    .line 68
    move-object v2, v1

    .line 69
    .local v2, "$this$map$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 89
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 90
    .local v6, "$i$f$mapTo":I
    array-length v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_2

    aget-object v10, v5, v9

    .line 91
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it":Ljava/io/File;
    const/4 v12, 0x0

    .line 69
    .local v12, "$i$a$-map-ANRHandler$sendANRReports$validReports$1":I
    invoke-static {v11}, Lcom/facebook/internal/instrument/InstrumentData$Builder;->load(Ljava/io/File;)Lcom/facebook/internal/instrument/InstrumentData;

    move-result-object v13

    .end local v11    # "it":Ljava/io/File;
    .end local v12    # "$i$a$-map-ANRHandler$sendANRReports$validReports$1":I
    invoke-interface {v4, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    nop

    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 92
    :cond_2
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 89
    .end local v2    # "$this$map$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$map":I
    check-cast v4, Ljava/lang/Iterable;

    move-object v2, v4

    .line 70
    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 93
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .restart local v4    # "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 94
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lcom/facebook/internal/instrument/InstrumentData;

    .local v10, "it":Lcom/facebook/internal/instrument/InstrumentData;
    const/4 v11, 0x0

    .line 70
    .local v11, "$i$a$-filter-ANRHandler$sendANRReports$validReports$2":I
    invoke-virtual {v10}, Lcom/facebook/internal/instrument/InstrumentData;->isValid()Z

    move-result v12

    .end local v10    # "it":Lcom/facebook/internal/instrument/InstrumentData;
    .end local v11    # "$i$a$-filter-ANRHandler$sendANRReports$validReports$2":I
    if-eqz v12, :cond_3

    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 93
    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    check-cast v4, Ljava/lang/Iterable;

    .line 71
    sget-object v2, Lcom/facebook/internal/instrument/anrreport/ANRHandler$sendANRReports$validReports$3;->INSTANCE:Lcom/facebook/internal/instrument/anrreport/ANRHandler$sendANRReports$validReports$3;

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 67
    nop

    .line 72
    .local v2, "validReports":Ljava/util/List;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 74
    .local v3, "anrLogs":Lorg/json/JSONArray;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v8, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 96
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v6

    check-cast v7, Lkotlin/collections/IntIterator;

    invoke-virtual {v7}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v7

    .local v7, "element$iv":I
    move v8, v7

    .local v8, "it":I
    const/4 v9, 0x0

    .line 75
    .local v9, "$i$a$-forEach-ANRHandler$sendANRReports$1":I
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 76
    nop

    .end local v7    # "element$iv":I
    .end local v8    # "it":I
    .end local v9    # "$i$a$-forEach-ANRHandler$sendANRReports$1":I
    goto :goto_2

    .line 97
    :cond_5
    nop

    .line 77
    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    const-string v4, "anr_reports"

    new-instance v5, Lcom/facebook/internal/instrument/anrreport/ANRHandler$sendANRReports$2;

    invoke-direct {v5, v2}, Lcom/facebook/internal/instrument/anrreport/ANRHandler$sendANRReports$2;-><init>(Ljava/util/List;)V

    check-cast v5, Lcom/facebook/GraphRequest$Callback;

    invoke-static {v4, v3, v5}, Lcom/facebook/internal/instrument/InstrumentUtility;->sendReports(Ljava/lang/String;Lorg/json/JSONArray;Lcom/facebook/GraphRequest$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    return-void

    .end local v1    # "reports":[Ljava/io/File;
    .end local v2    # "validReports":Ljava/util/List;
    .end local v3    # "anrLogs":Lorg/json/JSONArray;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
