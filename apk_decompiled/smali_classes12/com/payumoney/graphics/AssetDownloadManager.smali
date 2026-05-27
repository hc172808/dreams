.class public Lcom/payumoney/graphics/AssetDownloadManager;
.super Ljava/lang/Object;
.source "AssetDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/graphics/AssetDownloadManager$Environment;
    }
.end annotation


# static fields
.field private static DEFAULT:Ljava/lang/String;

.field private static ourInstance:Lcom/payumoney/graphics/AssetDownloadManager;


# instance fields
.field REQUEST_TAG:Ljava/lang/String;

.field private configJSON:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field failedResourceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isSDKInitialized:Z

.field mBitmap:Landroid/graphics/Bitmap;

.field private mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

.field mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

.field private sdkErrorMessage:Ljava/lang/String;

.field sdkType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "CID000"

    sput-object v0, Lcom/payumoney/graphics/AssetDownloadManager;->DEFAULT:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/payumoney/graphics/AssetDownloadManager;

    invoke-direct {v0}, Lcom/payumoney/graphics/AssetDownloadManager;-><init>()V

    sput-object v0, Lcom/payumoney/graphics/AssetDownloadManager;->ourInstance:Lcom/payumoney/graphics/AssetDownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->context:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->configJSON:Ljava/lang/String;

    .line 31
    const-string v1, "AssetDownloadManager"

    iput-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->REQUEST_TAG:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 35
    iput-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mBitmap:Landroid/graphics/Bitmap;

    .line 42
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->isSDKInitialized:Z

    .line 44
    const-string v1, "SDK not initialized."

    iput-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->sdkErrorMessage:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    .line 64
    return-void
.end method

.method public static getInstance()Lcom/payumoney/graphics/AssetDownloadManager;
    .locals 1

    .line 60
    sget-object v0, Lcom/payumoney/graphics/AssetDownloadManager;->ourInstance:Lcom/payumoney/graphics/AssetDownloadManager;

    return-object v0
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .line 296
    iget-boolean v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->isSDKInitialized:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    invoke-virtual {v0}, Lcom/payumoney/graphics/helpers/NetworkManager;->clearCache()V

    .line 301
    return-void

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->sdkErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllResources(Ljava/lang/String;)V
    .locals 7
    .param p1, "configJSON"    # Ljava/lang/String;

    .line 107
    iget-boolean v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->isSDKInitialized:Z

    if-eqz v0, :cond_2

    .line 110
    iput-object p1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->configJSON:Ljava/lang/String;

    .line 111
    invoke-static {p1}, Lcom/payumoney/graphics/helpers/NetworkManager;->getPGSettingIdentifier(Ljava/lang/String;)Lcom/payumoney/graphics/classes/PGSettingIdentifier;

    move-result-object v0

    .line 113
    .local v0, "pgSettingIdentifier":Lcom/payumoney/graphics/classes/PGSettingIdentifier;
    invoke-virtual {v0}, Lcom/payumoney/graphics/classes/PGSettingIdentifier;->getNetBanking()Ljava/util/List;

    move-result-object v1

    .line 114
    .local v1, "netBankingList":Ljava/util/List;, "Ljava/util/List<Lcom/payumoney/graphics/classes/NetBanking;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/payumoney/graphics/classes/NetBanking;

    .line 115
    .local v3, "netBanking":Lcom/payumoney/graphics/classes/NetBanking;
    iget-object v4, p0, Lcom/payumoney/graphics/AssetDownloadManager;->failedResourceList:Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/payumoney/graphics/classes/NetBanking;->getIssuerCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    invoke-virtual {v3}, Lcom/payumoney/graphics/classes/NetBanking;->getIssuerCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {v4, v5}, Lcom/payumoney/graphics/helpers/NetworkManager;->getBankURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "finalURL":Ljava/lang/String;
    iget-object v5, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    invoke-virtual {v5}, Lcom/payumoney/graphics/helpers/NetworkManager;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v5

    new-instance v6, Lcom/payumoney/graphics/AssetDownloadManager$1;

    invoke-direct {v6, p0, v3}, Lcom/payumoney/graphics/AssetDownloadManager$1;-><init>(Lcom/payumoney/graphics/AssetDownloadManager;Lcom/payumoney/graphics/classes/NetBanking;)V

    invoke-virtual {v5, v4, v6}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 129
    .end local v3    # "netBanking":Lcom/payumoney/graphics/classes/NetBanking;
    .end local v4    # "finalURL":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 131
    .end local v0    # "pgSettingIdentifier":Lcom/payumoney/graphics/classes/PGSettingIdentifier;
    .end local v1    # "netBankingList":Ljava/util/List;, "Ljava/util/List<Lcom/payumoney/graphics/classes/NetBanking;>;"
    :cond_1
    return-void

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->sdkErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBankBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 3
    .param p1, "CID"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 134
    iget-boolean v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->isSDKInitialized:Z

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->failedResourceList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lcom/payumoney/graphics/AssetDownloadManager$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/payumoney/graphics/AssetDownloadManager$2;-><init>(Lcom/payumoney/graphics/AssetDownloadManager;Lcom/payumoney/graphics/BitmapCallBack;Ljava/lang/String;)V

    .line 151
    .local v0, "bitmapCallBack1":Lcom/payumoney/graphics/BitmapCallBack;
    sget-object v1, Lcom/payumoney/graphics/AssetDownloadManager;->DEFAULT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payumoney/graphics/R$drawable;->default_bank:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 153
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {p2, v1}, Lcom/payumoney/graphics/BitmapCallBack;->onBitmapReceived(Landroid/graphics/Bitmap;)V

    .line 155
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    iget-object v2, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {p1, v2}, Lcom/payumoney/graphics/helpers/NetworkManager;->getBankURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/payumoney/graphics/helpers/NetworkManager;->getBankBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 158
    .end local v0    # "bitmapCallBack1":Lcom/payumoney/graphics/BitmapCallBack;
    :goto_0
    goto :goto_1

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payumoney/graphics/R$drawable;->default_bank:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {p2, v0}, Lcom/payumoney/graphics/BitmapCallBack;->onBitmapFailed(Landroid/graphics/Bitmap;)V

    .line 163
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 135
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->sdkErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBankBitmapByBankCode(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 3
    .param p1, "bankCode"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 171
    iget-boolean v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->isSDKInitialized:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->failedResourceList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/payumoney/graphics/AssetDownloadManager$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/payumoney/graphics/AssetDownloadManager$3;-><init>(Lcom/payumoney/graphics/AssetDownloadManager;Lcom/payumoney/graphics/BitmapCallBack;Ljava/lang/String;)V

    .line 188
    .local v0, "bitmapCallBack1":Lcom/payumoney/graphics/BitmapCallBack;
    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    iget-object v2, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {p1, v2}, Lcom/payumoney/graphics/helpers/NetworkManager;->getBankURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/payumoney/graphics/helpers/NetworkManager;->getBankBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 189
    .end local v0    # "bitmapCallBack1":Lcom/payumoney/graphics/BitmapCallBack;
    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payumoney/graphics/R$drawable;->default_bank:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {p2, v0}, Lcom/payumoney/graphics/BitmapCallBack;->onBitmapFailed(Landroid/graphics/Bitmap;)V

    .line 194
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->sdkErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBrandingBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 2
    .param p1, "branding"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 250
    iget-boolean v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->isSDKInitialized:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {p1, v1}, Lcom/payumoney/graphics/helpers/NetworkManager;->getBrandingURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/payumoney/graphics/helpers/NetworkManager;->getBrandingBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 255
    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->sdkErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCardBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 2
    .param p1, "card"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 236
    iget-boolean v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->isSDKInitialized:Z

    if-eqz v0, :cond_1

    .line 239
    const-string v0, "DEFAULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payumoney/graphics/R$drawable;->default_card:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {p2, v0}, Lcom/payumoney/graphics/BitmapCallBack;->onBitmapReceived(Landroid/graphics/Bitmap;)V

    .line 243
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {p1, v1}, Lcom/payumoney/graphics/helpers/NetworkManager;->getCardURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/payumoney/graphics/helpers/NetworkManager;->getCardBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 247
    :goto_0
    return-void

    .line 237
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->sdkErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImageLoader()Lcom/android/volley/toolbox/ImageLoader;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    invoke-virtual {v0}, Lcom/payumoney/graphics/helpers/NetworkManager;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public getLargeBankBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 2
    .param p1, "bank"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 271
    iget-boolean v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->isSDKInitialized:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {p1, v1}, Lcom/payumoney/graphics/helpers/NetworkManager;->getLargeBankURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/payumoney/graphics/helpers/NetworkManager;->getLargeBankBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 276
    return-void

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->sdkErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLargeBankBitmapByBankCode(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 2
    .param p1, "bankCode"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 263
    iget-boolean v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->isSDKInitialized:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {p1, v1}, Lcom/payumoney/graphics/helpers/NetworkManager;->getLargeBankURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/payumoney/graphics/helpers/NetworkManager;->getLargeBankBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 268
    return-void

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->sdkErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLargeCardBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 2
    .param p1, "card"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 279
    iget-boolean v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->isSDKInitialized:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {p1, v1}, Lcom/payumoney/graphics/helpers/NetworkManager;->getLargeCardURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/payumoney/graphics/helpers/NetworkManager;->getLargeCardBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 284
    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->sdkErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLargeWalletBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 2
    .param p1, "bankCode"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 228
    iget-boolean v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->isSDKInitialized:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {p1, v1}, Lcom/payumoney/graphics/helpers/NetworkManager;->getLargeWalletURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/payumoney/graphics/helpers/NetworkManager;->getLargeWalletBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 233
    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->sdkErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMasterPassBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 2
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 288
    iget-boolean v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->isSDKInitialized:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {p1, v1}, Lcom/payumoney/graphics/helpers/NetworkManager;->getMasterPassURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/payumoney/graphics/helpers/NetworkManager;->getMasterPassBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 293
    return-void

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->sdkErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWalletBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 3
    .param p1, "bankCode"    # Ljava/lang/String;
    .param p2, "bitmapCallBack"    # Lcom/payumoney/graphics/BitmapCallBack;

    .line 197
    iget-boolean v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->isSDKInitialized:Z

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->failedResourceList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/payumoney/graphics/AssetDownloadManager$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/payumoney/graphics/AssetDownloadManager$4;-><init>(Lcom/payumoney/graphics/AssetDownloadManager;Lcom/payumoney/graphics/BitmapCallBack;Ljava/lang/String;)V

    .line 214
    .local v0, "bitmapCallBack1":Lcom/payumoney/graphics/BitmapCallBack;
    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    iget-object v2, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    invoke-static {p1, v2}, Lcom/payumoney/graphics/helpers/NetworkManager;->getWalletURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/payumoney/graphics/helpers/NetworkManager;->getWalletBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 215
    .end local v0    # "bitmapCallBack1":Lcom/payumoney/graphics/BitmapCallBack;
    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payumoney/graphics/R$drawable;->default_bank:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {p2, v0}, Lcom/payumoney/graphics/BitmapCallBack;->onBitmapFailed(Landroid/graphics/Bitmap;)V

    .line 220
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->sdkErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sdkType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->context:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/payumoney/graphics/AssetDownloadManager;->sdkType:Ljava/lang/String;

    .line 83
    const-string v0, "PRODUCTION"

    invoke-static {p1, p2, v0}, Lcom/payumoney/graphics/helpers/NetworkManager;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/payumoney/graphics/helpers/NetworkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    .line 84
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/payumoney/graphics/helpers/NetworkManager;->getScreenDensity(Landroid/content/Context;)Lcom/payumoney/graphics/enums/ScreenDensity;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->failedResourceList:Ljava/util/HashSet;

    .line 86
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    invoke-virtual {v0}, Lcom/payumoney/graphics/helpers/NetworkManager;->downloadPriorityResources()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->isSDKInitialized:Z

    .line 88
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sdkType"    # Ljava/lang/String;
    .param p3, "environment"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/payumoney/graphics/AssetDownloadManager;->sdkType:Ljava/lang/String;

    .line 69
    invoke-static {p1, p2, p3}, Lcom/payumoney/graphics/helpers/NetworkManager;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/payumoney/graphics/helpers/NetworkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    .line 70
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/payumoney/graphics/helpers/NetworkManager;->getScreenDensity(Landroid/content/Context;)Lcom/payumoney/graphics/enums/ScreenDensity;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mScreenDensity:Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->failedResourceList:Ljava/util/HashSet;

    .line 72
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->mNetworkManager:Lcom/payumoney/graphics/helpers/NetworkManager;

    invoke-virtual {v0}, Lcom/payumoney/graphics/helpers/NetworkManager;->downloadPriorityResources()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->isSDKInitialized:Z

    .line 74
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 2
    .param p1, "environment"    # Ljava/lang/String;

    .line 91
    iget-boolean v0, p0, Lcom/payumoney/graphics/AssetDownloadManager;->isSDKInitialized:Z

    if-eqz v0, :cond_0

    .line 98
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager;->sdkErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
