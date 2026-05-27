.class public Lcom/payu/custombrowser/custombar/DotsProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/os/Handler;

.field private final d:I

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->a:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->b:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->c:Landroid/os/Handler;

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->d:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->g:I

    .line 48
    const/4 v0, 0x5

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->j:I

    .line 50
    iput v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->l:I

    .line 76
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->a(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->a:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->b:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->c:Landroid/os/Handler;

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->d:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->g:I

    .line 48
    const/4 v0, 0x5

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->j:I

    .line 50
    iput v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->l:I

    .line 81
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->a(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->a:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->b:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->c:Landroid/os/Handler;

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->d:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->g:I

    .line 48
    const/4 v0, 0x5

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->j:I

    .line 50
    iput v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->l:I

    .line 86
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->a(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/payu/custombrowser/custombar/DotsProgressBar;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->l:I

    return p0
.end method

.method static synthetic a(Lcom/payu/custombrowser/custombar/DotsProgressBar;I)I
    .locals 1

    .line 39
    iget v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->g:I

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$dimen;->cb_circle_indicator_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->e:F

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$dimen;->cb_circle_indicator_outer_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->f:F

    .line 93
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/payu/custombrowser/R$color;->cb_payu_blue:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object p1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object p1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->b:Landroid/graphics/Paint;

    const/high16 v0, 0x33000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    return-void
.end method

.method static synthetic b(Lcom/payu/custombrowser/custombar/DotsProgressBar;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->g:I

    return p0
.end method

.method static synthetic b(Lcom/payu/custombrowser/custombar/DotsProgressBar;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->g:I

    return p1
.end method

.method static synthetic c(Lcom/payu/custombrowser/custombar/DotsProgressBar;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->j:I

    return p0
.end method

.method static synthetic c(Lcom/payu/custombrowser/custombar/DotsProgressBar;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->l:I

    return p1
.end method

.method static synthetic d(Lcom/payu/custombrowser/custombar/DotsProgressBar;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->k:Z

    return p0
.end method

.method static synthetic e(Lcom/payu/custombrowser/custombar/DotsProgressBar;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->m:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic f(Lcom/payu/custombrowser/custombar/DotsProgressBar;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->c:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->g:I

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->k:Z

    .line 145
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method

.method public b()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->k:Z

    .line 155
    iget-object v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 104
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 105
    new-instance v0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;-><init>(Lcom/payu/custombrowser/custombar/DotsProgressBar;)V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->m:Ljava/lang/Runnable;

    .line 126
    invoke-virtual {p0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->a()V

    .line 127
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 185
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 187
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->m:Ljava/lang/Runnable;

    .line 191
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 169
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 170
    iget v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->h:I

    int-to-float v0, v0

    iget v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->j:I

    int-to-float v2, v1

    iget v3, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->e:F

    mul-float v2, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    .line 171
    iget v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->i:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 172
    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->j:I

    if-ge v2, v4, :cond_1

    .line 173
    iget v4, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->g:I

    if-ne v2, v4, :cond_0

    .line 174
    iget v4, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->f:F

    iget-object v5, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 176
    :cond_0
    iget v4, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->e:F

    iget-object v5, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 178
    :goto_1
    iget v4, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->e:F

    mul-float v4, v4, v3

    const/high16 v5, 0x41200000    # 10.0f

    add-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 161
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 162
    iget v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->e:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v0

    iget v2, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->j:I

    int-to-float v3, v2

    mul-float v1, v1, v3

    mul-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    iget v2, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->f:F

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->h:I

    .line 163
    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->i:I

    .line 164
    iget v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->h:I

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->setMeasuredDimension(II)V

    .line 165
    return-void
.end method

.method public setDotsCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 136
    iput p1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->j:I

    .line 137
    return-void
.end method
