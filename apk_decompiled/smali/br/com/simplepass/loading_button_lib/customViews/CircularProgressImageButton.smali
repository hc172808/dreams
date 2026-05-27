.class public Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "CircularProgressImageButton.java"

# interfaces
.implements Lbr/com/simplepass/loading_button_lib/interfaces/AnimatedButton;
.implements Lbr/com/simplepass/loading_button_lib/customViews/CustomizableByCode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;,
        Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;
    }
.end annotation


# instance fields
.field private doneWhileMorphing:Z

.field private layoutDone:Z

.field private mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

.field private mBitmapDone:Landroid/graphics/Bitmap;

.field private mFillColorDone:I

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mIsMorphingInProgress:Z

.field private mMorphingAnimatorSet:Landroid/animation/AnimatorSet;

.field private mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

.field private mRevealDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

.field private mSrc:Landroid/graphics/drawable/Drawable;

.field private mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

.field private progress:I

.field private shouldStartAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 76
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 105
    return-void
.end method

.method static synthetic access$1002(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mIsMorphingInProgress:Z

    return p1
.end method

.method static synthetic access$1100(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;)Z
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    .line 35
    iget-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->doneWhileMorphing:Z

    return v0
.end method

.method static synthetic access$1102(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->doneWhileMorphing:Z

    return p1
.end method

.method static synthetic access$1200(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;)I
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    .line 35
    iget v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mFillColorDone:I

    return v0
.end method

.method static synthetic access$1300(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    .line 35
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mBitmapDone:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$900(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    .line 35
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mSrc:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private drawDoneAnimation(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 328
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mRevealDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

    invoke-virtual {v0, p1}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 329
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 234
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    iget v1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->progress:I

    invoke-virtual {v0, v1}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->setProgress(I)V

    .line 251
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-virtual {v0, p1}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 235
    :cond_1
    :goto_0
    new-instance v0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    iget-object v1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    .line 236
    invoke-static {v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$400(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)F

    move-result v1

    iget-object v2, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    .line 237
    invoke-static {v2}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$500(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;-><init>(Landroid/view/View;FI)V

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    .line 239
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 241
    .local v0, "offset":I
    iget-object v1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-static {v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$100(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    .line 242
    .local v1, "left":I
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v3, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-static {v3}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$100(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    .line 243
    .local v2, "right":I
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->getHeight()I

    move-result v3

    iget-object v4, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-static {v4}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$100(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    .line 244
    .local v3, "bottom":I
    iget-object v4, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-static {v4}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$100(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v4

    .line 246
    .local v4, "top":I
    iget-object v5, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-virtual {v5, v1, v4, v2, v3}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->setBounds(IIII)V

    .line 247
    iget-object v5, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-virtual {v5, p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 248
    iget-object v5, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-virtual {v5}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->start()V

    .line 249
    .end local v0    # "offset":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "bottom":I
    .end local v4    # "top":I
    nop

    .line 253
    :goto_1
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 114
    new-instance v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$1;)V

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    .line 116
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v2}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$102(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;Ljava/lang/Float;)Ljava/lang/Float;

    .line 120
    if-nez p2, :cond_0

    .line 121
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lbr/com/simplepass/loading_button_lib/R$drawable;->shape_default:I

    invoke-static {v0, v1}, Lbr/com/simplepass/loading_button_lib/UtilsJava;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;->loadGradientDrawable(Landroid/graphics/drawable/Drawable;)Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$BackgroundAndMorphingDrawables;

    move-result-object v0

    .local v0, "drawables":Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$BackgroundAndMorphingDrawables;
    goto :goto_0

    .line 123
    .end local v0    # "drawables":Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$BackgroundAndMorphingDrawables;
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v2, 0x10100d4

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 127
    .local v0, "attrsArray":[I
    sget-object v2, Lbr/com/simplepass/loading_button_lib/R$styleable;->CircularProgressButton:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 128
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 130
    .local v4, "typedArrayBG":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;->loadGradientDrawable(Landroid/graphics/drawable/Drawable;)Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$BackgroundAndMorphingDrawables;

    move-result-object v3

    .line 132
    .local v3, "drawables":Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$BackgroundAndMorphingDrawables;
    iget-object v5, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    sget v6, Lbr/com/simplepass/loading_button_lib/R$styleable;->CircularProgressButton_initialCornerAngle:I

    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    invoke-static {v5, v6}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$202(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;F)F

    .line 134
    iget-object v5, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    sget v6, Lbr/com/simplepass/loading_button_lib/R$styleable;->CircularProgressButton_finalCornerAngle:I

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    invoke-static {v5, v6}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$302(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;F)F

    .line 136
    iget-object v5, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    sget v6, Lbr/com/simplepass/loading_button_lib/R$styleable;->CircularProgressButton_spinning_bar_width:I

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    invoke-static {v5, v6}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$402(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;F)F

    .line 138
    iget-object v5, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    sget v6, Lbr/com/simplepass/loading_button_lib/R$styleable;->CircularProgressButton_spinning_bar_color:I

    sget-object v7, Lbr/com/simplepass/loading_button_lib/Utils;->Companion:Lbr/com/simplepass/loading_button_lib/Utils$Companion;

    const v8, 0x106000c

    .line 139
    invoke-virtual {v7, p1, v8}, Lbr/com/simplepass/loading_button_lib/Utils$Companion;->getColorWrapper(Landroid/content/Context;I)I

    move-result v7

    .line 138
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v5, v6}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$502(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;I)I

    .line 140
    iget-object v5, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    sget v6, Lbr/com/simplepass/loading_button_lib/R$styleable;->CircularProgressButton_spinning_bar_padding:I

    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v5, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$102(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;Ljava/lang/Float;)Ljava/lang/Float;

    .line 142
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, v3

    .line 146
    .end local v2    # "typedArray":Landroid/content/res/TypedArray;
    .end local v3    # "drawables":Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$BackgroundAndMorphingDrawables;
    .end local v4    # "typedArrayBG":Landroid/content/res/TypedArray;
    .local v0, "drawables":Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$BackgroundAndMorphingDrawables;
    :goto_0
    sget-object v1, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;->IDLE:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    iput-object v1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    .line 148
    if-eqz v0, :cond_1

    .line 149
    iget-object v1, v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$BackgroundAndMorphingDrawables;->morphingDrawable:Landroid/graphics/drawable/GradientDrawable;

    iput-object v1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 150
    iget-object v1, v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$BackgroundAndMorphingDrawables;->backGroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$BackgroundAndMorphingDrawables;->backGroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    :cond_1
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->resetProgress()V

    .line 156
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 417
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mMorphingAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 419
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mMorphingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 420
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mMorphingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 423
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mMorphingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 424
    return-void
.end method

.method public doneLoadingAnimation(ILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "fillColor"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 291
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    sget-object v1, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;->PROGRESS:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    if-eq v0, v1, :cond_0

    .line 292
    return-void

    .line 295
    :cond_0
    iget-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mIsMorphingInProgress:Z

    if-eqz v0, :cond_1

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->doneWhileMorphing:Z

    .line 297
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mFillColorDone:I

    .line 298
    iput-object p2, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mBitmapDone:Landroid/graphics/Bitmap;

    .line 299
    return-void

    .line 302
    :cond_1
    sget-object v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;->DONE:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    .line 304
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    if-eqz v0, :cond_2

    .line 305
    invoke-virtual {v0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->stop()V

    .line 308
    :cond_2
    new-instance v0, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

    invoke-direct {v0, p0, p1, p2}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;-><init>(Landroid/view/View;ILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mRevealDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "left":I
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->getWidth()I

    move-result v1

    .line 312
    .local v1, "right":I
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->getHeight()I

    move-result v2

    .line 313
    .local v2, "bottom":I
    const/4 v3, 0x0

    .line 315
    .local v3, "top":I
    iget-object v4, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mRevealDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

    invoke-virtual {v4, v0, v3, v1, v2}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->setBounds(IIII)V

    .line 316
    iget-object v4, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mRevealDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

    invoke-virtual {v4, p0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 319
    iget-object v4, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mRevealDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;

    invoke-virtual {v4}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularRevealAnimatedDrawable;->start()V

    .line 320
    return-void
.end method

.method public isAnimating()Ljava/lang/Boolean;
    .locals 2

    .line 528
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    sget-object v1, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;->PROGRESS:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 213
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->layoutDone:Z

    .line 216
    iget-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->shouldStartAnimation:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->startAnimation()V

    .line 220
    :cond_0
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    sget-object v1, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;->PROGRESS:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mIsMorphingInProgress:Z

    if-nez v0, :cond_1

    .line 221
    invoke-direct {p0, p1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->drawProgress(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    sget-object v1, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;->DONE:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    if-ne v0, v1, :cond_2

    .line 223
    invoke-direct {p0, p1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->drawDoneAnimation(Landroid/graphics/Canvas;)V

    .line 225
    :cond_2
    :goto_0
    return-void
.end method

.method public resetProgress()V
    .locals 1

    .line 268
    const/4 v0, -0x1

    iput v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->progress:I

    .line 269
    return-void
.end method

.method public revertAnimation()V
    .locals 1

    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->revertAnimation(Lbr/com/simplepass/loading_button_lib/interfaces/OnAnimationEndListener;)V

    .line 333
    return-void
.end method

.method public revertAnimation(Lbr/com/simplepass/loading_button_lib/interfaces/OnAnimationEndListener;)V
    .locals 13
    .param p1, "onAnimationEndListener"    # Lbr/com/simplepass/loading_button_lib/interfaces/OnAnimationEndListener;

    .line 336
    sget-object v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;->IDLE:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    .line 337
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->resetProgress()V

    .line 339
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->stopAnimation()V

    .line 343
    :cond_0
    iget-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mIsMorphingInProgress:Z

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mMorphingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 347
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->setClickable(Z)V

    .line 349
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->getWidth()I

    move-result v1

    .line 350
    .local v1, "fromWidth":I
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->getHeight()I

    move-result v2

    .line 352
    .local v2, "fromHeight":I
    iget-object v3, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-static {v3}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$700(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 353
    .local v3, "toHeight":I
    iget-object v4, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-static {v4}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$800(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)I

    move-result v4

    .line 355
    .local v4, "toWidth":I
    iget-object v5, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v6, 0x2

    new-array v7, v6, [F

    iget-object v8, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    .line 358
    invoke-static {v8}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$300(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)F

    move-result v8

    aput v8, v7, v0

    iget-object v8, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    .line 359
    invoke-static {v8}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$200(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)F

    move-result v8

    const/4 v9, 0x1

    aput v8, v7, v9

    .line 356
    const-string v8, "cornerRadius"

    invoke-static {v5, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 361
    .local v5, "cornerAnimation":Landroid/animation/ObjectAnimator;
    new-array v7, v6, [I

    aput v1, v7, v0

    aput v4, v7, v9

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 362
    .local v7, "widthAnimation":Landroid/animation/ValueAnimator;
    new-instance v8, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$1;

    invoke-direct {v8, p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$1;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 372
    new-array v8, v6, [I

    aput v2, v8, v0

    aput v3, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 373
    .local v8, "heightAnimation":Landroid/animation/ValueAnimator;
    new-instance v10, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$2;

    invoke-direct {v10, p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$2;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;)V

    invoke-virtual {v8, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 395
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mMorphingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 396
    const-wide/16 v11, 0x12c

    invoke-virtual {v10, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 397
    iget-object v10, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mMorphingAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v5, v11, v0

    aput-object v7, v11, v9

    aput-object v8, v11, v6

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 398
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mMorphingAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$3;

    invoke-direct {v6, p0, p1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$3;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;Lbr/com/simplepass/loading_button_lib/interfaces/OnAnimationEndListener;)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 411
    iput-boolean v9, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mIsMorphingInProgress:Z

    .line 412
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mMorphingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 413
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 160
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 161
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .param p1, "resid"    # I

    .line 165
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 166
    return-void
.end method

.method public setDoneColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 183
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-static {v0, p1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$602(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;I)I

    .line 184
    return-void
.end method

.method public setFinalCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .line 203
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-static {v0, p1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$302(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;F)F

    .line 204
    return-void
.end method

.method public setInitialCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .line 198
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-static {v0, p1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$202(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;F)F

    .line 199
    return-void
.end method

.method public setInitialHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .line 193
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$702(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 194
    return-void
.end method

.method public setPaddingProgress(F)V
    .locals 2
    .param p1, "padding"    # F

    .line 188
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$102(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;Ljava/lang/Float;)Ljava/lang/Float;

    .line 189
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .line 259
    nop

    .line 260
    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 259
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 261
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->progress:I

    .line 262
    return-void
.end method

.method public setSpinningBarColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 170
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-static {v0, p1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$502(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;I)I

    .line 171
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->setLoadingBarColor(I)V

    .line 174
    :cond_0
    return-void
.end method

.method public setSpinningBarWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .line 178
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-static {v0, p1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$402(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;F)F

    .line 179
    return-void
.end method

.method public startAnimation()V
    .locals 11

    .line 430
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    sget-object v1, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;->IDLE:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    if-eq v0, v1, :cond_0

    .line 431
    return-void

    .line 434
    :cond_0
    iget-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->layoutDone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 435
    iput-boolean v1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->shouldStartAnimation:Z

    .line 436
    return-void

    .line 439
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->shouldStartAnimation:Z

    .line 441
    iget-boolean v2, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mIsMorphingInProgress:Z

    if-eqz v2, :cond_2

    .line 442
    iget-object v2, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mMorphingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 444
    :cond_2
    iget-object v2, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$802(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;I)I

    .line 445
    iget-object v2, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$702(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 448
    :goto_0
    sget-object v2, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;->PROGRESS:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    iput-object v2, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    .line 450
    invoke-virtual {p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mSrc:Landroid/graphics/drawable/Drawable;

    .line 451
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    invoke-virtual {p0, v0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->setClickable(Z)V

    .line 454
    iget-object v2, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-static {v2}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$700(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 455
    .local v2, "toHeight":I
    move v3, v2

    .line 457
    .local v3, "toWidth":I
    iget-object v4, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v5, 0x2

    new-array v6, v5, [F

    iget-object v7, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    .line 460
    invoke-static {v7}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$200(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)F

    move-result v7

    aput v7, v6, v0

    iget-object v7, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    .line 461
    invoke-static {v7}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$300(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)F

    move-result v7

    aput v7, v6, v1

    .line 458
    const-string v7, "cornerRadius"

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 463
    .local v4, "cornerAnimation":Landroid/animation/ObjectAnimator;
    new-array v6, v5, [I

    iget-object v7, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-static {v7}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$800(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)I

    move-result v7

    aput v7, v6, v0

    aput v3, v6, v1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 464
    .local v6, "widthAnimation":Landroid/animation/ValueAnimator;
    new-instance v7, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$4;

    invoke-direct {v7, p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$4;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 474
    new-array v7, v5, [I

    iget-object v8, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mParams:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    invoke-static {v8}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->access$700(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v0

    aput v2, v7, v1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 475
    .local v7, "heightAnimation":Landroid/animation/ValueAnimator;
    new-instance v8, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$5;

    invoke-direct {v8, p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$5;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 497
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mMorphingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 498
    const-wide/16 v9, 0x12c

    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 499
    iget-object v8, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mMorphingAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v4, v9, v0

    aput-object v6, v9, v1

    aput-object v7, v9, v5

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 500
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mMorphingAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;

    invoke-direct {v5, p0}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$6;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;)V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 520
    iput-boolean v1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mIsMorphingInProgress:Z

    .line 521
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mMorphingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 522
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 275
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    sget-object v1, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;->PROGRESS:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mIsMorphingInProgress:Z

    if-nez v0, :cond_0

    .line 276
    sget-object v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;->STOPED:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    iput-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mState:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$State;

    .line 277
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;->mAnimatedDrawable:Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;

    invoke-virtual {v0}, Lbr/com/simplepass/loading_button_lib/animatedDrawables/CircularAnimatedDrawable;->stop()V

    .line 279
    :cond_0
    return-void
.end method
