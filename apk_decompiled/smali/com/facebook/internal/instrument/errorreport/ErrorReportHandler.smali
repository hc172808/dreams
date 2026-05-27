.class public final Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;
.super Ljava/lang/Object;
.source "ErrorReportHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007J\u0013\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0007\u00a2\u0006\u0002\u0010\nJ\u0012\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007J\u0008\u0010\u000e\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;",
        "",
        "()V",
        "MAX_ERROR_REPORT_NUM",
        "",
        "enable",
        "",
        "listErrorReportFiles",
        "",
        "Ljava/io/File;",
        "()[Ljava/io/File;",
        "save",
        "msg",
        "",
        "sendErrorReports",
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
.field public static final INSTANCE:Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;

.field private static final MAX_ERROR_REPORT_NUM:I = 0x3e8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;-><init>()V

    sput-object v0, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;->INSTANCE:Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final enable()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 46
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;->sendErrorReports()V

    .line 49
    :cond_0
    return-void
.end method

.method public static final listErrorReportFiles()[Ljava/io/File;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 89
    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentUtility;->getInstrumentReportDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    .local v0, "reportDir":Ljava/io/File;
    sget-object v1, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$listErrorReportFiles$1;->INSTANCE:Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$listErrorReportFiles$1;

    check-cast v1, Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    const-string v2, "reportDir.listFiles { di\u2026OR_REPORT_PREFIX)))\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 89
    .end local v0    # "reportDir":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    return-object v0
.end method

.method public static final save(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 36
    nop

    .line 37
    :try_start_0
    new-instance v0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;

    invoke-direct {v0, p0}, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "errorReport":Lcom/facebook/internal/instrument/errorreport/ErrorReportData;
    invoke-virtual {v0}, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "errorReport":Lcom/facebook/internal/instrument/errorreport/ErrorReportData;
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 41
    :goto_0
    nop

    .line 42
    return-void
.end method

.method public static final sendErrorReports()V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 58
    invoke-static {}, Lcom/facebook/internal/Utility;->isDataProcessingRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;->listErrorReportFiles()[Ljava/io/File;

    move-result-object v0

    .line 62
    .local v0, "reports":[Ljava/io/File;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v1, "validReports":Ljava/util/ArrayList;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 64
    .local v4, "report":Ljava/io/File;
    new-instance v5, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;

    invoke-direct {v5, v4}, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;-><init>(Ljava/io/File;)V

    .line 65
    .local v5, "errorData":Lcom/facebook/internal/instrument/errorreport/ErrorReportData;
    invoke-virtual {v5}, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->isValid()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v5    # "errorData":Lcom/facebook/internal/instrument/errorreport/ErrorReportData;
    :cond_1
    nop

    .end local v4    # "report":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$sendErrorReports$1;->INSTANCE:Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$sendErrorReports$1;

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 71
    .local v2, "errorLogs":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 72
    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_3

    .line 73
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 74
    add-int/lit8 v3, v3, 0x1

    .line 72
    goto :goto_1

    .line 76
    :cond_3
    new-instance v4, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$sendErrorReports$2;

    invoke-direct {v4, v1}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$sendErrorReports$2;-><init>(Ljava/util/ArrayList;)V

    check-cast v4, Lcom/facebook/GraphRequest$Callback;

    const-string v5, "error_reports"

    invoke-static {v5, v2, v4}, Lcom/facebook/internal/instrument/InstrumentUtility;->sendReports(Ljava/lang/String;Lorg/json/JSONArray;Lcom/facebook/GraphRequest$Callback;)V

    .line 85
    return-void
.end method
