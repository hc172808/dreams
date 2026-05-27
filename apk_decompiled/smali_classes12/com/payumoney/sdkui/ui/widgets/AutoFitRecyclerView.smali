.class public Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field private columnWidth:I

.field private manager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;->columnWidth:I

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;->columnWidth:I

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;->columnWidth:I

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    if-eqz p2, :cond_0

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010117

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 37
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;->columnWidth:I

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;->manager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 43
    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 48
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 53
    return-void
.end method
