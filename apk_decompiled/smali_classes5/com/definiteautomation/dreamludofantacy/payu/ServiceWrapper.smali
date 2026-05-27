.class public Lcom/definiteautomation/dreamludofantacy/payu/ServiceWrapper;
.super Ljava/lang/Object;
.source "ServiceWrapper.java"


# instance fields
.field private final mServiceInterface:Lcom/definiteautomation/dreamludofantacy/payu/ServiceInterface;


# direct methods
.method public constructor <init>(Lokhttp3/Interceptor;)V
    .locals 2
    .param p1, "mInterceptorheader"    # Lokhttp3/Interceptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mInterceptorheader"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/definiteautomation/dreamludofantacy/payu/ServiceWrapper;->getRetrofit(Lokhttp3/Interceptor;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/definiteautomation/dreamludofantacy/payu/ServiceInterface;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/payu/ServiceInterface;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/payu/ServiceWrapper;->mServiceInterface:Lcom/definiteautomation/dreamludofantacy/payu/ServiceInterface;

    .line 25
    return-void
.end method


# virtual methods
.method public convertPlainString(Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 57
    const-string v0, "text/plain"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public getRetrofit(Lokhttp3/Interceptor;)Lretrofit2/Retrofit;
    .locals 6
    .param p1, "mInterceptorheader"    # Lokhttp3/Interceptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mInterceptorheader"
        }
    .end annotation

    .line 28
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 29
    .local v0, "loggingInterceptor":Lokhttp3/logging/HttpLoggingInterceptor;
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 31
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 32
    .local v1, "builder":Lokhttp3/OkHttpClient$Builder;
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4b1

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 33
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x385

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 35
    sget-boolean v2, Lcom/definiteautomation/dreamludofantacy/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 36
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 37
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 40
    :cond_0
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 41
    .local v2, "mOkHttpClient":Lokhttp3/OkHttpClient;
    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 42
    .local v3, "gson":Lcom/google/gson/Gson;
    new-instance v4, Lretrofit2/Retrofit$Builder;

    invoke-direct {v4}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 43
    const-string v5, "https://dreamludo.definiteautomation.com/"

    invoke-virtual {v4, v5}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v4

    .line 44
    invoke-static {v3}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v5

    invoke-virtual {v4, v5}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v4

    .line 45
    invoke-virtual {v4, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v4

    .line 42
    return-object v4
.end method

.method public newHashCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "txtid"    # Ljava/lang/String;
    .param p3, "amount"    # Ljava/lang/String;
    .param p4, "productinfo"    # Ljava/lang/String;
    .param p5, "fullname"    # Ljava/lang/String;
    .param p6, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "txtid",
            "amount",
            "productinfo",
            "fullname",
            "email"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/payu/ServiceWrapper;->mServiceInterface:Lcom/definiteautomation/dreamludofantacy/payu/ServiceInterface;

    .line 51
    invoke-virtual {p0, p1}, Lcom/definiteautomation/dreamludofantacy/payu/ServiceWrapper;->convertPlainString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/definiteautomation/dreamludofantacy/payu/ServiceWrapper;->convertPlainString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/definiteautomation/dreamludofantacy/payu/ServiceWrapper;->convertPlainString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 52
    invoke-virtual {p0, p4}, Lcom/definiteautomation/dreamludofantacy/payu/ServiceWrapper;->convertPlainString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-virtual {p0, p5}, Lcom/definiteautomation/dreamludofantacy/payu/ServiceWrapper;->convertPlainString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v5

    invoke-virtual {p0, p6}, Lcom/definiteautomation/dreamludofantacy/payu/ServiceWrapper;->convertPlainString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 50
    invoke-interface/range {v0 .. v6}, Lcom/definiteautomation/dreamludofantacy/payu/ServiceInterface;->getHashCall(Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method
