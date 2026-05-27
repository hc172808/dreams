.class final Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a(F)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;FF)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$8;->c:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    iput p2, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$8;->a:F

    iput p3, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$8;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 430
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$8;->c:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    .end local p1    # "animation":Landroid/animation/ValueAnimator;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->b(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;F)F

    .line 431
    iget-object p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$8;->c:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    iget v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$8;->a:F

    invoke-static {p1}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->b(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$8;->b:F

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->c(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;F)F

    .line 432
    nop

    .end local p0    # "this":Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$8;
    iget-object p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$8;->c:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    invoke-virtual {p1}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->invalidate()V

    .line 433
    return-void
.end method
