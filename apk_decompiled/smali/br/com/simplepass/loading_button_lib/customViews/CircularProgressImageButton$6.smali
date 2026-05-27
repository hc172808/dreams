.class Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularProgressImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;


# direct methods
.method constructor <init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    .line 500
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 503
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->access$1002(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;Z)Z

    .line 505
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    invoke-static {v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->access$1100(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    invoke-static {v0, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->access$1102(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;Z)Z

    .line 508
    new-instance v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6$1;

    invoke-direct {v0, p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6$1;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;)V

    .line 515
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 517
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method
