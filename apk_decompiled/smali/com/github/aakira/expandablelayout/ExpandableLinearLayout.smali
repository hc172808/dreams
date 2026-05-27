.class public Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ExpandableLinearLayout.java"

# interfaces
.implements Lcom/github/aakira/expandablelayout/ExpandableLayout;


# instance fields
.field private childSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private closePosition:I

.field private defaultChildIndex:I

.field private defaultExpanded:Z

.field private defaultPosition:I

.field private duration:I

.field private inRecyclerView:Z

.field private interpolator:Landroid/animation/TimeInterpolator;

.field private isAnimating:Z

.field private isArranged:Z

.field private isCalculatedSize:Z

.field private isExpanded:Z

.field private layoutSize:I

.field private listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private recyclerExpanded:Z

.field private savedState:Lcom/github/aakira/expandablelayout/ExpandableSavedState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->interpolator:Landroid/animation/TimeInterpolator;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    .line 55
    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->layoutSize:I

    .line 56
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->inRecyclerView:Z

    .line 57
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isArranged:Z

    .line 58
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isCalculatedSize:Z

    .line 59
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isAnimating:Z

    .line 63
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->recyclerExpanded:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->childSizeList:Ljava/util/List;

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->interpolator:Landroid/animation/TimeInterpolator;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    .line 55
    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->layoutSize:I

    .line 56
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->inRecyclerView:Z

    .line 57
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isArranged:Z

    .line 58
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isCalculatedSize:Z

    .line 59
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isAnimating:Z

    .line 63
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->recyclerExpanded:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->childSizeList:Ljava/util/List;

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    .line 23
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isVertical()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    .line 23
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    .line 23
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->layoutSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    .line 23
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    .line 23
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded:Z

    return v0
.end method

.method static synthetic access$502(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    .line 23
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method private createExpandAnimator(IIJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 484
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 485
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 486
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 487
    new-instance v1, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$1;

    invoke-direct {v1, p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$1;-><init>(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 498
    new-instance v1, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;

    invoke-direct {v1, p0, p2}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$2;-><init>(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 531
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 92
    sget-object v0, Lcom/github/aakira/expandablelayout/R$styleable;->expandableLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/github/aakira/expandablelayout/R$styleable;->expandableLayout_ael_duration:I

    const/16 v3, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->duration:I

    .line 95
    sget v2, Lcom/github/aakira/expandablelayout/R$styleable;->expandableLayout_ael_expanded:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->defaultExpanded:Z

    .line 96
    sget v1, Lcom/github/aakira/expandablelayout/R$styleable;->expandableLayout_ael_defaultChildIndex:I

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->defaultChildIndex:I

    .line 98
    sget v1, Lcom/github/aakira/expandablelayout/R$styleable;->expandableLayout_ael_defaultPosition:I

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->defaultPosition:I

    .line 100
    sget v1, Lcom/github/aakira/expandablelayout/R$styleable;->expandableLayout_ael_interpolator:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 102
    .local v1, "interpolatorType":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-static {v1}, Lcom/github/aakira/expandablelayout/Utils;->createInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->interpolator:Landroid/animation/TimeInterpolator;

    .line 104
    iget-boolean v2, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->defaultExpanded:Z

    iput-boolean v2, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded:Z

    .line 105
    return-void
.end method

.method private isVertical()Z
    .locals 2

    .line 459
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private notifyListeners()V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    if-nez v0, :cond_0

    return-void

    .line 540
    :cond_0
    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onAnimationStart()V

    .line 541
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded:Z

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onPreOpen()V

    goto :goto_0

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onPreClose()V

    .line 546
    :goto_0
    new-instance v0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$3;

    invoke-direct {v0, p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$3;-><init>(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)V

    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 563
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 564
    return-void
.end method

.method private setLayoutSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 463
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 468
    :goto_0
    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 7

    .line 243
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->duration:I

    int-to-long v4, v0

    iget-object v6, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->interpolator:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->createExpandAnimator(IIJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 246
    return-void
.end method

.method public collapse(JLandroid/animation/TimeInterpolator;)V
    .locals 7
    .param p1, "duration"    # J
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 253
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 256
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->move(IJLandroid/animation/TimeInterpolator;)V

    .line 257
    return-void

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->createExpandAnimator(IIJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 260
    return-void
.end method

.method public expand()V
    .locals 7

    .line 219
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->layoutSize:I

    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->duration:I

    int-to-long v4, v0

    iget-object v6, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->interpolator:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->createExpandAnimator(IIJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 222
    return-void
.end method

.method public expand(JLandroid/animation/TimeInterpolator;)V
    .locals 7
    .param p1, "duration"    # J
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 229
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 231
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 232
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->layoutSize:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->move(IJLandroid/animation/TimeInterpolator;)V

    .line 233
    return-void

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->layoutSize:I

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->createExpandAnimator(IIJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 236
    return-void
.end method

.method public getChildPosition(I)I
    .locals 2
    .param p1, "index"    # I

    .line 398
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->childSizeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->childSizeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There aren\'t the view having this index."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClosePosition()I
    .locals 1

    .line 413
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 434
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public initLayout()V
    .locals 3

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    .line 311
    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->layoutSize:I

    .line 312
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isArranged:Z

    .line 313
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isCalculatedSize:Z

    .line 314
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->savedState:Lcom/github/aakira/expandablelayout/ExpandableSavedState;

    .line 316
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isVertical()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getWidth()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 318
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 317
    invoke-virtual {p0, v1, v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->measure(II)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 321
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 320
    invoke-virtual {p0, v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->measure(II)V

    .line 323
    :goto_0
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded:Z

    return v0
.end method

.method public move(I)V
    .locals 3
    .param p1, "position"    # I

    .line 331
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->duration:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->move(IJLandroid/animation/TimeInterpolator;)V

    .line 332
    return-void
.end method

.method public move(IJLandroid/animation/TimeInterpolator;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "duration"    # J
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 343
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isAnimating:Z

    if-nez v0, :cond_4

    if-ltz p1, :cond_4

    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->layoutSize:I

    if-ge v0, p1, :cond_0

    goto :goto_2

    .line 345
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_2

    .line 346
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    if-le p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded:Z

    .line 347
    invoke-direct {p0, p1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->setLayoutSize(I)V

    .line 348
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->requestLayout()V

    .line 349
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->notifyListeners()V

    .line 350
    return-void

    .line 352
    :cond_2
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getCurrentPosition()I

    move-result v2

    if-nez p4, :cond_3

    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->interpolator:Landroid/animation/TimeInterpolator;

    move-object v6, v0

    goto :goto_1

    :cond_3
    move-object v6, p4

    :goto_1
    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->createExpandAnimator(IIJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 354
    return-void

    .line 343
    :cond_4
    :goto_2
    return-void
.end method

.method public moveChild(I)V
    .locals 3
    .param p1, "index"    # I

    .line 362
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->duration:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->moveChild(IJLandroid/animation/TimeInterpolator;)V

    .line 363
    return-void
.end method

.method public moveChild(IJLandroid/animation/TimeInterpolator;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "duration"    # J
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 374
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getChildPosition(I)I

    move-result v0

    .line 377
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getPaddingBottom()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getPaddingRight()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 378
    .local v0, "destination":I
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_3

    .line 379
    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    if-le v0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded:Z

    .line 380
    invoke-direct {p0, v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->setLayoutSize(I)V

    .line 381
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->requestLayout()V

    .line 382
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->notifyListeners()V

    .line 383
    return-void

    .line 385
    :cond_3
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getCurrentPosition()I

    move-result v3

    if-nez p4, :cond_4

    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->interpolator:Landroid/animation/TimeInterpolator;

    move-object v7, v1

    goto :goto_2

    :cond_4
    move-object v7, p4

    :goto_2
    move-object v2, p0

    move v4, v0

    move-wide v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->createExpandAnimator(IIJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 386
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 387
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 109
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 111
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isCalculatedSize:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 113
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->childSizeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getChildCount()I

    move-result v0

    .line 116
    .local v0, "childCount":I
    if-lez v0, :cond_4

    .line 117
    const/4 v2, 0x0

    .line 120
    .local v2, "sumSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 121
    invoke-virtual {p0, v3}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 122
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-lez v3, :cond_0

    .line 125
    iget-object v6, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->childSizeList:Ljava/util/List;

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 127
    :cond_0
    iget-object v6, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->childSizeList:Ljava/util/List;

    .line 128
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isVertical()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 129
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    :goto_1
    add-int/2addr v7, v2

    .line 128
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 127
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    .end local v3    # "i":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->childSizeList:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 134
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isVertical()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 135
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_2

    .line 136
    :cond_3
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    :goto_2
    add-int/2addr v3, v4

    iput v3, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->layoutSize:I

    .line 138
    iput-boolean v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isCalculatedSize:Z

    .line 139
    .end local v2    # "sumSize":I
    goto :goto_3

    .line 140
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The expandableLinearLayout must have at least one child"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    .end local v0    # "childCount":I
    :cond_5
    :goto_3
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isArranged:Z

    if-eqz v0, :cond_6

    return-void

    .line 147
    :cond_6
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->defaultExpanded:Z

    if-nez v0, :cond_7

    .line 148
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    invoke-direct {p0, v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->setLayoutSize(I)V

    .line 150
    :cond_7
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->inRecyclerView:Z

    if-eqz v0, :cond_9

    .line 151
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->recyclerExpanded:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->layoutSize:I

    goto :goto_4

    :cond_8
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    :goto_4
    invoke-direct {p0, v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->setLayoutSize(I)V

    .line 153
    :cond_9
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->childSizeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 154
    .local v0, "childNumbers":I
    iget v2, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->defaultChildIndex:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-le v0, v2, :cond_a

    if-lez v0, :cond_a

    .line 155
    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->moveChild(IJLandroid/animation/TimeInterpolator;)V

    .line 157
    :cond_a
    iget v2, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->defaultPosition:I

    if-lez v2, :cond_b

    iget v6, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->layoutSize:I

    if-lt v6, v2, :cond_b

    if-lez v6, :cond_b

    .line 158
    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->move(IJLandroid/animation/TimeInterpolator;)V

    .line 160
    :cond_b
    iput-boolean v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isArranged:Z

    .line 162
    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->savedState:Lcom/github/aakira/expandablelayout/ExpandableSavedState;

    if-nez v1, :cond_c

    return-void

    .line 163
    :cond_c
    invoke-virtual {v1}, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->getSize()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->setLayoutSize(I)V

    .line 164
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 176
    instance-of v0, p1, Lcom/github/aakira/expandablelayout/ExpandableSavedState;

    if-nez v0, :cond_0

    .line 177
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 178
    return-void

    .line 181
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/github/aakira/expandablelayout/ExpandableSavedState;

    .line 182
    .local v0, "ss":Lcom/github/aakira/expandablelayout/ExpandableSavedState;
    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 183
    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->savedState:Lcom/github/aakira/expandablelayout/ExpandableSavedState;

    .line 184
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 168
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 169
    .local v0, "parcelable":Landroid/os/Parcelable;
    new-instance v1, Lcom/github/aakira/expandablelayout/ExpandableSavedState;

    invoke-direct {v1, v0}, Lcom/github/aakira/expandablelayout/ExpandableSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 170
    .local v1, "ss":Lcom/github/aakira/expandablelayout/ExpandableSavedState;
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->setSize(I)V

    .line 171
    return-object v1
.end method

.method public setClosePosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 425
    iput p1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    .line 426
    return-void
.end method

.method public setClosePositionIndex(I)V
    .locals 1
    .param p1, "childIndex"    # I

    .line 446
    invoke-virtual {p0, p1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getChildPosition(I)I

    move-result v0

    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    .line 447
    return-void
.end method

.method public setDuration(I)V
    .locals 3
    .param p1, "duration"    # I

    .line 267
    if-ltz p1, :cond_0

    .line 271
    iput p1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->duration:I

    .line 272
    return-void

    .line 268
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

.method public setExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .line 279
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->inRecyclerView:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->recyclerExpanded:Z

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getCurrentPosition()I

    move-result v0

    .line 282
    .local v0, "currentPosition":I
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->layoutSize:I

    if-eq v0, v1, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    if-ne v0, v1, :cond_3

    .line 283
    :cond_2
    return-void

    .line 285
    :cond_3
    iput-boolean p1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded:Z

    .line 286
    if-eqz p1, :cond_4

    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->layoutSize:I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    :goto_0
    invoke-direct {p0, v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->setLayoutSize(I)V

    .line 287
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->requestLayout()V

    .line 288
    return-void
.end method

.method public setInRecyclerView(Z)V
    .locals 0
    .param p1, "inRecyclerView"    # Z

    .line 455
    iput-boolean p1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->inRecyclerView:Z

    .line 456
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 303
    iput-object p1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->interpolator:Landroid/animation/TimeInterpolator;

    .line 304
    return-void
.end method

.method public setListener(Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    .line 191
    iput-object p1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    .line 192
    return-void
.end method

.method public toggle()V
    .locals 3

    .line 199
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->duration:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0, v1, v2}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->toggle(JLandroid/animation/TimeInterpolator;)V

    .line 200
    return-void
.end method

.method public toggle(JLandroid/animation/TimeInterpolator;)V
    .locals 2
    .param p1, "duration"    # J
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 207
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->closePosition:I

    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getCurrentPosition()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 208
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->collapse(JLandroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->expand(JLandroid/animation/TimeInterpolator;)V

    .line 212
    :goto_0
    return-void
.end method
