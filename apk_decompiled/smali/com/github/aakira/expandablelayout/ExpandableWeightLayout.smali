.class public Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;
.super Landroid/widget/RelativeLayout;
.source "ExpandableWeightLayout.java"

# interfaces
.implements Lcom/github/aakira/expandablelayout/ExpandableLayout;


# instance fields
.field private defaultExpanded:Z

.field private duration:I

.field private interpolator:Landroid/animation/TimeInterpolator;

.field private isAnimating:Z

.field private isArranged:Z

.field private isCalculatedSize:Z

.field private isExpanded:Z

.field private layoutWeight:F

.field private listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private savedState:Lcom/github/aakira/expandablelayout/ExpandableSavedState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->interpolator:Landroid/animation/TimeInterpolator;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->layoutWeight:F

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isArranged:Z

    .line 31
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isCalculatedSize:Z

    .line 32
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isAnimating:Z

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->interpolator:Landroid/animation/TimeInterpolator;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->layoutWeight:F

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isArranged:Z

    .line 31
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isCalculatedSize:Z

    .line 32
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isAnimating:Z

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;
    .param p1, "x1"    # F

    .line 20
    invoke-direct {p0, p1}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->setWeight(F)V

    return-void
.end method

.method static synthetic access$102(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;
    .param p1, "x1"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    .line 20
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    .line 20
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->layoutWeight:F

    return v0
.end method

.method static synthetic access$400(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    .line 20
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isExpanded:Z

    return v0
.end method

.method static synthetic access$402(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;
    .param p1, "x1"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isExpanded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;

    .line 20
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method private createExpandAnimator(FFJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;
    .locals 2
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 303
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 304
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 305
    if-nez p5, :cond_0

    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    move-object v1, p5

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 306
    new-instance v1, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$1;

    invoke-direct {v1, p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$1;-><init>(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 313
    new-instance v1, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;

    invoke-direct {v1, p0, p2}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$2;-><init>(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 347
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 57
    sget-object v0, Lcom/github/aakira/expandablelayout/R$styleable;->expandableLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/github/aakira/expandablelayout/R$styleable;->expandableLayout_ael_duration:I

    const/16 v3, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->duration:I

    .line 60
    sget v2, Lcom/github/aakira/expandablelayout/R$styleable;->expandableLayout_ael_expanded:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->defaultExpanded:Z

    .line 61
    sget v1, Lcom/github/aakira/expandablelayout/R$styleable;->expandableLayout_ael_interpolator:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 63
    .local v1, "interpolatorType":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-static {v1}, Lcom/github/aakira/expandablelayout/Utils;->createInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->interpolator:Landroid/animation/TimeInterpolator;

    .line 65
    iget-boolean v2, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->defaultExpanded:Z

    iput-boolean v2, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isExpanded:Z

    .line 66
    return-void
.end method

.method private notifyListeners()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onAnimationStart()V

    .line 361
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isExpanded:Z

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onPreOpen()V

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onPreClose()V

    .line 366
    :goto_0
    new-instance v0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$3;

    invoke-direct {v0, p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout$3;-><init>(Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;)V

    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 383
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 384
    return-void
.end method

.method private setWeight(F)V
    .locals 1
    .param p1, "weight"    # F

    .line 351
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 352
    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 7

    .line 177
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->getCurrentWeight()F

    move-result v2

    const/4 v3, 0x0

    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->duration:I

    int-to-long v4, v0

    iget-object v6, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->interpolator:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->createExpandAnimator(FFJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 180
    return-void
.end method

.method public collapse(JLandroid/animation/TimeInterpolator;)V
    .locals 7
    .param p1, "duration"    # J
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 187
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 189
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isExpanded:Z

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->setWeight(F)V

    .line 192
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->requestLayout()V

    .line 193
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->notifyListeners()V

    .line 194
    return-void

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->getCurrentWeight()F

    move-result v2

    const/4 v3, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->createExpandAnimator(FFJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 197
    return-void
.end method

.method public expand()V
    .locals 7

    .line 150
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->layoutWeight:F

    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->duration:I

    int-to-long v4, v0

    iget-object v6, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->interpolator:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->createExpandAnimator(FFJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 153
    return-void
.end method

.method public expand(JLandroid/animation/TimeInterpolator;)V
    .locals 7
    .param p1, "duration"    # J
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 160
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isExpanded:Z

    .line 164
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->layoutWeight:F

    invoke-direct {p0, v0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->setWeight(F)V

    .line 165
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->requestLayout()V

    .line 166
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->notifyListeners()V

    .line 167
    return-void

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->getCurrentWeight()F

    move-result v2

    iget v3, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->layoutWeight:F

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->createExpandAnimator(FFJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 170
    return-void
.end method

.method public getCurrentWeight()F
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isExpanded:Z

    return v0
.end method

.method public move(F)V
    .locals 3
    .param p1, "weight"    # F

    .line 265
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->duration:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->move(FJLandroid/animation/TimeInterpolator;)V

    .line 266
    return-void
.end method

.method public move(FJLandroid/animation/TimeInterpolator;)V
    .locals 7
    .param p1, "weight"    # F
    .param p2, "duration"    # J
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 277
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 279
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_2

    .line 280
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isExpanded:Z

    .line 281
    invoke-direct {p0, p1}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->setWeight(F)V

    .line 282
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->requestLayout()V

    .line 283
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->notifyListeners()V

    .line 284
    return-void

    .line 286
    :cond_2
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->getCurrentWeight()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->createExpandAnimator(FFJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 287
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 70
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 73
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->getCurrentWeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    .line 78
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "You must set a weight than 0."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "You must arrange in LinearLayout."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 82
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 84
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isCalculatedSize:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->getCurrentWeight()F

    move-result v0

    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->layoutWeight:F

    .line 86
    iput-boolean v1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isCalculatedSize:Z

    .line 89
    :cond_0
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isArranged:Z

    if-eqz v0, :cond_1

    return-void

    .line 90
    :cond_1
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->defaultExpanded:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->layoutWeight:F

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->setWeight(F)V

    .line 91
    iput-boolean v1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isArranged:Z

    .line 93
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->savedState:Lcom/github/aakira/expandablelayout/ExpandableSavedState;

    if-nez v0, :cond_3

    return-void

    .line 94
    :cond_3
    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->getWeight()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->setWeight(F)V

    .line 95
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 108
    instance-of v0, p1, Lcom/github/aakira/expandablelayout/ExpandableSavedState;

    if-nez v0, :cond_0

    .line 109
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 110
    return-void

    .line 112
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/github/aakira/expandablelayout/ExpandableSavedState;

    .line 113
    .local v0, "ss":Lcom/github/aakira/expandablelayout/ExpandableSavedState;
    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 114
    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->savedState:Lcom/github/aakira/expandablelayout/ExpandableSavedState;

    .line 115
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 99
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 101
    .local v0, "parcelable":Landroid/os/Parcelable;
    new-instance v1, Lcom/github/aakira/expandablelayout/ExpandableSavedState;

    invoke-direct {v1, v0}, Lcom/github/aakira/expandablelayout/ExpandableSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 102
    .local v1, "ss":Lcom/github/aakira/expandablelayout/ExpandableSavedState;
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->getCurrentWeight()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->setWeight(F)V

    .line 103
    return-object v1
.end method

.method public setDuration(I)V
    .locals 3
    .param p1, "duration"    # I

    .line 204
    if-ltz p1, :cond_0

    .line 208
    iput p1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->duration:I

    .line 209
    return-void

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExpandWeight(F)V
    .locals 0
    .param p1, "expandWeight"    # F

    .line 247
    iput p1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->layoutWeight:F

    .line 248
    return-void
.end method

.method public setExpanded(Z)V
    .locals 3
    .param p1, "expanded"    # Z

    .line 216
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->getCurrentWeight()F

    move-result v0

    .line 217
    .local v0, "currentWeight":F
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->layoutWeight:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    .line 218
    :cond_1
    return-void

    .line 220
    :cond_2
    iput-boolean p1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->isExpanded:Z

    .line 221
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->layoutWeight:F

    :cond_3
    invoke-direct {p0, v1}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->setWeight(F)V

    .line 222
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->requestLayout()V

    .line 223
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 238
    iput-object p1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->interpolator:Landroid/animation/TimeInterpolator;

    .line 239
    return-void
.end method

.method public setListener(Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    .line 122
    iput-object p1, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    .line 123
    return-void
.end method

.method public toggle()V
    .locals 3

    .line 130
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->duration:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0, v1, v2}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->toggle(JLandroid/animation/TimeInterpolator;)V

    .line 131
    return-void
.end method

.method public toggle(JLandroid/animation/TimeInterpolator;)V
    .locals 2
    .param p1, "duration"    # J
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 138
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->getCurrentWeight()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->collapse(JLandroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/aakira/expandablelayout/ExpandableWeightLayout;->expand(JLandroid/animation/TimeInterpolator;)V

    .line 143
    :goto_0
    return-void
.end method
