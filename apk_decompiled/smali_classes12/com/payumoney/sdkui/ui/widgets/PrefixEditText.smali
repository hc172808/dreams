.class public Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/widgets/PrefixEditText$TextDrawable;
    }
.end annotation


# instance fields
.field private a:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->a:Landroid/content/res/ColorStateList;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->a:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/payumoney/sdkui/R$styleable;->prefixEditText:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 50
    :try_start_0
    sget v0, Lcom/payumoney/sdkui/R$styleable;->prefixEditText_prefix_string:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    sget v1, Lcom/payumoney/sdkui/R$styleable;->prefixEditText_prefix_color:I

    sget v2, Lcom/payumoney/sdkui/R$color;->payumoney_black:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 52
    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->setPrefix(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->setPrefixTextColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    throw p1

    .line 58
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public setPrefix(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText$TextDrawable;

    invoke-direct {v0, p0, p1}, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText$TextDrawable;-><init>(Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 62
    return-void
.end method

.method public setPrefixTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 65
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->a:Landroid/content/res/ColorStateList;

    .line 66
    return-void
.end method

.method public setPrefixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 69
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/PrefixEditText;->a:Landroid/content/res/ColorStateList;

    .line 70
    return-void
.end method
