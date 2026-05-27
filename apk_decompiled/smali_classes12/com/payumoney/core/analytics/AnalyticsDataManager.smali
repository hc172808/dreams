.class public Lcom/payumoney/core/analytics/AnalyticsDataManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;


# static fields
.field private static a:Lcom/payumoney/core/analytics/AnalyticsDataManager;


# instance fields
.field private b:J

.field private final c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private volatile e:Z

.field private f:Ljava/util/Timer;

.field private volatile g:Z

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->b:J

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->e:Z

    .line 44
    const-string v0, "analytics_buffer_key"

    iput-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->h:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d:Ljava/lang/String;

    .line 56
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager$1;-><init>(Lcom/payumoney/core/analytics/AnalyticsDataManager;Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 85
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 86
    return-void
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 5

    .line 386
    nop

    .line 390
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 391
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 392
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 393
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 395
    :cond_0
    iget-object p2, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d:Ljava/lang/String;

    invoke-virtual {p2, v3, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 396
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 397
    iget-object p2, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->h:Ljava/lang/String;

    invoke-static {p2, v3, v4}, Lcom/payumoney/core/utils/SharedPrefsUtils;->deleteSharedPrefKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    nop

    .line 404
    if-eqz v1, :cond_1

    .line 406
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 409
    goto :goto_1

    .line 407
    :catch_0
    move-exception p1

    .line 408
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 412
    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->g:Z

    .line 398
    return-object v2

    .line 404
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 399
    :catch_1
    move-exception p2

    .line 400
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 402
    nop

    .line 404
    if-eqz v1, :cond_2

    .line 406
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 409
    goto :goto_2

    .line 407
    :catch_2
    move-exception p2

    .line 408
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 412
    :cond_2
    :goto_2
    iput-boolean v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->g:Z

    .line 402
    return-object p1

    .line 404
    :goto_3
    if-eqz v1, :cond_3

    .line 406
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 409
    goto :goto_4

    .line 407
    :catch_3
    move-exception p2

    .line 408
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 412
    :cond_3
    :goto_4
    iput-boolean v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->g:Z

    .line 413
    throw p1
.end method

.method private declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 92
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/payumoney/core/analytics/AnalyticsDataManager;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/payumoney/core/analytics/AnalyticsDataManager$3;

    invoke-direct {v1, p0, p1}, Lcom/payumoney/core/analytics/AnalyticsDataManager$3;-><init>(Lcom/payumoney/core/analytics/AnalyticsDataManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 242
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 243
    return-void
.end method

.method static synthetic a(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->e:Z

    return p0
.end method

.method private b()V
    .locals 1

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->e:Z

    .line 101
    return-void
.end method

.method static synthetic b(Lcom/payumoney/core/analytics/AnalyticsDataManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->a()V

    return-void
.end method

.method static synthetic c(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->f:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 253
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->f:Ljava/util/Timer;

    .line 254
    new-instance v1, Lcom/payumoney/core/analytics/AnalyticsDataManager$4;

    invoke-direct {v1, p0}, Lcom/payumoney/core/analytics/AnalyticsDataManager$4;-><init>(Lcom/payumoney/core/analytics/AnalyticsDataManager;)V

    iget-wide v2, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->b:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 260
    return-void
.end method

.method static synthetic d(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c:Landroid/content/Context;

    return-object p0
.end method

.method private d()V
    .locals 8

    .line 267
    const-string v0, "https://in.api.clevertap.com/1/upload"

    const-string v1, "d"

    const-string v2, ""

    :goto_0
    iget-boolean v3, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->e:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->a()V

    .line 270
    iget-object v3, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/payumoney/core/utils/SdkHelper;->checkNetwork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c:Landroid/content/Context;

    if-eqz v3, :cond_9

    .line 271
    nop

    .line 273
    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v5, v6}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->readFileInputStream(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 283
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 287
    :goto_1
    iget-object v3, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->h:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lcom/payumoney/core/utils/SharedPrefsUtils;->getStringSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_2

    .line 289
    iput-boolean v4, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->g:Z

    .line 290
    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->h:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/payumoney/core/utils/SharedPrefsUtils;->getStringSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, v2, v3}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    .line 295
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 296
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    :try_start_2
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 301
    goto :goto_2

    .line 299
    :catch_0
    move-exception v1

    .line 300
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 303
    :goto_2
    new-instance v1, Lcom/payumoney/core/analytics/CleverTapAnalytics;

    invoke-direct {v1}, Lcom/payumoney/core/analytics/CleverTapAnalytics;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Lcom/payumoney/core/analytics/CleverTapAnalytics;->sendEvent(Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;)V

    .line 304
    goto :goto_3

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->f:Ljava/util/Timer;

    if-eqz v0, :cond_4

    .line 306
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 308
    :cond_4
    invoke-direct {p0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 313
    :goto_3
    goto/16 :goto_8

    .line 310
    :catch_1
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    invoke-direct {p0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->e()V

    .line 314
    goto :goto_8

    .line 277
    :catchall_0
    move-exception v3

    .line 280
    :try_start_4
    invoke-virtual {v2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 281
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 283
    :cond_5
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 287
    :goto_4
    iget-object v2, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->h:Ljava/lang/String;

    invoke-static {v2, v6, v7}, Lcom/payumoney/core/utils/SharedPrefsUtils;->getStringSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_6

    .line 289
    iput-boolean v4, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->g:Z

    .line 290
    new-instance v2, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->h:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lcom/payumoney/core/utils/SharedPrefsUtils;->getStringSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, v5, v2}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v5

    .line 295
    :cond_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_8

    .line 305
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->f:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 306
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 308
    :cond_7
    invoke-direct {p0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->b()V

    goto :goto_6

    .line 296
    :cond_8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 298
    :try_start_5
    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 301
    goto :goto_5

    .line 299
    :catch_2
    move-exception v1

    .line 300
    :try_start_6
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 303
    :goto_5
    new-instance v1, Lcom/payumoney/core/analytics/CleverTapAnalytics;

    invoke-direct {v1}, Lcom/payumoney/core/analytics/CleverTapAnalytics;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Lcom/payumoney/core/analytics/CleverTapAnalytics;->sendEvent(Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 304
    nop

    .line 313
    :goto_6
    goto :goto_7

    .line 310
    :catch_3
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    invoke-direct {p0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->e()V

    .line 314
    :goto_7
    throw v3

    .line 316
    :cond_9
    :goto_8
    return-void
.end method

.method static synthetic e(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->h:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 338
    invoke-direct {p0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->b()V

    .line 341
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/payumoney/core/utils/SharedPrefsUtils;->getStringSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c()V

    .line 344
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/payumoney/core/analytics/AnalyticsDataManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->b()V

    return-void
.end method

.method static synthetic g(Lcom/payumoney/core/analytics/AnalyticsDataManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/payumoney/core/analytics/AnalyticsDataManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->a:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    if-nez v0, :cond_1

    .line 112
    const-class v0, Lcom/payumoney/core/analytics/AnalyticsDataManager;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-object v1, Lcom/payumoney/core/analytics/AnalyticsDataManager;->a:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-direct {v1, p0, p1}, Lcom/payumoney/core/analytics/AnalyticsDataManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/payumoney/core/analytics/AnalyticsDataManager;->a:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    .line 116
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 118
    :cond_1
    :goto_0
    sget-object v0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->a:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    return-object v0
.end method

.method static synthetic h(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->g:Z

    return p0
.end method

.method static synthetic i(Lcom/payumoney/core/analytics/AnalyticsDataManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d()V

    return-void
.end method


# virtual methods
.method public OnClevertapEventsLoggedFailed()V
    .locals 0

    .line 426
    return-void
.end method

.method public OnClevertapEventsLoggedSuccessful()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 420
    invoke-direct {p0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->e()V

    .line 421
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 168
    iget-boolean v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->e:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0, p1}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;

    invoke-direct {v0, p0, p1}, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;-><init>(Lcom/payumoney/core/analytics/AnalyticsDataManager;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 207
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 209
    :goto_0
    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    nop

    .line 125
    if-eqz p2, :cond_0

    .line 126
    move-object v0, p2

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    :goto_0
    const-string v1, "SDKInit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    sget-object v1, Lcom/payumoney/core/SdkSession;->paymentId:Ljava/lang/String;

    const-string v2, "PaymentId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_1
    const-string v1, "LoginSucceeded"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 137
    const-string v1, "LoginFailed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySDK;->isUserLoggedIn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isUserLoggedIn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/payumoney/core/utils/SdkHelper;->addDeviceAnalyticsAttributes(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 142
    const-string v1, "Platform"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "merchantId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "MID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 148
    const-string v2, "type"

    const-string v3, "event"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "ts"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v2, "evtName"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "email"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 152
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    .line 153
    :cond_3
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    :goto_1
    const-string v3, "identity"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v2, "evtData"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {v1}, Lcom/payumoney/core/utils/JsonUtils;->mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->log(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public pushAllPendingEvents()V
    .locals 2

    .line 322
    new-instance v0, Lcom/payumoney/core/analytics/AnalyticsDataManager$5;

    invoke-direct {v0, p0}, Lcom/payumoney/core/analytics/AnalyticsDataManager$5;-><init>(Lcom/payumoney/core/analytics/AnalyticsDataManager;)V

    .line 329
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 330
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 331
    return-void
.end method

.method public readFileInputStream(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "contextMode"    # I

    .line 356
    const-string v0, ""

    .line 358
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 362
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 363
    :goto_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 371
    :catch_0
    move-exception v1

    .line 372
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 369
    :catch_1
    move-exception v1

    .line 370
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 367
    :catch_2
    move-exception v1

    .line 368
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 373
    :goto_1
    nop

    .line 374
    :goto_2
    return-object v0
.end method
