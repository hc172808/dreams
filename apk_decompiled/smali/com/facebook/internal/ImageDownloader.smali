.class public final Lcom/facebook/internal/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/ImageDownloader$RequestKey;,
        Lcom/facebook/internal/ImageDownloader$DownloaderContext;,
        Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;,
        Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageDownloader.kt\ncom/facebook/internal/ImageDownloader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,333:1\n1#2:334\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0004-./0B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0008\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000fH\u0002J\u0012\u0010\u0019\u001a\u00020\u00162\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J \u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0012H\u0002J\u0018\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u000fH\u0002J(\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0014\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\"H\u0007J2\u0010#\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000f2\u000e\u0010$\u001a\n\u0018\u00010%j\u0004\u0018\u0001`&2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010)\u001a\u00020\u0012H\u0002J\u0010\u0010*\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0018\u0010+\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0012H\u0002J\u0012\u0010,\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0018\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/facebook/internal/ImageDownloader;",
        "",
        "()V",
        "CACHE_READ_QUEUE_MAX_CONCURRENT",
        "",
        "DOWNLOAD_QUEUE_MAX_CONCURRENT",
        "cacheReadQueue",
        "Lcom/facebook/internal/WorkQueue;",
        "downloadQueue",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "pendingRequests",
        "",
        "Lcom/facebook/internal/ImageDownloader$RequestKey;",
        "Lcom/facebook/internal/ImageDownloader$DownloaderContext;",
        "cancelRequest",
        "",
        "request",
        "Lcom/facebook/internal/ImageRequest;",
        "clearCache",
        "",
        "download",
        "key",
        "downloadAsync",
        "enqueueCacheRead",
        "allowCachedRedirects",
        "enqueueDownload",
        "enqueueRequest",
        "workQueue",
        "workItem",
        "Ljava/lang/Runnable;",
        "getPendingRequests",
        "",
        "issueResponse",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "isCachedRedirect",
        "prioritizeRequest",
        "readFromCache",
        "removePendingRequest",
        "CacheReadWorkItem",
        "DownloadImageWorkItem",
        "DownloaderContext",
        "RequestKey",
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
.field private static final CACHE_READ_QUEUE_MAX_CONCURRENT:I = 0x2

.field private static final DOWNLOAD_QUEUE_MAX_CONCURRENT:I = 0x8

.field public static final INSTANCE:Lcom/facebook/internal/ImageDownloader;

.field private static final cacheReadQueue:Lcom/facebook/internal/WorkQueue;

.field private static final downloadQueue:Lcom/facebook/internal/WorkQueue;

.field private static handler:Landroid/os/Handler;

.field private static final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/internal/ImageDownloader$RequestKey;",
            "Lcom/facebook/internal/ImageDownloader$DownloaderContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Lcom/facebook/internal/ImageDownloader;

    invoke-direct {v0}, Lcom/facebook/internal/ImageDownloader;-><init>()V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->INSTANCE:Lcom/facebook/internal/ImageDownloader;

    .line 56
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/facebook/internal/WorkQueue;-><init>(ILjava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->downloadQueue:Lcom/facebook/internal/WorkQueue;

    .line 57
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    invoke-direct {v0, v3, v2, v3, v2}, Lcom/facebook/internal/WorkQueue;-><init>(ILjava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/facebook/internal/WorkQueue;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$download(Lcom/facebook/internal/ImageDownloader;Lcom/facebook/internal/ImageDownloader$RequestKey;)V
    .locals 0
    .param p0, "$this"    # Lcom/facebook/internal/ImageDownloader;
    .param p1, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;

    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/internal/ImageDownloader;->download(Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    return-void
.end method

.method public static final synthetic access$readFromCache(Lcom/facebook/internal/ImageDownloader;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/facebook/internal/ImageDownloader;
    .param p1, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p2, "allowCachedRedirects"    # Z

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/ImageDownloader;->readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    return-void
.end method

.method public static final cancelRequest(Lcom/facebook/internal/ImageRequest;)Z
    .locals 7
    .param p0, "request"    # Lcom/facebook/internal/ImageRequest;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "cancelled":Z
    new-instance v1, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 95
    .local v1, "key":Lcom/facebook/internal/ImageDownloader$RequestKey;
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v2

    const/4 v3, 0x0

    .line 96
    .local v3, "$i$a$-synchronized-ImageDownloader$cancelRequest$1":I
    :try_start_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 97
    .local v4, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v4, :cond_1

    .line 102
    const/4 v0, 0x1

    .line 103
    invoke-virtual {v4}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->getWorkItem()Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object v5

    .line 104
    .local v5, "workItem":Lcom/facebook/internal/WorkQueue$WorkItem;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/facebook/internal/WorkQueue$WorkItem;->cancel()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->setCancelled(Z)V

    .line 110
    .end local v4    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    .end local v5    # "workItem":Lcom/facebook/internal/WorkQueue$WorkItem;
    :cond_1
    :goto_0
    nop

    .line 112
    nop

    .end local v3    # "$i$a$-synchronized-ImageDownloader$cancelRequest$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v2

    .line 113
    return v0

    .line 95
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static final clearCache()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 129
    invoke-static {}, Lcom/facebook/internal/ImageResponseCache;->clearCache()V

    .line 130
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->clearCache()V

    .line 131
    return-void
.end method

.method private final download(Lcom/facebook/internal/ImageDownloader$RequestKey;)V
    .locals 14
    .param p1, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;

    .line 224
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 225
    .local v1, "connection":Ljava/net/HttpURLConnection;
    move-object v2, v0

    check-cast v2, Ljava/io/InputStream;

    .line 226
    .local v2, "stream":Ljava/io/InputStream;
    move-object v3, v0

    check-cast v3, Ljava/lang/Exception;

    .line 227
    .local v3, "error":Ljava/lang/Exception;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 228
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    .line 229
    .local v4, "issueResponse":Z
    nop

    .line 230
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$RequestKey;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 231
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    if-eqz v7, :cond_3

    check-cast v7, Ljava/net/HttpURLConnection;

    move-object v1, v7

    .line 232
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 233
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 256
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    goto :goto_0

    .line 236
    :sswitch_0
    const/4 v4, 0x0

    .line 237
    const-string v7, "location"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, "redirectLocation":Ljava/lang/String;
    invoke-static {v7}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 239
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 240
    .local v8, "redirectUri":Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$RequestKey;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/facebook/internal/UrlRedirectCache;->cacheUriRedirect(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v9

    .line 245
    .local v9, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 246
    invoke-virtual {v9}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->getRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object v10

    new-instance v11, Lcom/facebook/internal/ImageDownloader$RequestKey;

    const-string v12, "redirectUri"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$RequestKey;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v11, v8, v12}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    invoke-direct {p0, v10, v11, v5}, Lcom/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    .end local v7    # "redirectLocation":Ljava/lang/String;
    .end local v8    # "redirectUri":Landroid/net/Uri;
    .end local v9    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    goto :goto_3

    .line 252
    :sswitch_1
    invoke-static {v1}, Lcom/facebook/internal/ImageResponseCache;->interceptAndCacheImageStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v7

    move-object v2, v7

    .line 253
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v0, v7

    goto :goto_3

    .line 256
    :goto_0
    move-object v2, v7

    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v7, "errorMessageBuilder":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_1

    .line 259
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 260
    .local v8, "reader":Ljava/io/InputStreamReader;
    const/16 v9, 0x80

    new-array v9, v9, [C

    .line 261
    .local v9, "buffer":[C
    const/4 v10, 0x0

    .line 262
    .local v10, "bufferLength":I
    :goto_1
    array-length v11, v9

    invoke-virtual {v8, v9, v5, v11}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v11

    move v12, v11

    .line 334
    .local v12, "it":I
    const/4 v13, 0x0

    .line 262
    .local v13, "$i$a$-also-ImageDownloader$download$1":I
    move v10, v12

    .end local v12    # "it":I
    .end local v13    # "$i$a$-also-ImageDownloader$download$1":I
    if-lez v11, :cond_0

    .line 263
    invoke-virtual {v7, v9, v5, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 262
    goto :goto_1

    .line 265
    :cond_0
    move-object v11, v8

    check-cast v11, Ljava/io/Closeable;

    invoke-static {v11}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .end local v8    # "reader":Ljava/io/InputStreamReader;
    .end local v9    # "buffer":[C
    .end local v10    # "bufferLength":I
    goto :goto_2

    .line 267
    :cond_1
    const-string v8, "Unexpected error while downloading an image."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "errorMessageBuilder.appe\u2026e downloading an image.\")"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    :goto_2
    nop

    .line 269
    new-instance v8, Lcom/facebook/FacebookException;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Exception;

    move-object v3, v8

    .line 271
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "errorMessageBuilder":Ljava/lang/StringBuilder;
    :cond_2
    :goto_3
    goto :goto_4

    .line 231
    .restart local v6    # "url":Ljava/net/URL;
    :cond_3
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "stream":Ljava/io/InputStream;
    .end local v3    # "error":Ljava/lang/Exception;
    .end local v4    # "issueResponse":Z
    .end local p1    # "key":Lcom/facebook/internal/ImageDownloader$RequestKey;
    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    .end local v6    # "url":Ljava/net/URL;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "stream":Ljava/io/InputStream;
    .restart local v3    # "error":Ljava/lang/Exception;
    .restart local v4    # "issueResponse":Z
    .restart local p1    # "key":Lcom/facebook/internal/ImageDownloader$RequestKey;
    :catchall_0
    move-exception v5

    goto :goto_5

    .line 272
    :catch_0
    move-exception v6

    .line 273
    .local v6, "e":Ljava/io/IOException;
    :try_start_1
    move-object v7, v6

    check-cast v7, Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v7

    .line 275
    .end local v6    # "e":Ljava/io/IOException;
    :goto_4
    move-object v6, v2

    check-cast v6, Ljava/io/Closeable;

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 276
    move-object v6, v1

    check-cast v6, Ljava/net/URLConnection;

    invoke-static {v6}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 277
    nop

    .line 278
    if-eqz v4, :cond_4

    .line 279
    invoke-direct {p0, p1, v3, v0, v5}, Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 281
    :cond_4
    return-void

    .line 275
    :goto_5
    move-object v6, v2

    check-cast v6, Ljava/io/Closeable;

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 276
    move-object v6, v1

    check-cast v6, Ljava/net/URLConnection;

    invoke-static {v6}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    throw v5

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
    .end sparse-switch
.end method

.method public static final downloadAsync(Lcom/facebook/internal/ImageRequest;)V
    .locals 6
    .param p0, "request"    # Lcom/facebook/internal/ImageRequest;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 68
    if-nez p0, :cond_0

    .line 69
    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 79
    .local v0, "key":Lcom/facebook/internal/ImageDownloader$RequestKey;
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    .line 80
    .local v2, "$i$a$-synchronized-ImageDownloader$downloadAsync$1":I
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 81
    .local v3, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v3, :cond_1

    .line 82
    invoke-virtual {v3, p0}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->setRequest(Lcom/facebook/internal/ImageRequest;)V

    .line 83
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->setCancelled(Z)V

    .line 84
    invoke-virtual {v3}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->getWorkItem()Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 86
    :cond_1
    sget-object v4, Lcom/facebook/internal/ImageDownloader;->INSTANCE:Lcom/facebook/internal/ImageDownloader;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->isCachedRedirectAllowed()Z

    move-result v5

    invoke-direct {v4, p0, v0, v5}, Lcom/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v3    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    nop

    .line 79
    .end local v2    # "$i$a$-synchronized-ImageDownloader$downloadAsync$1":I
    :cond_2
    :goto_0
    monitor-exit v1

    .line 89
    return-void

    .line 79
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private final enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .locals 2
    .param p1, "request"    # Lcom/facebook/internal/ImageRequest;
    .param p2, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p3, "allowCachedRedirects"    # Z

    .line 143
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v1, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;

    invoke-direct {v1, p2, p3}, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;-><init>(Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method private final enqueueDownload(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V
    .locals 2
    .param p1, "request"    # Lcom/facebook/internal/ImageRequest;
    .param p2, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;

    .line 147
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->downloadQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v1, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;

    invoke-direct {v1, p2}, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;-><init>(Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method private final enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "request"    # Lcom/facebook/internal/ImageRequest;
    .param p2, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p3, "workQueue"    # Lcom/facebook/internal/WorkQueue;
    .param p4, "workItem"    # Ljava/lang/Runnable;

    .line 156
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v0

    const/4 v1, 0x0

    .line 157
    .local v1, "$i$a$-synchronized-ImageDownloader$enqueueRequest$1":I
    :try_start_0
    new-instance v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    invoke-direct {v2, p1}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;-><init>(Lcom/facebook/internal/ImageRequest;)V

    .line 158
    .local v2, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p3, p4, v3, v4, v5}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem$default(Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;ZILjava/lang/Object;)Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->setWorkItem(Lcom/facebook/internal/WorkQueue$WorkItem;)V

    .line 169
    .end local v2    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    nop

    .end local v1    # "$i$a$-synchronized-ImageDownloader$enqueueRequest$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit v0

    .line 170
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final declared-synchronized getHandler()Landroid/os/Handler;
    .locals 2

    monitor-enter p0

    .line 51
    :try_start_0
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    .line 54
    .end local p0    # "this":Lcom/facebook/internal/ImageDownloader;
    :cond_0
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .locals 11
    .param p1, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p2, "error"    # Ljava/lang/Exception;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "isCachedRedirect"    # Z

    .line 180
    invoke-direct {p0, p1}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v0

    .line 181
    .local v0, "completedRequestContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    invoke-virtual {v0}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->getRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object v1

    .line 183
    .local v1, "request":Lcom/facebook/internal/ImageRequest;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/internal/ImageRequest;->getCallback()Lcom/facebook/internal/ImageRequest$Callback;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v8, v2

    .line 184
    .local v8, "callback":Lcom/facebook/internal/ImageRequest$Callback;
    if-eqz v8, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/facebook/internal/ImageDownloader;->getHandler()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 186
    new-instance v10, Lcom/facebook/internal/ImageDownloader$issueResponse$1;

    move-object v2, v10

    move-object v3, v1

    move-object v4, p2

    move v5, p4

    move-object v6, p3

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/facebook/internal/ImageDownloader$issueResponse$1;-><init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V

    check-cast v10, Ljava/lang/Runnable;

    .line 185
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    .end local v1    # "request":Lcom/facebook/internal/ImageRequest;
    .end local v8    # "callback":Lcom/facebook/internal/ImageRequest$Callback;
    :cond_1
    return-void
.end method

.method public static final prioritizeRequest(Lcom/facebook/internal/ImageRequest;)V
    .locals 5
    .param p0, "request"    # Lcom/facebook/internal/ImageRequest;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 119
    .local v0, "key":Lcom/facebook/internal/ImageDownloader$RequestKey;
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    .line 120
    .local v2, "$i$a$-synchronized-ImageDownloader$prioritizeRequest$1":I
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 121
    .local v3, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v3, :cond_0

    .line 122
    invoke-virtual {v3}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->getWorkItem()Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    .line 124
    .end local v3    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :cond_0
    nop

    .end local v2    # "$i$a$-synchronized-ImageDownloader$prioritizeRequest$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit v1

    .line 125
    return-void

    .line 119
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private final readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .locals 5
    .param p1, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p2, "allowCachedRedirects"    # Z

    .line 195
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    .line 196
    .local v1, "cachedStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 197
    .local v2, "isCachedRedirect":Z
    if-eqz p2, :cond_1

    .line 198
    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$RequestKey;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/UrlRedirectCache;->getRedirectedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 199
    .local v3, "redirectUri":Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 200
    invoke-static {v3}, Lcom/facebook/internal/ImageResponseCache;->getCachedImageStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 204
    .end local v3    # "redirectUri":Landroid/net/Uri;
    :cond_1
    if-nez v2, :cond_2

    .line 205
    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$RequestKey;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/ImageResponseCache;->getCachedImageStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 207
    :cond_2
    if-eqz v1, :cond_3

    .line 209
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 210
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    move-object v4, v1

    check-cast v4, Ljava/io/Closeable;

    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 211
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 215
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v3

    .line 216
    .local v3, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->getRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object v0

    .line 217
    .local v0, "request":Lcom/facebook/internal/ImageRequest;
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    .line 218
    invoke-direct {p0, v0, p1}, Lcom/facebook/internal/ImageDownloader;->enqueueDownload(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    .line 220
    .end local v0    # "request":Lcom/facebook/internal/ImageRequest;
    .end local v3    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :cond_5
    :goto_1
    nop

    .line 221
    return-void
.end method

.method private final removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    .locals 3
    .param p1, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;

    .line 284
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v0

    const/4 v1, 0x0

    .line 285
    .local v1, "$i$a$-synchronized-ImageDownloader$removePendingRequest$1":I
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "$i$a$-synchronized-ImageDownloader$removePendingRequest$1":I
    monitor-exit v0

    return-object v2

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final getPendingRequests()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/facebook/internal/ImageDownloader$RequestKey;",
            "Lcom/facebook/internal/ImageDownloader$DownloaderContext;",
            ">;"
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    return-object v0
.end method
