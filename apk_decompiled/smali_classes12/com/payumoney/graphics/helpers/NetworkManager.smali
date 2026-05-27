.class public Lcom/payumoney/graphics/helpers/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# static fields
.field private static DISK_IMAGECACHE_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field private static DISK_IMAGECACHE_QUALITY:I

.field private static DISK_IMAGECACHE_SIZE:I

.field private static mCtx:Landroid/content/Context;

.field private static mInstance:Lcom/payumoney/graphics/helpers/NetworkManager;

.field static sdkType:Ljava/lang/String;


# instance fields
.field private defaultICONURL:Ljava/lang/String;

.field public isCoreSDKResourcesDownloaded:Z

.field public isFlashResourcesDownloaded:Z

.field public isPlugNPlayResourcesDownloaded:Z

.field private mBanks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCARDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashBanks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashCARDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImageCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/high16 v0, 0xa00000

    sput v0, Lcom/payumoney/graphics/helpers/NetworkManager;->DISK_IMAGECACHE_SIZE:I

    .line 30
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/payumoney/graphics/helpers/NetworkManager;->DISK_IMAGECACHE_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 31
    const/16 v0, 0x64

    sput v0, Lcom/payumoney/graphics/helpers/NetworkManager;->DISK_IMAGECACHE_QUALITY:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    .line 41
    iput-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    .line 44
    iput-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mFlashCARDs:Ljava/util/ArrayList;

    .line 46
    iput-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mFlashBanks:Ljava/util/ArrayList;

    .line 51
    iput-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->isCoreSDKResourcesDownloaded:Z

    .line 55
    iput-boolean v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->isFlashResourcesDownloaded:Z

    .line 57
    iput-boolean v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->isPlugNPlayResourcesDownloaded:Z

    .line 74
    sput-object p1, Lcom/payumoney/graphics/helpers/NetworkManager;->mCtx:Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Lcom/payumoney/graphics/helpers/NetworkManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 77
    new-instance v0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;

    sget-object v2, Lcom/payumoney/graphics/helpers/NetworkManager;->mCtx:Landroid/content/Context;

    .line 78
    invoke-virtual {v2}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/payumoney/graphics/helpers/NetworkManager;->DISK_IMAGECACHE_SIZE:I

    sget-object v5, Lcom/payumoney/graphics/helpers/NetworkManager;->DISK_IMAGECACHE_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    sget v6, Lcom/payumoney/graphics/helpers/NetworkManager;->DISK_IMAGECACHE_QUALITY:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/payumoney/graphics/helpers/DiskLruImageCache;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;I)V

    iput-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    .line 83
    invoke-static {}, Lcom/payumoney/graphics/tls/HurlStackFactory;->getHurlStack()Lcom/android/volley/toolbox/HurlStack;

    move-result-object v0

    .line 84
    .local v0, "hurlStack":Lcom/android/volley/toolbox/HurlStack;
    new-instance v1, Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {p1, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/BaseHttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v2

    iget-object v3, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-direct {v1, v2, v3}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    iput-object v1, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 86
    sget-object v1, Lcom/payumoney/graphics/helpers/NetworkManager;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/payumoney/graphics/helpers/Utils;->getScreenDensity(Landroid/content/Context;)Lcom/payumoney/graphics/enums/ScreenDensity;

    move-result-object v1

    iput-object v1, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 87
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 27
    sget-object v0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method private createKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 467
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBankURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;
    .locals 1
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "screenDensity"    # Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 489
    invoke-static {p0, p1}, Lcom/payumoney/graphics/helpers/Utils;->getBankURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBrandingURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;
    .locals 1
    .param p0, "branding"    # Ljava/lang/String;
    .param p1, "screenDensity"    # Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 513
    invoke-static {p0, p1}, Lcom/payumoney/graphics/helpers/Utils;->getBrandingURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCardURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;
    .locals 1
    .param p0, "card"    # Ljava/lang/String;
    .param p1, "screenDensity"    # Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 517
    invoke-static {p0, p1}, Lcom/payumoney/graphics/helpers/Utils;->getCardURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/payumoney/graphics/helpers/NetworkManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkType"    # Ljava/lang/String;
    .param p2, "environment"    # Ljava/lang/String;

    const-class v0, Lcom/payumoney/graphics/helpers/NetworkManager;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/payumoney/graphics/helpers/NetworkManager;->mInstance:Lcom/payumoney/graphics/helpers/NetworkManager;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lcom/payumoney/graphics/helpers/NetworkManager;

    invoke-direct {v1, p0}, Lcom/payumoney/graphics/helpers/NetworkManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/payumoney/graphics/helpers/NetworkManager;->mInstance:Lcom/payumoney/graphics/helpers/NetworkManager;

    .line 92
    sput-object p1, Lcom/payumoney/graphics/helpers/NetworkManager;->sdkType:Ljava/lang/String;

    .line 93
    invoke-static {p2}, Lcom/payumoney/graphics/helpers/Utils;->setEnvironment(Ljava/lang/String;)V

    .line 95
    :cond_0
    sget-object v1, Lcom/payumoney/graphics/helpers/NetworkManager;->mInstance:Lcom/payumoney/graphics/helpers/NetworkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 89
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sdkType":Ljava/lang/String;
    .end local p2    # "environment":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getLargeBankURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;
    .locals 1
    .param p0, "bank"    # Ljava/lang/String;
    .param p1, "screenDensity"    # Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 509
    invoke-static {p0, p1}, Lcom/payumoney/graphics/helpers/Utils;->getLargeBankURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLargeCardURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;
    .locals 1
    .param p0, "card"    # Ljava/lang/String;
    .param p1, "screenDensity"    # Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 505
    invoke-static {p0, p1}, Lcom/payumoney/graphics/helpers/Utils;->getLargeCardURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLargeWalletURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;
    .locals 1
    .param p0, "bank"    # Ljava/lang/String;
    .param p1, "screenDensity"    # Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 497
    invoke-static {p0, p1}, Lcom/payumoney/graphics/helpers/Utils;->getLargeWalletURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMasterPassURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;
    .locals 1
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "screenDensity"    # Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 501
    invoke-static {p0, p1}, Lcom/payumoney/graphics/helpers/Utils;->getMasterPassURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPGSettingIdentifier(Ljava/lang/String;)Lcom/payumoney/graphics/classes/PGSettingIdentifier;
    .locals 1
    .param p0, "configJSON"    # Ljava/lang/String;

    .line 485
    invoke-static {p0}, Lcom/payumoney/graphics/helpers/Utils;->getPGSettingIdentifier(Ljava/lang/String;)Lcom/payumoney/graphics/classes/PGSettingIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenDensity(Landroid/content/Context;)Lcom/payumoney/graphics/enums/ScreenDensity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 481
    invoke-static {p0}, Lcom/payumoney/graphics/helpers/Utils;->getScreenDensity(Landroid/content/Context;)Lcom/payumoney/graphics/enums/ScreenDensity;

    move-result-object v0

    return-object v0
.end method

.method public static getWalletURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;
    .locals 1
    .param p0, "bankCode"    # Ljava/lang/String;
    .param p1, "screenDensity"    # Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 493
    invoke-static {p0, p1}, Lcom/payumoney/graphics/helpers/Utils;->getWalletURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addToRequestQueue(Lcom/android/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 472
    .local p1, "req":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/payumoney/graphics/helpers/NetworkManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 473
    return-void
.end method

.method public clearCache()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    if-eqz v0, :cond_0

    .line 263
    check-cast v0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;

    invoke-virtual {v0}, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->clearCache()V

    .line 265
    :cond_0
    return-void
.end method

.method public downloadCoreSDKPriorityResources()V
    .locals 5

    .line 283
    iget-boolean v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->isCoreSDKResourcesDownloaded:Z

    if-nez v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    .line 286
    const-string v1, "VISA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    const-string v1, "MCRD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    const-string v1, "RPAY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    const-string v1, "MTRO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    const-string v1, "DINER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    const-string v1, "AMEX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    const-string v1, "DISCOVER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    const-string v1, "CIRRUS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    .line 298
    const-string v1, "CID005"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    const-string v1, "CID001"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    const-string v1, "CID010"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    const-string v1, "CID002"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    const-string v1, "CID033"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    const-string v1, "CID044"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 308
    .local v1, "card":Ljava/lang/String;
    iget-object v2, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v3, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {v1, v3}, Lcom/payumoney/graphics/helpers/Utils;->getCardURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/payumoney/graphics/helpers/NetworkManager$9;

    invoke-direct {v4, p0}, Lcom/payumoney/graphics/helpers/NetworkManager$9;-><init>(Lcom/payumoney/graphics/helpers/NetworkManager;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 317
    .end local v1    # "card":Ljava/lang/String;
    goto :goto_0

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 320
    .local v1, "bank":Ljava/lang/String;
    iget-object v2, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v3, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {v1, v3}, Lcom/payumoney/graphics/helpers/Utils;->getBankURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/payumoney/graphics/helpers/NetworkManager$10;

    invoke-direct {v4, p0}, Lcom/payumoney/graphics/helpers/NetworkManager$10;-><init>(Lcom/payumoney/graphics/helpers/NetworkManager;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 329
    .end local v1    # "bank":Ljava/lang/String;
    goto :goto_1

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    const-string v2, "trust-footer-v1"

    invoke-static {v2, v1}, Lcom/payumoney/graphics/helpers/Utils;->getBrandingURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/payumoney/graphics/helpers/NetworkManager$11;

    invoke-direct {v2, p0}, Lcom/payumoney/graphics/helpers/NetworkManager$11;-><init>(Lcom/payumoney/graphics/helpers/NetworkManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->isCoreSDKResourcesDownloaded:Z

    .line 344
    :cond_4
    return-void
.end method

.method public downloadPlugNPlayPriorityResources()V
    .locals 5

    .line 398
    iget-boolean v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->isPlugNPlayResourcesDownloaded:Z

    if-nez v0, :cond_4

    .line 399
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    .line 401
    const-string v1, "VISA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    const-string v1, "MCRD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    const-string v1, "RPAY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    const-string v1, "MTRO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    const-string v1, "DINER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    const-string v1, "AMEX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    const-string v1, "DISCOVER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    .line 412
    const-string v1, "CID005"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    const-string v1, "CID001"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    const-string v1, "CID010"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    const-string v1, "CID002"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    const-string v1, "CID033"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    const-string v1, "CID007"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    const-string v1, "CID009"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mCARDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 423
    .local v1, "card":Ljava/lang/String;
    iget-object v2, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v3, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {v1, v3}, Lcom/payumoney/graphics/helpers/Utils;->getCardURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/payumoney/graphics/helpers/NetworkManager$14;

    invoke-direct {v4, p0}, Lcom/payumoney/graphics/helpers/NetworkManager$14;-><init>(Lcom/payumoney/graphics/helpers/NetworkManager;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 432
    .end local v1    # "card":Ljava/lang/String;
    goto :goto_0

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mBanks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 435
    .local v1, "bank":Ljava/lang/String;
    iget-object v2, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v3, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {v1, v3}, Lcom/payumoney/graphics/helpers/Utils;->getBankURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/payumoney/graphics/helpers/NetworkManager$15;

    invoke-direct {v4, p0}, Lcom/payumoney/graphics/helpers/NetworkManager$15;-><init>(Lcom/payumoney/graphics/helpers/NetworkManager;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 446
    .end local v1    # "bank":Ljava/lang/String;
    goto :goto_1

    .line 447
    :cond_3
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    const-string v2, "trust-footer-v1"

    invoke-static {v2, v1}, Lcom/payumoney/graphics/helpers/Utils;->getBrandingURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/payumoney/graphics/helpers/NetworkManager$16;

    invoke-direct {v2, p0}, Lcom/payumoney/graphics/helpers/NetworkManager$16;-><init>(Lcom/payumoney/graphics/helpers/NetworkManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->isPlugNPlayResourcesDownloaded:Z

    .line 461
    :cond_4
    return-void
.end method

.method public downloadPriorityResources()V
    .locals 2

    .line 270
    sget-object v0, Lcom/payumoney/graphics/helpers/NetworkManager;->sdkType:Ljava/lang/String;

    const-string v1, "CORE_SDK"

    if-ne v0, v1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/payumoney/graphics/helpers/NetworkManager;->downloadCoreSDKPriorityResources()V

    goto :goto_0

    .line 272
    :cond_0
    const-string v1, "FLASH_SDK"

    if-ne v0, v1, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/payumoney/graphics/helpers/NetworkManager;->downloadflashPriorityResources()V

    goto :goto_0

    .line 275
    :cond_1
    const-string v1, "PLUG_N_PLAY"

    if-ne v0, v1, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/payumoney/graphics/helpers/NetworkManager;->downloadPlugNPlayPriorityResources()V

    .line 278
    :cond_2
    :goto_0
    return-void
.end method

.method public downloadflashPriorityResources()V
    .locals 5

    .line 348
    iget-boolean v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->isFlashResourcesDownloaded:Z

    if-nez v0, :cond_4

    .line 349
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mFlashCARDs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mFlashCARDs:Ljava/util/ArrayList;

    .line 351
    const-string v1, "VISA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mFlashCARDs:Ljava/util/ArrayList;

    const-string v1, "MCRD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mFlashBanks:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mFlashBanks:Ljava/util/ArrayList;

    .line 358
    const-string v1, "CID002"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mFlashBanks:Ljava/util/ArrayList;

    const-string v1, "CID005"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mFlashBanks:Ljava/util/ArrayList;

    const-string v1, "CID010"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mFlashBanks:Ljava/util/ArrayList;

    const-string v1, "CID001"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mFlashBanks:Ljava/util/ArrayList;

    const-string v1, "CID033"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mFlashBanks:Ljava/util/ArrayList;

    const-string v1, "CID003"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mFlashCARDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 369
    .local v1, "card":Ljava/lang/String;
    iget-object v2, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v3, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {v1, v3}, Lcom/payumoney/graphics/helpers/Utils;->getLargeCardURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/payumoney/graphics/helpers/NetworkManager$12;

    invoke-direct {v4, p0}, Lcom/payumoney/graphics/helpers/NetworkManager$12;-><init>(Lcom/payumoney/graphics/helpers/NetworkManager;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 378
    .end local v1    # "card":Ljava/lang/String;
    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mFlashBanks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 381
    .local v1, "bank":Ljava/lang/String;
    iget-object v2, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v3, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {v1, v3}, Lcom/payumoney/graphics/helpers/Utils;->getLargeBankURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/payumoney/graphics/helpers/NetworkManager$13;

    invoke-direct {v4, p0}, Lcom/payumoney/graphics/helpers/NetworkManager$13;-><init>(Lcom/payumoney/graphics/helpers/NetworkManager;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 390
    .end local v1    # "bank":Ljava/lang/String;
    goto :goto_1

    .line 391
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->isFlashResourcesDownloaded:Z

    .line 394
    :cond_4
    return-void
.end method

.method public getBankBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 2
    .param p1, "bankURL"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 112
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    new-instance v1, Lcom/payumoney/graphics/helpers/NetworkManager$1;

    invoke-direct {v1, p0, p2}, Lcom/payumoney/graphics/helpers/NetworkManager$1;-><init>(Lcom/payumoney/graphics/helpers/NetworkManager;Lcom/payumoney/graphics/BitmapCallBack;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 125
    return-void
.end method

.method public getBrandingBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 2
    .param p1, "brandingURL"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 216
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    new-instance v1, Lcom/payumoney/graphics/helpers/NetworkManager$7;

    invoke-direct {v1, p0, p2}, Lcom/payumoney/graphics/helpers/NetworkManager$7;-><init>(Lcom/payumoney/graphics/helpers/NetworkManager;Lcom/payumoney/graphics/BitmapCallBack;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 230
    return-void
.end method

.method public getCardBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 2
    .param p1, "cardURL"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 178
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    new-instance v1, Lcom/payumoney/graphics/helpers/NetworkManager$5;

    invoke-direct {v1, p0, p2}, Lcom/payumoney/graphics/helpers/NetworkManager$5;-><init>(Lcom/payumoney/graphics/helpers/NetworkManager;Lcom/payumoney/graphics/BitmapCallBack;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 192
    return-void
.end method

.method public getImageLoader()Lcom/android/volley/toolbox/ImageLoader;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    return-object v0
.end method

.method public getLargeBankBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 2
    .param p1, "bankURL"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 161
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    new-instance v1, Lcom/payumoney/graphics/helpers/NetworkManager$4;

    invoke-direct {v1, p0, p2}, Lcom/payumoney/graphics/helpers/NetworkManager$4;-><init>(Lcom/payumoney/graphics/helpers/NetworkManager;Lcom/payumoney/graphics/BitmapCallBack;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 174
    return-void
.end method

.method public getLargeCardBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 2
    .param p1, "cardURL"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 197
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    new-instance v1, Lcom/payumoney/graphics/helpers/NetworkManager$6;

    invoke-direct {v1, p0, p2}, Lcom/payumoney/graphics/helpers/NetworkManager$6;-><init>(Lcom/payumoney/graphics/helpers/NetworkManager;Lcom/payumoney/graphics/BitmapCallBack;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 211
    return-void
.end method

.method public getLargeWalletBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 2
    .param p1, "bankURL"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 145
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    new-instance v1, Lcom/payumoney/graphics/helpers/NetworkManager$3;

    invoke-direct {v1, p0, p2}, Lcom/payumoney/graphics/helpers/NetworkManager$3;-><init>(Lcom/payumoney/graphics/helpers/NetworkManager;Lcom/payumoney/graphics/BitmapCallBack;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 158
    return-void
.end method

.method public getMasterPassBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 2
    .param p1, "masterPassURL"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 235
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    new-instance v1, Lcom/payumoney/graphics/helpers/NetworkManager$8;

    invoke-direct {v1, p0, p2}, Lcom/payumoney/graphics/helpers/NetworkManager$8;-><init>(Lcom/payumoney/graphics/helpers/NetworkManager;Lcom/payumoney/graphics/BitmapCallBack;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 250
    return-void
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Lcom/payumoney/graphics/tls/HurlStackFactory;->getHurlStack()Lcom/android/volley/toolbox/HurlStack;

    move-result-object v0

    .line 104
    .local v0, "hurlStack":Lcom/android/volley/toolbox/HurlStack;
    sget-object v1, Lcom/payumoney/graphics/helpers/NetworkManager;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/BaseHttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 106
    .end local v0    # "hurlStack":Lcom/android/volley/toolbox/HurlStack;
    :cond_0
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public getWalletBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 2
    .param p1, "bankURL"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 129
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    new-instance v1, Lcom/payumoney/graphics/helpers/NetworkManager$2;

    invoke-direct {v1, p0, p2}, Lcom/payumoney/graphics/helpers/NetworkManager$2;-><init>(Lcom/payumoney/graphics/helpers/NetworkManager;Lcom/payumoney/graphics/BitmapCallBack;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 142
    return-void
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->mImageCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-direct {p0, p1}, Lcom/payumoney/graphics/helpers/NetworkManager;->createKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    nop

    .line 259
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Disk Cache Not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDefaultICONURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultICONURL"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/payumoney/graphics/helpers/NetworkManager;->defaultICONURL:Ljava/lang/String;

    .line 64
    return-void
.end method
