.class Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularRevealAnimatedDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

.field final synthetic val$alphaAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

    .line 120
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable$3;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

    iput-object p2, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable$3;->val$alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 123
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 124
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable$3;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->access$302(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;Z)Z

    .line 126
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable$3;->val$alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 127
    return-void
.end method
