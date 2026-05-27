.class public Lcom/definiteautomation/dreamludofantacy/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field public static gson:Lcom/google/gson/Gson;

.field public static mInstance:Lcom/definiteautomation/dreamludofantacy/MyApplication;

.field private static retrofit:Lretrofit2/Retrofit;


# instance fields
.field public prefName:Ljava/lang/String;

.field public preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 25
    const-string v0, "Ludo"

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/MyApplication;->prefName:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/definiteautomation/dreamludofantacy/MyApplication;
    .locals 2

    const-class v0, Lcom/definiteautomation/dreamludofantacy/MyApplication;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/definiteautomation/dreamludofantacy/MyApplication;->mInstance:Lcom/definiteautomation/dreamludofantacy/MyApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getRetrofit()Lretrofit2/Retrofit;
    .locals 1

    .line 77
    sget-object v0, Lcom/definiteautomation/dreamludofantacy/MyApplication;->retrofit:Lretrofit2/Retrofit;

    return-object v0
.end method

.method private initGson()V
    .locals 1

    .line 70
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 71
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/MyApplication;->gson:Lcom/google/gson/Gson;

    .line 73
    return-void
.end method

.method private initRetrofit()V
    .locals 4

    .line 57
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 58
    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 59
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 62
    .local v0, "okHttpClient":Lokhttp3/OkHttpClient;
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 63
    const-string v2, "https://dreamludo.definiteautomation.com/"

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 65
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    sput-object v1, Lcom/definiteautomation/dreamludofantacy/MyApplication;->retrofit:Lretrofit2/Retrofit;

    .line 67
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 36
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 37
    sput-object p0, Lcom/definiteautomation/dreamludofantacy/MyApplication;->mInstance:Lcom/definiteautomation/dreamludofantacy/MyApplication;

    .line 38
    return-void
.end method

.method public getNotification()Z
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/MyApplication;->prefName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/MyApplication;->preferences:Landroid/content/SharedPreferences;

    .line 53
    const-string v1, "IsNotification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 0

    .line 29
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 30
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->initRetrofit()V

    .line 31
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->initGson()V

    .line 32
    return-void
.end method

.method public saveIsNotification(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/MyApplication;->prefName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/MyApplication;->preferences:Landroid/content/SharedPreferences;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 47
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IsNotification"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    return-void
.end method
