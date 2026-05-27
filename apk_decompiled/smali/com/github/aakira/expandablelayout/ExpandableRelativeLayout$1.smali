.class Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$1;
.super Ljava/lang/Object;
.source "ExpandableRelativeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    .line 475
    iput-object p1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$1;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 478
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$1;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->access$000(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$1;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$1;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 483
    :goto_0
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$1;->this$0:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->requestLayout()V

    .line 484
    return-void
.end method
