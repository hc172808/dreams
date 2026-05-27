.class Lcom/payumoney/graphics/AssetDownloadManager$4;
.super Ljava/lang/Object;
.source "AssetDownloadManager.java"

# interfaces
.implements Lcom/payumoney/graphics/BitmapCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/graphics/AssetDownloadManager;->getWalletBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payumoney/graphics/AssetDownloadManager;

.field final synthetic val$bankCode:Ljava/lang/String;

.field final synthetic val$bitmapCallBack:Lcom/payumoney/graphics/BitmapCallBack;


# direct methods
.method constructor <init>(Lcom/payumoney/graphics/AssetDownloadManager;Lcom/payumoney/graphics/BitmapCallBack;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/graphics/AssetDownloadManager;

    .line 201
    iput-object p1, p0, Lcom/payumoney/graphics/AssetDownloadManager$4;->this$0:Lcom/payumoney/graphics/AssetDownloadManager;

    iput-object p2, p0, Lcom/payumoney/graphics/AssetDownloadManager$4;->val$bitmapCallBack:Lcom/payumoney/graphics/BitmapCallBack;

    iput-object p3, p0, Lcom/payumoney/graphics/AssetDownloadManager$4;->val$bankCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 209
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager$4;->val$bitmapCallBack:Lcom/payumoney/graphics/BitmapCallBack;

    invoke-interface {v0, p1}, Lcom/payumoney/graphics/BitmapCallBack;->onBitmapFailed(Landroid/graphics/Bitmap;)V

    .line 210
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager$4;->this$0:Lcom/payumoney/graphics/AssetDownloadManager;

    iget-object v0, v0, Lcom/payumoney/graphics/AssetDownloadManager;->failedResourceList:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager$4;->val$bankCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public onBitmapReceived(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 204
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager$4;->val$bitmapCallBack:Lcom/payumoney/graphics/BitmapCallBack;

    invoke-interface {v0, p1}, Lcom/payumoney/graphics/BitmapCallBack;->onBitmapReceived(Landroid/graphics/Bitmap;)V

    .line 205
    return-void
.end method
