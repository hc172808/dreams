.class Lcom/payu/custombrowser/Bank$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->convertToNative(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1584
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$13;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/payu/custombrowser/Bank$13;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1587
    const-string v0, ""

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->M:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1588
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->ap:Lcom/payu/custombrowser/custombar/a;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->M:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/custombar/a;->b(Landroid/view/View;)V

    .line 1589
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1590
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->ap:Lcom/payu/custombrowser/custombar/a;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/custombar/a;->b(Landroid/view/View;)V

    .line 1593
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->ag:Ljava/util/Timer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->d:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 1594
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->ag:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/util/c;->a(Ljava/util/Timer;)V

    .line 1597
    :cond_2
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_error:I

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1600
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->onBankError()V

    goto/16 :goto_11

    .line 1601
    :cond_3
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->a:Ljava/lang/String;

    const-string v2, "parse error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1603
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->onBankError()V

    goto/16 :goto_11

    .line 1604
    :cond_4
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->a:Ljava/lang/String;

    const-string v2, "loading"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-boolean v1, v1, Lcom/payu/custombrowser/Bank;->ac:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-boolean v1, v1, Lcom/payu/custombrowser/Bank;->ai:Z

    if-eqz v1, :cond_9

    .line 1605
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 1607
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 1608
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1610
    :cond_5
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->M:Landroid/view/View;

    if-nez v1, :cond_6

    .line 1611
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v4, v1, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/payu/custombrowser/R$layout;->cb_loading:I

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/payu/custombrowser/Bank;->M:Landroid/view/View;

    .line 1614
    :cond_6
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->M:Landroid/view/View;

    sget v2, Lcom/payu/custombrowser/R$id;->bank_logo:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1615
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->viewOnClickListener:Lcom/payu/custombrowser/a$b;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1616
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    .line 1617
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1621
    :cond_7
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget-object v4, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget v4, v4, Lcom/payu/custombrowser/Bank;->ad:I

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1622
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->M:Landroid/view/View;

    sget v4, Lcom/payu/custombrowser/R$id;->loading:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1623
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1624
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1625
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1626
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->ap:Lcom/payu/custombrowser/custombar/a;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->M:Landroid/view/View;

    sget v4, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/custombar/a;->a(Landroid/view/View;)V

    .line 1628
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1629
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->M:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1630
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1631
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput v3, v1, Lcom/payu/custombrowser/Bank;->y:I

    goto :goto_0

    .line 1633
    :cond_8
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->f()V

    .line 1635
    :goto_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v1, Lcom/payu/custombrowser/Bank;->M:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    .line 1636
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v1, Lcom/payu/custombrowser/Bank;->M:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/Bank;->addReviewOrder(Landroid/view/View;)V

    .line 1637
    goto/16 :goto_11

    :cond_9
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v6, Lcom/payu/custombrowser/R$string;->cb_choose:I

    invoke-virtual {v5, v6}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const-string v5, "Choose Screen"

    const/4 v6, 0x1

    const/16 v7, 0x8

    if-eqz v1, :cond_16

    .line 1639
    :try_start_1
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->a()V

    .line 1640
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput v3, v1, Lcom/payu/custombrowser/Bank;->y:I

    .line 1641
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput-boolean v6, v1, Lcom/payu/custombrowser/Bank;->ai:Z

    .line 1643
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 1644
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1647
    :cond_a
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v8, Lcom/payu/custombrowser/R$layout;->choose_action:I

    invoke-virtual {v1, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1648
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v2, v1}, Lcom/payu/custombrowser/Bank;->addReviewOrder(Landroid/view/View;)V

    .line 1649
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget v2, v2, Lcom/payu/custombrowser/Bank;->u:I

    if-nez v2, :cond_b

    .line 1650
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v2}, Lcom/payu/custombrowser/Bank;->e()V

    .line 1651
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v2}, Lcom/payu/custombrowser/Bank;->f()V

    .line 1653
    :cond_b
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1654
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->J:Landroid/view/View;

    if-eqz v2, :cond_c

    .line 1655
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->J:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1657
    :cond_c
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v2, v1}, Lcom/payu/custombrowser/Bank;->b(Landroid/view/View;)V

    .line 1658
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v2}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 1659
    const/4 v2, -0x2

    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 1660
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iput v8, v2, Lcom/payu/custombrowser/Bank;->ad:I

    .line 1662
    sget v2, Lcom/payu/custombrowser/R$id;->bank_logo:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1663
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->viewOnClickListener:Lcom/payu/custombrowser/a$b;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1664
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_d

    .line 1665
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1667
    :cond_d
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1668
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1669
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1670
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput v3, v2, Lcom/payu/custombrowser/Bank;->y:I

    .line 1673
    :cond_e
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "Select an option for Faster payment"

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1674
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v6, 0x15

    const/16 v8, 0x1b

    const/16 v9, 0x21

    invoke-virtual {v2, v3, v6, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1675
    sget v3, Lcom/payu/custombrowser/R$id;->choose_text:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1676
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1680
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1682
    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v6, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {v3, v6}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v6, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {v3, v6}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    :cond_f
    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v6, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {v3, v6}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v6, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {v3, v6}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1683
    :cond_10
    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput-object v5, v3, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    goto :goto_1

    .line 1685
    :cond_11
    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput-object v0, v3, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1687
    :goto_1
    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v5, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {v3, v5}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v5, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {v3, v5}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1688
    sget v3, Lcom/payu/custombrowser/R$id;->otp:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1689
    sget v3, Lcom/payu/custombrowser/R$id;->view:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1691
    :cond_12
    sget v3, Lcom/payu/custombrowser/R$id;->otp:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v5}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1692
    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-boolean v3, v3, Lcom/payu/custombrowser/Bank;->autoSelectOtp:Z

    if-eqz v3, :cond_13

    .line 1693
    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    const-string v5, "auto_otp_select"

    iput-object v5, v3, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    .line 1694
    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    const-string v5, "user_input"

    iget-object v6, v3, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    sget v3, Lcom/payu/custombrowser/R$id;->otp:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->performClick()Z

    .line 1696
    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput-boolean v4, v3, Lcom/payu/custombrowser/Bank;->autoSelectOtp:Z

    .line 1699
    :cond_13
    :goto_2
    sget v3, Lcom/payu/custombrowser/R$id;->otp:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v5}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1700
    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v5, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {v3, v5}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v5, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {v3, v5}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1701
    sget v3, Lcom/payu/custombrowser/R$id;->pin:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1702
    sget v3, Lcom/payu/custombrowser/R$id;->view:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1704
    :cond_14
    sget v3, Lcom/payu/custombrowser/R$id;->pin:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/payu/custombrowser/Bank$13$1;

    invoke-direct {v5, p0, v2}, Lcom/payu/custombrowser/Bank$13$1;-><init>(Lcom/payu/custombrowser/Bank$13;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1755
    :goto_3
    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v5, Lcom/payu/custombrowser/R$string;->cb_error:I

    invoke-virtual {v3, v5}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1756
    sget v3, Lcom/payu/custombrowser/R$id;->error_message:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1757
    sget v3, Lcom/payu/custombrowser/R$id;->error_message:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "error"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1761
    :cond_15
    goto :goto_4

    .line 1759
    :catch_0
    move-exception v1

    .line 1760
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1762
    :goto_4
    goto/16 :goto_11

    :cond_16
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v9, Lcom/payu/custombrowser/R$string;->cb_incorrect_OTP_2:I

    invoke-virtual {v8, v9}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1763
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->a:Ljava/lang/String;

    iput-object v5, v1, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1764
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->a()V

    .line 1765
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput-boolean v6, v1, Lcom/payu/custombrowser/Bank;->ai:Z

    .line 1766
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 1767
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lcom/payu/custombrowser/R$layout;->retry_otp:I

    invoke-virtual {v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1768
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v2, v1}, Lcom/payu/custombrowser/Bank;->addReviewOrder(Landroid/view/View;)V

    .line 1769
    sget v2, Lcom/payu/custombrowser/R$id;->bank_logo:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1770
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->viewOnClickListener:Lcom/payu/custombrowser/a$b;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1771
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_17

    .line 1772
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1774
    :cond_17
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1775
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1777
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1778
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput v3, v2, Lcom/payu/custombrowser/Bank;->y:I

    goto :goto_5

    .line 1780
    :cond_18
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->J:Landroid/view/View;

    if-eqz v2, :cond_19

    .line 1781
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->J:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1782
    :cond_19
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v2}, Lcom/payu/custombrowser/Bank;->f()V

    .line 1785
    :goto_5
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->af:Ljava/lang/String;

    if-nez v2, :cond_1c

    .line 1786
    sget v2, Lcom/payu/custombrowser/R$id;->regenerate_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1787
    sget v2, Lcom/payu/custombrowser/R$id;->Regenerate_layout_gone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 1789
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1790
    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v5, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {v3, v5}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v5, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {v3, v5}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_6

    :cond_1a
    const/4 v6, 0x0

    .line 1792
    :goto_6
    sget v2, Lcom/payu/custombrowser/R$id;->enter_manually:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v3}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1793
    if-eqz v6, :cond_1b

    .line 1794
    sget v2, Lcom/payu/custombrowser/R$id;->pin_layout_gone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 1796
    :cond_1b
    sget v2, Lcom/payu/custombrowser/R$id;->pin_layout_gone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1798
    :goto_7
    sget v2, Lcom/payu/custombrowser/R$id;->pin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v3}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1801
    goto :goto_8

    .line 1799
    :catch_1
    move-exception v2

    .line 1800
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1803
    :cond_1c
    :goto_8
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v2, v1}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    .line 1804
    goto/16 :goto_11

    :cond_1d
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v9, Lcom/payu/custombrowser/R$string;->cb_retry_otp:I

    invoke-virtual {v8, v9}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1805
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->a:Ljava/lang/String;

    iput-object v5, v1, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1806
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->a()V

    .line 1807
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput-boolean v6, v1, Lcom/payu/custombrowser/Bank;->ai:Z

    .line 1808
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 1809
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->c()V

    .line 1810
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    if-eqz v1, :cond_1e

    .line 1811
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1814
    :cond_1e
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lcom/payu/custombrowser/R$layout;->retry_otp:I

    invoke-virtual {v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1815
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v2, v1}, Lcom/payu/custombrowser/Bank;->addReviewOrder(Landroid/view/View;)V

    .line 1816
    sget v2, Lcom/payu/custombrowser/R$id;->bank_logo:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1817
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->viewOnClickListener:Lcom/payu/custombrowser/a$b;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1818
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1f

    .line 1819
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1821
    :cond_1f
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1822
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1824
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1825
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput v3, v2, Lcom/payu/custombrowser/Bank;->y:I

    goto :goto_9

    .line 1827
    :cond_20
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->J:Landroid/view/View;

    if-eqz v2, :cond_21

    .line 1828
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->J:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1829
    :cond_21
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v2}, Lcom/payu/custombrowser/Bank;->f()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1833
    :goto_9
    :try_start_6
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->af:Ljava/lang/String;

    if-nez v2, :cond_27

    .line 1834
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1835
    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v5, Lcom/payu/custombrowser/R$string;->cb_regenerate:I

    invoke-virtual {v3, v5}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v5, Lcom/payu/custombrowser/R$string;->cb_regenerate:I

    invoke-virtual {v3, v5}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v3, 0x1

    goto :goto_a

    :cond_22
    const/4 v3, 0x0

    .line 1836
    :goto_a
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v8, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {v5, v8}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v8, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {v5, v8}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_b

    :cond_23
    const/4 v6, 0x0

    .line 1838
    :goto_b
    sget v2, Lcom/payu/custombrowser/R$id;->regenerate_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1839
    if-eqz v3, :cond_25

    .line 1840
    sget v2, Lcom/payu/custombrowser/R$id;->Regenerate_layout_gone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1841
    if-eqz v6, :cond_24

    .line 1842
    sget v2, Lcom/payu/custombrowser/R$id;->Enter_manually_gone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1843
    sget v2, Lcom/payu/custombrowser/R$id;->pin_layout_gone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    .line 1845
    :cond_24
    sget v2, Lcom/payu/custombrowser/R$id;->Enter_manually_gone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1846
    sget v2, Lcom/payu/custombrowser/R$id;->pin_layout_gone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    .line 1849
    :cond_25
    if-eqz v6, :cond_26

    .line 1850
    sget v2, Lcom/payu/custombrowser/R$id;->pin_layout_gone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 1852
    :cond_26
    sget v2, Lcom/payu/custombrowser/R$id;->pin_layout_gone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1854
    :goto_c
    sget v2, Lcom/payu/custombrowser/R$id;->Regenerate_layout_gone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1855
    sget v2, Lcom/payu/custombrowser/R$id;->Enter_manually_gone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1859
    :cond_27
    :goto_d
    sget v2, Lcom/payu/custombrowser/R$id;->pin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v3}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1860
    sget v2, Lcom/payu/custombrowser/R$id;->enter_manually:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v3}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1861
    sget v2, Lcom/payu/custombrowser/R$id;->retry:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v3}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1862
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v2}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/payu/custombrowser/Bank$a;->a(Landroid/view/View;)V

    .line 1863
    sget v2, Lcom/payu/custombrowser/R$id;->approve:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v3}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1866
    goto :goto_e

    .line 1864
    :catch_2
    move-exception v2

    .line 1865
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1867
    :goto_e
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v2, v1}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    .line 1868
    goto/16 :goto_11

    :cond_28
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v9, Lcom/payu/custombrowser/R$string;->cb_enter_pin:I

    invoke-virtual {v8, v9}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1870
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    const-string v2, "PIN Page"

    iput-object v2, v1, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1871
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->a()V

    .line 1873
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->J:Landroid/view/View;

    if-eqz v1, :cond_29

    .line 1874
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->J:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1876
    :cond_29
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 1877
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput-boolean v6, v1, Lcom/payu/custombrowser/Bank;->ac:Z

    .line 1878
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/payu/custombrowser/Bank;->ah:Ljava/lang/Boolean;

    .line 1879
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->f()V

    .line 1880
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput v6, v1, Lcom/payu/custombrowser/Bank;->y:I

    .line 1881
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    if-eqz v1, :cond_2a

    .line 1882
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1884
    :cond_2a
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->f()V

    .line 1885
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto/16 :goto_11

    .line 1886
    :cond_2b
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v9, Lcom/payu/custombrowser/R$string;->cb_enter_otp:I

    invoke-virtual {v8, v9}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1887
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1888
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput-boolean v4, v1, Lcom/payu/custombrowser/Bank;->ao:Z

    .line 1890
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v1}, Lcom/payu/custombrowser/Bank;->g(Lcom/payu/custombrowser/Bank;)V

    .line 1891
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/payu/custombrowser/Bank;->aj:Ljava/lang/String;

    .line 1892
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-boolean v1, v1, Lcom/payu/custombrowser/Bank;->am:Z

    if-nez v1, :cond_35

    .line 1893
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->a()V

    .line 1900
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1910
    :cond_2c
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v9, Lcom/payu/custombrowser/R$string;->cb_incorrect_pin:I

    invoke-virtual {v8, v9}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1911
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput-object v5, v1, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1912
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->a()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1916
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->b:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1917
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v7, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {v5, v7}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v7, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {v5, v7}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1918
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput-boolean v6, v1, Lcom/payu/custombrowser/Bank;->ai:Z

    .line 1919
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 1920
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lcom/payu/custombrowser/R$layout;->choose_action:I

    invoke-virtual {v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1921
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v2, v1}, Lcom/payu/custombrowser/Bank;->addReviewOrder(Landroid/view/View;)V

    .line 1922
    sget v2, Lcom/payu/custombrowser/R$id;->bank_logo:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1923
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->viewOnClickListener:Lcom/payu/custombrowser/a$b;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1924
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2d

    .line 1925
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1927
    :cond_2d
    sget v2, Lcom/payu/custombrowser/R$id;->error_message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1928
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1929
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/payu/custombrowser/R$string;->cb_incorrect_password:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1931
    sget v2, Lcom/payu/custombrowser/R$id;->choose_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1932
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1933
    iget-object v4, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v4, v4, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/payu/custombrowser/R$string;->cb_retry:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1936
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1937
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1939
    sget v2, Lcom/payu/custombrowser/R$id;->otp:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v4}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1940
    sget v2, Lcom/payu/custombrowser/R$id;->pin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v4}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1942
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v2, v1}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    .line 1943
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1944
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput v3, v1, Lcom/payu/custombrowser/Bank;->y:I

    goto :goto_f

    .line 1946
    :cond_2e
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->f()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_f

    .line 1949
    :catch_3
    move-exception v1

    .line 1950
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1951
    :cond_2f
    :goto_f
    goto/16 :goto_11

    .line 1952
    :cond_30
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v5, Lcom/payu/custombrowser/R$string;->cb_register_option:I

    invoke-virtual {v4, v5}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1953
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    const-string v4, "Register Page"

    iput-object v4, v1, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1954
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->a()V

    .line 1955
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 1956
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Lcom/payu/custombrowser/R$layout;->register:I

    invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1957
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v2, v1}, Lcom/payu/custombrowser/Bank;->addReviewOrder(Landroid/view/View;)V

    .line 1958
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1959
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1960
    sget v2, Lcom/payu/custombrowser/R$id;->bank_logo:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1961
    iget-object v4, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v4, v4, Lcom/payu/custombrowser/Bank;->viewOnClickListener:Lcom/payu/custombrowser/a$b;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1962
    iget-object v4, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v4, v4, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_31

    .line 1963
    iget-object v4, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v4, v4, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1965
    :cond_31
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v2, v1}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    .line 1966
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1967
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput v3, v1, Lcom/payu/custombrowser/Bank;->y:I

    goto :goto_10

    .line 1969
    :cond_32
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->f()V

    .line 1971
    :goto_10
    goto :goto_11

    .line 1972
    :cond_33
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->f()V

    .line 1973
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput v6, v1, Lcom/payu/custombrowser/Bank;->y:I

    .line 1974
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->J:Landroid/view/View;

    if-eqz v1, :cond_34

    .line 1975
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->J:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1977
    :cond_34
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1982
    :cond_35
    :goto_11
    goto :goto_12

    .line 1980
    :catch_4
    move-exception v1

    .line 1981
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1983
    :goto_12
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1984
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    const-string v1, "arrival"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    :cond_36
    return-void
.end method
