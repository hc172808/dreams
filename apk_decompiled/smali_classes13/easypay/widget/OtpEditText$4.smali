.class Leasypay/widget/OtpEditText$4;
.super Ljava/lang/Object;
.source "OtpEditText.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/widget/OtpEditText;->animatePopIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/widget/OtpEditText;


# direct methods
.method constructor <init>(Leasypay/widget/OtpEditText;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/widget/OtpEditText;

    .line 477
    iput-object p1, p0, Leasypay/widget/OtpEditText$4;->this$0:Leasypay/widget/OtpEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 480
    iget-object v0, p0, Leasypay/widget/OtpEditText$4;->this$0:Leasypay/widget/OtpEditText;

    iget-object v0, v0, Leasypay/widget/OtpEditText;->mLastCharPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 481
    iget-object v0, p0, Leasypay/widget/OtpEditText$4;->this$0:Leasypay/widget/OtpEditText;

    invoke-virtual {v0}, Leasypay/widget/OtpEditText;->invalidate()V

    .line 482
    return-void
.end method
