.class Leasypay/widget/OtpEditText$5;
.super Ljava/lang/Object;
.source "OtpEditText.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 485
    iput-object p1, p0, Leasypay/widget/OtpEditText$5;->this$0:Leasypay/widget/OtpEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 497
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 492
    iget-object v0, p0, Leasypay/widget/OtpEditText$5;->this$0:Leasypay/widget/OtpEditText;

    iget-object v0, v0, Leasypay/widget/OtpEditText;->mOnPinEnteredListener:Leasypay/widget/OtpEditText$OnOtpEnteredListener;

    iget-object v1, p0, Leasypay/widget/OtpEditText$5;->this$0:Leasypay/widget/OtpEditText;

    invoke-virtual {v1}, Leasypay/widget/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Leasypay/widget/OtpEditText$OnOtpEnteredListener;->onOtpCompleted(Ljava/lang/CharSequence;)V

    .line 493
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 501
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 488
    return-void
.end method
