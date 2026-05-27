.class Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$1;
.super Ljava/lang/Object;
.source "CircularAnimatedDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;


# direct methods
.method constructor <init>(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    .line 177
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$1;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 180
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$1;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->access$002(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;F)F

    .line 181
    return-void
.end method
