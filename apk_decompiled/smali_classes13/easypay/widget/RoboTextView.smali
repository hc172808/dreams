.class public Leasypay/widget/RoboTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "RoboTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Leasypay/widget/RoboTextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-direct {p0, p1, p2}, Leasypay/widget/RoboTextView;->setAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p0}, Leasypay/widget/RoboTextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-direct {p0, p1, p2}, Leasypay/widget/RoboTextView;->setAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    :cond_0
    return-void
.end method

.method private setAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "font":I
    sget-object v1, Lpaytm/assist/easypay/easypay/R$styleable;->RoboTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 38
    .local v1, "ta":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lpaytm/assist/easypay/easypay/R$styleable;->RoboTextView_fontType:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 40
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    nop

    .line 42
    if-eqz v0, :cond_5

    .line 43
    const/4 v2, 0x1

    const-string v4, "sans-serif"

    const/4 v5, 0x0

    const/16 v6, 0xe

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 80
    :pswitch_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x2

    if-lt v2, v6, :cond_0

    .line 81
    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Leasypay/widget/RoboTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0, v5, v3}, Leasypay/widget/RoboTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 71
    :pswitch_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_1

    .line 72
    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Leasypay/widget/RoboTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0, v5, v2}, Leasypay/widget/RoboTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 77
    goto :goto_0

    .line 62
    :pswitch_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_2

    .line 63
    const-string v2, "sans-serif-medium"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Leasypay/widget/RoboTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0, v5, v2}, Leasypay/widget/RoboTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 68
    goto :goto_0

    .line 54
    :pswitch_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_3

    .line 55
    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Leasypay/widget/RoboTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p0, v5, v3}, Leasypay/widget/RoboTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 59
    goto :goto_0

    .line 46
    :pswitch_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_4

    .line 47
    const-string v2, "sans-serif-light"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Leasypay/widget/RoboTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 49
    :cond_4
    invoke-virtual {p0, v5, v3}, Leasypay/widget/RoboTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 90
    :cond_5
    :goto_0
    return-void

    .line 40
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
