.class public Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularAnimatedDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final ANGLE_ANIMATOR_DURATION:I = 0x7d0

.field private static final ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final MAX_PROGRESS:I = 0x64

.field public static final MIN_PROGRESS:I = 0x0

.field private static final MIN_SWEEP_ANGLE:Ljava/lang/Float;

.field private static final PROGRESS_ANIMATOR_DURATION:I = 0xc8

.field private static final SWEEP_ANIMATOR_DURATION:I = 0x2bc

.field private static final SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final fBounds:Landroid/graphics/RectF;

.field private mAnimatedView:Landroid/view/View;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBorderWidth:F

.field private mCurrentGlobalAngle:F

.field private mCurrentGlobalAngleOffset:F

.field private mCurrentSweepAngle:F

.field private mModeAppearing:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRunning:Z

.field private mValueAnimatorAngle:Landroid/animation/ValueAnimator;

.field private mValueAnimatorProgress:Landroid/animation/ValueAnimator;

.field private mValueAnimatorSweep:Landroid/animation/ValueAnimator;

.field private progress:I

.field private shouldDraw:Z

.field private shownProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 32
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 36
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->MIN_SWEEP_ANGLE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;FI)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "borderWidth"    # F
    .param p3, "arcColor"    # I

    .line 60
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    .line 61
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mAnimatedView:Landroid/view/View;

    .line 63
    iput p2, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mBorderWidth:F

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    invoke-direct {p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->setupAnimations()V

    .line 73
    iput-boolean v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->shouldDraw:Z

    .line 75
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 76
    return-void
.end method

.method static synthetic access$002(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;
    .param p1, "x1"    # F

    .line 23
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mCurrentGlobalAngle:F

    return p1
.end method

.method static synthetic access$100(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;)V
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    .line 23
    invoke-direct {p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->toggleAppearingMode()V

    return-void
.end method

.method static synthetic access$200(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;)Z
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    .line 23
    iget-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->shouldDraw:Z

    return v0
.end method

.method static synthetic access$202(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->shouldDraw:Z

    return p1
.end method

.method static synthetic access$300(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;)F
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    .line 23
    iget v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mCurrentSweepAngle:F

    return v0
.end method

.method static synthetic access$302(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;
    .param p1, "x1"    # F

    .line 23
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mCurrentSweepAngle:F

    return p1
.end method

.method static synthetic access$400(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    .line 23
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mAnimatedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;
    .param p1, "x1"    # F

    .line 23
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->shownProgress:F

    return p1
.end method

.method private setupAnimations()V
    .locals 5

    .line 173
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    .line 174
    sget-object v2, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    iget-object v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 176
    iget-object v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 177
    iget-object v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    new-instance v3, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$1;

    invoke-direct {v3, p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$1;-><init>(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 184
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v3, v0, v1

    sget-object v1, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->MIN_SWEEP_ANGLE:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float/2addr v3, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    .line 185
    sget-object v1, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 187
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 188
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    new-instance v1, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$2;

    invoke-direct {v1, p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$2;-><init>(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    new-instance v1, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$3;

    invoke-direct {v1, p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$3;-><init>(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 212
    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private toggleAppearingMode()V
    .locals 3

    .line 219
    iget-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mModeAppearing:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mModeAppearing:Z

    .line 221
    if-eqz v0, :cond_0

    .line 222
    iget v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mCurrentGlobalAngleOffset:F

    sget-object v1, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->MIN_SWEEP_ANGLE:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mCurrentGlobalAngleOffset:F

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 228
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 230
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 231
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 234
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    .line 236
    iget-object v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 238
    iget-object v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 239
    iget-object v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 242
    :cond_1
    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    .line 244
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 245
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 247
    :cond_2
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 248
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 251
    :cond_3
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    .line 252
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 253
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 255
    :cond_4
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 138
    iget v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mCurrentGlobalAngle:F

    iget v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mCurrentGlobalAngleOffset:F

    sub-float/2addr v0, v1

    .line 139
    .local v0, "startAngle":F
    iget v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mCurrentSweepAngle:F

    .line 141
    .local v1, "sweepAngle":F
    iget v2, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->progress:I

    if-ltz v2, :cond_0

    const/16 v3, 0x64

    if-gt v2, v3, :cond_0

    .line 142
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 143
    iget v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->shownProgress:F

    goto :goto_0

    .line 144
    :cond_0
    iget-boolean v2, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mModeAppearing:Z

    if-nez v2, :cond_1

    .line 145
    add-float/2addr v0, v1

    .line 146
    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v2, v1

    sget-object v3, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->MIN_SWEEP_ANGLE:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v1, v2, v3

    goto :goto_0

    .line 148
    :cond_1
    sget-object v2, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->MIN_SWEEP_ANGLE:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    .line 151
    :goto_0
    iget-object v3, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    const/4 v6, 0x0

    iget-object v7, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v0

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 152
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 166
    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 80
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 81
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mBorderWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 82
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v4, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mBorderWidth:F

    div-float/2addr v4, v3

    sub-float/2addr v1, v4

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 83
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v4, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mBorderWidth:F

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 84
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v4, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mBorderWidth:F

    div-float/2addr v4, v3

    sub-float/2addr v1, v4

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 85
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 156
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 157
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 161
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 162
    return-void
.end method

.method public setLoadingBarColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 88
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    return-void
.end method

.method public setProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .line 258
    iget v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->progress:I

    if-ne v0, p1, :cond_0

    .line 259
    return-void

    .line 261
    :cond_0
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->progress:I

    .line 263
    if-gez p1, :cond_1

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->shownProgress:F

    .line 266
    :cond_1
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    const v1, 0x40666666    # 3.6f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v0, :cond_2

    .line 267
    new-array v0, v4, [F

    iget v4, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->shownProgress:F

    aput v4, v0, v3

    int-to-float v3, p1

    mul-float v3, v3, v1

    aput v3, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    .line 268
    sget-object v1, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 269
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 270
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    new-instance v1, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$4;

    invoke-direct {v1, p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable$4;-><init>(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 280
    :cond_3
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    new-array v4, v4, [F

    iget v5, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->shownProgress:F

    aput v5, v4, v3

    int-to-float v3, p1

    mul-float v3, v3, v1

    aput v3, v4, v2

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 283
    :goto_0
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    .line 284
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 286
    :cond_4
    return-void
.end method

.method public start()V
    .locals 5

    .line 96
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mRunning:Z

    .line 102
    iget-object v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    iget-object v4, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    aput-object v4, v2, v3

    iget-object v3, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 103
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 105
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 107
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mRunning:Z

    .line 119
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 120
    return-void
.end method
