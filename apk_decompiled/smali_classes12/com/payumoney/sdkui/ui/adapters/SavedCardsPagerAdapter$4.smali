.class Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$4;
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

    .line 155
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$4;->b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$4;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 166
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$4;->b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$4;->b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 168
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$4;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onBitmapReceived(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 158
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$4;->b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$4;->b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 160
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$4;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :cond_0
    return-void
.end method
