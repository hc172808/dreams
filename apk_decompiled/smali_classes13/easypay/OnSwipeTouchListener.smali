.class public Leasypay/OnSwipeTouchListener;
.super Ljava/lang/Object;
.source "OnSwipeTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leasypay/OnSwipeTouchListener$GestureListener;
    }
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Leasypay/OnSwipeTouchListener$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Leasypay/OnSwipeTouchListener$GestureListener;-><init>(Leasypay/OnSwipeTouchListener;Leasypay/OnSwipeTouchListener$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Leasypay/OnSwipeTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    .line 16
    return-void
.end method


# virtual methods
.method public onClickView()V
    .locals 0

    .line 28
    return-void
.end method

.method public onSwipeBottom()V
    .locals 0

    .line 21
    return-void
.end method

.method public onSwipeLeft()V
    .locals 0

    .line 19
    return-void
.end method

.method public onSwipeRight()V
    .locals 0

    .line 26
    return-void
.end method

.method public onSwipeTop()V
    .locals 0

    .line 23
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 31
    iget-object v0, p0, Leasypay/OnSwipeTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
