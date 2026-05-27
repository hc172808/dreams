.class public Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule;
.super Ljava/lang/Object;
.source "PicassoModule.java"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method providesFiamController(Landroid/app/Application;Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;)Lcom/squareup/picasso/Picasso;
    .locals 4
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "picassoErrorListener"    # Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;
    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/Provides;
    .end annotation

    .line 36
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule$1;-><init>(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule;)V

    .line 38
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 48
    .local v0, "client":Lokhttp3/OkHttpClient;
    new-instance v1, Lcom/squareup/picasso/Picasso$Builder;

    invoke-direct {v1, p1}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    .local v1, "builder":Lcom/squareup/picasso/Picasso$Builder;
    invoke-virtual {v1, p2}, Lcom/squareup/picasso/Picasso$Builder;->listener(Lcom/squareup/picasso/Picasso$Listener;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object v2

    new-instance v3, Lcom/squareup/picasso/OkHttp3Downloader;

    invoke-direct {v3, v0}, Lcom/squareup/picasso/OkHttp3Downloader;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso$Builder;->downloader(Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/Picasso$Builder;

    .line 50
    invoke-virtual {v1}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    return-object v2
.end method
