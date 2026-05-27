.class public Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator;
.super Ljava/lang/Object;
.source "FiamAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$AnimationCompleteListener;,
        Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public slideIntoView(Landroid/app/Application;Landroid/view/View;Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;)V
    .locals 4
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startPosition"    # Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 38
    invoke-static {p3, p2}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->access$000(Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 40
    .local v0, "start":Landroid/graphics/Point;
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    .line 41
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 42
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 43
    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$1;-><init>(Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator;Landroid/view/View;Landroid/app/Application;)V

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 59
    return-void
.end method

.method public slideOutOfView(Landroid/app/Application;Landroid/view/View;Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$AnimationCompleteListener;)V
    .locals 5
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "end"    # Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;
    .param p4, "completeListener"    # Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$AnimationCompleteListener;

    .line 66
    invoke-static {p3, p2}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->access$000(Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 68
    .local v0, "start":Landroid/graphics/Point;
    new-instance v1, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$2;

    invoke-direct {v1, p0, p4}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$2;-><init>(Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator;Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$AnimationCompleteListener;)V

    .line 78
    .local v1, "animatorListenerAdapter":Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    .line 79
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    .line 80
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 81
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 82
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 83
    return-void
.end method
