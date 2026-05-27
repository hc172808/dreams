.class public Lcom/definiteautomation/dreamludofantacy/remote/FCMRetrofitClient;
.super Ljava/lang/Object;
.source "FCMRetrofitClient.java"


# static fields
.field private static retrofit:Lretrofit2/Retrofit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/remote/FCMRetrofitClient;->retrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient(Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 2
    .param p0, "baseURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseURL"
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/definiteautomation/dreamludofantacy/remote/FCMRetrofitClient;->retrofit:Lretrofit2/Retrofit;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 14
    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 15
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/remote/FCMRetrofitClient;->retrofit:Lretrofit2/Retrofit;

    .line 18
    :cond_0
    sget-object v0, Lcom/definiteautomation/dreamludofantacy/remote/FCMRetrofitClient;->retrofit:Lretrofit2/Retrofit;

    return-object v0
.end method
