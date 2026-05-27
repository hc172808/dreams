.class Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/graphics/BitmapCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    .line 1233
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$13;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1245
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$13;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$13;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$13;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1246
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$13;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1247
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$13;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v1, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Landroid/graphics/drawable/Drawable;)V

    .line 1249
    :cond_0
    return-void
.end method

.method public onBitmapReceived(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1237
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$13;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$13;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$13;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1238
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$13;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1239
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$13;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v1, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Landroid/graphics/drawable/Drawable;)V

    .line 1241
    :cond_0
    return-void
.end method
