.class public Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;
.super Landroid/widget/EditText;
.source "CircularProgressEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;
    }
.end annotation


# instance fields
.field private mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mButtonText:Ljava/lang/String;

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field private mInitialHeight:Ljava/lang/Integer;

.field private mInitialWidth:I

.field private mIsMorphingInProgress:Z

.field private mPaddingProgress:I

.field private mSpinningBarColor:I

.field private mSpinningBarWidth:F

.field private mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    return-void
.end method

.method static synthetic access$002(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;Z)Z
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;
    .param p1, "x1"    # Z

    .line 22
    iput-boolean p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mIsMorphingInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;

    .line 22
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mButtonText:Ljava/lang/String;

    return-object v0
.end method

.method private drawIndeterminateProgress(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 107
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-virtual {v0, p1}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 108
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 109
    .local v0, "offset":I
    new-instance v1, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    iget v2, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mSpinningBarWidth:F

    iget v3, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mSpinningBarColor:I

    invoke-direct {v1, p0, v2, v3}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;-><init>(Landroid/view/View;FI)V

    iput-object v1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    .line 113
    iget v1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mPaddingProgress:I

    add-int/2addr v1, v0

    .line 114
    .local v1, "left":I
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mPaddingProgress:I

    sub-int/2addr v2, v3

    .line 115
    .local v2, "right":I
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->getHeight()I

    move-result v3

    iget v4, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mPaddingProgress:I

    sub-int/2addr v3, v4

    .line 116
    .local v3, "bottom":I
    iget v4, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mPaddingProgress:I

    .line 118
    .local v4, "top":I
    iget-object v5, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-virtual {v5, v1, v4, v2, v3}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->setBounds(IIII)V

    .line 119
    iget-object v5, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-virtual {v5, p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 120
    iget-object v5, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-virtual {v5}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->start()V

    .line 121
    .end local v0    # "offset":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "bottom":I
    .end local v4    # "top":I
    nop

    .line 124
    :goto_1
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mPaddingProgress:I

    .line 70
    if-nez p2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100d4

    aput v2, v1, v0

    .line 77
    .local v1, "attrsArray":[I
    sget-object v2, Lbr/com/simplepass/loading_button_lib/R$styleable;->CircularProgressButton:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 78
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 79
    .local v3, "typedArrayBG":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    sget v0, Lbr/com/simplepass/loading_button_lib/R$styleable;->CircularProgressButton_spinning_bar_width:I

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mSpinningBarWidth:F

    .line 82
    sget v0, Lbr/com/simplepass/loading_button_lib/R$styleable;->CircularProgressButton_spinning_bar_color:I

    .line 83
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 82
    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mSpinningBarColor:I

    .line 85
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    .end local v1    # "attrsArray":[I
    .end local v2    # "typedArray":Landroid/content/res/TypedArray;
    .end local v3    # "typedArrayBG":Landroid/content/res/TypedArray;
    :goto_0
    sget-object v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;->IDLE:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    .line 91
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mButtonText:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 98
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    sget-object v1, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;->PROGRESS:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mIsMorphingInProgress:Z

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->drawIndeterminateProgress(Landroid/graphics/Canvas;)V

    .line 103
    :cond_0
    return-void
.end method

.method public revertAnimation()V
    .locals 12

    .line 133
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->stopAnimation()V

    .line 137
    :cond_0
    iget-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mIsMorphingInProgress:Z

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 141
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->setClickable(Z)V

    .line 143
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->getWidth()I

    move-result v1

    .line 144
    .local v1, "fromWidth":I
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->getHeight()I

    move-result v2

    .line 146
    .local v2, "fromHeight":I
    iget-object v3, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mInitialHeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 147
    .local v3, "toHeight":I
    iget v4, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mInitialWidth:I

    .line 149
    .local v4, "toWidth":I
    sget-object v5, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;->IDLE:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    iput-object v5, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    .line 151
    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v1, v6, v0

    const/4 v7, 0x1

    aput v4, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 152
    .local v6, "widthAnimation":Landroid/animation/ValueAnimator;
    new-instance v8, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$1;

    invoke-direct {v8, p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$1;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;)V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 162
    new-array v8, v5, [I

    aput v2, v8, v0

    aput v3, v8, v7

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 163
    .local v8, "heightAnimation":Landroid/animation/ValueAnimator;
    new-instance v9, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$2;

    invoke-direct {v9, p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$2;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 185
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 186
    const-wide/16 v10, 0x12c

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 187
    iget-object v9, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v6, v5, v0

    aput-object v8, v5, v7

    invoke-virtual {v9, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 188
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$3;

    invoke-direct {v5, p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$3;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;)V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    iput-boolean v7, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mIsMorphingInProgress:Z

    .line 198
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 199
    return-void
.end method

.method public startAnimation()V
    .locals 10

    .line 202
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    sget-object v1, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;->IDLE:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    if-eq v0, v1, :cond_0

    .line 203
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->setClickable(Z)V

    .line 209
    iget-boolean v1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mIsMorphingInProgress:Z

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 213
    :cond_1
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->getWidth()I

    move-result v1

    iput v1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mInitialWidth:I

    .line 214
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mInitialHeight:Ljava/lang/Integer;

    .line 216
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 217
    .local v1, "toHeight":I
    move v2, v1

    .line 219
    .local v2, "toWidth":I
    sget-object v3, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;->PROGRESS:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    iput-object v3, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    .line 221
    const/4 v3, 0x2

    new-array v4, v3, [I

    iget v5, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mInitialWidth:I

    aput v5, v4, v0

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 222
    .local v4, "widthAnimation":Landroid/animation/ValueAnimator;
    new-instance v6, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$4;

    invoke-direct {v6, p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$4;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 232
    new-array v6, v3, [I

    iget-object v7, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mInitialHeight:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v0

    aput v1, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 233
    .local v6, "heightAnimation":Landroid/animation/ValueAnimator;
    new-instance v7, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$5;

    invoke-direct {v7, p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$5;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 255
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 256
    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 257
    iget-object v7, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v4, v3, v0

    aput-object v6, v3, v5

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 258
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$6;

    invoke-direct {v3, p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$6;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    iput-boolean v5, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mIsMorphingInProgress:Z

    .line 267
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 269
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 127
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    sget-object v1, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;->PROGRESS:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mIsMorphingInProgress:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-virtual {v0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->stop()V

    .line 130
    :cond_0
    return-void
.end method
