.class Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/graphics/BitmapCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    .line 272
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$7;->b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$7;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 283
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$7;->b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$7;->b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 285
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$7;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    :cond_0
    return-void
.end method

.method public onBitmapReceived(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 275
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$7;->b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$7;->b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 277
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$7;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    :cond_0
    return-void
.end method
