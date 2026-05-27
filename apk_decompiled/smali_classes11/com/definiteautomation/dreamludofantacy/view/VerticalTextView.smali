.class public Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "VerticalTextView.java"


# instance fields
.field final topDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->getGravity()I

    move-result v0

    .line 18
    .local v0, "gravity":I
    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    .line 19
    and-int/lit8 v1, v0, 0x7

    or-int/lit8 v1, v1, 0x30

    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->setGravity(I)V

    .line 20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->topDown:Z

    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->topDown:Z

    .line 24
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 35
    .local v0, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 36
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 40
    iget-boolean v1, p0, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->topDown:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 42
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 45
    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 49
    :goto_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->getCompoundPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->getExtendedPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 53
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 28
    invoke-super {p0, p2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 29
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->setMeasuredDimension(II)V

    .line 30
    return-void
.end method
