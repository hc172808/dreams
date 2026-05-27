.class public Lcom/payu/custombrowser/widgets/a;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/app/Activity;

.field private c:Ljava/util/Timer;

.field private d:Lcom/payu/custombrowser/util/c;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 40
    sget v0, Lcom/payu/custombrowser/R$style;->cb_progress_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/a;->c:Ljava/util/Timer;

    .line 41
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/payu/custombrowser/widgets/a;->b:Landroid/app/Activity;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 43
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 44
    iput-object p2, p0, Lcom/payu/custombrowser/widgets/a;->e:Landroid/view/View;

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/payu/custombrowser/widgets/a;->e:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/widgets/a;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 52
    :cond_1
    sget p2, Lcom/payu/custombrowser/R$layout;->cb_prog_dialog:I

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/custombrowser/widgets/a;->e:Landroid/view/View;

    .line 53
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/widgets/a;->setContentView(Landroid/view/View;)V

    .line 54
    iget-object p1, p0, Lcom/payu/custombrowser/widgets/a;->e:Landroid/view/View;

    sget p2, Lcom/payu/custombrowser/R$id;->dialog_desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/payu/custombrowser/widgets/a;->a:Landroid/widget/TextView;

    .line 57
    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/widgets/a;->setCancelable(Z)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/payu/custombrowser/widgets/a;->setCanceledOnTouchOutside(Z)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/payu/custombrowser/widgets/a;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/payu/custombrowser/widgets/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/payu/custombrowser/widgets/a;)Ljava/util/Timer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/payu/custombrowser/widgets/a;->c:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic c(Lcom/payu/custombrowser/widgets/a;)Lcom/payu/custombrowser/util/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/payu/custombrowser/widgets/a;->d:Lcom/payu/custombrowser/util/c;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 9

    .line 82
    new-instance v0, Lcom/payu/custombrowser/util/c;

    invoke-direct {v0}, Lcom/payu/custombrowser/util/c;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/a;->d:Lcom/payu/custombrowser/util/c;

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$drawable;->l_icon1:I

    invoke-direct {p0, v1, v2}, Lcom/payu/custombrowser/widgets/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$drawable;->l_icon2:I

    invoke-direct {p0, v1, v2}, Lcom/payu/custombrowser/widgets/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$drawable;->l_icon3:I

    invoke-direct {p0, v1, v2}, Lcom/payu/custombrowser/widgets/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/payu/custombrowser/R$drawable;->l_icon4:I

    invoke-direct {p0, p1, v1}, Lcom/payu/custombrowser/widgets/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 91
    iget-object p1, p0, Lcom/payu/custombrowser/widgets/a;->e:Landroid/view/View;

    sget v1, Lcom/payu/custombrowser/R$id;->imageView:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 92
    iget-object v1, p0, Lcom/payu/custombrowser/widgets/a;->d:Lcom/payu/custombrowser/util/c;

    iget-object v2, p0, Lcom/payu/custombrowser/widgets/a;->c:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/util/c;->a(Ljava/util/Timer;)V

    .line 94
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/payu/custombrowser/widgets/a;->c:Ljava/util/Timer;

    .line 95
    new-instance v4, Lcom/payu/custombrowser/widgets/a$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/payu/custombrowser/widgets/a$1;-><init>(Lcom/payu/custombrowser/widgets/a;[Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1f4

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 121
    new-instance p1, Lcom/payu/custombrowser/widgets/a$2;

    invoke-direct {p1, p0}, Lcom/payu/custombrowser/widgets/a$2;-><init>(Lcom/payu/custombrowser/widgets/a;)V

    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/widgets/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 127
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method
