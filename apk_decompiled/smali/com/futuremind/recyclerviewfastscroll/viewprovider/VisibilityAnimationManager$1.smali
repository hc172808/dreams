.class Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VisibilityAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;-><init>(Landroid/view/View;IIFFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;

.field final synthetic val$view:Landroid/view/View;

.field wasCanceled:Z


# direct methods
.method constructor <init>(Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;

    .line 36
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$1;->this$0:Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;

    iput-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 50
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$1;->wasCanceled:Z

    .line 52
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 43
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 44
    iget-boolean v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$1;->wasCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$1;->val$view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$1;->wasCanceled:Z

    .line 46
    return-void
.end method
