.class public Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;
.super Ljava/lang/Object;
.source "FiamWindowManager.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field static final DEFAULT_TYPE:I = 0x3eb


# instance fields
.field private bindingWrapper:Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 136
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 138
    .local v0, "size":Landroid/graphics/Point;
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getWindowManager(Landroid/app/Activity;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 139
    .local v1, "display":Landroid/view/Display;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 140
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 145
    :goto_0
    return-object v0
.end method

.method private getInsetDimensions(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 158
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getVisibleFrame(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v1

    .line 159
    .local v1, "visibleFrame":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v2

    .line 161
    .local v2, "size":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 162
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 163
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 164
    iget v3, v2, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 166
    return-object v0
.end method

.method private getLayoutParams(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Landroid/app/Activity;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .param p1, "layoutConfig"    # Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 105
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 107
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->windowWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 108
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->windowHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 110
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->windowFlag()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v3, 0x3eb

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 114
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getInsetDimensions(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v1

    .line 115
    .local v1, "insetDimensions":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->viewWindowGravity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x30

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 116
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 119
    :cond_0
    const v2, 0x3e99999a    # 0.3f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 120
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->viewWindowGravity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 121
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 123
    return-object v0
.end method

.method private getSwipeListener(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;
    .locals 10
    .param p1, "layoutConfig"    # Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    .param p2, "bindingWrapper"    # Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;
    .param p3, "windowManager"    # Landroid/view/WindowManager;
    .param p4, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .line 186
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$1;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$1;-><init>(Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;)V

    .line 202
    .local v0, "callbacks":Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->windowWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 204
    new-instance v1, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getDialogView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;-><init>(Landroid/view/View;Ljava/lang/Object;Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;)V

    return-object v1

    .line 207
    :cond_0
    new-instance v9, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$2;

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getDialogView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v5, v0

    move-object v6, p4

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$2;-><init>(Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;Landroid/view/View;Ljava/lang/Object;Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;)V

    return-object v9
.end method

.method private getVisibleFrame(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 172
    .local v0, "visibleFrame":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 173
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 175
    return-object v0
.end method

.method private getWindowManager(Landroid/app/Activity;)Landroid/view/WindowManager;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 127
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method


# virtual methods
.method public destroy(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 97
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->isFiamDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getWindowManager(Landroid/app/Activity;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->bindingWrapper:Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->bindingWrapper:Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

    .line 101
    :cond_0
    return-void
.end method

.method public isFiamDisplayed()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->bindingWrapper:Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    return v0

    .line 92
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    return v0
.end method

.method public show(Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;Landroid/app/Activity;)V
    .locals 8
    .param p1, "bindingWrapper"    # Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 52
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->isFiamDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "Fiam already active. Cannot show new Fiam."

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->loge(Ljava/lang/String;)V

    .line 54
    return-void

    .line 57
    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string v0, "Activity is finishing or does not have valid window token. Cannot show FIAM."

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->loge(Ljava/lang/String;)V

    .line 59
    return-void

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getConfig()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    move-result-object v0

    .line 63
    .local v0, "config":Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getLayoutParams(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Landroid/app/Activity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 65
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getWindowManager(Landroid/app/Activity;)Landroid/view/WindowManager;

    move-result-object v2

    .line 66
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getRootView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 67
    .local v3, "rootView":Landroid/view/View;
    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-direct {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getInsetDimensions(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v4

    .line 72
    .local v4, "insetDimensions":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    const-string v7, "Inset (top, bottom)"

    invoke-static {v7, v5, v6}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 73
    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    const-string v7, "Inset (left, right)"

    invoke-static {v7, v5, v6}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 79
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->canSwipeToDismiss()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 80
    nop

    .line 81
    invoke-direct {p0, v0, p1, v2, v1}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getSwipeListener(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    move-result-object v5

    .line 82
    .local v5, "listener":Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getDialogView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    .end local v5    # "listener":Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;
    :cond_2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->bindingWrapper:Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

    .line 86
    return-void
.end method
