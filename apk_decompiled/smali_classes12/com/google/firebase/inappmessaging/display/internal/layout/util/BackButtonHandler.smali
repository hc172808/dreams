.class public Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;
.super Ljava/lang/Object;
.source "BackButtonHandler.java"


# instance fields
.field private listener:Landroid/view/View$OnClickListener;

.field private viewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;->viewGroup:Landroid/view/ViewGroup;

    .line 30
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;->listener:Landroid/view/View$OnClickListener;

    .line 31
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 36
    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 40
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;->listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;->viewGroup:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 48
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
