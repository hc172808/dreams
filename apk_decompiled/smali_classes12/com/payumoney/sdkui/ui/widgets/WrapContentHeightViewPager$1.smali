.class Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    .line 62
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$1;->b:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 79
    iput p1, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$1;->a:I

    .line 80
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 68
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .line 72
    iget v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$1;->a:I

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$1;->b:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->a(Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;I)I

    .line 75
    :cond_0
    return-void
.end method
