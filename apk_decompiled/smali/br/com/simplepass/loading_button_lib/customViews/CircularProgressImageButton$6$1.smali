.class Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6$1;
.super Ljava/lang/Object;
.source "CircularProgressImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;


# direct methods
.method constructor <init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;)V
    .locals 0
    .param p1, "this$1"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;

    .line 508
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6$1;->this$1:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 511
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6$1;->this$1:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;

    iget-object v0, v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    iget-object v1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6$1;->this$1:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;

    iget-object v1, v1, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    invoke-static {v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->access$1200(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;)I

    move-result v1

    iget-object v2, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6$1;->this$1:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;

    iget-object v2, v2, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    invoke-static {v2}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->access$1300(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->doneLoadingAnimation(ILandroid/graphics/Bitmap;)V

    .line 512
    return-void
.end method
