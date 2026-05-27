.class public Leasypay/widget/OtpEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "OtpEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leasypay/widget/OtpEditText$OnTextChangedListener;,
        Leasypay/widget/OtpEditText$OnOtpEnteredListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OtpEditText"


# instance fields
.field private isActive:Z

.field protected mActivateError:Z

.field protected mAllowedNumChars:F

.field protected mAnimateOnError:Z

.field protected mAnimateOnInput:Z

.field protected mCharBackground:Landroid/graphics/drawable/Drawable;

.field protected mCharBottom:[F

.field private mCharDrawSize:[F

.field protected mCharPaint:Landroid/graphics/Paint;

.field protected mCharSize:F

.field protected mCharsSpace:F

.field protected mClickListener:Landroid/view/View$OnClickListener;

.field protected mErrorAnimationType:I

.field protected mHasError:Z

.field protected mInputAnimationType:I

.field protected mIsCharInSquare:Z

.field protected mLastCharPaint:Landroid/graphics/Paint;

.field protected mLineCoords:[Landroid/graphics/RectF;

.field protected mLineErrorTextColor:I

.field protected mLineFocusedColor:I

.field protected mLineNextCharColor:I

.field protected mLineUnFocusedColor:I

.field protected mLinesPaint:Landroid/graphics/Paint;

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMask:Ljava/lang/String;

.field protected mMaskChars:Ljava/lang/StringBuilder;

.field protected mMaxCharLength:I

.field protected mOnPinEnteredListener:Leasypay/widget/OtpEditText$OnOtpEnteredListener;

.field protected mOnTextChangedListener:Leasypay/widget/OtpEditText$OnTextChangedListener;

.field protected mOriginalTextColors:Landroid/content/res/ColorStateList;

.field protected mOtpErrorColor:I

.field protected mStrokeLineSelectedWidth:F

.field protected mStrokeLineWidth:F

.field protected mTextBottomLinePadding:F

.field protected mTextHeight:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x6

    iput v0, p0, Leasypay/widget/OtpEditText;->mMaxCharLength:I

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Leasypay/widget/OtpEditText;->mTextHeight:Landroid/graphics/Rect;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mIsCharInSquare:Z

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Leasypay/widget/OtpEditText;->mMask:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Leasypay/widget/OtpEditText;->mMaskChars:Ljava/lang/StringBuilder;

    .line 56
    iput v0, p0, Leasypay/widget/OtpEditText;->mInputAnimationType:I

    .line 57
    iput v0, p0, Leasypay/widget/OtpEditText;->mErrorAnimationType:I

    .line 58
    const/high16 v2, 0x41c00000    # 24.0f

    iput v2, p0, Leasypay/widget/OtpEditText;->mCharsSpace:F

    .line 60
    const/high16 v2, 0x40c00000    # 6.0f

    iput v2, p0, Leasypay/widget/OtpEditText;->mAllowedNumChars:F

    .line 61
    const/high16 v2, 0x41000000    # 8.0f

    iput v2, p0, Leasypay/widget/OtpEditText;->mTextBottomLinePadding:F

    .line 64
    iput-object v1, p0, Leasypay/widget/OtpEditText;->mOnPinEnteredListener:Leasypay/widget/OtpEditText$OnOtpEnteredListener;

    .line 65
    iput-object v1, p0, Leasypay/widget/OtpEditText;->mOnTextChangedListener:Leasypay/widget/OtpEditText$OnTextChangedListener;

    .line 66
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Leasypay/widget/OtpEditText;->mStrokeLineWidth:F

    .line 67
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Leasypay/widget/OtpEditText;->mStrokeLineSelectedWidth:F

    .line 69
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mAnimateOnInput:Z

    .line 70
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mAnimateOnError:Z

    .line 71
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mHasError:Z

    .line 72
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mActivateError:Z

    .line 73
    iput v0, p0, Leasypay/widget/OtpEditText;->mOtpErrorColor:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->isActive:Z

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 95
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x6

    iput v0, p0, Leasypay/widget/OtpEditText;->mMaxCharLength:I

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Leasypay/widget/OtpEditText;->mTextHeight:Landroid/graphics/Rect;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mIsCharInSquare:Z

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Leasypay/widget/OtpEditText;->mMask:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Leasypay/widget/OtpEditText;->mMaskChars:Ljava/lang/StringBuilder;

    .line 56
    iput v0, p0, Leasypay/widget/OtpEditText;->mInputAnimationType:I

    .line 57
    iput v0, p0, Leasypay/widget/OtpEditText;->mErrorAnimationType:I

    .line 58
    const/high16 v2, 0x41c00000    # 24.0f

    iput v2, p0, Leasypay/widget/OtpEditText;->mCharsSpace:F

    .line 60
    const/high16 v2, 0x40c00000    # 6.0f

    iput v2, p0, Leasypay/widget/OtpEditText;->mAllowedNumChars:F

    .line 61
    const/high16 v2, 0x41000000    # 8.0f

    iput v2, p0, Leasypay/widget/OtpEditText;->mTextBottomLinePadding:F

    .line 64
    iput-object v1, p0, Leasypay/widget/OtpEditText;->mOnPinEnteredListener:Leasypay/widget/OtpEditText$OnOtpEnteredListener;

    .line 65
    iput-object v1, p0, Leasypay/widget/OtpEditText;->mOnTextChangedListener:Leasypay/widget/OtpEditText$OnTextChangedListener;

    .line 66
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Leasypay/widget/OtpEditText;->mStrokeLineWidth:F

    .line 67
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Leasypay/widget/OtpEditText;->mStrokeLineSelectedWidth:F

    .line 69
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mAnimateOnInput:Z

    .line 70
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mAnimateOnError:Z

    .line 71
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mHasError:Z

    .line 72
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mActivateError:Z

    .line 73
    iput v0, p0, Leasypay/widget/OtpEditText;->mOtpErrorColor:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->isActive:Z

    .line 96
    invoke-direct {p0, p1, p2}, Leasypay/widget/OtpEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x6

    iput v0, p0, Leasypay/widget/OtpEditText;->mMaxCharLength:I

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Leasypay/widget/OtpEditText;->mTextHeight:Landroid/graphics/Rect;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mIsCharInSquare:Z

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Leasypay/widget/OtpEditText;->mMask:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Leasypay/widget/OtpEditText;->mMaskChars:Ljava/lang/StringBuilder;

    .line 56
    iput v0, p0, Leasypay/widget/OtpEditText;->mInputAnimationType:I

    .line 57
    iput v0, p0, Leasypay/widget/OtpEditText;->mErrorAnimationType:I

    .line 58
    const/high16 v2, 0x41c00000    # 24.0f

    iput v2, p0, Leasypay/widget/OtpEditText;->mCharsSpace:F

    .line 60
    const/high16 v2, 0x40c00000    # 6.0f

    iput v2, p0, Leasypay/widget/OtpEditText;->mAllowedNumChars:F

    .line 61
    const/high16 v2, 0x41000000    # 8.0f

    iput v2, p0, Leasypay/widget/OtpEditText;->mTextBottomLinePadding:F

    .line 64
    iput-object v1, p0, Leasypay/widget/OtpEditText;->mOnPinEnteredListener:Leasypay/widget/OtpEditText$OnOtpEnteredListener;

    .line 65
    iput-object v1, p0, Leasypay/widget/OtpEditText;->mOnTextChangedListener:Leasypay/widget/OtpEditText$OnTextChangedListener;

    .line 66
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Leasypay/widget/OtpEditText;->mStrokeLineWidth:F

    .line 67
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Leasypay/widget/OtpEditText;->mStrokeLineSelectedWidth:F

    .line 69
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mAnimateOnInput:Z

    .line 70
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mAnimateOnError:Z

    .line 71
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mHasError:Z

    .line 72
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mActivateError:Z

    .line 73
    iput v0, p0, Leasypay/widget/OtpEditText;->mOtpErrorColor:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->isActive:Z

    .line 101
    invoke-direct {p0, p1, p2}, Leasypay/widget/OtpEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x6

    iput v0, p0, Leasypay/widget/OtpEditText;->mMaxCharLength:I

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Leasypay/widget/OtpEditText;->mTextHeight:Landroid/graphics/Rect;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mIsCharInSquare:Z

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Leasypay/widget/OtpEditText;->mMask:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Leasypay/widget/OtpEditText;->mMaskChars:Ljava/lang/StringBuilder;

    .line 56
    iput v0, p0, Leasypay/widget/OtpEditText;->mInputAnimationType:I

    .line 57
    iput v0, p0, Leasypay/widget/OtpEditText;->mErrorAnimationType:I

    .line 58
    const/high16 v2, 0x41c00000    # 24.0f

    iput v2, p0, Leasypay/widget/OtpEditText;->mCharsSpace:F

    .line 60
    const/high16 v2, 0x40c00000    # 6.0f

    iput v2, p0, Leasypay/widget/OtpEditText;->mAllowedNumChars:F

    .line 61
    const/high16 v2, 0x41000000    # 8.0f

    iput v2, p0, Leasypay/widget/OtpEditText;->mTextBottomLinePadding:F

    .line 64
    iput-object v1, p0, Leasypay/widget/OtpEditText;->mOnPinEnteredListener:Leasypay/widget/OtpEditText$OnOtpEnteredListener;

    .line 65
    iput-object v1, p0, Leasypay/widget/OtpEditText;->mOnTextChangedListener:Leasypay/widget/OtpEditText$OnTextChangedListener;

    .line 66
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Leasypay/widget/OtpEditText;->mStrokeLineWidth:F

    .line 67
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Leasypay/widget/OtpEditText;->mStrokeLineSelectedWidth:F

    .line 69
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mAnimateOnInput:Z

    .line 70
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mAnimateOnError:Z

    .line 71
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mHasError:Z

    .line 72
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mActivateError:Z

    .line 73
    iput v0, p0, Leasypay/widget/OtpEditText;->mOtpErrorColor:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->isActive:Z

    .line 107
    invoke-direct {p0, p1, p2}, Leasypay/widget/OtpEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method private animateBottomUp(Ljava/lang/CharSequence;I)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .line 508
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mCharBottom:[F

    iget-object v1, p0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v1, v1, p2

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Leasypay/widget/OtpEditText;->mTextBottomLinePadding:F

    sub-float/2addr v1, v2

    aput v1, v0, p2

    .line 509
    const/4 v0, 0x2

    new-array v1, v0, [F

    iget-object v2, p0, Leasypay/widget/OtpEditText;->mCharBottom:[F

    aget v2, v2, p2

    .line 510
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p0, Leasypay/widget/OtpEditText;->mCharBottom:[F

    aget v2, v2, p2

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 509
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 511
    .local v1, "animUp":Landroid/animation/ValueAnimator;
    const-wide/16 v5, 0x12c

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 512
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 513
    new-instance v2, Leasypay/widget/OtpEditText$6;

    invoke-direct {v2, p0, p2}, Leasypay/widget/OtpEditText$6;-><init>(Leasypay/widget/OtpEditText;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 522
    iget-object v2, p0, Leasypay/widget/OtpEditText;->mLastCharPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 523
    new-array v2, v0, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 524
    .local v2, "animAlpha":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 525
    new-instance v5, Leasypay/widget/OtpEditText$7;

    invoke-direct {v5, p0}, Leasypay/widget/OtpEditText$7;-><init>(Leasypay/widget/OtpEditText;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 533
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 534
    .local v5, "set":Landroid/animation/AnimatorSet;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, p0, Leasypay/widget/OtpEditText;->mMaxCharLength:I

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Leasypay/widget/OtpEditText;->mOnPinEnteredListener:Leasypay/widget/OtpEditText$OnOtpEnteredListener;

    if-eqz v6, :cond_0

    .line 535
    new-instance v6, Leasypay/widget/OtpEditText$8;

    invoke-direct {v6, p0}, Leasypay/widget/OtpEditText$8;-><init>(Leasypay/widget/OtpEditText;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 556
    :cond_0
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 557
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 558
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private animateBounceOnError()V
    .locals 4

    .line 622
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 623
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 624
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x7

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 625
    const-string v3, "translationY"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 624
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 628
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 629
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        -0x3e100000    # -30.0f
        0x0
        -0x3e900000    # -15.0f
        0x0
        0x0
    .end array-data
.end method

.method private animatePopIn()V
    .locals 3

    .line 474
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 475
    .local v0, "va":Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 476
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 477
    new-instance v1, Leasypay/widget/OtpEditText$4;

    invoke-direct {v1, p0}, Leasypay/widget/OtpEditText$4;-><init>(Leasypay/widget/OtpEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 484
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iget v2, p0, Leasypay/widget/OtpEditText;->mMaxCharLength:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Leasypay/widget/OtpEditText;->mOnPinEnteredListener:Leasypay/widget/OtpEditText$OnOtpEnteredListener;

    if-eqz v1, :cond_0

    .line 485
    new-instance v1, Leasypay/widget/OtpEditText$5;

    invoke-direct {v1, p0}, Leasypay/widget/OtpEditText$5;-><init>(Leasypay/widget/OtpEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 504
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 505
    return-void
.end method

.method private animateShakeOnError()V
    .locals 4

    .line 612
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 613
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 614
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/16 v2, 0xa

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 615
    const-string v3, "translationX"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 614
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 618
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 619
    return-void

    :array_0
    .array-data 4
        0x0
        0x41c80000    # 25.0f
        -0x3e380000    # -25.0f
        0x41c80000    # 25.0f
        -0x3e380000    # -25.0f
        0x41700000    # 15.0f
        -0x3e900000    # -15.0f
        0x40c00000    # 6.0f
        -0x3f400000    # -6.0f
        0x0
    .end array-data
.end method

.method private convertDpToPixel(I)I
    .locals 4
    .param p1, "value"    # I

    .line 287
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 288
    .local v0, "r":Landroid/content/res/Resources;
    int-to-float v1, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method private getFullText()Ljava/lang/CharSequence;
    .locals 1

    .line 339
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mMask:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 342
    :cond_0
    invoke-direct {p0}, Leasypay/widget/OtpEditText;->getMaskChars()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private getMaskChars()Ljava/lang/StringBuilder;
    .locals 3

    .line 347
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mMaskChars:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Leasypay/widget/OtpEditText;->mMaskChars:Ljava/lang/StringBuilder;

    .line 350
    :cond_0
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 351
    .local v0, "textLength":I
    :goto_0
    iget-object v1, p0, Leasypay/widget/OtpEditText;->mMaskChars:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 352
    iget-object v1, p0, Leasypay/widget/OtpEditText;->mMaskChars:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 353
    iget-object v1, p0, Leasypay/widget/OtpEditText;->mMaskChars:Ljava/lang/StringBuilder;

    iget-object v2, p0, Leasypay/widget/OtpEditText;->mMask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 355
    :cond_1
    iget-object v1, p0, Leasypay/widget/OtpEditText;->mMaskChars:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 358
    :cond_2
    iget-object v1, p0, Leasypay/widget/OtpEditText;->mMaskChars:Ljava/lang/StringBuilder;

    return-object v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 130
    .local v0, "multi":F
    iget v1, p0, Leasypay/widget/OtpEditText;->mStrokeLineWidth:F

    mul-float v1, v1, v0

    iput v1, p0, Leasypay/widget/OtpEditText;->mStrokeLineWidth:F

    .line 131
    iget v1, p0, Leasypay/widget/OtpEditText;->mStrokeLineSelectedWidth:F

    mul-float v1, v1, v0

    iput v1, p0, Leasypay/widget/OtpEditText;->mStrokeLineSelectedWidth:F

    .line 132
    iget v1, p0, Leasypay/widget/OtpEditText;->mCharsSpace:F

    mul-float v1, v1, v0

    iput v1, p0, Leasypay/widget/OtpEditText;->mCharsSpace:F

    .line 133
    iget v1, p0, Leasypay/widget/OtpEditText;->mTextBottomLinePadding:F

    mul-float v1, v1, v0

    iput v1, p0, Leasypay/widget/OtpEditText;->mTextBottomLinePadding:F

    .line 135
    sget-object v1, Lpaytm/assist/easypay/easypay/R$styleable;->OtpEditText:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 137
    .local v1, "tArray":Landroid/content/res/TypedArray;
    :try_start_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 138
    .local v3, "outValue":Landroid/util/TypedValue;
    sget v4, Lpaytm/assist/easypay/easypay/R$styleable;->OtpEditText_otpInputAnimStyle:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 139
    iget v4, v3, Landroid/util/TypedValue;->data:I

    iput v4, p0, Leasypay/widget/OtpEditText;->mInputAnimationType:I

    .line 140
    sget v4, Lpaytm/assist/easypay/easypay/R$styleable;->OtpEditText_otpErrorAnimStyle:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 141
    iget v4, v3, Landroid/util/TypedValue;->data:I

    iput v4, p0, Leasypay/widget/OtpEditText;->mErrorAnimationType:I

    .line 142
    sget v4, Lpaytm/assist/easypay/easypay/R$styleable;->OtpEditText_otpStrokeLineHeight:I

    iget v5, p0, Leasypay/widget/OtpEditText;->mStrokeLineWidth:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Leasypay/widget/OtpEditText;->mStrokeLineWidth:F

    .line 143
    sget v4, Lpaytm/assist/easypay/easypay/R$styleable;->OtpEditText_otpStrokeLineSelectedHeight:I

    iget v5, p0, Leasypay/widget/OtpEditText;->mStrokeLineSelectedWidth:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Leasypay/widget/OtpEditText;->mStrokeLineSelectedWidth:F

    .line 144
    sget v4, Lpaytm/assist/easypay/easypay/R$styleable;->OtpEditText_otpCharacterSpacing:I

    iget v5, p0, Leasypay/widget/OtpEditText;->mCharsSpace:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Leasypay/widget/OtpEditText;->mCharsSpace:F

    .line 145
    sget v4, Lpaytm/assist/easypay/easypay/R$styleable;->OtpEditText_otpTextBottomLinePadding:I

    iget v5, p0, Leasypay/widget/OtpEditText;->mTextBottomLinePadding:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Leasypay/widget/OtpEditText;->mTextBottomLinePadding:F

    .line 146
    sget v4, Lpaytm/assist/easypay/easypay/R$styleable;->OtpEditText_otpBackgroundIsSquare:I

    iget-boolean v5, p0, Leasypay/widget/OtpEditText;->mIsCharInSquare:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Leasypay/widget/OtpEditText;->mIsCharInSquare:Z

    .line 147
    sget v4, Lpaytm/assist/easypay/easypay/R$styleable;->OtpEditText_otpBackgroundDrawable:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Leasypay/widget/OtpEditText;->mCharBackground:Landroid/graphics/drawable/Drawable;

    .line 148
    sget v4, Lpaytm/assist/easypay/easypay/R$styleable;->OtpEditText_otpErrorTextColor:I

    const v5, -0x777778

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Leasypay/widget/OtpEditText;->mOtpErrorColor:I

    .line 151
    sget v4, Lpaytm/assist/easypay/easypay/R$styleable;->OtpEditText_otpLineErrorColor:I

    .line 152
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [I

    const v9, 0x10100a2

    aput v9, v8, v2

    const-string v10, "#fd5c5c"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v8, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .line 151
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Leasypay/widget/OtpEditText;->mLineErrorTextColor:I

    .line 153
    sget v4, Lpaytm/assist/easypay/easypay/R$styleable;->OtpEditText_otpLineFocusedColor:I

    .line 154
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    new-array v8, v7, [I

    const v10, 0x101009c

    aput v10, v8, v2

    const v11, -0xbbbbbc

    invoke-virtual {v6, v8, v11}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .line 153
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Leasypay/widget/OtpEditText;->mLineFocusedColor:I

    .line 155
    sget v4, Lpaytm/assist/easypay/easypay/R$styleable;->OtpEditText_otpLineNextCharColor:I

    .line 156
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    new-array v8, v7, [I

    aput v10, v8, v2

    invoke-virtual {v6, v8, v11}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .line 155
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Leasypay/widget/OtpEditText;->mLineNextCharColor:I

    .line 157
    sget v4, Lpaytm/assist/easypay/easypay/R$styleable;->OtpEditText_otpLineUnFocusedColor:I

    .line 158
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    new-array v8, v7, [I

    aput v9, v8, v2

    invoke-virtual {v6, v8, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    .line 157
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Leasypay/widget/OtpEditText;->mLineUnFocusedColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .end local v3    # "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    nop

    .line 163
    new-instance v3, Landroid/graphics/Paint;

    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, p0, Leasypay/widget/OtpEditText;->mCharPaint:Landroid/graphics/Paint;

    .line 164
    new-instance v3, Landroid/graphics/Paint;

    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, p0, Leasypay/widget/OtpEditText;->mLastCharPaint:Landroid/graphics/Paint;

    .line 165
    new-instance v3, Landroid/graphics/Paint;

    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, p0, Leasypay/widget/OtpEditText;->mLinesPaint:Landroid/graphics/Paint;

    .line 166
    iget v4, p0, Leasypay/widget/OtpEditText;->mStrokeLineWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 167
    invoke-virtual {p0, v2}, Leasypay/widget/OtpEditText;->setBackgroundResource(I)V

    .line 170
    const/4 v3, 0x6

    const-string v4, "http://schemas.android.com/apk/res/android"

    const-string v5, "maxLength"

    invoke-interface {p2, v4, v5, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Leasypay/widget/OtpEditText;->mMaxCharLength:I

    .line 171
    int-to-float v3, v3

    iput v3, p0, Leasypay/widget/OtpEditText;->mAllowedNumChars:F

    .line 172
    float-to-int v3, v3

    new-array v3, v3, [F

    iput-object v3, p0, Leasypay/widget/OtpEditText;->mCharDrawSize:[F

    .line 175
    new-instance v3, Leasypay/widget/OtpEditText$1;

    invoke-direct {v3, p0}, Leasypay/widget/OtpEditText$1;-><init>(Leasypay/widget/OtpEditText;)V

    invoke-super {p0, v3}, Landroidx/appcompat/widget/AppCompatEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 196
    new-instance v3, Leasypay/widget/OtpEditText$2;

    invoke-direct {v3, p0}, Leasypay/widget/OtpEditText$2;-><init>(Leasypay/widget/OtpEditText;)V

    invoke-super {p0, v3}, Landroidx/appcompat/widget/AppCompatEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    new-instance v3, Leasypay/widget/OtpEditText$3;

    invoke-direct {v3, p0}, Leasypay/widget/OtpEditText$3;-><init>(Leasypay/widget/OtpEditText;)V

    invoke-super {p0, v3}, Landroidx/appcompat/widget/AppCompatEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 222
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getInputType()I

    move-result v3

    const/16 v4, 0x80

    and-int/2addr v3, v4

    const-string v5, "\u25cf"

    if-ne v3, v4, :cond_0

    .line 223
    iput-object v5, p0, Leasypay/widget/OtpEditText;->mMask:Ljava/lang/String;

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getInputType()I

    move-result v3

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    .line 225
    iput-object v5, p0, Leasypay/widget/OtpEditText;->mMask:Ljava/lang/String;

    .line 228
    :cond_1
    :goto_0
    iget-object v3, p0, Leasypay/widget/OtpEditText;->mMask:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 229
    invoke-direct {p0}, Leasypay/widget/OtpEditText;->getMaskChars()Ljava/lang/StringBuilder;

    move-result-object v3

    iput-object v3, p0, Leasypay/widget/OtpEditText;->mMaskChars:Ljava/lang/StringBuilder;

    .line 233
    :cond_2
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Leasypay/widget/OtpEditText;->mTextHeight:Landroid/graphics/Rect;

    const-string v5, "|"

    invoke-virtual {v3, v5, v2, v7, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 235
    iget v3, p0, Leasypay/widget/OtpEditText;->mInputAnimationType:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Leasypay/widget/OtpEditText;->mAnimateOnInput:Z

    .line 236
    iget v3, p0, Leasypay/widget/OtpEditText;->mErrorAnimationType:I

    if-le v3, v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, p0, Leasypay/widget/OtpEditText;->mAnimateOnError:Z

    .line 237
    return-void

    .line 160
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    throw v2
.end method

.method private updateColorForLines(II)V
    .locals 2
    .param p1, "currentIndex"    # I
    .param p2, "textLength"    # I

    .line 367
    iget-boolean v0, p0, Leasypay/widget/OtpEditText;->mHasError:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mLinesPaint:Landroid/graphics/Paint;

    iget v1, p0, Leasypay/widget/OtpEditText;->mLineErrorTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 369
    :cond_0
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 370
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mLinesPaint:Landroid/graphics/Paint;

    iget v1, p0, Leasypay/widget/OtpEditText;->mStrokeLineSelectedWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 371
    if-eq p1, p2, :cond_3

    iget v0, p0, Leasypay/widget/OtpEditText;->mMaxCharLength:I

    if-ne p2, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Leasypay/widget/OtpEditText;->isActive:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 373
    :cond_1
    if-ge p1, p2, :cond_2

    .line 374
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mLinesPaint:Landroid/graphics/Paint;

    iget v1, p0, Leasypay/widget/OtpEditText;->mLineFocusedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 376
    :cond_2
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mLinesPaint:Landroid/graphics/Paint;

    iget v1, p0, Leasypay/widget/OtpEditText;->mLineUnFocusedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 372
    :cond_3
    :goto_0
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mLinesPaint:Landroid/graphics/Paint;

    iget v1, p0, Leasypay/widget/OtpEditText;->mLineNextCharColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 379
    :cond_4
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mLinesPaint:Landroid/graphics/Paint;

    iget v1, p0, Leasypay/widget/OtpEditText;->mStrokeLineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 380
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mLinesPaint:Landroid/graphics/Paint;

    iget v1, p0, Leasypay/widget/OtpEditText;->mLineUnFocusedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 382
    :goto_1
    return-void
.end method


# virtual methods
.method public activateOtpError()V
    .locals 2

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mActivateError:Z

    .line 595
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mHasError:Z

    .line 596
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mCharPaint:Landroid/graphics/Paint;

    iget v1, p0, Leasypay/widget/OtpEditText;->mOtpErrorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 597
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mLastCharPaint:Landroid/graphics/Paint;

    iget v1, p0, Leasypay/widget/OtpEditText;->mOtpErrorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 598
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->invalidate()V

    .line 601
    iget-boolean v0, p0, Leasypay/widget/OtpEditText;->mAnimateOnError:Z

    if-eqz v0, :cond_1

    .line 602
    iget v0, p0, Leasypay/widget/OtpEditText;->mErrorAnimationType:I

    if-nez v0, :cond_0

    .line 603
    invoke-direct {p0}, Leasypay/widget/OtpEditText;->animateShakeOnError()V

    goto :goto_0

    .line 606
    :cond_0
    invoke-direct {p0}, Leasypay/widget/OtpEditText;->animateBounceOnError()V

    .line 609
    :cond_1
    :goto_0
    return-void
.end method

.method public animateText(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .line 561
    iput-boolean p1, p0, Leasypay/widget/OtpEditText;->mAnimateOnInput:Z

    .line 562
    return-void
.end method

.method public focus()V
    .locals 2

    .line 411
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->requestFocus()Z

    .line 414
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 415
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 416
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 417
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 419
    :cond_0
    return-void
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .line 570
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Leasypay/widget/OtpEditText;->isActive:Z

    return v0
.end method

.method public isError()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Leasypay/widget/OtpEditText;->mHasError:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 310
    invoke-direct {p0}, Leasypay/widget/OtpEditText;->getFullText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 311
    .local v7, "text":Ljava/lang/CharSequence;
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 312
    .local v0, "textLength":I
    iget-object v1, p0, Leasypay/widget/OtpEditText;->mCharDrawSize:[F

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 313
    array-length v0, v1

    move v8, v0

    goto :goto_0

    .line 312
    :cond_0
    move v8, v0

    .line 315
    .end local v0    # "textLength":I
    .local v8, "textLength":I
    :goto_0
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Leasypay/widget/OtpEditText;->mCharDrawSize:[F

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9, v8, v1}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 316
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_1
    int-to-float v0, v10

    iget v1, p0, Leasypay/widget/OtpEditText;->mAllowedNumChars:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 318
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mCharBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 319
    const/4 v0, 0x1

    if-ge v10, v8, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ne v10, v8, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v1, v0}, Leasypay/widget/OtpEditText;->updateDrawableState(ZZ)V

    .line 320
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mCharBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v1, v1, v10

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v2, v2, v10

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v3, v3, v10

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v4, v4, v10

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 321
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mCharBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 323
    :cond_3
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v0, v0, v10

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Leasypay/widget/OtpEditText;->mCharSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v11, v0, v1

    .line 324
    .local v11, "middle":F
    if-le v8, v10, :cond_6

    .line 325
    iget-boolean v0, p0, Leasypay/widget/OtpEditText;->mAnimateOnInput:Z

    if-eqz v0, :cond_5

    add-int/lit8 v0, v8, -0x1

    if-eq v10, v0, :cond_4

    goto :goto_4

    .line 328
    :cond_4
    add-int/lit8 v3, v10, 0x1

    iget-object v0, p0, Leasypay/widget/OtpEditText;->mCharDrawSize:[F

    aget v0, v0, v10

    div-float/2addr v0, v2

    sub-float v4, v11, v0

    iget-object v0, p0, Leasypay/widget/OtpEditText;->mCharBottom:[F

    aget v5, v0, v10

    iget-object v6, p0, Leasypay/widget/OtpEditText;->mLastCharPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, v7

    move v2, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 326
    :cond_5
    :goto_4
    add-int/lit8 v3, v10, 0x1

    iget-object v0, p0, Leasypay/widget/OtpEditText;->mCharDrawSize:[F

    aget v0, v0, v10

    div-float/2addr v0, v2

    sub-float v4, v11, v0

    iget-object v0, p0, Leasypay/widget/OtpEditText;->mCharBottom:[F

    aget v5, v0, v10

    iget-object v6, p0, Leasypay/widget/OtpEditText;->mCharPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, v7

    move v2, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 331
    :cond_6
    :goto_5
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mCharBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    .line 332
    invoke-direct {p0, v10, v8}, Leasypay/widget/OtpEditText;->updateColorForLines(II)V

    .line 333
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v0, v0, v10

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v0, v0, v10

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v0, v0, v10

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v0, v0, v10

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Leasypay/widget/OtpEditText;->mLinesPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 316
    .end local v11    # "middle":F
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 336
    .end local v10    # "i":I
    :cond_8
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 16
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 241
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p4}, Landroidx/appcompat/widget/AppCompatEditText;->onSizeChanged(IIII)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Leasypay/widget/OtpEditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Leasypay/widget/OtpEditText;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    .line 243
    if-eqz v1, :cond_0

    .line 244
    iget-object v2, v0, Leasypay/widget/OtpEditText;->mLastCharPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-object v1, v0, Leasypay/widget/OtpEditText;->mCharPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Leasypay/widget/OtpEditText;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    :cond_0
    invoke-virtual/range {p0 .. p0}, Leasypay/widget/OtpEditText;->getWidth()I

    move-result v1

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 248
    .local v1, "availableWidth":I
    iget v2, v0, Leasypay/widget/OtpEditText;->mCharsSpace:F

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    cmpg-float v7, v2, v5

    if-gez v7, :cond_1

    .line 249
    int-to-float v2, v1

    iget v7, v0, Leasypay/widget/OtpEditText;->mAllowedNumChars:F

    mul-float v7, v7, v6

    sub-float/2addr v7, v4

    div-float/2addr v2, v7

    iput v2, v0, Leasypay/widget/OtpEditText;->mCharSize:F

    goto :goto_0

    .line 251
    :cond_1
    int-to-float v7, v1

    iget v8, v0, Leasypay/widget/OtpEditText;->mAllowedNumChars:F

    sub-float v4, v8, v4

    mul-float v2, v2, v4

    sub-float/2addr v7, v2

    div-float/2addr v7, v8

    invoke-direct {v0, v3}, Leasypay/widget/OtpEditText;->convertDpToPixel(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v7, v2

    iput v7, v0, Leasypay/widget/OtpEditText;->mCharSize:F

    .line 253
    :goto_0
    iget v2, v0, Leasypay/widget/OtpEditText;->mAllowedNumChars:F

    float-to-int v4, v2

    new-array v4, v4, [Landroid/graphics/RectF;

    iput-object v4, v0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    .line 254
    float-to-int v2, v2

    new-array v2, v2, [F

    iput-object v2, v0, Leasypay/widget/OtpEditText;->mCharBottom:[F

    .line 256
    invoke-virtual/range {p0 .. p0}, Leasypay/widget/OtpEditText;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Leasypay/widget/OtpEditText;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    .line 258
    .local v2, "bottom":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    move v4, v7

    .line 259
    .local v4, "isLayoutRtl":Z
    if-eqz v4, :cond_3

    .line 260
    const/4 v3, -0x1

    .line 261
    .local v3, "rtlFlag":I
    invoke-virtual/range {p0 .. p0}, Leasypay/widget/OtpEditText;->getWidth()I

    move-result v7

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v0, Leasypay/widget/OtpEditText;->mCharSize:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    .local v7, "startX":I
    goto :goto_2

    .line 263
    .end local v3    # "rtlFlag":I
    .end local v7    # "startX":I
    :cond_3
    const/4 v7, 0x1

    .line 264
    .local v7, "rtlFlag":I
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v8

    invoke-direct {v0, v3}, Leasypay/widget/OtpEditText;->convertDpToPixel(I)I

    move-result v3

    add-int/2addr v3, v8

    move v15, v7

    move v7, v3

    move v3, v15

    .line 266
    .restart local v3    # "rtlFlag":I
    .local v7, "startX":I
    :goto_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    int-to-float v9, v8

    iget v10, v0, Leasypay/widget/OtpEditText;->mAllowedNumChars:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_7

    .line 267
    iget-object v9, v0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    new-instance v10, Landroid/graphics/RectF;

    int-to-float v11, v7

    int-to-float v12, v2

    int-to-float v13, v7

    iget v14, v0, Leasypay/widget/OtpEditText;->mCharSize:F

    add-float/2addr v13, v14

    int-to-float v14, v2

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v10, v9, v8

    .line 268
    iget-object v9, v0, Leasypay/widget/OtpEditText;->mCharBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_5

    .line 269
    iget-boolean v9, v0, Leasypay/widget/OtpEditText;->mIsCharInSquare:Z

    if-eqz v9, :cond_4

    .line 270
    iget-object v9, v0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v9, v9, v8

    invoke-virtual/range {p0 .. p0}, Leasypay/widget/OtpEditText;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    iput v10, v9, Landroid/graphics/RectF;->top:F

    .line 271
    iget-object v9, v0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v10, v9, v8

    int-to-float v11, v7

    aget-object v9, v9, v8

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    add-float/2addr v11, v9

    iput v11, v10, Landroid/graphics/RectF;->right:F

    goto :goto_4

    .line 273
    :cond_4
    iget-object v9, v0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v9, v9, v8

    iget v10, v9, Landroid/graphics/RectF;->top:F

    iget-object v11, v0, Leasypay/widget/OtpEditText;->mTextHeight:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Leasypay/widget/OtpEditText;->mTextBottomLinePadding:F

    mul-float v12, v12, v6

    add-float/2addr v11, v12

    sub-float/2addr v10, v11

    iput v10, v9, Landroid/graphics/RectF;->top:F

    .line 277
    :cond_5
    :goto_4
    iget v9, v0, Leasypay/widget/OtpEditText;->mCharsSpace:F

    cmpg-float v10, v9, v5

    if-gez v10, :cond_6

    .line 278
    int-to-float v9, v7

    int-to-float v10, v3

    iget v11, v0, Leasypay/widget/OtpEditText;->mCharSize:F

    mul-float v10, v10, v11

    mul-float v10, v10, v6

    add-float/2addr v9, v10

    float-to-int v7, v9

    goto :goto_5

    .line 280
    :cond_6
    int-to-float v10, v7

    int-to-float v11, v3

    iget v12, v0, Leasypay/widget/OtpEditText;->mCharSize:F

    add-float/2addr v12, v9

    mul-float v11, v11, v12

    add-float/2addr v10, v11

    float-to-int v7, v10

    .line 282
    :goto_5
    iget-object v9, v0, Leasypay/widget/OtpEditText;->mCharBottom:[F

    iget-object v10, v0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v10, v10, v8

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    iget v11, v0, Leasypay/widget/OtpEditText;->mTextBottomLinePadding:F

    sub-float/2addr v10, v11

    aput v10, v9, v8

    .line 266
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 284
    .end local v8    # "i":I
    :cond_7
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leasypay/widget/OtpEditText;->setError(Z)V

    .line 441
    iget-object v1, p0, Leasypay/widget/OtpEditText;->mOnTextChangedListener:Leasypay/widget/OtpEditText$OnTextChangedListener;

    if-eqz v1, :cond_0

    .line 442
    invoke-interface {v1}, Leasypay/widget/OtpEditText$OnTextChangedListener;->onTextChanged()V

    .line 444
    :cond_0
    iget-boolean v1, p0, Leasypay/widget/OtpEditText;->mActivateError:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Leasypay/widget/OtpEditText;->mHasError:Z

    if-eqz v1, :cond_2

    .line 445
    :cond_1
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mActivateError:Z

    .line 446
    iput-boolean v0, p0, Leasypay/widget/OtpEditText;->mHasError:Z

    .line 447
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 448
    iget-object v1, p0, Leasypay/widget/OtpEditText;->mLastCharPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mCharPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Leasypay/widget/OtpEditText;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 452
    :cond_2
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mLineCoords:[Landroid/graphics/RectF;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Leasypay/widget/OtpEditText;->mAnimateOnInput:Z

    if-nez v0, :cond_3

    goto :goto_1

    .line 459
    :cond_3
    iget v0, p0, Leasypay/widget/OtpEditText;->mInputAnimationType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 460
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->invalidate()V

    .line 461
    return-void

    .line 464
    :cond_4
    if-le p4, p3, :cond_6

    .line 465
    if-nez v0, :cond_5

    .line 466
    invoke-direct {p0}, Leasypay/widget/OtpEditText;->animatePopIn()V

    goto :goto_0

    .line 468
    :cond_5
    invoke-direct {p0, p1, p2}, Leasypay/widget/OtpEditText;->animateBottomUp(Ljava/lang/CharSequence;I)V

    .line 471
    :cond_6
    :goto_0
    return-void

    .line 453
    :cond_7
    :goto_1
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mOnPinEnteredListener:Leasypay/widget/OtpEditText$OnOtpEnteredListener;

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Leasypay/widget/OtpEditText;->mMaxCharLength:I

    if-ne v0, v1, :cond_8

    .line 454
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mOnPinEnteredListener:Leasypay/widget/OtpEditText$OnOtpEnteredListener;

    invoke-interface {v0, p1}, Leasypay/widget/OtpEditText$OnOtpEnteredListener;->onOtpCompleted(Ljava/lang/CharSequence;)V

    .line 456
    :cond_8
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 424
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onTextContextMenuItem(I)Z

    move-result v0

    .line 425
    .local v0, "consumed":Z
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 427
    :pswitch_0
    iget-object v1, p0, Leasypay/widget/OtpEditText;->mOnTextChangedListener:Leasypay/widget/OtpEditText$OnTextChangedListener;

    invoke-interface {v1}, Leasypay/widget/OtpEditText$OnTextChangedListener;->onTextPasted()V

    .line 430
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1020022
        :pswitch_0
    .end packed-switch
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .line 125
    iput-boolean p1, p0, Leasypay/widget/OtpEditText;->isActive:Z

    .line 126
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .line 304
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCustomSelectionActionModeCallback() is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 581
    const-string v0, "OtpEditText"

    const-string v1, "setError(CharSequence error) is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 586
    const-string v0, "OtpEditText"

    const-string v1, "setError(CharSequence error, Drawable icon) is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-void
.end method

.method public setError(Z)V
    .locals 0
    .param p1, "hasError"    # Z

    .line 400
    iput-boolean p1, p0, Leasypay/widget/OtpEditText;->mHasError:Z

    .line 401
    return-void
.end method

.method public setMaxLength(I)V
    .locals 3
    .param p1, "maxLength"    # I

    .line 111
    iput p1, p0, Leasypay/widget/OtpEditText;->mMaxCharLength:I

    .line 112
    int-to-float v0, p1

    iput v0, p0, Leasypay/widget/OtpEditText;->mAllowedNumChars:F

    .line 113
    float-to-int v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Leasypay/widget/OtpEditText;->mCharDrawSize:[F

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Leasypay/widget/OtpEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leasypay/widget/OtpEditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->invalidate()V

    .line 118
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 293
    iput-object p1, p0, Leasypay/widget/OtpEditText;->mClickListener:Landroid/view/View$OnClickListener;

    .line 294
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .line 298
    iput-object p1, p0, Leasypay/widget/OtpEditText;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 299
    return-void
.end method

.method public setOnPinEnteredListener(Leasypay/widget/OtpEditText$OnOtpEnteredListener;)V
    .locals 0
    .param p1, "l"    # Leasypay/widget/OtpEditText$OnOtpEnteredListener;

    .line 565
    iput-object p1, p0, Leasypay/widget/OtpEditText;->mOnPinEnteredListener:Leasypay/widget/OtpEditText$OnOtpEnteredListener;

    .line 566
    return-void
.end method

.method public setOnTextChangedListener(Leasypay/widget/OtpEditText$OnTextChangedListener;)V
    .locals 0
    .param p1, "onTextChangedListener"    # Leasypay/widget/OtpEditText$OnTextChangedListener;

    .line 435
    iput-object p1, p0, Leasypay/widget/OtpEditText;->mOnTextChangedListener:Leasypay/widget/OtpEditText$OnTextChangedListener;

    .line 436
    return-void
.end method

.method protected updateDrawableState(ZZ)V
    .locals 4
    .param p1, "hasText"    # Z
    .param p2, "isNext"    # Z

    .line 385
    iget-boolean v0, p0, Leasypay/widget/OtpEditText;->mHasError:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mCharBackground:Landroid/graphics/drawable/Drawable;

    new-array v2, v2, [I

    const v3, 0x10100a2

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p0}, Leasypay/widget/OtpEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mCharBackground:Landroid/graphics/drawable/Drawable;

    new-array v2, v2, [I

    const v3, 0x101009c

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 389
    const/4 v0, 0x2

    if-eqz p2, :cond_1

    .line 390
    iget-object v1, p0, Leasypay/widget/OtpEditText;->mCharBackground:Landroid/graphics/drawable/Drawable;

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 391
    :cond_1
    if-eqz p1, :cond_3

    .line 392
    iget-object v1, p0, Leasypay/widget/OtpEditText;->mCharBackground:Landroid/graphics/drawable/Drawable;

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 395
    :cond_2
    iget-object v0, p0, Leasypay/widget/OtpEditText;->mCharBackground:Landroid/graphics/drawable/Drawable;

    new-array v2, v2, [I

    const v3, -0x101009c

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 397
    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x101009c
        0x10100a1
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x10100a0
    .end array-data
.end method
