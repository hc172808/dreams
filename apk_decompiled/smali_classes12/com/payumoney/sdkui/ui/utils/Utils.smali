.class public Lcom/payumoney/sdkui/ui/utils/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfLoggedInOrNitroLoggedIn()Z
    .locals 1

    .line 191
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->isNitroEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->isUserAccountActive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static dpToPixel(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 209
    float-to-int v0, v0

    return v0
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 1
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "colorCode"    # I

    .line 168
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getCustomDrawable(Landroid/content/Context;IZIIZ)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bgColorCode"    # I
    .param p2, "isBorderOnly"    # Z
    .param p3, "strokeWidth"    # I
    .param p4, "cornerRadius"    # I
    .param p5, "isRounded"    # Z

    .line 139
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 140
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 141
    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 143
    invoke-static {p3, p0}, Lcom/payumoney/sdkui/ui/utils/Utils;->getPixelSize(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 147
    :goto_0
    if-eqz p5, :cond_1

    .line 148
    invoke-static {p4, p0}, Lcom/payumoney/sdkui/ui/utils/Utils;->getPixelSize(ILandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 150
    :cond_1
    return-object v0
.end method

.method public static getPixelSize(ILandroid/content/Context;)I
    .locals 2
    .param p0, "dp"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    int-to-float v0, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getPrimaryColor(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 162
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/payumoney/sdkui/R$attr;->colorPrimary:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 164
    iget v0, v0, Landroid/util/TypedValue;->data:I

    return v0
.end method

.method public static getProcessedDisplayAmount(D)Ljava/lang/String;
    .locals 2
    .param p0, "amount"    # D

    .line 85
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProcessedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cardNumber"    # Ljava/lang/String;
    .param p1, "cardType"    # Ljava/lang/String;

    .line 41
    const-string v0, "AMEX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "....(?!$)"

    const-string v1, "$0 "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTempCardName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "cardName"    # Ljava/lang/String;
    .param p1, "cardNumber"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 118
    nop

    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    sget v1, Lcom/payumoney/sdkui/R$string;->temp_card_name:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_0
    move-object v0, p0

    .line 123
    :goto_0
    return-object v0
.end method

.method public static hideKeyBoard(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 107
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 115
    :cond_0
    return-void
.end method

.method public static hideKeyBoard(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 54
    if-eqz p0, :cond_0

    .line 56
    :try_start_0
    const-string v0, "input_method"

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v1

    const-string v2, "Exception"

    invoke-virtual {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 63
    :cond_0
    :goto_0
    return-void
.end method

.method public static isEmpty(Landroid/widget/EditText;)Z
    .locals 1
    .param p0, "editText"    # Landroid/widget/EditText;

    .line 35
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static loadJSONFromAsset(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 174
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "config-ifsc.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 176
    new-array v1, v1, [B

    .line 177
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 178
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 179
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    nop

    .line 184
    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v1

    const-string v2, "JsonReadException"

    invoke-virtual {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public static makeSelectorStaticBankItem(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "normalColor"    # I

    .line 154
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 155
    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a1

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {p0}, Lcom/payumoney/sdkui/ui/utils/Utils;->getPrimaryColor(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcom/payumoney/sdkui/ui/utils/Utils;->getCustomDrawable(Landroid/content/Context;IZIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 156
    new-array v1, v1, [I

    const v2, 0x10100a0

    aput v2, v1, v4

    invoke-static {p0}, Lcom/payumoney/sdkui/ui/utils/Utils;->getPrimaryColor(Landroid/content/Context;)I

    move-result v6

    invoke-static/range {v5 .. v10}, Lcom/payumoney/sdkui/ui/utils/Utils;->getCustomDrawable(Landroid/content/Context;IZIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 157
    new-array v1, v4, [I

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    invoke-static/range {v2 .. v7}, Lcom/payumoney/sdkui/ui/utils/Utils;->getCustomDrawable(Landroid/content/Context;IZIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 158
    return-object v0
.end method

.method public static setCustomBackground(ILandroid/view/View;Landroid/content/Context;)V
    .locals 3
    .param p0, "bgColorCode"    # I
    .param p1, "loaderView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .line 90
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 92
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 93
    const/16 v1, 0xa

    invoke-static {v1, p2}, Lcom/payumoney/sdkui/ui/utils/Utils;->getPixelSize(ILandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 94
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :goto_0
    return-void
.end method

.method public static showKeyBoard(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    if-eqz p0, :cond_0

    .line 72
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 76
    :cond_0
    return-void
.end method

.method public static showKeyBoard(Landroidx/fragment/app/FragmentActivity;Lcom/payumoney/sdkui/ui/widgets/OtpEditText;)V
    .locals 3
    .param p0, "activity"    # Landroidx/fragment/app/FragmentActivity;
    .param p1, "editText"    # Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    .line 128
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setFocusableInTouchMode(Z)V

    .line 130
    invoke-virtual {p1, v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setFocusable(Z)V

    .line 131
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 132
    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 133
    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->requestFocus()Z

    .line 134
    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 136
    :cond_0
    return-void
.end method
