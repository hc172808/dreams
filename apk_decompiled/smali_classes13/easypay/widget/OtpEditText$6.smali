.class Leasypay/widget/OtpEditText$6;
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

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Leasypay/widget/OtpEditText;I)V
    .locals 0
    .param p1, "this$0"    # Leasypay/widget/OtpEditText;

    .line 513
    iput-object p1, p0, Leasypay/widget/OtpEditText$6;->this$0:Leasypay/widget/OtpEditText;

    iput p2, p0, Leasypay/widget/OtpEditText$6;->val$start:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 516
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 517
    .local v0, "value":Ljava/lang/Float;
    iget-object v1, p0, Leasypay/widget/OtpEditText$6;->this$0:Leasypay/widget/OtpEditText;

    iget-object v1, v1, Leasypay/widget/OtpEditText;->mCharBottom:[F

    iget v2, p0, Leasypay/widget/OtpEditText$6;->val$start:I

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    .line 518
    iget-object v1, p0, Leasypay/widget/OtpEditText$6;->this$0:Leasypay/widget/OtpEditText;

    invoke-virtual {v1}, Leasypay/widget/OtpEditText;->invalidate()V

    .line 519
    return-void
.end method
