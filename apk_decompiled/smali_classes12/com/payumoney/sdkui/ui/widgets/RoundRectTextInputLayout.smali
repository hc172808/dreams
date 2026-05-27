.class public Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;
.super Lcom/google/android/material/textfield/TextInputLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method private a()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->a:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 62
    :cond_1
    return-void
.end method

.method private b()Z
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x1

    return v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/google/android/material/textfield/TextInputLayout;->drawableStateChanged()V

    .line 35
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->a()V

    .line 36
    return-void
.end method

.method public setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "defaultDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->a:Landroid/graphics/drawable/Drawable;

    .line 47
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 42
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->a()V

    .line 43
    return-void
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 50
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->b:Landroid/graphics/drawable/Drawable;

    .line 51
    return-void
.end method
