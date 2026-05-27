.class Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable$1;
.super Ljava/lang/Object;
.source "CircularRevealAnimatedDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

    .line 100
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable$1;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 103
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable$1;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->access$002(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;I)I

    .line 104
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable$1;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

    invoke-virtual {v0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->invalidateSelf()V

    .line 105
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable$1;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

    invoke-static {v0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->access$100(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 106
    return-void
.end method
