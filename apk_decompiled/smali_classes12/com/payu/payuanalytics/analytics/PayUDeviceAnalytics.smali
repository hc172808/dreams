.class public Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;
    }
.end annotation


# static fields
.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;


# instance fields
.field private a:J

.field private final b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Timer;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/payu/payuanalytics/analytics/a;

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    const-string v0, "payu_merchant_txnid"

    sput-object v0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->k:Ljava/lang/String;

    .line 168
    const-string v0, "payu_merchant_txnid_sharedpreference"

    sput-object v0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->a:J

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->c:Z

    .line 38
    const-string v1, "merchant_key"

    iput-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->f:Ljava/lang/String;

    .line 39
    const-string v1, "cb_local_cache_device"

    iput-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->g:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->b:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->g:Ljava/lang/String;

    .line 70
    nop

    .line 1048
    .end local p1    # "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1049
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1050
    sget v2, Lcom/payu/payuanalytics/R$string;->payu_debug_mode_enabled:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1051
    if-eqz p1, :cond_0

    .line 1052
    const-string p1, "https://mobiletest.payu.in/merchant/MobileAnalytics"

    iput-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->j:Ljava/lang/String;

    goto :goto_0

    .line 1054
    :cond_0
    const-string p1, "https://info.payu.in/merchant/MobileAnalytics"

    iput-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->j:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    goto :goto_0

    .line 1058
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 71
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d:Ljava/util/ArrayList;

    .line 72
    new-instance p1, Lcom/payu/payuanalytics/analytics/a;

    invoke-direct {p1}, Lcom/payu/payuanalytics/analytics/a;-><init>()V

    iput-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->h:Lcom/payu/payuanalytics/analytics/a;

    .line 73
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    .line 74
    new-instance v0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$1;

    .end local p0    # "this":Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;
    .end local p2    # "fileName":Ljava/lang/String;
    invoke-direct {v0, p0, p2, p1}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$1;-><init>(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 93
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 94
    return-void
.end method

.method static synthetic a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 32
    nop

    .line 2242
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_2

    .line 2246
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2247
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2248
    if-eq v1, p1, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2247
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2250
    :cond_1
    nop

    .line 32
    return-object v0

    .line 2243
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method private a()V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 184
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->e:Ljava/util/Timer;

    .line 185
    new-instance v1, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;

    invoke-direct {v1, p0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;-><init>(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)V

    iget-wide v2, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->a:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 230
    return-void
.end method

.method static synthetic a(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;Ljava/lang/String;)V
    .locals 2

    .line 3330
    :try_start_0
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    .line 3331
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 3332
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3336
    return-void

    .line 3335
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->c:Z

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 148
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    const-string p1, "txnid"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-virtual {p0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->getTxnIdFromSharedPreference()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->addTxnIdToSharedPreference(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    const/4 p1, 0x1

    return p1

    .line 156
    :cond_0
    goto :goto_0

    .line 155
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 157
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    .line 32
    nop

    .line 1352
    const-string v0, "com.payu"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1353
    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 32
    return p0
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 233
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->b()V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 2364
    const-string v0, "com.payu"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2365
    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2366
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    return-void
.end method

.method static synthetic c(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->b:Landroid/content/Context;

    return-object p0
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 237
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->c()V

    return-void
.end method

.method static synthetic f(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)J
    .locals 2

    .line 32
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->a:J

    return-wide v0
.end method

.method static synthetic g(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/Timer;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->e:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic i(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->a()V

    return-void
.end method

.method static synthetic j(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->i:Z

    return p0
.end method

.method static synthetic k(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Lcom/payu/payuanalytics/analytics/a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->h:Lcom/payu/payuanalytics/analytics/a;

    return-object p0
.end method


# virtual methods
.method public addTxnIdToSharedPreference(Ljava/lang/String;)V
    .locals 3
    .param p1, "spValue"    # Ljava/lang/String;

    .line 161
    nop

    .end local p0    # "this":Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->b:Landroid/content/Context;

    sget-object v1, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->l:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 162
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 163
    sget-object v1, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->k:Ljava/lang/String;

    .end local p1    # "spValue":Ljava/lang/String;
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    return-void
.end method

.method public getTxnIdFromSharedPreference()Ljava/lang/String;
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->b:Landroid/content/Context;

    sget-object v1, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->l:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->k:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmTimer()Ljava/util/Timer;
    .locals 1

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->i:Z

    .line 341
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->e:Ljava/util/Timer;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    iget-boolean v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->c:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->b()V

    .line 111
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    nop

    .line 115
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->g:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->g:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    move-object v4, v3

    .line 120
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v4, v5

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    goto :goto_1

    .line 126
    :cond_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 127
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 128
    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->g:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 129
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 130
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 131
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    goto :goto_2

    .line 136
    .end local p1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 133
    .restart local p1    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d:Ljava/util/ArrayList;

    .end local p1    # "msg":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    nop

    .line 138
    :goto_2
    invoke-direct {p0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->c()V

    .line 141
    :goto_3
    nop

    .end local p0    # "this":Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;
    invoke-direct {p0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->a()V

    .line 144
    :cond_4
    return-void
.end method
