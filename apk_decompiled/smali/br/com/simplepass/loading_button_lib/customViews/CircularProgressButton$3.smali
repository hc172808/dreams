.class Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;->revertAnimation(Lbr/com/simplepass/loading_button_lib/interfaces/OnAnimationEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;

.field final synthetic val$onAnimationEndListener:Lbr/com/simplepass/loading_button_lib/interfaces/OnAnimationEndListener;


# direct methods
.method constructor <init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;Lbr/com/simplepass/loading_button_lib/interfaces/OnAnimationEndListener;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;

    .line 455
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$3;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;

    iput-object p2, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$3;->val$onAnimationEndListener:Lbr/com/simplepass/loading_button_lib/interfaces/OnAnimationEndListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 458
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$3;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;->setClickable(Z)V

    .line 459
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$3;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;->access$1102(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;Z)Z

    .line 460
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$3;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;

    invoke-static {v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;->access$1200(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;)Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;

    move-result-object v3

    invoke-static {v3}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->access$600(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$3;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;

    invoke-static {v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;->access$1200(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;)Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;

    move-result-object v3

    invoke-static {v3}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->access$700(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v2, v3, v2

    iget-object v3, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$3;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;

    invoke-static {v3}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;->access$1200(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;)Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;

    move-result-object v3

    invoke-static {v3}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->access$700(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v1, v3, v1

    iget-object v3, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$3;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;

    invoke-static {v3}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;->access$1200(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;)Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;

    move-result-object v3

    invoke-static {v3}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->access$700(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget-object v4, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$3;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;

    invoke-static {v4}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;->access$1200(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;)Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;

    move-result-object v4

    invoke-static {v4}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->access$700(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;)[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 462
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$3;->val$onAnimationEndListener:Lbr/com/simplepass/loading_button_lib/interfaces/OnAnimationEndListener;

    if-eqz v0, :cond_0

    .line 463
    invoke-interface {v0}, Lbr/com/simplepass/loading_button_lib/interfaces/OnAnimationEndListener;->onAnimationEnd()V

    .line 465
    :cond_0
    return-void
.end method
