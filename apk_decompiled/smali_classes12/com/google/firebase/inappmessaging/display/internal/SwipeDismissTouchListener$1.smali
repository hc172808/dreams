.class Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->startDismissAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    .line 263
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$1;->this$0:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 266
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$1;->this$0:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->access$000(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)V

    .line 267
    return-void
.end method
