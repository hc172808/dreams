.class public Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularRevealAnimatedDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private bitMapXOffset:F

.field private bitMapYOffset:F

.field private isRunning:Z

.field private mAnimatedView:Landroid/view/View;

.field private mCenterHeith:F

.field private mCenterWidth:F

.field private mFinalRadius:F

.field private mImageReadyAlpha:I

.field private mIsFilled:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintImageReady:Landroid/graphics/Paint;

.field private mRadius:F

.field private mReadyImage:Landroid/graphics/Bitmap;

.field private mRevealInAnimation:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fillColor"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .line 47
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 48
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mAnimatedView:Landroid/view/View;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->isRunning:Z

    .line 51
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 52
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mPaintImageReady:Landroid/graphics/Paint;

    .line 57
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mPaintImageReady:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mPaintImageReady:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iput-object p3, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mReadyImage:Landroid/graphics/Bitmap;

    .line 62
    iput v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mImageReadyAlpha:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mRadius:F

    .line 65
    return-void
.end method

.method static synthetic access$002(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;I)I
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mImageReadyAlpha:I

    return p1
.end method

.method static synthetic access$100(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

    .line 24
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mAnimatedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;
    .param p1, "x1"    # F

    .line 24
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mRadius:F

    return p1
.end method

.method static synthetic access$302(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mIsFilled:Z

    return p1
.end method

.method private setupAnimations()V
    .locals 4

    .line 98
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 99
    .local v1, "alphaAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x50

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    new-instance v2, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable$1;

    invoke-direct {v2, p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable$1;-><init>(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 109
    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    iget v2, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mFinalRadius:F

    const/4 v3, 0x1

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    .line 110
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 111
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 112
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable$2;

    invoke-direct {v2, p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable$2;-><init>(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 120
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable$3;

    invoke-direct {v2, p0, v1}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable$3;-><init>(Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 129
    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 189
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 191
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 192
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    .line 196
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 169
    iget v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mCenterWidth:F

    iget v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mCenterHeith:F

    iget v2, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mRadius:F

    iget-object v3, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 171
    iget-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mIsFilled:Z

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mPaintImageReady:Landroid/graphics/Paint;

    iget v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mImageReadyAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 173
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mReadyImage:Landroid/graphics/Bitmap;

    iget v1, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->bitMapXOffset:F

    iget v2, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->bitMapYOffset:F

    iget-object v3, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mPaintImageReady:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 175
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 185
    const/4 v0, -0x1

    return v0
.end method

.method public isFilled()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mIsFilled:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->isRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 78
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 80
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 81
    .local v0, "bitMapWidth":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    int-to-double v4, v1

    mul-double v4, v4, v2

    double-to-int v1, v4

    .line 83
    .local v1, "bitMapHeight":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->bitMapXOffset:F

    .line 84
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->bitMapYOffset:F

    .line 86
    iget-object v2, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mReadyImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mReadyImage:Landroid/graphics/Bitmap;

    .line 88
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mFinalRadius:F

    .line 89
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mCenterWidth:F

    .line 90
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mCenterHeith:F

    .line 91
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 178
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 181
    return-void
.end method

.method public start()V
    .locals 1

    .line 136
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->setupAnimations()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->isRunning:Z

    .line 142
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 143
    return-void
.end method

.method public stop()V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->isRunning:Z

    .line 155
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 156
    return-void
.end method
