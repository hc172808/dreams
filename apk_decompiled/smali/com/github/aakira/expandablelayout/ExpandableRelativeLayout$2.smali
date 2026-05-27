.class Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->createExpandAnimator(IIJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

.field final synthetic val$to:I


# direct methods
.method constructor <init>(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    .line 486
    iput-object p1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    iput p2, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->val$to:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 504
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$102(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;Z)Z

    .line 505
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    iget v2, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->val$to:I

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$400(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$502(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;Z)Z

    .line 507
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onAnimationEnd()V

    .line 510
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->val$to:I

    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-static {v1}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$300(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 511
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onOpened()V

    .line 512
    return-void

    .line 514
    :cond_2
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->val$to:I

    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-static {v1}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$400(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 515
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onClosed()V

    .line 517
    :cond_3
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 489
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$102(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;Z)Z

    .line 490
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onAnimationStart()V

    .line 493
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$300(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)I

    move-result v0

    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->val$to:I

    if-ne v0, v1, :cond_1

    .line 494
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onPreOpen()V

    .line 495
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$400(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)I

    move-result v0

    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->val$to:I

    if-ne v0, v1, :cond_2

    .line 498
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onPreClose()V

    .line 500
    :cond_2
    return-void
.end method
