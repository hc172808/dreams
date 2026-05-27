.class Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->b(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    .line 655
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$9;->b:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$9;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$9;->b:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->c(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$9;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setFlippedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$9;->b:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->c(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->toggleFlip()V

    .line 660
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$9;->b:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->p(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V

    .line 661
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$9;->b:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->b(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Z)Z

    .line 662
    return-void
.end method
