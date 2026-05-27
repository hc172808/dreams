.class public Lcom/payu/custombrowser/c;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/custombrowser/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payu/custombrowser/bean/ReviewOrderData;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/payu/custombrowser/c$a;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/payu/custombrowser/c;)Lcom/payu/custombrowser/c$a;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/payu/custombrowser/c;->c:Lcom/payu/custombrowser/c$a;

    return-object p0
.end method

.method public static a(Ljava/util/ArrayList;I)Lcom/payu/custombrowser/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payu/custombrowser/bean/ReviewOrderData;",
            ">;I)",
            "Lcom/payu/custombrowser/c;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/payu/custombrowser/c;

    invoke-direct {v0}, Lcom/payu/custombrowser/c;-><init>()V

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v2, "review_order_detail_list"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 59
    const-string p0, "layout_res"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/c;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 178
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcom/payu/custombrowser/c;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 180
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 181
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Landroid/view/View;->measure(II)V

    .line 182
    int-to-double v0, v0

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/payu/custombrowser/c;->d:I

    .line 183
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/payu/custombrowser/c;->d:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    return-void
.end method

.method static synthetic b(Lcom/payu/custombrowser/c;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/payu/custombrowser/c;->d:I

    return p0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 147
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 148
    instance-of v0, p1, Lcom/payu/custombrowser/c$a;

    if-eqz v0, :cond_0

    .line 149
    move-object v0, p1

    check-cast v0, Lcom/payu/custombrowser/c$a;

    iput-object v0, p0, Lcom/payu/custombrowser/c;->c:Lcom/payu/custombrowser/c$a;

    .line 154
    return-void

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must implement OnReviewOrderDetailCloseListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 66
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/payu/custombrowser/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/payu/custombrowser/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "review_order_detail_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/c;->a:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p0}, Lcom/payu/custombrowser/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "layout_res"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/c;->b:I

    .line 71
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    sget v0, Lcom/payu/custombrowser/R$layout;->fragment_review_order:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 158
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/c;->c:Lcom/payu/custombrowser/c$a;

    .line 160
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 84
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    sget v0, Lcom/payu/custombrowser/R$id;->payu_review_order_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 86
    iget v1, p0, Lcom/payu/custombrowser/c;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 87
    iget-object v1, p0, Lcom/payu/custombrowser/c;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/payu/custombrowser/bean/ReviewOrderData;

    .line 89
    invoke-virtual {p0}, Lcom/payu/custombrowser/c;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/payu/custombrowser/R$layout;->payu_review_order_list_row:I

    invoke-virtual {v5, v6, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 90
    sget v6, Lcom/payu/custombrowser/R$id;->t_review_order_details_key:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 91
    sget v7, Lcom/payu/custombrowser/R$id;->t_review_order_details_value:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 92
    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/ReviewOrderData;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/ReviewOrderData;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/c;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/payu/custombrowser/c;->b:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    sget v1, Lcom/payu/custombrowser/R$id;->r_payu_review_order:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 100
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 101
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 104
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/c;->a(Landroid/view/View;)V

    .line 105
    sget v0, Lcom/payu/custombrowser/R$id;->i_payu_close_review:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/payu/custombrowser/c$1;

    invoke-direct {v1, p0, p1}, Lcom/payu/custombrowser/c$1;-><init>(Lcom/payu/custombrowser/c;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method
