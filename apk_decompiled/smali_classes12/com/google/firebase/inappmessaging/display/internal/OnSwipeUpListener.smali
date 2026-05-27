.class public Lcom/google/firebase/inappmessaging/display/internal/OnSwipeUpListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OnSwipeUpListener.java"


# static fields
.field private static final SWIPE_MAX_OFF_PATH:I = 0xfa

.field private static final SWIPE_MIN_DISTANCE:I = 0x78

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0xc8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x437a0000    # 250.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 29
    return v1

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x42f00000    # 120.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 33
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/OnSwipeUpListener;->onSwipeUp()Z

    move-result v0

    return v0

    .line 37
    :cond_1
    return v1
.end method

.method public onSwipeUp()Z
    .locals 1

    .line 41
    const/4 v0, 0x0

    return v0
.end method
