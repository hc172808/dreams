.class Lcom/payu/custombrowser/widgets/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/widgets/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/widgets/a$1;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/widgets/a$1;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/payu/custombrowser/widgets/a$1$1;->a:Lcom/payu/custombrowser/widgets/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/a$1$1;->a:Lcom/payu/custombrowser/widgets/a$1;

    iget-object v0, v0, Lcom/payu/custombrowser/widgets/a$1;->d:Lcom/payu/custombrowser/widgets/a;

    invoke-static {v0}, Lcom/payu/custombrowser/widgets/a;->a(Lcom/payu/custombrowser/widgets/a;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/a$1$1;->a:Lcom/payu/custombrowser/widgets/a$1;

    iget v1, v0, Lcom/payu/custombrowser/widgets/a$1;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/payu/custombrowser/widgets/a$1;->a:I

    .line 106
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/a$1$1;->a:Lcom/payu/custombrowser/widgets/a$1;

    iget v0, v0, Lcom/payu/custombrowser/widgets/a$1;->a:I

    iget-object v1, p0, Lcom/payu/custombrowser/widgets/a$1$1;->a:Lcom/payu/custombrowser/widgets/a$1;

    iget-object v1, v1, Lcom/payu/custombrowser/widgets/a$1;->b:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/a$1$1;->a:Lcom/payu/custombrowser/widgets/a$1;

    const/4 v1, 0x0

    iput v1, v0, Lcom/payu/custombrowser/widgets/a$1;->a:I

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/a$1$1;->a:Lcom/payu/custombrowser/widgets/a$1;

    iget-object v0, v0, Lcom/payu/custombrowser/widgets/a$1;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/a$1$1;->a:Lcom/payu/custombrowser/widgets/a$1;

    iget-object v0, v0, Lcom/payu/custombrowser/widgets/a$1;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 111
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/a$1$1;->a:Lcom/payu/custombrowser/widgets/a$1;

    iget-object v0, v0, Lcom/payu/custombrowser/widgets/a$1;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 112
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/a$1$1;->a:Lcom/payu/custombrowser/widgets/a$1;

    iget-object v0, v0, Lcom/payu/custombrowser/widgets/a$1;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/payu/custombrowser/widgets/a$1$1;->a:Lcom/payu/custombrowser/widgets/a$1;

    iget-object v1, v1, Lcom/payu/custombrowser/widgets/a$1;->b:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/payu/custombrowser/widgets/a$1$1;->a:Lcom/payu/custombrowser/widgets/a$1;

    iget v2, v2, Lcom/payu/custombrowser/widgets/a$1;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_1
    return-void
.end method
