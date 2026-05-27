.class public Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mDismissCallbacks:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;

.field private mDownX:F

.field private mDownY:F

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mSlop:I

.field private mSwiping:Z

.field private mSwipingSlop:I

.field private mToken:Ljava/lang/Object;

.field private mTranslationX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mView:Landroid/view/View;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callbacks"    # Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mViewWidth:I

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 114
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSlop:I

    .line 115
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mMinFlingVelocity:I

    .line 116
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    .line 117
    nop

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mAnimationTime:J

    .line 119
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    .line 120
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    .line 121
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDismissCallbacks:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    .line 66
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->performDismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    .line 66
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    .line 66
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    .line 66
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDismissCallbacks:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;

    return-object v0
.end method

.method private animateTo(FFLandroid/animation/AnimatorListenerAdapter;)V
    .locals 12
    .param p1, "translationX"    # F
    .param p2, "alpha"    # F
    .param p3, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 279
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->getTranslationX()F

    move-result v6

    .line 280
    .local v6, "beginTranslation":F
    sub-float v7, p1, v6

    .line 282
    .local v7, "translationDiff":F
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v8

    .line 283
    .local v8, "beginAlpha":F
    sub-float v9, p2, v8

    .line 285
    .local v9, "alphaDiff":F
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 286
    .local v10, "animator":Landroid/animation/ValueAnimator;
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 288
    new-instance v11, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$2;

    move-object v0, v11

    move-object v1, p0

    move v2, v6

    move v3, v7

    move v4, v8

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$2;-><init>(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;FFFF)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 300
    if-eqz p3, :cond_0

    .line 301
    invoke-virtual {v10, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    :cond_0
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    .line 305
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private performDismiss()V
    .locals 5

    .line 312
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 313
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 315
    .local v1, "originalHeight":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v3, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 317
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;-><init>(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 330
    new-instance v3, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$4;

    invoke-direct {v3, p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$4;-><init>(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 339
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 340
    return-void
.end method


# virtual methods
.method protected getTranslationX()F
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 128
    iget v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mTranslationX:F

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 130
    iget v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mViewWidth:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mViewWidth:I

    .line 134
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    .line 194
    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 195
    goto/16 :goto_8

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->startCancelAnimation()V

    .line 198
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 199
    iput-object v3, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 200
    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mTranslationX:F

    .line 201
    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownX:F

    .line 202
    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownY:F

    .line 203
    iput-boolean v5, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwiping:Z

    .line 204
    goto/16 :goto_8

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 210
    goto/16 :goto_8

    .line 213
    :cond_2
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 214
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownX:F

    sub-float/2addr v0, v2

    .line 215
    .local v0, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownY:F

    sub-float/2addr v2, v3

    .line 216
    .local v2, "deltaY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSlop:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v6, v7

    cmpg-float v3, v3, v6

    if-gez v3, :cond_4

    .line 217
    iput-boolean v4, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwiping:Z

    .line 218
    cmpl-float v3, v0, v1

    if-lez v3, :cond_3

    iget v3, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSlop:I

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSlop:I

    neg-int v3, v3

    :goto_0
    iput v3, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwipingSlop:I

    .line 219
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 222
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 223
    .local v3, "cancelEvent":Landroid/view/MotionEvent;
    nop

    .line 225
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/lit8 v6, v6, 0x3

    .line 223
    invoke-virtual {v3, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 226
    iget-object v6, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 227
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 230
    .end local v3    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_4
    iget-boolean v3, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v3, :cond_11

    .line 231
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mTranslationX:F

    .line 232
    iget v3, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwipingSlop:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->setTranslationX(F)V

    .line 234
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v3, v3, v7

    iget v5, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->setAlpha(F)V

    .line 235
    return v4

    .line 149
    .end local v0    # "deltaX":F
    .end local v2    # "deltaY":F
    :pswitch_2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    .line 150
    goto/16 :goto_8

    .line 153
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v6, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownX:F

    sub-float/2addr v0, v6

    .line 154
    .restart local v0    # "deltaX":F
    iget-object v6, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 155
    iget-object v6, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 156
    iget-object v6, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    .line 157
    .local v6, "velocityX":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 158
    .local v7, "absVelocityX":F
    iget-object v8, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 159
    .local v8, "absVelocityY":F
    const/4 v9, 0x0

    .line 160
    .local v9, "dismiss":Z
    const/4 v10, 0x0

    .line 161
    .local v10, "dismissRight":Z
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget v12, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mViewWidth:I

    div-int/2addr v12, v2

    int-to-float v2, v12

    cmpl-float v2, v11, v2

    if-lez v2, :cond_7

    iget-boolean v2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v2, :cond_7

    .line 162
    const/4 v9, 0x1

    .line 163
    cmpl-float v2, v0, v1

    if-lez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    move v10, v4

    goto :goto_6

    .line 164
    :cond_7
    iget v2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mMinFlingVelocity:I

    int-to-float v2, v2

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_c

    iget v2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    int-to-float v2, v2

    cmpg-float v2, v7, v2

    if-gtz v2, :cond_c

    cmpg-float v2, v8, v7

    if-gez v2, :cond_c

    cmpg-float v2, v8, v7

    if-gez v2, :cond_c

    iget-boolean v2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v2, :cond_c

    .line 170
    cmpg-float v2, v6, v1

    if-gez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    cmpg-float v11, v0, v1

    if-gez v11, :cond_9

    const/4 v11, 0x1

    goto :goto_3

    :cond_9
    const/4 v11, 0x0

    :goto_3
    if-ne v2, v11, :cond_a

    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    move v9, v2

    .line 171
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_b

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_5
    move v10, v4

    .line 173
    :cond_c
    :goto_6
    if-eqz v9, :cond_d

    .line 175
    invoke-virtual {p0, v10}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->startDismissAnimation(Z)V

    goto :goto_7

    .line 176
    :cond_d
    iget-boolean v2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v2, :cond_e

    .line 178
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->startCancelAnimation()V

    .line 181
    :cond_e
    :goto_7
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_f

    .line 182
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 184
    :cond_f
    iput-object v3, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 185
    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mTranslationX:F

    .line 186
    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownX:F

    .line 187
    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownY:F

    .line 188
    iput-boolean v5, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwiping:Z

    .line 189
    goto :goto_8

    .line 138
    .end local v0    # "deltaX":F
    .end local v6    # "velocityX":F
    .end local v7    # "absVelocityX":F
    .end local v8    # "absVelocityY":F
    .end local v9    # "dismiss":Z
    .end local v10    # "dismissRight":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownX:F

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownY:F

    .line 140
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDismissCallbacks:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;->canDismiss(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 141
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 142
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 144
    :cond_10
    return v5

    .line 240
    :cond_11
    :goto_8
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 252
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 253
    return-void
.end method

.method protected setTranslationX(F)V
    .locals 1
    .param p1, "translationX"    # F

    .line 244
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 245
    return-void
.end method

.method protected startCancelAnimation()V
    .locals 3

    .line 273
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->animateTo(FFLandroid/animation/AnimatorListenerAdapter;)V

    .line 274
    return-void
.end method

.method protected startDismissAnimation(Z)V
    .locals 4
    .param p1, "dismissRight"    # Z

    .line 257
    iget v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mViewWidth:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    int-to-float v0, v0

    .line 258
    .local v0, "endTranslation":F
    const/4 v1, 0x0

    .line 260
    .local v1, "endAlpha":F
    const/4 v2, 0x0

    new-instance v3, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$1;

    invoke-direct {v3, p0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$1;-><init>(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)V

    invoke-direct {p0, v0, v2, v3}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->animateTo(FFLandroid/animation/AnimatorListenerAdapter;)V

    .line 269
    return-void
.end method
