.class public Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->b:I

    .line 43
    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->c:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->h:I

    .line 53
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->a()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->b:I

    .line 43
    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->c:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->h:I

    .line 58
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->a()V

    .line 59
    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 3

    .line 162
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->d:I

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v1, v2}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->getChildMeasureSpec(III)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->b:I

    return p1
.end method

.method private a()V
    .locals 1

    .line 62
    new-instance v0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$1;

    invoke-direct {v0, p0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$1;-><init>(Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;)V

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method protected a(I)Landroid/view/View;
    .locals 3

    .line 167
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->a(I)Ljava/lang/Object;

    move-result-object p1

    .line 169
    if-eqz p1, :cond_1

    .line 170
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 171
    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroidx/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    return-object v1

    .line 170
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 98
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    .line 100
    iput p1, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->d:I

    .line 101
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 103
    if-eqz v0, :cond_0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_6

    .line 104
    :cond_0
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->b:I

    if-nez v0, :cond_5

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->c:I

    .line 107
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 108
    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 110
    if-eqz v3, :cond_3

    iget-boolean v4, v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v4, :cond_3

    .line 111
    iget v3, v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v3, v3, 0x70

    .line 112
    const/16 v4, 0x30

    if-eq v3, v4, :cond_2

    const/16 v4, 0x50

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 113
    :goto_2
    if-eqz v3, :cond_3

    .line 114
    iget v3, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->c:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->c:I

    .line 107
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_4
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->getCurrentItem()I

    move-result v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->a(I)Landroid/view/View;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_5

    .line 123
    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->b:I

    .line 127
    :cond_5
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->b:I

    iget v1, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 131
    :cond_6
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    .line 132
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 136
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->onPageScrolled(IFI)V

    .line 138
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->h:I

    if-eq v0, p1, :cond_1

    .line 139
    iput p1, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->h:I

    .line 141
    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->a(I)Landroid/view/View;

    move-result-object v0

    .line 142
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->a(I)Landroid/view/View;

    move-result-object v1

    .line 143
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 144
    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->g:I

    .line 145
    invoke-direct {p0, v1}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->f:I

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->e:Z

    goto :goto_0

    .line 148
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->e:Z

    .line 151
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->e:Z

    if-eqz v0, :cond_2

    .line 152
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->g:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float v0, v0, v1

    iget v1, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->f:I

    int-to-float v1, v1

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 153
    iget v1, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->b:I

    if-eq v1, v0, :cond_2

    .line 154
    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->b:I

    .line 155
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->requestLayout()V

    .line 156
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->invalidate()V

    .line 159
    :cond_2
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroidx/viewpager/widget/PagerAdapter;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->b:I

    .line 87
    new-instance v0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;-><init>(Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;Landroidx/viewpager/widget/PagerAdapter;)V

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 88
    return-void
.end method
