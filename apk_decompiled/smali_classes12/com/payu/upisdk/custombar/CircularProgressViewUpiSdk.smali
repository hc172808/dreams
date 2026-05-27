.class public Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:Landroid/graphics/RectF;

.field private d:Z

.field private e:Z

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:F

.field private q:F

.field private r:Landroid/animation/ValueAnimator;

.field private s:Landroid/animation/ValueAnimator;

.field private t:Landroid/animation/AnimatorSet;

.field private u:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    nop

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 p1, 0x0

    iput p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->b:I

    .line 45
    nop

    .end local p0    # "this":Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a(Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    nop

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 p1, 0x0

    iput p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->b:I

    .line 50
    nop

    .end local p0    # "this":Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    invoke-direct {p0, p2, p1}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a(Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 54
    nop

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 p1, 0x0

    iput p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->b:I

    .line 55
    nop

    .end local p0    # "this":Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyle":I
    invoke-direct {p0, p2, p3}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a(Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->q:F

    return p1
.end method

.method private a(F)Landroid/animation/AnimatorSet;
    .locals 13

    .line 395
    iget v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->o:I

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x41700000    # 15.0f

    add-float/2addr v1, v0

    .line 396
    sub-float v2, v1, v0

    mul-float v2, v2, p1

    const/high16 v3, -0x3d4c0000    # -90.0f

    add-float/2addr v2, v3

    .line 399
    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v1, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 400
    iget v7, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->l:I

    iget v8, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->o:I

    div-int/2addr v7, v8

    div-int/2addr v7, v3

    int-to-long v7, v7

    invoke-virtual {v4, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 401
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 402
    new-instance v7, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$6;

    invoke-direct {v7, p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$6;-><init>(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 411
    new-array v7, v3, [F

    const/high16 v9, 0x44340000    # 720.0f

    mul-float v10, p1, v9

    iget v11, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->o:I

    int-to-float v12, v11

    div-float/2addr v10, v12

    aput v10, v7, v5

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v10, p1

    mul-float v10, v10, v9

    int-to-float v11, v11

    div-float v11, v10, v11

    aput v11, v7, v6

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 412
    iget v11, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->l:I

    iget v12, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->o:I

    div-int/2addr v11, v12

    div-int/2addr v11, v3

    int-to-long v11, v11

    invoke-virtual {v7, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 413
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 414
    new-instance v11, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$7;

    invoke-direct {v11, p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$7;-><init>(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;)V

    invoke-virtual {v7, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 424
    new-array v11, v3, [F

    aput v2, v11, v5

    add-float v12, v2, v1

    sub-float/2addr v12, v0

    aput v12, v11, v6

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 425
    iget v11, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->l:I

    iget v12, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->o:I

    div-int/2addr v11, v12

    div-int/2addr v11, v3

    int-to-long v11, v11

    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 426
    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v11, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 427
    new-instance v11, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$8;

    invoke-direct {v11, p0, v1, v2}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$8;-><init>(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;FF)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 437
    new-array v1, v3, [F

    iget v2, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->o:I

    int-to-float v11, v2

    div-float/2addr v10, v11

    aput v10, v1, v5

    add-float/2addr p1, v8

    mul-float p1, p1, v9

    int-to-float v2, v2

    div-float/2addr p1, v2

    aput p1, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 438
    iget v1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->l:I

    iget v2, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->o:I

    div-int/2addr v1, v2

    div-int/2addr v1, v3

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 439
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 440
    new-instance v1, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$9;

    invoke-direct {v1, p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$9;-><init>(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 447
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 448
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 449
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 450
    return-object v1
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->b(Landroid/util/AttributeSet;I)V

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a:Landroid/graphics/Paint;

    .line 63
    invoke-direct {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->d()V

    .line 65
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->c:Landroid/graphics/RectF;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;)V
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a()V

    return-void
.end method

.method static synthetic b(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->p:F

    return p0
.end method

.method static synthetic b(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->p:F

    return p1
.end method

.method private b(Landroid/util/AttributeSet;I)V
    .locals 5

    .line 69
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/payu/upisdk/R$styleable;->CircularProgressViewUpiSdk:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 72
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 75
    sget v0, Lcom/payu/upisdk/R$styleable;->CircularProgressViewUpiSdk_cpv_progress:I

    sget v1, Lcom/payu/upisdk/R$integer;->cpv_default_progress:I

    .line 76
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->f:F

    .line 77
    sget v0, Lcom/payu/upisdk/R$styleable;->CircularProgressViewUpiSdk_cpv_maxProgress:I

    sget v1, Lcom/payu/upisdk/R$integer;->cpv_default_max_progress:I

    .line 78
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->g:F

    .line 79
    sget v0, Lcom/payu/upisdk/R$styleable;->CircularProgressViewUpiSdk_cpv_thickness:I

    sget v1, Lcom/payu/upisdk/R$dimen;->cpv_default_thickness:I

    .line 80
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->j:I

    .line 81
    sget v0, Lcom/payu/upisdk/R$styleable;->CircularProgressViewUpiSdk_cpv_indeterminate:I

    sget v1, Lcom/payu/upisdk/R$bool;->cpv_default_is_indeterminate:I

    .line 82
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->d:Z

    .line 83
    sget v0, Lcom/payu/upisdk/R$styleable;->CircularProgressViewUpiSdk_cpv_animAutostart:I

    sget v1, Lcom/payu/upisdk/R$bool;->cpv_default_anim_autostart:I

    .line 84
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->e:Z

    .line 85
    sget v0, Lcom/payu/upisdk/R$styleable;->CircularProgressViewUpiSdk_cpv_startAngle:I

    sget v1, Lcom/payu/upisdk/R$integer;->cpv_default_start_angle:I

    .line 86
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->u:F

    .line 87
    iput v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->p:F

    .line 89
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "colorAccent"

    const-string v4, "attr"

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 92
    sget v1, Lcom/payu/upisdk/R$styleable;->CircularProgressViewUpiSdk_cpv_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    sget v0, Lcom/payu/upisdk/R$styleable;->CircularProgressViewUpiSdk_cpv_color:I

    sget v1, Lcom/payu/upisdk/R$color;->cpv_default_color:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->k:I

    goto :goto_0

    .line 96
    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 97
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 98
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 99
    iget v0, v2, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->k:I

    .line 100
    goto :goto_0

    .line 102
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v1, [I

    const v3, 0x1010435

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    sget v1, Lcom/payu/upisdk/R$color;->cpv_default_color:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->k:I

    .line 105
    goto :goto_0

    .line 107
    :cond_2
    sget v0, Lcom/payu/upisdk/R$color;->cpv_default_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->k:I

    .line 110
    :goto_0
    sget v0, Lcom/payu/upisdk/R$styleable;->CircularProgressViewUpiSdk_cpv_animDuration:I

    sget v1, Lcom/payu/upisdk/R$integer;->cpv_default_anim_duration:I

    .line 111
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 110
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->l:I

    .line 112
    sget v0, Lcom/payu/upisdk/R$styleable;->CircularProgressViewUpiSdk_cpv_animSwoopDuration:I

    sget v1, Lcom/payu/upisdk/R$integer;->cpv_default_anim_swoop_duration:I

    .line 113
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->m:I

    .line 114
    sget v0, Lcom/payu/upisdk/R$styleable;->CircularProgressViewUpiSdk_cpv_animSyncDuration:I

    sget v1, Lcom/payu/upisdk/R$integer;->cpv_default_anim_sync_duration:I

    .line 115
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->n:I

    .line 116
    sget v0, Lcom/payu/upisdk/R$styleable;->CircularProgressViewUpiSdk_cpv_animSteps:I

    sget v1, Lcom/payu/upisdk/R$integer;->cpv_default_anim_steps:I

    .line 117
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 116
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->o:I

    .line 118
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    return-void
.end method

.method static synthetic c(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->h:F

    return p1
.end method

.method private c()V
    .locals 7

    .line 141
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->getPaddingLeft()I

    move-result v0

    .line 142
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->getPaddingTop()I

    move-result v1

    .line 143
    iget-object v2, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->c:Landroid/graphics/RectF;

    iget v3, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->j:I

    add-int v4, v0, v3

    int-to-float v4, v4

    add-int v5, v1, v3

    int-to-float v5, v5

    iget v6, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->b:I

    sub-int v0, v6, v0

    sub-int/2addr v0, v3

    int-to-float v0, v0

    sub-int/2addr v6, v1

    sub-int/2addr v6, v3

    int-to-float v1, v6

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 144
    return-void
.end method

.method static synthetic d(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->i:F

    return p1
.end method

.method private d()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 151
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 301
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->r:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->s:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->t:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 309
    :cond_2
    iget-boolean v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 311
    iget v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->u:F

    iput v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->p:F

    .line 312
    const/4 v2, 0x2

    new-array v3, v2, [F

    aput v0, v3, v1

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v0, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->r:Landroid/animation/ValueAnimator;

    .line 313
    iget v3, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->m:I

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 314
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->r:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v3, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 315
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->r:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$3;

    invoke-direct {v3, p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$3;-><init>(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 322
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->q:F

    .line 326
    new-array v2, v2, [F

    aput v0, v2, v1

    iget v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->f:F

    aput v0, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->s:Landroid/animation/ValueAnimator;

    .line 327
    iget v1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->n:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 328
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->s:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->s:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$4;

    invoke-direct {v1, p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$4;-><init>(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 336
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 340
    :cond_3
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->h:F

    .line 342
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->t:Landroid/animation/AnimatorSet;

    .line 343
    const/4 v0, 0x0

    .line 344
    nop

    :goto_0
    iget v2, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->o:I

    if-ge v1, v2, :cond_5

    .line 345
    int-to-float v2, v1

    invoke-direct {p0, v2}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a(F)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 346
    iget-object v3, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 347
    if-eqz v0, :cond_4

    .line 348
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 349
    :cond_4
    nop

    .line 344
    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    .line 353
    :cond_5
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->t:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$5;

    invoke-direct {v1, p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$5;-><init>(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 367
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 372
    return-void
.end method

.method public final b()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->r:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 381
    iput-object v1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->r:Landroid/animation/ValueAnimator;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->s:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 385
    iput-object v1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->s:Landroid/animation/ValueAnimator;

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->t:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 389
    iput-object v1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->t:Landroid/animation/AnimatorSet;

    .line 391
    :cond_2
    return-void
.end method

.method public getColor()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->k:I

    return v0
.end method

.method public getMaxProgress()F
    .locals 1

    .line 233
    iget v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->g:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 250
    iget v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->f:F

    return v0
.end method

.method public getThickness()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->j:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 455
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 456
    iget-boolean v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->e:Z

    if-eqz v0, :cond_0

    .line 457
    nop

    .line 1293
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a()V

    .line 458
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 462
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 463
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->b()V

    .line 464
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 155
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 158
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->isInEditMode()Z

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->f:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->q:F

    :goto_0
    iget v2, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->g:F

    div-float/2addr v0, v2

    mul-float v0, v0, v1

    move v4, v0

    .line 159
    iget-boolean v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->d:Z

    if-nez v0, :cond_1

    .line 160
    iget-object v2, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->c:Landroid/graphics/RectF;

    iget v3, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->p:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    .line 162
    :cond_1
    nop

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    iget-object v8, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->c:Landroid/graphics/RectF;

    iget v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->p:F

    iget v1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->i:F

    add-float v9, v0, v1

    iget v10, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->h:F

    const/4 v11, 0x0

    .end local p0    # "this":Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;
    iget-object v12, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 163
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 123
    nop

    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 124
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    .line 125
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 126
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, p1

    .line 127
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p2

    .line 128
    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->b:I

    .line 129
    add-int/2addr p1, v0

    .end local p0    # "this":Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;
    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->setMeasuredDimension(II)V

    .line 131
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 135
    nop

    .end local p3    # "oldw":I
    .end local p4    # "oldh":I
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 136
    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .end local p1    # "w":I
    .end local p2    # "h":I
    :goto_0
    iput p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->b:I

    .line 137
    nop

    .end local p0    # "this":Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;
    invoke-direct {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->c()V

    .line 138
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 222
    nop

    .end local p1    # "color":I
    iput p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->k:I

    .line 223
    invoke-direct {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->d()V

    .line 224
    nop

    .end local p0    # "this":Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->invalidate()V

    .line 225
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "isIndeterminate"    # Z

    .line 182
    iget-boolean v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->d:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 183
    :goto_0
    nop

    .end local p1    # "isIndeterminate":Z
    iput-boolean p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->d:Z

    .line 184
    if-eqz v0, :cond_1

    .line 185
    nop

    .end local p0    # "this":Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a()V

    .line 186
    :cond_1
    return-void
.end method

.method public setMaxProgress(F)V
    .locals 0
    .param p1, "maxProgress"    # F

    .line 242
    nop

    .end local p1    # "maxProgress":F
    iput p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->g:F

    .line 243
    nop

    .end local p0    # "this":Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->invalidate()V

    .line 244
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "currentProgress"    # F

    .line 259
    iput p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->f:F

    .line 261
    iget-boolean v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->d:Z

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->s:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 264
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->q:F

    aput v2, v0, v1

    const/4 v1, 0x1

    .end local p1    # "currentProgress":F
    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->s:Landroid/animation/ValueAnimator;

    .line 265
    iget v0, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->n:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 266
    iget-object p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->s:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 267
    iget-object p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->s:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$1;

    invoke-direct {v0, p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$1;-><init>(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 274
    iget-object p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->s:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$2;

    invoke-direct {v0, p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$2;-><init>(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 281
    iget-object p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 283
    :cond_1
    nop

    .end local p0    # "this":Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->invalidate()V

    .line 285
    return-void
.end method

.method public setThickness(I)V
    .locals 0
    .param p1, "thickness"    # I

    .line 203
    nop

    .end local p1    # "thickness":I
    iput p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->j:I

    .line 204
    invoke-direct {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->d()V

    .line 205
    invoke-direct {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->c()V

    .line 206
    nop

    .end local p0    # "this":Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->invalidate()V

    .line 207
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 468
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->getVisibility()I

    move-result v0

    .line 469
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 470
    if-eq p1, v0, :cond_2

    .line 471
    if-nez p1, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a()V

    return-void

    .line 473
    :cond_0
    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .end local p1    # "visibility":I
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 474
    :cond_1
    nop

    .end local p0    # "this":Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;
    invoke-virtual {p0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->b()V

    .line 477
    :cond_2
    return-void
.end method
