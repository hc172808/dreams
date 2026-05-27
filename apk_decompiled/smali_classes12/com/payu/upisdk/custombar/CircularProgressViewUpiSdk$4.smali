.class final Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$4;->a:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 332
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$4;->a:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    .end local p1    # "animation":Landroid/animation/ValueAnimator;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;F)F

    .line 333
    nop

    .end local p0    # "this":Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$4;
    iget-object p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$4;->a:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    invoke-virtual {p1}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->invalidate()V

    .line 334
    return-void
.end method
