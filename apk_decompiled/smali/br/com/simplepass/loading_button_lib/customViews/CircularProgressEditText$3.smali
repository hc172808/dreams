.class Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularProgressEditText.java"


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

    .line 188
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$3;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 191
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$3;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->setClickable(Z)V

    .line 192
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$3;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->access$002(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;Z)Z

    .line 193
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$3;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;

    invoke-static {v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->access$100(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method
