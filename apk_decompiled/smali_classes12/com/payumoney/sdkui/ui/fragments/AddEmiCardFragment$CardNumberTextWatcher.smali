.class Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CardNumberTextWatcher"
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    const-string p1, ""

    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->b:Ljava/lang/String;

    .line 454
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;
    .param p2, "x1"    # Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$1;

    .line 451
    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .param p1, "s"    # Landroid/text/Editable;

    .line 512
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-lt v0, v3, :cond_0

    .line 513
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "card_bin_api_tag"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v6, v2}, Lcom/payumoney/core/PayUmoneySDK;->getCardBinDetails(Lcom/payumoney/core/listener/OnCardBinDetailsReceived;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0, v4}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Z)Z

    .line 516
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Landroid/graphics/drawable/Drawable;)V

    .line 524
    :cond_1
    :goto_0
    nop

    .line 526
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    const-string v2, "0123456789"

    const/4 v3, 0x4

    const/16 v5, 0x20

    const/4 v6, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_8

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    const-string v7, "AMEX"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 530
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v4, v0, :cond_4

    .line 539
    nop

    .line 541
    :goto_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v3, v0, :cond_2

    goto :goto_5

    .line 542
    :cond_2
    invoke-interface {p1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 544
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 545
    invoke-interface {p1, v3, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 547
    :cond_3
    add-int/lit8 v3, v3, 0x7

    .line 548
    goto :goto_2

    .line 531
    :cond_4
    invoke-interface {p1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    if-ne v5, v0, :cond_7

    add-int/lit8 v0, v4, 0x1

    const/4 v7, 0x5

    if-eq v0, v7, :cond_5

    const/16 v7, 0xc

    if-ne v0, v7, :cond_6

    :cond_5
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    if-ne v0, v7, :cond_7

    .line 532
    :cond_6
    invoke-interface {p1, v4, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 534
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 553
    :cond_8
    :goto_3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v4, v0, :cond_c

    .line 563
    nop

    .line 565
    :goto_4
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v3, v0, :cond_a

    .line 575
    :goto_5
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_9

    .line 576
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 579
    :cond_9
    return-void

    .line 566
    :cond_a
    invoke-interface {p1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 568
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_b

    .line 569
    invoke-interface {p1, v3, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 571
    :cond_b
    add-int/lit8 v3, v3, 0x5

    .line 572
    goto :goto_4

    .line 554
    :cond_c
    invoke-interface {p1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    if-ne v5, v0, :cond_e

    add-int/lit8 v0, v4, 0x1

    rem-int/lit8 v7, v0, 0x5

    if-nez v7, :cond_d

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    if-ne v0, v7, :cond_e

    .line 555
    :cond_d
    invoke-interface {p1, v4, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_3

    .line 557
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 458
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-lt v0, v3, :cond_0

    .line 459
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->b:Ljava/lang/String;

    goto :goto_0

    .line 461
    :cond_0
    iput-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->b:Ljava/lang/String;

    .line 463
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 467
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->k(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x6

    const/4 v5, 0x1

    if-lt v0, v4, :cond_7

    .line 471
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    const/16 v2, 0x17

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_6

    .line 477
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    const-string v3, "AMEX"

    if-ne v0, v3, :cond_2

    .line 478
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->i(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-array v4, v5, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->i(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/4 v7, 0x3

    invoke-direct {v4, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 482
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    if-ne v0, v3, :cond_3

    .line 483
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_2

    .line 484
    :cond_3
    const-string v1, "MAST"

    if-eq v0, v1, :cond_5

    const-string v1, "DINR"

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 488
    :cond_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_2

    .line 486
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_2

    .line 491
    :cond_6
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_2

    .line 494
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    .line 495
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v1, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->m(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 499
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->resetBankToDefault()V

    .line 500
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->m(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 501
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->m(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 502
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->f(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Z

    .line 507
    return-void
.end method
