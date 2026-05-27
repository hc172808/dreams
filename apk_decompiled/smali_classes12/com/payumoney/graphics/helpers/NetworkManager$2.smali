.class Lcom/payumoney/graphics/helpers/NetworkManager$2;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/graphics/helpers/NetworkManager;->getWalletBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payumoney/graphics/helpers/NetworkManager;

.field final synthetic val$bitmapCallBack:Lcom/payumoney/graphics/BitmapCallBack;


# direct methods
.method constructor <init>(Lcom/payumoney/graphics/helpers/NetworkManager;Lcom/payumoney/graphics/BitmapCallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/graphics/helpers/NetworkManager;

    .line 129
    iput-object p1, p0, Lcom/payumoney/graphics/helpers/NetworkManager$2;->this$0:Lcom/payumoney/graphics/helpers/NetworkManager;

    iput-object p2, p0, Lcom/payumoney/graphics/helpers/NetworkManager$2;->val$bitmapCallBack:Lcom/payumoney/graphics/BitmapCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 137
    invoke-static {}, Lcom/payumoney/graphics/helpers/NetworkManager;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payumoney/graphics/R$drawable;->default_bank:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/payumoney/graphics/helpers/NetworkManager$2;->val$bitmapCallBack:Lcom/payumoney/graphics/BitmapCallBack;

    invoke-interface {v1, v0}, Lcom/payumoney/graphics/BitmapCallBack;->onBitmapFailed(Landroid/graphics/Bitmap;)V

    .line 140
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2
    .param p1, "response"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .line 132
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/NetworkManager$2;->val$bitmapCallBack:Lcom/payumoney/graphics/BitmapCallBack;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/payumoney/graphics/BitmapCallBack;->onBitmapReceived(Landroid/graphics/Bitmap;)V

    .line 133
    return-void
.end method
