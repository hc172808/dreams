.class Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->b(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    .line 608
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$8;->b:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$8;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$8;->b:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->d(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$8;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setFlippedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 612
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$8;->b:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->d(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->toggleFlip()V

    .line 613
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$8;->b:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->p(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V

    .line 614
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$8;->b:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->b(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Z)Z

    .line 615
    return-void
.end method
