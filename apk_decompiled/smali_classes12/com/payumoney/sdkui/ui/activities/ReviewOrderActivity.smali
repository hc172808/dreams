.class public Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field private a:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 104
    sget v0, Lcom/payumoney/sdkui/R$drawable;->close:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneyConfig;->getTextColorPrimary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 108
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->a:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_style"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 33
    if-eq v0, v2, :cond_0

    .line 34
    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->setTheme(I)V

    goto :goto_0

    .line 36
    :cond_0
    sget v0, Lcom/payumoney/sdkui/R$style;->AppTheme_default:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->setTheme(I)V

    .line 39
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/payumoney/sdkui/R$layout;->activity_review_order:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->setContentView(I)V

    .line 42
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneyConfig;->getReviewOrderBundle()Lcom/payu/custombrowser/bean/ReviewOrderBundle;

    move-result-object v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->finish()V

    goto/16 :goto_2

    .line 47
    :cond_1
    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/ReviewOrderBundle;->getReviewOrderDatas()Ljava/util/ArrayList;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 51
    :cond_2
    sget v1, Lcom/payumoney/sdkui/R$id;->toolbar_review_order_screen:I

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->a:Landroidx/appcompat/widget/Toolbar;

    .line 52
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 53
    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 54
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->a()V

    .line 57
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 60
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 61
    sget v3, Lcom/payumoney/sdkui/R$layout;->review_order_toolbar:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 64
    sget v3, Lcom/payumoney/sdkui/R$id;->title:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v3, Lcom/payumoney/sdkui/R$string;->review_order_details:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 69
    :cond_3
    sget v1, Lcom/payumoney/sdkui/R$id;->recycler_view_review_orders:I

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 73
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 76
    new-instance v2, Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter;

    invoke-direct {v2, v0, p0}, Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 77
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    sget v0, Lcom/payumoney/sdkui/R$id;->btn_review_order_go_back:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity$1;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity$1;-><init>(Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 49
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->finish()V

    .line 89
    :goto_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 95
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;->onBackPressed()V

    .line 97
    const/4 v0, 0x1

    return v0

    .line 100
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
