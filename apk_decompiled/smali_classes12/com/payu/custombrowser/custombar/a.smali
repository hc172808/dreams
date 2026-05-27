.class public Lcom/payu/custombrowser/custombar/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    .line 53
    sget v0, Lcom/payu/custombrowser/R$id;->dotsProgressBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/payu/custombrowser/custombar/DotsProgressBar;

    .line 54
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->setDotsCount(I)V

    .line 55
    invoke-virtual {p1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->a()V

    .line 56
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/custombar/a;->d(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .line 60
    sget v0, Lcom/payu/custombrowser/R$id;->dotsProgressBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payu/custombrowser/custombar/DotsProgressBar;

    .line 61
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-virtual {v0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->b()V

    .line 63
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 72
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    return-void
.end method
