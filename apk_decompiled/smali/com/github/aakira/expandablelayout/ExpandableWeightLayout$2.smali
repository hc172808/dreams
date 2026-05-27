.class Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableWeightLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->createExpandAnimator(FFJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    .line 313
    iput-object p1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    iput p2, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->val$to:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 332
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->access$102(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;Z)Z

    .line 333
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    iget v2, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->val$to:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->access$402(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;Z)Z

    .line 335
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onAnimationEnd()V

    .line 338
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->val$to:F

    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    invoke-static {v1}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->access$300(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onOpened()V

    .line 340
    return-void

    .line 342
    :cond_2
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->val$to:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    .line 343
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onClosed()V

    .line 345
    :cond_3
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 316
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->access$102(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;Z)Z

    .line 318
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onAnimationStart()V

    .line 321
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->access$300(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)F

    move-result v0

    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->val$to:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onPreOpen()V

    .line 323
    return-void

    .line 325
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onPreClose()V

    .line 328
    :cond_2
    return-void
.end method
