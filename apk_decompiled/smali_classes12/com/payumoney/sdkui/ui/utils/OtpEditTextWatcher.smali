.class public Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher$OnTextInputFound;
    }
.end annotation


# instance fields
.field a:Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher$OnTextInputFound;

.field private final b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

.field private final c:Landroid/app/Activity;

.field private final d:I

.field private e:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/payumoney/sdkui/ui/widgets/OtpEditText;Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;Landroid/app/Activity;ILcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher$OnTextInputFound;)V
    .locals 1
    .param p1, "appCompatEditText"    # Lcom/payumoney/sdkui/ui/widgets/OtpEditText;
    .param p2, "payNowButton"    # Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "cvvLength"    # I
    .param p5, "onTextInputFound"    # Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher$OnTextInputFound;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->f:Z

    .line 32
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    .line 33
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->e:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    .line 34
    iput-object p3, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->c:Landroid/app/Activity;

    .line 35
    iput p4, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->d:I

    .line 36
    iput-object p5, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->a:Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher$OnTextInputFound;

    .line 37
    return-void
.end method

.method private a(Lcom/payumoney/sdkui/ui/widgets/OtpEditText;)V
    .locals 1

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setFocusableInTouchMode(Z)V

    .line 138
    invoke-virtual {p1, v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setFocusable(Z)V

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setFocusableInTouchMode(Z)V

    .line 140
    invoke-virtual {p1, v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setFocusable(Z)V

    .line 141
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 12
    .param p1, "s"    # Landroid/text/Editable;

    .line 61
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->c:Landroid/app/Activity;

    check-cast v0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->isStopEditing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x42

    const/4 v3, 0x3

    const-string v4, "4"

    const-string v5, "3"

    const-string v6, "2"

    const-string v7, "1"

    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez v0, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 63
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->e:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {v0, v10}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->e:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v11, 0xff

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 65
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 69
    :pswitch_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 75
    :cond_1
    :goto_2
    goto/16 :goto_b

    .line 77
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne v0, v9, :cond_7

    .line 78
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    packed-switch v11, :pswitch_data_2

    :cond_3
    goto :goto_3

    :pswitch_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    :pswitch_6
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    goto :goto_4

    :pswitch_7
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    goto :goto_4

    :pswitch_8
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    goto :goto_4

    :goto_3
    const/4 v3, -0x1

    :goto_4
    packed-switch v3, :pswitch_data_3

    goto/16 :goto_7

    .line 104
    :pswitch_9
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->f:Z

    if-nez v0, :cond_4

    .line 106
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_5
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setSelection(I)V

    .line 111
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_7

    .line 82
    :pswitch_a
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->f:Z

    if-eqz v0, :cond_5

    .line 86
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_6
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_6

    instance-of v1, v0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    if-eqz v1, :cond_6

    .line 95
    move-object v1, v0

    check-cast v1, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    .line 96
    invoke-virtual {v0, v10}, Landroid/view/View;->setClickable(Z)V

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 98
    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setSelection(I)V

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    nop

    .line 112
    :goto_7
    goto/16 :goto_b

    .line 114
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 115
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_4

    :cond_8
    goto :goto_8

    :pswitch_b
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x3

    goto :goto_9

    :pswitch_c
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x2

    goto :goto_9

    :pswitch_d
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :pswitch_e
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_9

    :goto_8
    const/4 v1, -0x1

    :goto_9
    packed-switch v1, :pswitch_data_5

    goto :goto_a

    .line 121
    :pswitch_f
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_9

    instance-of v1, v0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    if-eqz v1, :cond_9

    .line 123
    move-object v1, v0

    check-cast v1, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    .line 124
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 125
    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setSelection(I)V

    .line 127
    :cond_9
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0, v10}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setClickable(Z)V

    goto :goto_a

    .line 117
    :pswitch_10
    nop

    .line 128
    :goto_a
    goto :goto_b

    .line 132
    :cond_a
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->c:Landroid/app/Activity;

    check-cast v0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->setStopEditing(Z)V

    .line 134
    :cond_b
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x31
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 42
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->f:Z

    .line 43
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->a:Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher$OnTextInputFound;

    invoke-interface {v0}, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher$OnTextInputFound;->hideLabelOtpError()V

    .line 49
    iget v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->a(Lcom/payumoney/sdkui/ui/widgets/OtpEditText;)V

    .line 51
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/utils/Utils;->hideKeyBoard(Landroid/content/Context;Landroid/os/IBinder;)V

    goto :goto_0

    .line 52
    :cond_0
    iget v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->a(Lcom/payumoney/sdkui/ui/widgets/OtpEditText;)V

    .line 54
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;->b:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/utils/Utils;->hideKeyBoard(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 57
    :cond_1
    :goto_0
    return-void
.end method
