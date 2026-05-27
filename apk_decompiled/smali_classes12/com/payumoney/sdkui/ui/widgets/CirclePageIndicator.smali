.class public Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/sdkui/ui/widgets/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private d:F

.field private e:Landroidx/viewpager/widget/ViewPager;

.field private f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:F

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 74
    sget v0, Lcom/payumoney/sdkui/R$attr;->vpiCirclePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->a:Landroid/graphics/Paint;

    .line 50
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->b:Landroid/graphics/Paint;

    .line 51
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 64
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->o:F

    .line 65
    const/4 v3, -0x1

    iput v3, v0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->p:I

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 83
    sget v6, Lcom/payumoney/sdkui/R$color;->default_circle_indicator_page_color:I

    invoke-static {v1, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 84
    sget v7, Lcom/payumoney/sdkui/R$color;->default_circle_indicator_fill_color:I

    invoke-static {v1, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    .line 85
    sget v8, Lcom/payumoney/sdkui/R$integer;->default_circle_indicator_orientation:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 86
    sget v9, Lcom/payumoney/sdkui/R$color;->default_circle_indicator_stroke_color:I

    invoke-static {v1, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    .line 87
    sget v10, Lcom/payumoney/sdkui/R$dimen;->default_circle_indicator_stroke_width:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 88
    sget v11, Lcom/payumoney/sdkui/R$dimen;->default_circle_indicator_radius:I

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 89
    sget v12, Lcom/payumoney/sdkui/R$bool;->default_circle_indicator_centered:I

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    .line 90
    sget v13, Lcom/payumoney/sdkui/R$bool;->default_circle_indicator_snap:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 93
    sget-object v13, Lcom/payumoney/sdkui/R$styleable;->CirclePageIndicator:[I

    const/4 v14, 0x0

    move-object/from16 v15, p2

    move/from16 v16, v3

    move/from16 v3, p3

    invoke-virtual {v1, v15, v13, v3, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 95
    sget v14, Lcom/payumoney/sdkui/R$styleable;->CirclePageIndicator_centered:I

    invoke-virtual {v13, v14, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    iput-boolean v12, v0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->l:Z

    .line 96
    sget v12, Lcom/payumoney/sdkui/R$styleable;->CirclePageIndicator_android_orientation:I

    invoke-virtual {v13, v12, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->k:I

    .line 97
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    sget v8, Lcom/payumoney/sdkui/R$styleable;->CirclePageIndicator_pageColor:I

    invoke-virtual {v13, v8, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    sget v2, Lcom/payumoney/sdkui/R$styleable;->CirclePageIndicator_strokeColor:I

    invoke-virtual {v13, v2, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    sget v2, Lcom/payumoney/sdkui/R$styleable;->CirclePageIndicator_strokeWidth:I

    invoke-virtual {v13, v2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    sget v2, Lcom/payumoney/sdkui/R$styleable;->CirclePageIndicator_fillColor:I

    invoke-virtual {v13, v2, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    sget v2, Lcom/payumoney/sdkui/R$styleable;->CirclePageIndicator_radius:I

    invoke-virtual {v13, v2, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->d:F

    .line 105
    sget v2, Lcom/payumoney/sdkui/R$styleable;->CirclePageIndicator_snap:I

    move/from16 v4, v16

    invoke-virtual {v13, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->m:Z

    .line 107
    sget v2, Lcom/payumoney/sdkui/R$styleable;->CirclePageIndicator_android_background:I

    invoke-virtual {v13, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 108
    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_1
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 115
    invoke-static {v2}, Landroidx/core/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, v0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->n:I

    .line 116
    return-void
.end method

.method private a(I)I
    .locals 5

    .line 462
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 463
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 465
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    .line 471
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->d:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float v1, v1, v4

    add-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 474
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 475
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 474
    :cond_1
    move p1, v1

    goto :goto_1

    .line 467
    :cond_2
    :goto_0
    nop

    .line 478
    :goto_1
    return p1
.end method

.method private b(I)I
    .locals 3

    .line 489
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 490
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 492
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 494
    goto :goto_0

    .line 497
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->d:F

    mul-float v2, v2, v1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 499
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 500
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 499
    :cond_1
    move p1, v1

    .line 503
    :goto_0
    return p1
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->k:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 181
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->d:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->l:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->m:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 399
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->invalidate()V

    .line 400
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 200
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 202
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    .line 203
    return-void

    .line 205
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 206
    if-nez v0, :cond_1

    .line 207
    return-void

    .line 210
    :cond_1
    iget v1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->g:I

    if-lt v1, v0, :cond_2

    .line 211
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->setCurrentItem(I)V

    .line 212
    return-void

    .line 219
    :cond_2
    iget v1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->k:I

    if-nez v1, :cond_3

    .line 220
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->getWidth()I

    move-result v1

    .line 221
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    .line 222
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->getPaddingRight()I

    move-result v3

    .line 223
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->getPaddingTop()I

    move-result v4

    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->getHeight()I

    move-result v1

    .line 226
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    .line 227
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->getPaddingBottom()I

    move-result v3

    .line 228
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->getPaddingLeft()I

    move-result v4

    .line 231
    :goto_0
    iget v5, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->d:F

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v5

    .line 232
    int-to-float v4, v4

    add-float/2addr v4, v5

    .line 233
    int-to-float v7, v2

    add-float/2addr v7, v5

    .line 234
    iget-boolean v8, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->l:Z

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v8, :cond_4

    .line 235
    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v9

    int-to-float v2, v0

    mul-float v2, v2, v6

    div-float/2addr v2, v9

    sub-float/2addr v1, v2

    add-float/2addr v7, v1

    .line 241
    :cond_4
    nop

    .line 242
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 243
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v9

    sub-float/2addr v5, v1

    .line 247
    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_9

    .line 248
    int-to-float v2, v1

    mul-float v2, v2, v6

    add-float/2addr v2, v7

    .line 249
    iget v3, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->k:I

    if-nez v3, :cond_6

    .line 250
    nop

    .line 251
    move v3, v4

    goto :goto_2

    .line 253
    :cond_6
    nop

    .line 254
    move v3, v2

    move v2, v4

    .line 257
    :goto_2
    iget-object v8, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    if-lez v8, :cond_7

    .line 258
    iget-object v8, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 262
    :cond_7
    iget v8, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->d:F

    cmpl-float v9, v5, v8

    if-eqz v9, :cond_8

    .line 263
    iget-object v9, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 247
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 268
    :cond_9
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->m:Z

    if-eqz v0, :cond_a

    iget v1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->h:I

    goto :goto_3

    :cond_a
    iget v1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->g:I

    :goto_3
    int-to-float v1, v1

    mul-float v1, v1, v6

    .line 269
    if-nez v0, :cond_b

    .line 270
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->i:F

    mul-float v0, v0, v6

    add-float/2addr v1, v0

    .line 272
    :cond_b
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->k:I

    if-nez v0, :cond_c

    .line 273
    add-float/2addr v7, v1

    .line 274
    move v10, v7

    move v7, v4

    move v4, v10

    goto :goto_4

    .line 276
    :cond_c
    nop

    .line 277
    add-float/2addr v7, v1

    .line 279
    :goto_4
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->d:F

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 280
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 447
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->k:I

    if-nez v0, :cond_0

    .line 448
    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->a(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0

    .line 450
    :cond_0
    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->b(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->a(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 452
    :goto_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 404
    iput p1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->j:I

    .line 406
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 407
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 409
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 413
    iput p1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->g:I

    .line 414
    iput p2, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->i:F

    .line 415
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->invalidate()V

    .line 417
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 418
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 420
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .line 424
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->j:I

    if-nez v0, :cond_1

    .line 425
    :cond_0
    iput p1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->g:I

    .line 426
    iput p1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->h:I

    .line 427
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->invalidate()V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 431
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 433
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 508
    move-object v0, p1

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;

    .line 509
    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 510
    iget v1, v0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;->a:I

    iput v1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->g:I

    .line 511
    iget v0, v0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->h:I

    .line 512
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->requestLayout()V

    .line 513
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 517
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 518
    new-instance v1, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 519
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->g:I

    iput v0, v1, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;->a:I

    .line 520
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 283
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 284
    return v1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 290
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 291
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 352
    :pswitch_1
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 353
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 354
    iget v4, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->p:I

    if-ne v3, v4, :cond_3

    .line 355
    if-nez v0, :cond_2

    const/4 v2, 0x1

    .line 356
    :cond_2
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->p:I

    .line 358
    :cond_3
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->p:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->o:F

    goto/16 :goto_0

    .line 345
    :pswitch_2
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 346
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->o:F

    .line 347
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->p:I

    .line 348
    goto/16 :goto_0

    .line 298
    :pswitch_3
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->p:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 299
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 300
    iget v2, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->o:F

    sub-float v2, v0, v2

    .line 302
    iget-boolean v3, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->q:Z

    if-nez v3, :cond_4

    .line 303
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->n:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 304
    iput-boolean v1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->q:Z

    .line 308
    :cond_4
    iget-boolean v3, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->q:Z

    if-eqz v3, :cond_a

    .line 309
    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->o:F

    .line 310
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 311
    :cond_5
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 320
    :pswitch_4
    iget-boolean v3, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->q:Z

    if-nez v3, :cond_9

    .line 321
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    .line 322
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->getWidth()I

    move-result v4

    .line 323
    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    .line 324
    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    .line 326
    iget v6, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->g:I

    const/4 v7, 0x3

    if-lez v6, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v8, v5, v4

    cmpg-float v6, v6, v8

    if-gez v6, :cond_7

    .line 327
    if-eq v0, v7, :cond_6

    .line 328
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    iget v2, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->g:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 330
    :cond_6
    return v1

    .line 331
    :cond_7
    iget v6, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->g:I

    sub-int/2addr v3, v1

    if-ge v6, v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v5, v4

    cmpl-float v3, v3, v5

    if-lez v3, :cond_9

    .line 332
    if-eq v0, v7, :cond_8

    .line 333
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    iget v2, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->g:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 335
    :cond_8
    return v1

    .line 339
    :cond_9
    iput-boolean v2, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->q:Z

    .line 340
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->p:I

    .line 341
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V

    goto :goto_0

    .line 293
    :pswitch_5
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->p:I

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->o:F

    .line 295
    nop

    .line 362
    :cond_a
    :goto_0
    return v1

    .line 287
    :cond_b
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0
    .param p1, "centered"    # Z

    .line 123
    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->l:Z

    .line 124
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->invalidate()V

    .line 125
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .line 389
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 393
    iput p1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->g:I

    .line 394
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->invalidate()V

    .line 395
    return-void

    .line 390
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .line 141
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->invalidate()V

    .line 143
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 437
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 438
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 150
    packed-switch p1, :pswitch_data_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :pswitch_0
    iput p1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->k:I

    .line 154
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->requestLayout()V

    .line 155
    nop

    .line 160
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1
    .param p1, "pageColor"    # I

    .line 132
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->invalidate()V

    .line 134
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .line 185
    iput p1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->d:F

    .line 186
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->invalidate()V

    .line 187
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .param p1, "snap"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->m:Z

    .line 195
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->invalidate()V

    .line 196
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I

    .line 167
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->invalidate()V

    .line 169
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .line 176
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 177
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->invalidate()V

    .line 178
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2
    .param p1, "view"    # Landroidx/viewpager/widget/ViewPager;

    .line 367
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    .line 368
    return-void

    .line 370
    :cond_0
    if-eqz v0, :cond_1

    .line 371
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 373
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 376
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    .line 377
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 378
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->invalidate()V

    .line 379
    return-void

    .line 374
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroidx/viewpager/widget/ViewPager;
    .param p2, "initialPosition"    # I

    .line 383
    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 384
    invoke-virtual {p0, p2}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->setCurrentItem(I)V

    .line 385
    return-void
.end method
