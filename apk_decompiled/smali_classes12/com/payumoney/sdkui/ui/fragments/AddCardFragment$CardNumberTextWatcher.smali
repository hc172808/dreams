.class Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CardNumberTextWatcher"
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const-string p1, ""

    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->b:Ljava/lang/String;

    .line 389
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;
    .param p2, "x1"    # Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$1;

    .line 386
    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .param p1, "s"    # Landroid/text/Editable;

    .line 443
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

    .line 444
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->b:Ljava/lang/String;

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

    .line 445
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

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

    .line 446
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0, v4}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Z)Z

    .line 448
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Landroid/graphics/drawable/Drawable;)V

    .line 453
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->hideConvinienceFeeForCard()V

    .line 456
    :cond_1
    :goto_0
    nop

    .line 458
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    const-string v2, "0123456789"

    const/4 v3, 0x4

    const/16 v5, 0x20

    const/4 v6, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_8

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    const-string v7, "AMEX"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 462
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v4, v0, :cond_4

    .line 471
    nop

    .line 473
    :goto_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v3, v0, :cond_2

    goto :goto_5

    .line 474
    :cond_2
    invoke-interface {p1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 476
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 477
    invoke-interface {p1, v3, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 479
    :cond_3
    add-int/lit8 v3, v3, 0x7

    .line 480
    goto :goto_2

    .line 463
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

    .line 464
    :cond_6
    invoke-interface {p1, v4, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 466
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 485
    :cond_8
    :goto_3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v4, v0, :cond_c

    .line 495
    nop

    .line 497
    :goto_4
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v3, v0, :cond_a

    .line 507
    :goto_5
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_9

    .line 508
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 511
    :cond_9
    return-void

    .line 498
    :cond_a
    invoke-interface {p1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 500
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_b

    .line 501
    invoke-interface {p1, v3, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 503
    :cond_b
    add-int/lit8 v3, v3, 0x5

    .line 504
    goto :goto_4

    .line 486
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

    .line 487
    :cond_d
    invoke-interface {p1, v4, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_3

    .line 489
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

    .line 393
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

    .line 394
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->b:Ljava/lang/String;

    goto :goto_0

    .line 396
    :cond_0
    iput-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->b:Ljava/lang/String;

    .line 398
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 402
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->k(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
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

    .line 406
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->b:Ljava/lang/String;

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

    .line 407
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

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    const/16 v2, 0x17

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_6

    .line 412
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    const-string v3, "AMEX"

    if-ne v0, v3, :cond_2

    .line 413
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->i(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-array v4, v5, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->i(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/4 v7, 0x3

    invoke-direct {v4, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 417
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    if-ne v0, v3, :cond_3

    .line 418
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_2

    .line 419
    :cond_3
    const-string v1, "MAST"

    if-eq v0, v1, :cond_5

    const-string v1, "DINR"

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 423
    :cond_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_2

    .line 421
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_2

    .line 426
    :cond_6
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_2

    .line 429
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->c:Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->m(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 433
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->m(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 434
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->m(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 435
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    :cond_8
    :goto_2
    return-void
.end method
