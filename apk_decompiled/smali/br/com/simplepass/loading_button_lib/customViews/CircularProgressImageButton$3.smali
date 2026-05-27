.class Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularProgressImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->revertAnimation(Lbr/com/simplepass/loading_button_lib/interfaces/OnAnimationEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

.field final synthetic val$onAnimationEndListener:Lbr/com/simplepass/loading_button_lib/interfaces/OnAnimationEndListener;


# direct methods
.method constructor <init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;Lbr/com/simplepass/loading_button_lib/interfaces/OnAnimationEndListener;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    .line 398
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$3;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    iput-object p2, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$3;->val$onAnimationEndListener:Lbr/com/simplepass/loading_button_lib/interfaces/OnAnimationEndListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 401
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$3;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    invoke-static {v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->access$900(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$3;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->setClickable(Z)V

    .line 403
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$3;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->access$1002(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;Z)Z

    .line 405
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$3;->val$onAnimationEndListener:Lbr/com/simplepass/loading_button_lib/interfaces/OnAnimationEndListener;

    if-eqz v0, :cond_0

    .line 406
    invoke-interface {v0}, Lbr/com/simplepass/loading_button_lib/interfaces/OnAnimationEndListener;->onAnimationEnd()V

    .line 408
    :cond_0
    return-void
.end method
