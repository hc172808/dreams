.class Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;


# direct methods
.method constructor <init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;

    .line 559
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$6;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 562
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$6;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;->access$1102(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;Z)Z

    .line 564
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$6;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;

    invoke-static {v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;->access$1300(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$6;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;

    invoke-static {v0, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;->access$1302(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;Z)Z

    .line 567
    new-instance v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$6$1;

    invoke-direct {v0, p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$6$1;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$6;)V

    .line 574
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 576
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method
