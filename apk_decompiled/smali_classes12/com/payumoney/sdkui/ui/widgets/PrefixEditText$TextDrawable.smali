.class Lcom/payumoney/sdkui/ui/widgets/PrefixEditText$TextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextDrawable"
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;Ljava/lang/String;)V
    .locals 2
    .param p2, "text"    # Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText$TextDrawable;->a:Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText$TextDrawable;->b:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText$TextDrawable;->b:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText$TextDrawable;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, p1}, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText$TextDrawable;->setBounds(IIII)V

    .line 78
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 82
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText$TextDrawable;->a:Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText$TextDrawable;->a:Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->a(Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText$TextDrawable;->a:Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;

    invoke-virtual {v2}, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText$TextDrawable;->a:Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v1

    .line 85
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText$TextDrawable;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    int-to-float v1, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 86
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 89
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 92
    return-void
.end method
