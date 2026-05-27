.class Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$3;
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

    .line 196
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$3;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 199
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$3;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->access$302(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;F)F

    .line 201
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$3;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-static {v0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->access$300(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 202
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$3;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->access$202(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;Z)Z

    .line 205
    :cond_0
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$3;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-static {v0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->access$200(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$3;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-static {v0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->access$400(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 208
    :cond_1
    return-void
.end method
