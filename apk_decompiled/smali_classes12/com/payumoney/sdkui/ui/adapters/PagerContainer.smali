.class public Lcom/payumoney/sdkui/ui/adapters/PagerContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field a:Z

.field private b:Landroidx/viewpager/widget/ViewPager;

.field private c:Landroid/graphics/Point;

.field private d:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->a:Z

    .line 16
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->c:Landroid/graphics/Point;

    .line 17
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->d:Landroid/graphics/Point;

    .line 21
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->a()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->a:Z

    .line 16
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->c:Landroid/graphics/Point;

    .line 17
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->d:Landroid/graphics/Point;

    .line 26
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->a()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->a:Z

    .line 16
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->c:Landroid/graphics/Point;

    .line 17
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->d:Landroid/graphics/Point;

    .line 31
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->a()V

    .line 32
    return-void
.end method

.method private a()V
    .locals 2

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->setClipChildren(Z)V

    .line 41
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->b:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 46
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 48
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->b:Landroidx/viewpager/widget/ViewPager;

    .line 49
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 50
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    nop

    .line 54
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The root child of PagerContainer must be a ViewPager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 95
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->a:Z

    .line 96
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 86
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->invalidate()V

    .line 87
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .line 91
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 64
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->d:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 73
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->d:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 79
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/PagerContainer;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
