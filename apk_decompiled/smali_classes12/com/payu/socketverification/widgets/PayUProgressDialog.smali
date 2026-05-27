.class public Lcom/payu/socketverification/widgets/PayUProgressDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Timer;

.field b:Lcom/payu/socketverification/util/b;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/app/Activity;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .line 41
    sget v0, Lcom/payu/socketverification/R$style;->payu_progress_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog;->a:Ljava/util/Timer;

    .line 32
    iput-object v0, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog;->e:Landroid/view/View;

    .line 42
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog;->d:Landroid/app/Activity;

    .line 43
    nop

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 44
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 45
    iput-object p2, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog;->e:Landroid/view/View;

    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 48
    nop

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog;->e:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 53
    :cond_1
    sget p2, Lcom/payu/socketverification/R$layout;->cb_prog_dialog_upisdk:I

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog;->e:Landroid/view/View;

    .line 54
    invoke-virtual {p0, p1}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->setContentView(Landroid/view/View;)V

    .line 55
    iget-object p1, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog;->e:Landroid/view/View;

    sget p2, Lcom/payu/socketverification/R$id;->dialog_desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog;->c:Landroid/widget/TextView;

    .line 58
    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->setCancelable(Z)V

    .line 59
    nop

    .end local p0    # "this":Lcom/payu/socketverification/widgets/PayUProgressDialog;
    invoke-virtual {p0, v1}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/payu/socketverification/widgets/PayUProgressDialog;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog;->d:Landroid/app/Activity;

    return-object p0
.end method

.method private static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public setPayUDialogSettings(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/payu/socketverification/util/b;

    invoke-direct {v0}, Lcom/payu/socketverification/util/b;-><init>()V

    iput-object v0, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog;->b:Lcom/payu/socketverification/util/b;

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/payu/socketverification/R$drawable;->l_icon1:I

    invoke-static {v1, v2}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/payu/socketverification/R$drawable;->l_icon2:I

    invoke-static {v1, v2}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/payu/socketverification/R$drawable;->l_icon3:I

    invoke-static {v1, v2}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 90
    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/payu/socketverification/R$drawable;->l_icon4:I

    invoke-static {p1, v1}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 93
    iget-object p1, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog;->e:Landroid/view/View;

    sget v1, Lcom/payu/socketverification/R$id;->imageView:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 94
    iget-object v1, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog;->a:Ljava/util/Timer;

    invoke-static {v1}, Lcom/payu/socketverification/util/b;->a(Ljava/util/Timer;)V

    .line 96
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog;->a:Ljava/util/Timer;

    .line 97
    new-instance v3, Lcom/payu/socketverification/widgets/PayUProgressDialog$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/payu/socketverification/widgets/PayUProgressDialog$1;-><init>(Lcom/payu/socketverification/widgets/PayUProgressDialog;[Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 123
    new-instance p1, Lcom/payu/socketverification/widgets/PayUProgressDialog$2;

    .end local p0    # "this":Lcom/payu/socketverification/widgets/PayUProgressDialog;
    invoke-direct {p1, p0}, Lcom/payu/socketverification/widgets/PayUProgressDialog$2;-><init>(Lcom/payu/socketverification/widgets/PayUProgressDialog;)V

    invoke-virtual {p0, p1}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 129
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 132
    nop

    .end local p0    # "this":Lcom/payu/socketverification/widgets/PayUProgressDialog;
    iget-object v0, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog;->c:Landroid/widget/TextView;

    .end local p1    # "text":Ljava/lang/String;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method
