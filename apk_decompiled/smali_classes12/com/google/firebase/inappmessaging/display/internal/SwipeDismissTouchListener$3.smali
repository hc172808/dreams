.class Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->performDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    .line 318
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;->this$0:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;->val$originalHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 321
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;->this$0:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->access$300(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;->this$0:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->access$100(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;->this$0:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    invoke-static {v2}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->access$200(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;->onDismiss(Landroid/view/View;Ljava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;->this$0:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->access$100(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 324
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;->this$0:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->access$100(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 325
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;->val$originalHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 326
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;->this$0:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->access$100(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    return-void
.end method
