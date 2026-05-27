.class Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$2;
.super Ljava/lang/Object;
.source "CircularProgressEditText.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->revertAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;


# direct methods
.method constructor <init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;

    .line 163
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$2;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 166
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 167
    .local v0, "val":I
    iget-object v1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$2;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;

    invoke-virtual {v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 168
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 169
    iget-object v2, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$2;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;

    invoke-virtual {v2, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-void
.end method
