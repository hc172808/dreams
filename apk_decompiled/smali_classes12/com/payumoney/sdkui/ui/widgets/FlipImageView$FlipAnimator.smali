.class public Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/widgets/FlipImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlipAnimator"
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

.field private b:Landroid/graphics/Camera;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:F

.field private e:F

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/payumoney/sdkui/ui/widgets/FlipImageView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    .line 249
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->a:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->setFillAfter(Z)V

    .line 251
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 270
    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    .line 271
    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double v4, v4, v0

    div-double/2addr v4, v2

    double-to-float v2, v4

    .line 273
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->a:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->a(Lcom/payumoney/sdkui/ui/widgets/FlipImageView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    neg-float v2, v2

    .line 282
    :cond_0
    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_2

    .line 283
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->a:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->a(Lcom/payumoney/sdkui/ui/widgets/FlipImageView;)Z

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    if-eqz v3, :cond_1

    .line 284
    add-float/2addr v2, v4

    goto :goto_0

    .line 286
    :cond_1
    sub-float/2addr v2, v4

    .line 289
    :goto_0
    iget-boolean v3, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->f:Z

    if-nez v3, :cond_2

    .line 290
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->a:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    iget-object v4, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->f:Z

    .line 295
    :cond_2
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 297
    iget-object v4, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->b:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    .line 298
    iget-object v4, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->b:Landroid/graphics/Camera;

    const-wide v5, 0x4062c00000000000L    # 150.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v5

    double-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v4, v1, v1, v0}, Landroid/graphics/Camera;->translate(FFF)V

    .line 299
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->b:Landroid/graphics/Camera;

    iget-object v4, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->a:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-static {v4}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->b(Lcom/payumoney/sdkui/ui/widgets/FlipImageView;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Landroid/graphics/Camera;->rotateX(F)V

    .line 300
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->b:Landroid/graphics/Camera;

    iget-object v4, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->a:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-static {v4}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->c(Lcom/payumoney/sdkui/ui/widgets/FlipImageView;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 301
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->b:Landroid/graphics/Camera;

    iget-object v4, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->a:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-static {v4}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->d(Lcom/payumoney/sdkui/ui/widgets/FlipImageView;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 302
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->b:Landroid/graphics/Camera;

    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 303
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->b:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 305
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->d:F

    neg-float v0, v0

    iget v1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->e:F

    neg-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 306
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->d:F

    iget v1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->e:F

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 307
    return-void
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .line 260
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 261
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->b:Landroid/graphics/Camera;

    .line 262
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->d:F

    .line 263
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->e:F

    .line 264
    return-void
.end method

.method public setToDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "to"    # Landroid/graphics/drawable/Drawable;

    .line 254
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->c:Landroid/graphics/drawable/Drawable;

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->f:Z

    .line 256
    return-void
.end method
