.class Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$2;
.super Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;
.source "FiamWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getSwipeListener(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;

.field final synthetic val$bindingWrapper:Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

.field final synthetic val$layoutParams:Landroid/view/WindowManager$LayoutParams;

.field final synthetic val$windowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;Landroid/view/View;Ljava/lang/Object;Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "callbacks"    # Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;

    .line 207
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$2;->this$0:Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;

    iput-object p5, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p6, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$2;->val$windowManager:Landroid/view/WindowManager;

    iput-object p7, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$2;->val$bindingWrapper:Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;-><init>(Landroid/view/View;Ljava/lang/Object;Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;)V

    return-void
.end method


# virtual methods
.method protected getTranslationX()F
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    return v0
.end method

.method protected setTranslationX(F)V
    .locals 3
    .param p1, "translationX"    # F

    .line 215
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 216
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$2;->val$windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$2;->val$bindingWrapper:Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    return-void
.end method
