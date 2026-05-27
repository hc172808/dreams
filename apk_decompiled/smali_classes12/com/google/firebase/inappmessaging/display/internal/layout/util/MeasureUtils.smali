.class public Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;
.super Ljava/lang/Object;
.source "MeasureUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static measure(Landroid/view/View;IIII)V
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const-string v2, "\tdesired (w,h)"

    invoke-static {v2, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 51
    const/4 p1, 0x0

    .line 52
    const/4 p2, 0x0

    .line 55
    :cond_0
    nop

    .line 56
    invoke-static {p1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 57
    invoke-static {p2, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 55
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const-string v2, "\tactual (w,h)"

    invoke-static {v2, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 59
    return-void
.end method

.method public static measureAtMost(Landroid/view/View;II)V
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 25
    const/high16 v0, -0x80000000

    invoke-static {p0, p1, p2, v0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measure(Landroid/view/View;IIII)V

    .line 26
    return-void
.end method

.method public static measureExactly(Landroid/view/View;II)V
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 30
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, p1, p2, v0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measure(Landroid/view/View;IIII)V

    .line 31
    return-void
.end method

.method public static measureFullHeight(Landroid/view/View;II)V
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 40
    const/high16 v0, -0x80000000

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measure(Landroid/view/View;IIII)V

    .line 41
    return-void
.end method

.method public static measureFullWidth(Landroid/view/View;II)V
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 35
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, -0x80000000

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measure(Landroid/view/View;IIII)V

    .line 36
    return-void
.end method
