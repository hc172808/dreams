.class public Lcom/payumoney/sdkui/ui/adapters/ZoomOutTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# static fields
.field private static b:F

.field private static c:F


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/payumoney/sdkui/ui/adapters/ZoomOutTransformer;->b:F

    .line 26
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/payumoney/sdkui/ui/adapters/ZoomOutTransformer;->c:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/adapters/ZoomOutTransformer;->a:Z

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 3
    .param p1, "page"    # Landroid/view/View;
    .param p2, "position"    # F

    .line 32
    sget v0, Lcom/payumoney/sdkui/ui/adapters/ZoomOutTransformer;->b:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 36
    return-void
.end method
