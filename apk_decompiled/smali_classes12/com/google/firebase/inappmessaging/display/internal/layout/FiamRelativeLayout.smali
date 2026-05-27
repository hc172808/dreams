.class public Lcom/google/firebase/inappmessaging/display/internal/layout/FiamRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "FiamRelativeLayout.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/display/internal/layout/BackButtonLayout;


# instance fields
.field private mBackHandler:Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 55
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamRelativeLayout;->mBackHandler:Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 56
    .local v0, "handled":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 59
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public setDismissListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 50
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;-><init>(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamRelativeLayout;->mBackHandler:Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;

    .line 51
    return-void
.end method
