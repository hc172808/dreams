.class Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/graphics/BitmapCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    .line 247
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 258
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-virtual {v2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->b(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 260
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->d(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->c(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    :cond_0
    return-void
.end method

.method public onBitmapReceived(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 250
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-virtual {v2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->b(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 252
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->d(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->c(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    :cond_0
    return-void
.end method
