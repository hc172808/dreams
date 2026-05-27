.class public Lcom/payu/payuanalytics/analytics/PayUAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ANALYTICS_URL:Ljava/lang/String; = null

.field public static final HTTP_TIMEOUT:I = 0x7530

.field private static b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;


# instance fields
.field private a:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private volatile d:Z

.field private e:Ljava/util/Timer;

.field private f:Lcom/payu/payuanalytics/analytics/a;

.field private volatile g:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d:Z

    .line 75
    nop

    .line 1114
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1115
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1116
    sget v2, Lcom/payu/payuanalytics/R$string;->payu_debug_mode_enabled:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1117
    if-eqz v0, :cond_0

    .line 1118
    const-string v0, "https://mobiletest.payu.in/merchant/MobileAnalytics"

    sput-object v0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->ANALYTICS_URL:Ljava/lang/String;

    goto :goto_0

    .line 1120
    :cond_0
    const-string v0, "https://info.payu.in/merchant/MobileAnalytics"

    sput-object v0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->ANALYTICS_URL:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    goto :goto_0

    .line 1124
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 76
    :goto_0
    iput-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->c:Landroid/content/Context;

    .line 77
    nop

    .end local p2    # "filename":Ljava/lang/String;
    iput-object p2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->a:Ljava/lang/String;

    .line 78
    new-instance p2, Lcom/payu/payuanalytics/analytics/a;

    invoke-direct {p2}, Lcom/payu/payuanalytics/analytics/a;-><init>()V

    iput-object p2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->f:Lcom/payu/payuanalytics/analytics/a;

    .line 79
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p2

    .line 80
    new-instance v0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;

    .end local p0    # "this":Lcom/payu/payuanalytics/analytics/PayUAnalytics;
    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {v0, p0, p1, p2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;-><init>(Lcom/payu/payuanalytics/analytics/PayUAnalytics;Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 108
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/payu/payuanalytics/analytics/PayUAnalytics;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 5

    .line 352
    nop

    .line 356
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 357
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 358
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 359
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 357
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    :cond_0
    iget-object p2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->a:Ljava/lang/String;

    invoke-virtual {p2, v3, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 362
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 363
    iget-object p2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->c:Landroid/content/Context;

    const-string v3, "analytics_buffer_key"

    invoke-static {p2, v3}, Lcom/payu/payuanalytics/analytics/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    nop

    .line 370
    if-eqz v1, :cond_1

    .line 372
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 375
    goto :goto_1

    .line 374
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 378
    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->g:Z

    .line 364
    return-object v2

    .line 370
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 366
    :catch_1
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    nop

    .line 370
    if-eqz v1, :cond_2

    .line 372
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 375
    goto :goto_2

    .line 374
    :catch_2
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 378
    :cond_2
    :goto_2
    iput-boolean v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->g:Z

    .line 368
    return-object p1

    .line 370
    :goto_3
    if-eqz v1, :cond_3

    .line 372
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 375
    goto :goto_4

    .line 374
    :catch_3
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 378
    :cond_3
    :goto_4
    iput-boolean v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->g:Z

    .line 379
    throw p1
.end method

.method private a()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 231
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e:Ljava/util/Timer;

    .line 232
    new-instance v1, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;

    invoke-direct {v1, p0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;-><init>(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 305
    return-void
.end method

.method static synthetic a(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d:Z

    return p0
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 311
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d:Z

    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->b()V

    return-void
.end method

.method static synthetic c(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->a:Ljava/lang/String;

    return-object p0
.end method

.method private c()Z
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->c:Landroid/content/Context;

    .line 330
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 331
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Lcom/payu/payuanalytics/analytics/a;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->f:Lcom/payu/payuanalytics/analytics/a;

    return-object p0
.end method

.method static synthetic f(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)V
    .locals 1

    .line 51
    nop

    .line 1319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d:Z

    .line 51
    return-void
.end method

.method static synthetic g(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->g:Z

    return p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    if-nez v0, :cond_1

    .line 137
    const-class v0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    monitor-enter v0

    .line 138
    :try_start_0
    sget-object v1, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "fileName":Ljava/lang/String;
    invoke-direct {v1, p0, p1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    .line 142
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 144
    :cond_1
    :goto_0
    sget-object p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    return-object p0
.end method

.method static synthetic h(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Z
    .locals 1

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->g:Z

    return v0
.end method

.method static synthetic j(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->a()V

    return-void
.end method


# virtual methods
.method public getmTimer()Ljava/util/Timer;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e:Ljava/util/Timer;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->a()V

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d:Z

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/payu/payuanalytics/analytics/PayUAnalytics$2;

    invoke-direct {v1, p0, p1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics$2;-><init>(Lcom/payu/payuanalytics/analytics/PayUAnalytics;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 184
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 187
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/payu/payuanalytics/analytics/PayUAnalytics$3;

    .end local p0    # "this":Lcom/payu/payuanalytics/analytics/PayUAnalytics;
    .end local p1    # "msg":Ljava/lang/String;
    invoke-direct {v1, p0, p1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics$3;-><init>(Lcom/payu/payuanalytics/analytics/PayUAnalytics;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 219
    return-void
.end method
