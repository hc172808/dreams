.class public Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FocusListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;


# direct methods
.method public constructor <init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    .line 1356
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 1361
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->g(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1364
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/payumoney/sdkui/R$id;->add_card_cardNumber:I

    if-ne v0, v2, :cond_6

    .line 1365
    if-nez p2, :cond_f

    .line 1366
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->l(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1369
    const/4 v1, 0x5

    if-eqz v0, :cond_5

    .line 1370
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1371
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1373
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-lt v2, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x13

    if-le v2, v3, :cond_2

    goto :goto_0

    .line 1375
    :cond_2
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->g(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/payumoney/core/utils/SdkHelper;->validateCardNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1376
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    sget v2, Lcom/payumoney/sdkui/R$string;->err_invalid_card:I

    invoke-virtual {v0, v2, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showValidationError(II)V

    goto :goto_2

    .line 1380
    :cond_3
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->setPaymentButtonEnable()V

    goto :goto_2

    .line 1374
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    sget v2, Lcom/payumoney/sdkui/R$string;->err_invalid_card:I

    invoke-virtual {v0, v2, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showValidationError(II)V

    goto :goto_2

    .line 1372
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    sget v2, Lcom/payumoney/sdkui/R$string;->err_invalid_card:I

    invoke-virtual {v0, v2, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showValidationError(II)V

    .line 1382
    :goto_2
    goto/16 :goto_5

    .line 1384
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->add_card_cardExpiry:I

    if-ne v0, v1, :cond_d

    .line 1386
    if-nez p2, :cond_f

    .line 1388
    nop

    .line 1389
    nop

    .line 1390
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Lcom/payumoney/core/widget/ExpiryDate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Lcom/payumoney/core/widget/ExpiryDate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1391
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Lcom/payumoney/core/widget/ExpiryDate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/utils/Month;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 1393
    :cond_7
    const/4 v0, -0x1

    :goto_3
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Lcom/payumoney/core/widget/ExpiryDate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Lcom/payumoney/core/widget/ExpiryDate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1394
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Lcom/payumoney/core/widget/ExpiryDate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/utils/Year;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1397
    :cond_8
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->r(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x4

    const-string v5, "SMAE"

    if-lt v1, v2, :cond_9

    sub-int/2addr v0, v3

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    .line 1398
    invoke-static {v2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->r(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v0, v2, :cond_a

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    .line 1399
    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->r(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    .line 1400
    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->g(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1401
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    sget v1, Lcom/payumoney/sdkui/R$string;->err_invalid_expiry_date:I

    invoke-virtual {v0, v1, v4}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showValidationError(II)V

    goto :goto_4

    .line 1402
    :cond_a
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Lcom/payumoney/core/widget/ExpiryDate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Lcom/payumoney/core/widget/ExpiryDate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    .line 1403
    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->g(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1404
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    sget v1, Lcom/payumoney/sdkui/R$string;->err_invalid_expiry_date:I

    invoke-virtual {v0, v1, v4}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showValidationError(II)V

    goto :goto_4

    .line 1408
    :cond_c
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->setPaymentButtonEnable()V

    .line 1410
    :goto_4
    goto :goto_5

    .line 1412
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->add_card_cardCvv:I

    if-ne v0, v1, :cond_f

    .line 1414
    if-nez p2, :cond_f

    .line 1415
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->i(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1417
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->g(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payumoney/core/utils/SdkHelper;->isValidCvv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1418
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    sget v1, Lcom/payumoney/sdkui/R$string;->err_invalid_cvv:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showValidationError(II)V

    goto :goto_5

    .line 1422
    :cond_e
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->setPaymentButtonEnable()V

    .line 1428
    :cond_f
    :goto_5
    if-nez p2, :cond_11

    .line 1430
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1432
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->h(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1434
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->setPaymentButtonDisable()V

    goto :goto_6

    .line 1437
    :cond_10
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->setPaymentButtonEnable()V

    .line 1442
    :cond_11
    :goto_6
    return-void
.end method
