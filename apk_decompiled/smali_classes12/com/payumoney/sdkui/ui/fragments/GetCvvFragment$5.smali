.class Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/graphics/BitmapCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->a(Lcom/payumoney/core/entity/CardDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    .line 304
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 315
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 317
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->d(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_0
    return-void
.end method

.method public onBitmapReceived(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 307
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 309
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->d(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    :cond_0
    return-void
.end method
