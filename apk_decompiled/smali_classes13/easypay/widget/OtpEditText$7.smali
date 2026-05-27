.class Leasypay/widget/OtpEditText$7;
.super Ljava/lang/Object;
.source "OtpEditText.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/widget/OtpEditText;->animateBottomUp(Ljava/lang/CharSequence;I)V
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

    .line 525
    iput-object p1, p0, Leasypay/widget/OtpEditText$7;->this$0:Leasypay/widget/OtpEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 528
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 529
    .local v0, "value":Ljava/lang/Integer;
    iget-object v1, p0, Leasypay/widget/OtpEditText$7;->this$0:Leasypay/widget/OtpEditText;

    iget-object v1, v1, Leasypay/widget/OtpEditText;->mLastCharPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 530
    return-void
.end method
