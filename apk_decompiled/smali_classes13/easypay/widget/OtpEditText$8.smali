.class Leasypay/widget/OtpEditText$8;
.super Ljava/lang/Object;
.source "OtpEditText.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 535
    iput-object p1, p0, Leasypay/widget/OtpEditText$8;->this$0:Leasypay/widget/OtpEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 548
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 543
    iget-object v0, p0, Leasypay/widget/OtpEditText$8;->this$0:Leasypay/widget/OtpEditText;

    iget-object v0, v0, Leasypay/widget/OtpEditText;->mOnPinEnteredListener:Leasypay/widget/OtpEditText$OnOtpEnteredListener;

    iget-object v1, p0, Leasypay/widget/OtpEditText$8;->this$0:Leasypay/widget/OtpEditText;

    invoke-virtual {v1}, Leasypay/widget/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Leasypay/widget/OtpEditText$OnOtpEnteredListener;->onOtpCompleted(Ljava/lang/CharSequence;)V

    .line 544
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 553
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 539
    return-void
.end method
