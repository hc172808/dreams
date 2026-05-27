.class public Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ExpandableRelativeLayout.java"

# interfaces
.implements Lcom/github/aakira/expandablelayout/ExpandableLayout;


# instance fields
.field private childPositionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private interpolator:Landroid/animation/TimeInterpolator;

.field private isAnimating:Z

.field private isArranged:Z

.field private isCalculatedSize:Z

.field private isExpanded:Z

.field private layoutSize:I

.field private listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private orientation:I

.field private savedState:Lcom/github/aakira/expandablelayout/ExpandableSavedState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->interpolator:Landroid/animation/TimeInterpolator;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->closePosition:I

    .line 56
    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->layoutSize:I

    .line 57
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isArranged:Z

    .line 58
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isCalculatedSize:Z

    .line 59
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isAnimating:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->childSizeList:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->childPositionList:Ljava/util/List;

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->interpolator:Landroid/animation/TimeInterpolator;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->closePosition:I

    .line 56
    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->layoutSize:I

    .line 57
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isArranged:Z

    .line 58
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isCalculatedSize:Z

    .line 59
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isAnimating:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->childSizeList:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->childPositionList:Ljava/util/List;

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    .line 23
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isVertical()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    .line 23
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    .line 23
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->layoutSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    .line 23
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->closePosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    .line 23
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isExpanded:Z

    return v0
.end method

.method static synthetic access$502(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isExpanded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    .line 23
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method private createExpandAnimator(IIJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 472
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 473
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 474
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 475
    new-instance v1, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$1;

    invoke-direct {v1, p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$1;-><init>(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 486
    new-instance v1, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;

    invoke-direct {v1, p0, p2}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$2;-><init>(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 519
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

    iput v2, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->duration:I

    .line 95
    sget v2, Lcom/github/aakira/expandablelayout/R$styleable;->expandableLayout_ael_expanded:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->defaultExpanded:Z

    .line 96
    sget v1, Lcom/github/aakira/expandablelayout/R$styleable;->expandableLayout_ael_orientation:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->orientation:I

    .line 97
    sget v1, Lcom/github/aakira/expandablelayout/R$styleable;->expandableLayout_ael_defaultChildIndex:I

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->defaultChildIndex:I

    .line 99
    sget v1, Lcom/github/aakira/expandablelayout/R$styleable;->expandableLayout_ael_defaultPosition:I

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->defaultPosition:I

    .line 101
    sget v1, Lcom/github/aakira/expandablelayout/R$styleable;->expandableLayout_ael_interpolator:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 103
    .local v1, "interpolatorType":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-static {v1}, Lcom/github/aakira/expandablelayout/Utils;->createInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->interpolator:Landroid/animation/TimeInterpolator;

    .line 105
    iget-boolean v2, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->defaultExpanded:Z

    iput-boolean v2, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isExpanded:Z

    .line 106
    return-void
.end method

.method private isVertical()Z
    .locals 2

    .line 447
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->orientation:I

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

    .line 526
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    if-nez v0, :cond_0

    return-void

    .line 528
    :cond_0
    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onAnimationStart()V

    .line 529
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isExpanded:Z

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onPreOpen()V

    goto :goto_0

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onPreClose()V

    .line 534
    :goto_0
    new-instance v0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$3;

    invoke-direct {v0, p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout$3;-><init>(Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;)V

    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 551
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 552
    return-void
.end method

.method private setLayoutSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 451
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 456
    :goto_0
    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 7

    .line 252
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->closePosition:I

    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->duration:I

    int-to-long v4, v0

    iget-object v6, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->interpolator:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->createExpandAnimator(IIJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 255
    return-void
.end method

.method public collapse(JLandroid/animation/TimeInterpolator;)V
    .locals 7
    .param p1, "duration"    # J
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 262
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 264
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 265
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->closePosition:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->move(IJLandroid/animation/TimeInterpolator;)V

    .line 266
    return-void

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->closePosition:I

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->createExpandAnimator(IIJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 269
    return-void
.end method

.method public expand()V
    .locals 7

    .line 228
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->layoutSize:I

    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->duration:I

    int-to-long v4, v0

    iget-object v6, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->interpolator:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->createExpandAnimator(IIJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 231
    return-void
.end method

.method public expand(JLandroid/animation/TimeInterpolator;)V
    .locals 7
    .param p1, "duration"    # J
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 238
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 240
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 241
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->layoutSize:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->move(IJLandroid/animation/TimeInterpolator;)V

    .line 242
    return-void

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->layoutSize:I

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->createExpandAnimator(IIJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 245
    return-void
.end method

.method public getChildPosition(I)I
    .locals 2
    .param p1, "index"    # I

    .line 395
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->childSizeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->childPositionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->childSizeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There aren\'t the view having this index."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClosePosition()I
    .locals 1

    .line 410
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->closePosition:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 431
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isExpanded:Z

    return v0
.end method

.method public move(I)V
    .locals 3
    .param p1, "position"    # I

    .line 319
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->duration:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->move(IJLandroid/animation/TimeInterpolator;)V

    .line 320
    return-void
.end method

.method public move(IJLandroid/animation/TimeInterpolator;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "duration"    # J
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 331
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isAnimating:Z

    if-nez v0, :cond_4

    if-ltz p1, :cond_4

    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->layoutSize:I

    if-ge v0, p1, :cond_0

    goto :goto_2

    .line 333
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_2

    .line 334
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->closePosition:I

    if-le p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isExpanded:Z

    .line 335
    invoke-direct {p0, p1}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->setLayoutSize(I)V

    .line 336
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->requestLayout()V

    .line 337
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->notifyListeners()V

    .line 338
    return-void

    .line 340
    :cond_2
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getCurrentPosition()I

    move-result v2

    if-nez p4, :cond_3

    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->interpolator:Landroid/animation/TimeInterpolator;

    move-object v6, v0

    goto :goto_1

    :cond_3
    move-object v6, p4

    :goto_1
    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->createExpandAnimator(IIJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 342
    return-void

    .line 331
    :cond_4
    :goto_2
    return-void
.end method

.method public moveChild(I)V
    .locals 3
    .param p1, "index"    # I

    .line 350
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->duration:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->moveChild(IJLandroid/animation/TimeInterpolator;)V

    .line 351
    return-void
.end method

.method public moveChild(IJLandroid/animation/TimeInterpolator;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "duration"    # J
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 362
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 364
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getChildPosition(I)I

    move-result v0

    .line 365
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getPaddingBottom()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getPaddingRight()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 366
    .local v0, "destination":I
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_3

    .line 367
    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->closePosition:I

    if-le v0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isExpanded:Z

    .line 368
    invoke-direct {p0, v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->setLayoutSize(I)V

    .line 369
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->requestLayout()V

    .line 370
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->notifyListeners()V

    .line 371
    return-void

    .line 373
    :cond_3
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getCurrentPosition()I

    move-result v3

    if-nez p4, :cond_4

    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->interpolator:Landroid/animation/TimeInterpolator;

    move-object v7, v1

    goto :goto_2

    :cond_4
    move-object v7, p4

    :goto_2
    move-object v2, p0

    move v4, v0

    move-wide v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->createExpandAnimator(IIJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 375
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 148
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 150
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isArranged:Z

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->childPositionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->childPositionList:Ljava/util/List;

    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    :goto_1
    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "i":I
    :cond_2
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->defaultExpanded:Z

    if-nez v0, :cond_3

    .line 160
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->closePosition:I

    invoke-direct {p0, v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->setLayoutSize(I)V

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->childSizeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 163
    .local v0, "childNumbers":I
    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->defaultChildIndex:I

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-le v0, v1, :cond_4

    if-lez v0, :cond_4

    .line 164
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->moveChild(IJLandroid/animation/TimeInterpolator;)V

    .line 166
    :cond_4
    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->defaultPosition:I

    if-lez v1, :cond_5

    iget v5, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->layoutSize:I

    if-lt v5, v1, :cond_5

    if-lez v5, :cond_5

    .line 167
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->move(IJLandroid/animation/TimeInterpolator;)V

    .line 169
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isArranged:Z

    .line 171
    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->savedState:Lcom/github/aakira/expandablelayout/ExpandableSavedState;

    if-nez v1, :cond_6

    return-void

    .line 172
    :cond_6
    invoke-virtual {v1}, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->getSize()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->setLayoutSize(I)V

    .line 173
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 110
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 112
    iget-boolean v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isCalculatedSize:Z

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 115
    .local v0, "measureSpec":I
    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getMeasuredHeight()I

    move-result v1

    .line 118
    .local v1, "measuredHeight":I
    invoke-super {p0, p1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 119
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->layoutSize:I

    .line 121
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->setMeasuredDimension(II)V

    .line 122
    .end local v1    # "measuredHeight":I
    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getMeasuredWidth()I

    move-result v1

    .line 125
    .local v1, "measuredWidth":I
    invoke-super {p0, v0, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 126
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->layoutSize:I

    .line 128
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->setMeasuredDimension(II)V

    .line 132
    .end local v1    # "measuredWidth":I
    :goto_0
    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->childSizeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 136
    invoke-virtual {p0, v1}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 137
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 139
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->childSizeList:Ljava/util/List;

    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isVertical()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    goto :goto_2

    .line 141
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .line 139
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    .end local v1    # "i":I
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isCalculatedSize:Z

    .line 144
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 185
    instance-of v0, p1, Lcom/github/aakira/expandablelayout/ExpandableSavedState;

    if-nez v0, :cond_0

    .line 186
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 187
    return-void

    .line 190
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/github/aakira/expandablelayout/ExpandableSavedState;

    .line 191
    .local v0, "ss":Lcom/github/aakira/expandablelayout/ExpandableSavedState;
    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 192
    iput-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->savedState:Lcom/github/aakira/expandablelayout/ExpandableSavedState;

    .line 193
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 177
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 178
    .local v0, "parcelable":Landroid/os/Parcelable;
    new-instance v1, Lcom/github/aakira/expandablelayout/ExpandableSavedState;

    invoke-direct {v1, v0}, Lcom/github/aakira/expandablelayout/ExpandableSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 179
    .local v1, "ss":Lcom/github/aakira/expandablelayout/ExpandableSavedState;
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->setSize(I)V

    .line 180
    return-object v1
.end method

.method public setClosePosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 422
    iput p1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->closePosition:I

    .line 423
    return-void
.end method

.method public setClosePositionIndex(I)V
    .locals 1
    .param p1, "childIndex"    # I

    .line 443
    invoke-virtual {p0, p1}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getChildPosition(I)I

    move-result v0

    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->closePosition:I

    .line 444
    return-void
.end method

.method public setDuration(I)V
    .locals 3
    .param p1, "duration"    # I

    .line 276
    if-ltz p1, :cond_0

    .line 280
    iput p1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->duration:I

    .line 281
    return-void

    .line 277
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

    .line 288
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getCurrentPosition()I

    move-result v0

    .line 289
    .local v0, "currentPosition":I
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->layoutSize:I

    if-eq v0, v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->closePosition:I

    if-ne v0, v1, :cond_2

    .line 290
    :cond_1
    return-void

    .line 292
    :cond_2
    iput-boolean p1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isExpanded:Z

    .line 293
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->layoutSize:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->closePosition:I

    :goto_0
    invoke-direct {p0, v1}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->setLayoutSize(I)V

    .line 294
    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->requestLayout()V

    .line 295
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 310
    iput-object p1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->interpolator:Landroid/animation/TimeInterpolator;

    .line 311
    return-void
.end method

.method public setListener(Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    .line 200
    iput-object p1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->listener:Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    .line 201
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .line 383
    iput p1, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->orientation:I

    .line 384
    return-void
.end method

.method public toggle()V
    .locals 3

    .line 208
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->duration:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0, v1, v2}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->toggle(JLandroid/animation/TimeInterpolator;)V

    .line 209
    return-void
.end method

.method public toggle(JLandroid/animation/TimeInterpolator;)V
    .locals 2
    .param p1, "duration"    # J
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 216
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->closePosition:I

    invoke-virtual {p0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->getCurrentPosition()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 217
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->collapse(JLandroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->expand(JLandroid/animation/TimeInterpolator;)V

    .line 221
    :goto_0
    return-void
.end method
