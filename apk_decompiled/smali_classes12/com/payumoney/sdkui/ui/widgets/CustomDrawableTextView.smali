.class public Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 33
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    sget-object v0, Lcom/payumoney/sdkui/R$styleable;->customButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 38
    :try_start_0
    sget v0, Lcom/payumoney/sdkui/R$styleable;->customButton_borderOnly:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 39
    sget v0, Lcom/payumoney/sdkui/R$styleable;->customButton_bgColor:I

    sget v1, Lcom/payumoney/sdkui/R$color;->payumoney_black:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 41
    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/payumoney/sdkui/ui/utils/Utils;->getCustomDrawable(Landroid/content/Context;IZIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 43
    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/payumoney/sdkui/ui/utils/Utils;->getCustomDrawable(Landroid/content/Context;IZIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    throw p1

    .line 50
    :cond_1
    :goto_1
    return-void
.end method
