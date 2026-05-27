.class Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->createExpandAnimator(IIJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

.field final synthetic val$to:I


# direct methods
.method constructor <init>(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    .line 498
    iput-object p1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    iput p2, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->val$to:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 516
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$102(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;Z)Z

    .line 517
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    iget v2, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->val$to:I

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$400(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$502(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;Z)Z

    .line 519
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onAnimationEnd()V

    .line 522
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->val$to:I

    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$300(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 523
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onOpened()V

    .line 524
    return-void

    .line 526
    :cond_2
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->val$to:I

    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$400(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 527
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onClosed()V

    .line 529
    :cond_3
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 501
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$102(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;Z)Z

    .line 502
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onAnimationStart()V

    .line 505
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$300(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)I

    move-result v0

    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->val$to:I

    if-ne v0, v1, :cond_1

    .line 506
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onPreOpen()V

    .line 507
    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$400(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)I

    move-result v0

    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->val$to:I

    if-ne v0, v1, :cond_2

    .line 510
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onPreClose()V

    .line 512
    :cond_2
    return-void
.end method
