.class final Leasypay/OnSwipeTouchListener$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OnSwipeTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leasypay/OnSwipeTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# static fields
.field private static final SWIPE_DISTANCE_THRESHOLD:I = 0x64

.field private static final SWIPE_VELOCITY_THRESHOLD:I = 0x64


# instance fields
.field final synthetic this$0:Leasypay/OnSwipeTouchListener;


# direct methods
.method private constructor <init>(Leasypay/OnSwipeTouchListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Leasypay/OnSwipeTouchListener$GestureListener;->this$0:Leasypay/OnSwipeTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leasypay/OnSwipeTouchListener;Leasypay/OnSwipeTouchListener$1;)V
    .locals 0
    .param p1, "x0"    # Leasypay/OnSwipeTouchListener;
    .param p2, "x1"    # Leasypay/OnSwipeTouchListener$1;

    .line 34
    invoke-direct {p0, p1}, Leasypay/OnSwipeTouchListener$GestureListener;-><init>(Leasypay/OnSwipeTouchListener;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 52
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 53
    .local v0, "distanceX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 54
    .local v1, "distanceY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    .line 55
    cmpl-float v2, v0, v4

    if-lez v2, :cond_0

    .line 56
    iget-object v2, p0, Leasypay/OnSwipeTouchListener$GestureListener;->this$0:Leasypay/OnSwipeTouchListener;

    invoke-virtual {v2}, Leasypay/OnSwipeTouchListener;->onSwipeRight()V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v2, p0, Leasypay/OnSwipeTouchListener$GestureListener;->this$0:Leasypay/OnSwipeTouchListener;

    invoke-virtual {v2}, Leasypay/OnSwipeTouchListener;->onSwipeLeft()V

    .line 59
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 61
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 62
    cmpl-float v2, v1, v4

    if-lez v2, :cond_2

    .line 63
    iget-object v2, p0, Leasypay/OnSwipeTouchListener$GestureListener;->this$0:Leasypay/OnSwipeTouchListener;

    invoke-virtual {v2}, Leasypay/OnSwipeTouchListener;->onSwipeBottom()V

    goto :goto_1

    .line 65
    :cond_2
    iget-object v2, p0, Leasypay/OnSwipeTouchListener$GestureListener;->this$0:Leasypay/OnSwipeTouchListener;

    invoke-virtual {v2}, Leasypay/OnSwipeTouchListener;->onSwipeTop()V

    .line 68
    :cond_3
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 46
    iget-object v0, p0, Leasypay/OnSwipeTouchListener$GestureListener;->this$0:Leasypay/OnSwipeTouchListener;

    invoke-virtual {v0}, Leasypay/OnSwipeTouchListener;->onClickView()V

    .line 47
    const/4 v0, 0x1

    return v0
.end method
