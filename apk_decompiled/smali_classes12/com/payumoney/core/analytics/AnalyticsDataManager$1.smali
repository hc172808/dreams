.class Lcom/payumoney/core/analytics/AnalyticsDataManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/analytics/AnalyticsDataManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic c:Lcom/payumoney/core/analytics/AnalyticsDataManager;


# direct methods
.method constructor <init>(Lcom/payumoney/core/analytics/AnalyticsDataManager;Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/analytics/AnalyticsDataManager;

    .line 57
    iput-object p1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->c:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    iput-object p2, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->c:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->a(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->c:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->b(Lcom/payumoney/core/analytics/AnalyticsDataManager;)V

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->c:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->c:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v1}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->c:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v1}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->c:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v3}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->c:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v4}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->e(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/payumoney/core/utils/SharedPrefsUtils;->getStringSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 65
    if-lez v1, :cond_2

    .line 66
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 67
    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->c:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v4}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->c:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v5}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->c:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v6}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->e(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/payumoney/core/utils/SharedPrefsUtils;->getStringSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 68
    nop

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 69
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 70
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 73
    iget-object v1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->c:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v2}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->c:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v3}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->e(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/payumoney/core/utils/SharedPrefsUtils;->deleteSharedPrefKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 76
    :catch_1
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 80
    :goto_2
    nop

    .line 81
    :goto_3
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->c:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->f(Lcom/payumoney/core/analytics/AnalyticsDataManager;)V

    .line 82
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method
