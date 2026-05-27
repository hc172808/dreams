.class public Lcom/payu/custombrowser/widgets/SnoozeLoaderView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field a:Landroid/app/Activity;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    const/16 v0, 0x28

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->j:I

    .line 48
    const/16 v0, 0x78

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->k:I

    .line 50
    const/16 v1, 0x46

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->l:I

    .line 52
    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->m:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->n:Z

    .line 56
    const-string v1, "#00adf2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->o:I

    .line 58
    const-string v1, "#b0eafc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->p:I

    .line 60
    const/16 v1, 0xc8

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->q:I

    .line 62
    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->r:I

    .line 67
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->a:Landroid/app/Activity;

    .line 68
    invoke-direct {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->c()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/16 v0, 0x28

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->j:I

    .line 48
    const/16 v0, 0x78

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->k:I

    .line 50
    const/16 v0, 0x46

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->l:I

    .line 52
    const/16 v0, 0x78

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->m:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->n:Z

    .line 56
    const-string v1, "#00adf2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->o:I

    .line 58
    const-string v1, "#b0eafc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->p:I

    .line 60
    const/16 v1, 0xc8

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->q:I

    .line 62
    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->r:I

    .line 74
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->a:Landroid/app/Activity;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    :try_start_0
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_startAnimate:I

    iget-boolean v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->n:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->n:Z

    .line 80
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_activeBarColor:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->o:I

    .line 81
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_inActiveBarColor:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->p:I

    .line 82
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_barWidth:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->j:I

    .line 83
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_barHeight:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->k:I

    .line 84
    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->m:I

    .line 85
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_barSpace:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->l:I

    .line 86
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_animationSpeed:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->q:I

    .line 87
    invoke-direct {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    nop

    .line 93
    return-void

    .line 89
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/16 v0, 0x28

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->j:I

    .line 48
    const/16 v0, 0x78

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->k:I

    .line 50
    const/16 v0, 0x46

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->l:I

    .line 52
    const/16 v0, 0x78

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->m:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->n:Z

    .line 56
    const-string v1, "#00adf2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->o:I

    .line 58
    const-string v1, "#b0eafc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->p:I

    .line 60
    const/16 v1, 0xc8

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->q:I

    .line 62
    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->r:I

    .line 97
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->a:Landroid/app/Activity;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    :try_start_0
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_startAnimate:I

    iget-boolean v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->n:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->n:Z

    .line 103
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_activeBarColor:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->o:I

    .line 104
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_inActiveBarColor:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->p:I

    .line 105
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_barWidth:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->j:I

    .line 106
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_barHeight:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->k:I

    .line 107
    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->m:I

    .line 108
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_barSpace:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->l:I

    .line 109
    invoke-direct {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    nop

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    throw v1
.end method

.method static synthetic a(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->r:I

    return p0
.end method

.method static synthetic a(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->r:I

    return p1
.end method

.method static synthetic b(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;I)I
    .locals 1

    .line 21
    iget v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->r:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->r:I

    return v0
.end method

.method static synthetic b(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->n:Z

    return p0
.end method

.method private c()V
    .locals 2

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->b:Landroid/graphics/Paint;

    .line 173
    iget v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->o:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->c:Landroid/graphics/Paint;

    .line 177
    iget v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->c:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->g:Landroid/graphics/Paint;

    .line 181
    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->h:Landroid/graphics/Paint;

    .line 182
    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->i:Landroid/graphics/Paint;

    .line 184
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->n:Z

    .line 231
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->s:Ljava/util/Timer;

    .line 232
    new-instance v2, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;

    invoke-direct {v2, p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;-><init>(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)V

    iget v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->q:I

    int-to-long v5, v0

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 247
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 132
    packed-switch p1, :pswitch_data_0

    .line 154
    iget-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->c:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->g:Landroid/graphics/Paint;

    .line 155
    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->h:Landroid/graphics/Paint;

    .line 156
    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->i:Landroid/graphics/Paint;

    goto :goto_0

    .line 149
    :pswitch_0
    iget-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->b:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->g:Landroid/graphics/Paint;

    .line 150
    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->h:Landroid/graphics/Paint;

    .line 151
    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->i:Landroid/graphics/Paint;

    .line 152
    goto :goto_0

    .line 144
    :pswitch_1
    iget-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->b:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->g:Landroid/graphics/Paint;

    .line 145
    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->h:Landroid/graphics/Paint;

    .line 146
    iget-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->c:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->i:Landroid/graphics/Paint;

    .line 147
    goto :goto_0

    .line 139
    :pswitch_2
    iget-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->b:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->g:Landroid/graphics/Paint;

    .line 140
    iget-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->c:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->h:Landroid/graphics/Paint;

    .line 141
    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->i:Landroid/graphics/Paint;

    .line 142
    goto :goto_0

    .line 134
    :pswitch_3
    iget-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->c:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->g:Landroid/graphics/Paint;

    .line 135
    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->h:Landroid/graphics/Paint;

    .line 136
    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->i:Landroid/graphics/Paint;

    .line 137
    nop

    .line 159
    :goto_0
    iget-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->a:Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->a:Landroid/app/Activity;

    new-instance v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$1;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$1;-><init>(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 169
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->n:Z

    .line 256
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->s:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 258
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->s:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 260
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 272
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->n:Z

    .line 274
    invoke-virtual {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->b()V

    .line 275
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 121
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 122
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 123
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 264
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 265
    iget v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->j:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->l:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    iget v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->k:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->m:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 267
    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->setMeasuredDimension(II)V

    .line 268
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 16
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 188
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 191
    div-int/lit8 v1, p1, 0x2

    .line 192
    div-int/lit8 v2, p2, 0x2

    .line 197
    iget v3, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->j:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v1, v4

    .line 198
    iget v5, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->k:I

    div-int/lit8 v6, v5, 0x2

    sub-int v6, v2, v6

    .line 199
    add-int v7, v4, v3

    .line 200
    add-int v8, v6, v5

    .line 203
    sub-int v9, v1, v3

    iget v10, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->l:I

    sub-int/2addr v9, v10

    div-int/lit8 v11, v3, 0x2

    sub-int/2addr v9, v11

    .line 204
    div-int/lit8 v11, v5, 0x2

    sub-int v11, v2, v11

    iget v12, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->m:I

    sub-int/2addr v11, v12

    .line 205
    add-int v13, v9, v3

    .line 206
    add-int v14, v11, v5

    add-int/2addr v14, v12

    add-int/2addr v14, v12

    .line 209
    div-int/lit8 v15, v3, 0x2

    add-int/2addr v1, v15

    add-int/2addr v1, v10

    .line 210
    div-int/lit8 v10, v5, 0x2

    sub-int/2addr v2, v10

    add-int/2addr v2, v12

    .line 211
    add-int/2addr v3, v1

    .line 212
    add-int/2addr v5, v2

    sub-int/2addr v5, v12

    sub-int/2addr v5, v12

    .line 214
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v4, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->e:Landroid/graphics/Rect;

    .line 215
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->d:Landroid/graphics/Rect;

    .line 216
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->f:Landroid/graphics/Rect;

    .line 219
    iget-boolean v1, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->n:Z

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->a()V

    .line 222
    :cond_0
    return-void
.end method
