.class public Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/sdkui/ui/widgets/Subscriber;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/widget/RelativeLayout;)V
    .locals 1
    .param p1, "rl"    # Landroid/widget/RelativeLayout;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget v0, Lcom/payumoney/sdkui/R$id;->sticky_index:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a:Landroid/widget/TextView;

    .line 24
    return-void
.end method

.method private a(Landroid/widget/TextView;)C
    .locals 1

    .line 119
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1
.end method

.method private a(CC)Ljava/lang/Boolean;
    .locals 0

    .line 36
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    if-ne p1, p2, :cond_0

    .line 37
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 39
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;)Ljava/lang/Boolean;
    .locals 1

    .line 28
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a(CC)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 31
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p1

    .line 46
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 47
    return-void
.end method


# virtual methods
.method a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 115
    return-void
.end method

.method public getStickyIndex()Landroid/widget/TextView;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public update(Landroidx/recyclerview/widget/RecyclerView;FF)V
    .locals 8
    .param p1, "referenceList"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .line 52
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 54
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    return-void

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 61
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 62
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 64
    sget v4, Lcom/payumoney/sdkui/R$id;->sticky_row_index:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 65
    sget v5, Lcom/payumoney/sdkui/R$id;->sticky_row_index:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 67
    iget-object v5, p0, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v5

    .line 68
    iget-object v6, p0, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    .line 69
    add-int/lit8 v6, v0, 0x1

    .line 70
    add-int/2addr v0, v5

    .line 73
    iget-object v5, p0, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a(Landroid/widget/TextView;)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v5, p0, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 77
    const/4 v5, 0x0

    cmpl-float v5, p3, v5

    if-lez v5, :cond_2

    .line 79
    if-gt v6, v0, :cond_5

    .line 80
    invoke-direct {p0, v4, v3}, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a(Landroid/widget/TextView;Landroid/widget/TextView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_2
    if-gt v6, v0, :cond_5

    .line 94
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-direct {p0, v4, v3}, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a(Landroid/widget/TextView;Landroid/widget/TextView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v4}, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a(Landroid/widget/TextView;)C

    move-result v0

    invoke-direct {p0, v3}, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a(Landroid/widget/TextView;)C

    move-result v5

    if-eq v0, v5, :cond_4

    :cond_3
    invoke-direct {p0, v4, v3}, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a(Landroid/widget/TextView;Landroid/widget/TextView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 107
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :cond_6
    return-void
.end method
