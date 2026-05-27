.class Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularAnimatedDrawable.java"


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

    .line 188
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$2;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 191
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$2;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-static {v0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->access$100(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;)V

    .line 192
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$2;->this$0:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->access$202(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;Z)Z

    .line 193
    return-void
.end method
