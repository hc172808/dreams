.class public Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;

.field private b:Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;

.field private c:Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    sget v1, Lcom/payumoney/sdkui/R$layout;->sticky_index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    sget v0, Lcom/payumoney/sdkui/R$id;->index_list:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    new-instance v1, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex$1;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex$1;-><init>(Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    const/4 v1, 0x0

    new-array v1, v1, [C

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;

    move-result-object p1

    .line 73
    sget p2, Lcom/payumoney/sdkui/R$id;->sticky_index_wrapper:I

    invoke-virtual {p0, p2}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 75
    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getStickyWidth()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 76
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->invalidate()V

    .line 79
    new-instance p2, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;

    invoke-direct {p2, v1, p1}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;-><init>([CLcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;)V

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->b:Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;

    .line 80
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    new-instance p2, Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;

    invoke-direct {p2}, Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;-><init>()V

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->a:Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;

    .line 83
    invoke-virtual {p2, v0}, Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 85
    new-instance p2, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;

    invoke-direct {p2, p0}, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;-><init>(Landroid/widget/RelativeLayout;)V

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->c:Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;

    .line 86
    invoke-virtual {p2, v0}, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 87
    iget-object p2, p0, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->a:Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->c:Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;

    invoke-virtual {p2, v0}, Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;->register(Lcom/payumoney/sdkui/ui/widgets/Subscriber;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->setStickyHeaderIndexStyle(Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;)V

    .line 91
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;
    .locals 10

    .line 95
    if-eqz p2, :cond_2

    .line 96
    sget-object v0, Lcom/payumoney/sdkui/R$styleable;->StickyIndex:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 98
    sget v0, Lcom/payumoney/sdkui/R$styleable;->StickyIndex_android_textSize:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 99
    sget v2, Lcom/payumoney/sdkui/R$styleable;->StickyIndex_stickyViewTextColor:I

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 101
    cmpl-float v4, v0, v1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41d00000    # 26.0f

    .line 102
    :goto_0
    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    sget v2, Lcom/payumoney/sdkui/R$color;->index_text_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 104
    :goto_1
    new-instance p1, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;

    sget v4, Lcom/payumoney/sdkui/R$styleable;->StickyIndex_rowHeight:I

    .line 105
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    sget v4, Lcom/payumoney/sdkui/R$styleable;->StickyIndex_stickyWidth:I

    .line 106
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 108
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    sget v0, Lcom/payumoney/sdkui/R$styleable;->StickyIndex_android_textStyle:I

    .line 109
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V

    .line 111
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    return-object p1

    .line 114
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private setStickyHeaderIndexStyle(Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;)V
    .locals 4
    .param p1, "styles"    # Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;

    .line 119
    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getRowHeigh()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 120
    sget v0, Lcom/payumoney/sdkui/R$id;->sticky_index_wrapper:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 121
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 122
    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getRowHeigh()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getTextSize()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->c:Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->getStickyIndex()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getTextSize()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 130
    :cond_1
    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getTextColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->c:Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->getStickyIndex()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getTextColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    :cond_2
    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getTextStyle()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 135
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->c:Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->getStickyIndex()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getTextStyle()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 137
    :cond_3
    return-void
.end method


# virtual methods
.method public getStickyHeaderIndex()Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->c:Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;

    return-object v0
.end method

.method public removeScrollListenerSubscription(Lcom/payumoney/sdkui/ui/widgets/Subscriber;)V
    .locals 1
    .param p1, "oldSubscriber"    # Lcom/payumoney/sdkui/ui/widgets/Subscriber;

    .line 145
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->a:Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;

    invoke-virtual {v0, p1}, Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;->unregister(Lcom/payumoney/sdkui/ui/widgets/Subscriber;)V

    .line 146
    return-void
.end method

.method public setDataSet([C)V
    .locals 1
    .param p1, "dataSet"    # [C

    .line 150
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->b:Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;

    invoke-virtual {v0, p1}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->setDataSet([C)V

    .line 151
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->b:Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->notifyDataSetChanged()V

    .line 152
    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "rl"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 159
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->a:Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;

    invoke-virtual {v0, p1}, Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 160
    return-void
.end method

.method public subscribeForScrollListener(Lcom/payumoney/sdkui/ui/widgets/Subscriber;)V
    .locals 1
    .param p1, "nexSubscriber"    # Lcom/payumoney/sdkui/ui/widgets/Subscriber;

    .line 141
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->a:Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;

    invoke-virtual {v0, p1}, Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;->register(Lcom/payumoney/sdkui/ui/widgets/Subscriber;)V

    .line 142
    return-void
.end method
