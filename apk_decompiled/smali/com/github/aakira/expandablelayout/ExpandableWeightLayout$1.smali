.class Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$1;
.super Ljava/lang/Object;
.source "ExpandableWeightLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    .line 306
    iput-object p1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$1;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 309
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$1;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->access$000(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;F)V

    .line 310
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$1;->this$0:Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->requestLayout()V

    .line 311
    return-void
.end method
